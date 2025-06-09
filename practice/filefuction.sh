greet_user() {
  echo "Hello, $name!"
}

is_even() {
  if (( $s % 2 == 0 )); then
    echo "$s is even."
  else
    echo "$s is odd."
  fi
}

# Function call with argument
greet_user "RomO"

# Looping and calling a function
for num in 3 4 7 10; do
  is_even $num
done