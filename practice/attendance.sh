# Arrays to store group students
present_students=()
absent_students=()
late_students=()

# Function to get and validate attendance status
get_attendance_status() {
  local student_name=$1
  local status

  while true; do
    echo -n "Enter attendance status for $student_name (P = Present / A = Absent / L = Late): "
    read status
    status=${status^^}  # Convert to uppercase

    case $status in
      P)
        present_students+=("$student_name")
        break
        ;;
      A)
        absent_students+=("$student_name")
        break
        ;;
      L)
        late_students+=("$student_name")
        break
        ;;
      *)
        echo "Invalid input. Please enter P, A, or L."
        ;;
    esac
  done
}

# Main function to track multiple students
track_attendance() {
  echo -n "Enter number of students to track: "
  read num

  # Validate input is a positive integer
  if ! [[ "$num" =~ ^[1-9][0-9]*$ ]]; then
    echo "Invalid number. Please enter a positive integer."
    exit 1
  fi

  # Loop through students
  for (( i = 1; i <= num; i++ )); do
    echo -n "Enter name of student #$i: "
    read student_name

    if [[ -z "$student_name" ]]; then
      echo "Name cannot be empty."
      ((i--)) 
      continue
    fi

    get_attendance_status "$student_name"
    echo "-----------------------------"
  done

  # Print summary
  echo "Attendance Summary:"
  echo "-----------------------------"

  echo "Present Students (${#present_students[@]}):"
  for student in "${present_students[@]}"; do
    echo "- $student"
  done

  echo
  echo "Absent Students (${#absent_students[@]}):"
  for student in "${absent_students[@]}"; do
    echo "- $student"
  done

  echo
  echo "Late Students (${#late_students[@]}):"
  for student in "${late_students[@]}"; do
    echo "- $student"
  done
}


