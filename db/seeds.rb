bill = User.create!(
  first_name: 'Bill',
  last_name: 'Clinton',
  email: 'bc.usa@gov.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)

bella = User.create!(
  first_name: 'Bella',
  last_name: 'Swan',
  email: 'vampirelover@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)

bob = User.create!(
  first_name: 'Bob',
  last_name: 'Dylan',
  email: 'bobby@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)

Bonzai.create!(
  user: bill,
  name: 'Banzai!',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'Beware! it bites',
  price_per_day: 75,
  species: 'Pokemon plant type',
  photo_url: 'https://www.123-stickers.com/7670-large_default/autocollant-bulbizarre-pokemon-001.jpg'
)

Bonzai.create!(
  user: bob,
  name: 'Nabillai',
  address: '10 Clifton Gardens Paris W9 1DT',
  description: 'Non mais allo quoi',
  price_per_day: 12,
  species: 'Pokemon boring type',
  photo_url: 'https://kalima-ich.e-monsite.com/medias/images/img-1569.jpg'
)

Bonzai.create!(
  user: bella,
  name: 'Pasbonzai',
  address: '10 Clifton Gardens Pekin W9 1DT',
  description: 'Il est pas bon',
  price_per_day: 120,
  species: 'Pokemon disgusting type',
  photo_url: 'https://legendary-digital-network-assets.s3.amazonaws.com/wp-content/uploads/2021/01/13004818/Chocolate-Bonsai.jpg'
)
