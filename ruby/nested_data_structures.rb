restaurant = {
    table_0: {
        dave: [
            "fries",
            "cola",
            "hot dog"
        ],
        stacy: [
            "romantic pickle chips",
            "milkshake"
    ]
  },

    table_1: {
        robert: [
          "sad burger",
        ]
    },
  
    table_2: {
        billiam: [
          "spicy kale",
          "water"
        ],
        lucia: [
          "pineapple burger",
          "carrot sticks"
        ],
        esteban: [
          "butterscotch chip cookie",
          "strawberry milk"
        ]
    }
}

p restaurant
p restaurant[:table_2]
p restaurant[:table_1][:robert][0]
restaurant[:table_0][:stacy].push("candy bracelet")
