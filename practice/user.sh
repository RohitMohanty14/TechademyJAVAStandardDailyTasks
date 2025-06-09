validate_and_get_role() {
    local u="$1"
    local p="$2"

    if [[ "$u" == "admin" && "$p" == "adminpass" ]]; then
        echo "Admin"
        return 0
    elif [[ "$u" == "guest" && "$p" == "guestpass" ]]; then
        echo "Guest"
        return 0
    elif [[ "$u" == "member" && "$p" == "memberpass" ]]; then
        echo "Member"
        return 0
    else
        return 1
    fi
}

perform_login_attempt() {
    local username
    local password
    local role_from_validation
    local validation_status

    read -p "Username: " username
    read -sp "Password: " password
    echo >&2

    role_from_validation=$(validate_and_get_role "$username" "$password")
    validation_status=$?

    if [[ $validation_status -eq 0 ]]; then
        echo "$role_from_validation"
        return 0
    else
        return 1
    fi
}

display_user_role_info() {
    local role="$1"
    case "$role" in
        Admin)
            echo "Welcome Admin! You have full access."
            ;;
        Guest)
            echo "Welcome Guest! You have limited access."
            ;;
        Member)
            echo "Welcome Member! You have standard access."
            ;;
        *)
            echo "Error: Role information not recognized."
            ;;
    esac
}

MAX_ATTEMPTS=4
attempts_made=0

while [[ $attempts_made -lt $MAX_ATTEMPTS ]]; do
    authenticated_role=$(perform_login_attempt)
    login_success=$?

    if [[ $login_success -eq 0 ]]; then
        display_user_role_info "$authenticated_role"
        exit 0
    else
        attempts_made=$((attempts_made + 1))
        remaining_attempts=$((MAX_ATTEMPTS - attempts_made))
        echo "Invalid username or password."
        if [[ $remaining_attempts -gt 0 ]]; then
            echo "You have $remaining_attempts attempts remaining."
        else
            echo "Maximum login attempts reached. Access denied."
            exit 1
        fi
    fi
done