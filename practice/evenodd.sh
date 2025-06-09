#code for even and odd
echo "enter the number"
read num
if (( num % 2 == 0 )); then
  echo "The number $num is even."
else
  echo "The number $num is odd."
fi