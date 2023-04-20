
 echo " Welcome You For Flip Coin Calculation "

flip=$((RANDOM % 2))

heads=0
tails=0
goal=21



for ((i=1; i<=flips; i++)); do

while [ $heads -lt $goal ] && [ $tails -lt $goal ]; do

  flip=$((RANDOM % 2))

  if [ $flip -eq 0 ]; then
    heads=$((heads + 1))
  else
    tails=$((tails + 1))
  fi

  if [ $heads -eq $tails ] && [ $heads -ge $goal ]; then
    while [ $((heads - tails)) -lt 2 ] && [ $((tails - heads)) -lt 2 ]; do
      flip=$((RANDOM % 2))

      if [ $flip -eq 0 ]; then
        heads=$((heads + 1))
      else
        tails=$((tails + 1))
      fi
    done
  fi
done

echo "Heads: $heads"
echo "Tails: $tails"

if [ $heads -eq $tails ]; then
  echo "It's a tie!"
elif [ $heads -gt $tails ]; then
  echo "Heads wins by $((heads - tails)) points"
else
  echo "Tails wins by $((tails - heads)) points"
fi
