# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


City.destroy_all
  City.create(
  [
    {
      name: "San Francisco",
      image: "https://images1.apartments.com/i2/hFgYoT0zCoCAdiUcUR22kOmdhv7VosGC2AghT5uI12w/110/san-francisco-ca-the-iconic-golden-gate-bridge.jpg"
    },
    {
      name: "Gibraltar",
      image: "https://www.gibraltar.gov.gi/new/sites/default/files/Home.jpg"
    },
    {
      name: "London",
      image: "https://media.architecturaldigest.com/photos/56fd9d65ecd154e0329c1627/2:1/w_2560/london-travel-guide-lede.jpg"
    }
  ])
