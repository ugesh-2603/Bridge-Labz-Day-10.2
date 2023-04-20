 echo " Welcome You For Flip Coin Calculation "

flip=$((RANDOM % 2))

if [ $flip -eq 0 ]; then
  echo "Heads"
else
  echo "Tails"
fi
