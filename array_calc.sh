
numbers=(10 20 30 40 50)
sum=0


for number in "${numbers[@]}"; do
    sum=$((sum + number))
done


echo "The sum of the elements in the array is: $sum"