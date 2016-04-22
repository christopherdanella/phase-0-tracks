concert_hall = {
  VIP: {
    section_name: 'Floor Pit',
    price_info: {
      cost_per_ticket: 99.00,
      num_seats: 300 
    },
    amenities: [
      "Free concert t-shirt",
      "Two free drink tickets"  
    ]
  },
  lower_level: {
    section_name: 'Lower Bowl',
    price_info: {
      cost_per_ticket: 60.00,
      num_seats: 650 
    },
    amenities: [
      "Free band bobblehead",
      "One drink ticket"
    ]
  },
  upper_level: {
    section_name: 'Nosebleeds',
    price_info: {
      cost_per_ticket: 20.00,
      num_seats: 1000
    },
    amenities: []
  }
}

concert_hall[:upper_level][:amenities].push("Binoculars")


concert_hall[:VIP][:amenities][0] = "Free concert poster"


concert_hall[:lower_level][:amenities].reverse

concert_hall[:VIP][:price_info][:cost_per_ticket] = 200.00
puts concert_hall