#!/bin/bash

# Hit the REST endpoint and store the JSON response in a variable
json_response=$(curl -s "https://dummyjson.com/products")

# Process the JSON response using jq (JSON processor)
item_name=$(echo "$json_response" | jq -r '.name')
stock_item=$(echo "$json_response" | jq -r '.stock')

# Print the processed data
echo "Item Name: $item_name"
echo "Stock Item: $stock_item"