# store = {
#   department: {
#       name: 'Dairy',
#       aisles: 3,
#       sale_items: [
#         'Eggs',
#         'Parmesan Cheese',
#         'Butter'
#     ]
#   }
# }


# store[department]
# upcoming items as an array value in hash

store = {
  Dairy: {
    milk: {
      reg_price: '3',
      sale_price: '2'
      }
    },
    eggs: [
      reg_price: '$3',
      sale_price: '$2'
      ],
    butter: [
      reg_price: '$3',
      sale_price: '$2'
      ],
    ],
  Produce: [
    'apples',
    'carrots'
    ],
  Bakery: [
    'bread',
    'cookies'
    ]
}

puts store

# puts store[:Dairy][:milk][:reg_price]
# puts store[:Dairy][:sale_items][0]
# puts store['Dairy']['sale_items'][1]
