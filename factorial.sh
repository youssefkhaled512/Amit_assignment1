echo "Please enter a number"
read number


N=$number
fact=1

for((i=1;i<=$N;i++))
do
fact=$((fact*i))
done

echo "Factorial of $N is $fact"
