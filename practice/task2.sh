if [ $# -eq 0 ]; then
  echo "Please provide numbers as arguments."
  exit 1
fi

for num in "$@"
do
  # Check if the argument is a number
  if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "$num is not a valid number."
    continue
  fi

  # Check if the number is even or odd
  if ((num % 2 == 0)); then
    echo "$num is even."
  else
    echo "$num is odd."
  fi
done
