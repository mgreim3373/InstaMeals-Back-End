
curl --include --request POST "http://localhost:4741/recipes" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "recipe": {
      "prep_time": "'"${PREPTIME}"'",
      "cook_time": "'"${COOKTIME}"'",
      "serving_size": "'"${SIZE}"'",
      "pot_mode": "'"${MODE}"'",
      "pot_pressure": "'"${PRESSURE}"'",
      "ingredient": "'"${PREPTIME}"'",
      "prep_instruction": "'"${INSTRUCT}"'"
    }
  }'
