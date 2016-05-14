# store = {
#   department: {
#      name: 'Dairy',
#      aisles: 3,
#      sale_items: [
#        'Eggs',
#        'Parmesan Cheese',
#        'Butter'
#        ]
#    }
# }

store = {
  Dairy: {
    milk: {
      reg_price: '3',
      sale_price: '2'
      },
    eggs: {
      reg_price: '$3',
      sale_price: '$2'
      },
    butter: {
      reg_price: '$3',
      sale_price: '$2'
      }
    },
  Produce: [
    'apples',
    'carrots'
    ],
  Bakery: [
    'bread',
    'cookies'
    ]
}

puts store[:'Dairy'][:'butter'][:'sale_price']

puts store[:'Produce'].last

puts store[:'Bakery'][0]

