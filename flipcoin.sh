heads=0
tails=0
flips=10

for ((i=1; i<=flips; i++)); do
  flip=$((RANDOM % 2))

  if [ $flip -eq 0 ]; then
    heads=$((heads + 1))
  else
    tails=$((tails + 1))
  fi
done

echo "Heads: $heads"
echo "Tails: $tails"
