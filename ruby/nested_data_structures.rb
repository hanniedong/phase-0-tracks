# Grocery List 

grocery_list = {
  fruits: [
    'apples', 
    'oranges', 
    'bananas' 
    ],
    vegetables: [
    'onions', 
    'carrots', 
    'spinach'
    ],
  drinks: {
      nonalcoholic: [
        'water',
        'juice'
        ],
      alcoholic: [
        'tequila', 
        'wine'
        ],
    },
  meats: [
    'chicken',
    'steak'
    ],
  breakfast: [
    'oatmeal',
    'cereal'
    ]

=begin
grocery_list[:breakfast][1]
=> 'cereal'

grocery_list[:meats]
=>['chicken','steak']

grocery_list[:drinks][:nonalcoholic][1]
=> 'juice'

grocery_list[:drinks][:nonalcoholic].push("lemonade")
=>['water','juice','lemonade']
=end 