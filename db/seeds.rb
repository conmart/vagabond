# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Post.destroy_all
City.destroy_all
  City.create(
  [
    {
      name: "San Francisco",
      image: "http://baycityguide.com/media/00PU000000KOXXxMAP/Golden-Gate-Bridge-Ft-Point-1500x87-30.jpg"
    },
    {
      name: "Gibraltar",
      image: "https://a.travel-assets.com/findyours-php/viewfinder/images/res60/202000/202319-Rock-Of-Gibraltar.jpg"
    },
    {
      name: "London",
      image: "https://media.architecturaldigest.com/photos/56fd9d65ecd154e0329c1627/2:1/w_2560/london-travel-guide-lede.jpg"
    },
    {
      name: "New York",
      image: "http://mcny.org/sites/default/files/New-York-14-10-2489.jpg"
    },
    {
      name: "Chicago",
      image: "http://cdn-image.travelandleisure.com/sites/default/files/styles/1600x1000/public/1446655168/chicago-header-dg1115.jpg?itok=MqZFOaTi"
    },
    {
      name: "Portland",
      image: "https://www.visittheusa.com/sites/default/files/styles/hero_m_1300x700/public/images/hero_media_image/2016-11/Drone.__72%20DPI.jpg?itok=jhGikGPz"
    }
  ])
