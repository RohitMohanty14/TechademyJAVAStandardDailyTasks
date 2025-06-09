echo "hello world"
name="RoMo"
echo "hello, $name"
num1=14
num2=23
sum=$((num1+num2))
echo "sum: $sum"
diff=$((num2-num1))
echo "difference: $diff"
pro=$((num1*num2))
echo "product: $pro"
div=$((num1/num2))
echo "quotiuent: $div"
mod=$((num1%num2))
echo "Remainder: $mod"
echo "Enter your name"
read name1
echo "Enter your age"
read age

num1=10
num2=20
string1="hello"
string2="world"
file="example.txt"

if [ $num1 -lt $num2 ]; then
  echo "$num1 is less than $num2"
fi

if [ "$string1" == "hello" ] && [ "$string2" != "hello" ]; then
  echo "string1 is hello and string2 is not hello"
fi

if [ -f "$file" ]; then
  echo "$file exists"
else
  echo "$file does not exist"
fi  