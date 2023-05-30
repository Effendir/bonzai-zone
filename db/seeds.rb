puts "Cleaning up database..."
Bonzai.destroy_all
User.destroy_all
puts "Database cleaned"

lesly = User.create!(
  first_name: 'Lesly',
  last_name: 'Urie',
  email: 'lesly75019@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)

lucie = User.create!(
  first_name: 'Lucie',
  last_name: 'Gaget',
  email: 'lucie-gaget@orange.fr',
  password: 'azerty',
  password_confirmation: 'azerty'
)

eugene = User.create!(
  first_name: 'Eugene',
  last_name: 'Dami',
  email: 'eugene.dami@yahoo.fr',
  password: 'azerty',
  password_confirmation: 'azerty'
)

helene = User.create!(
  first_name: 'Hélène',
  last_name: 'Becquembois',
  email: 'hbecquembois@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)

Bonzai.create!(
  user: lesly,
  name: 'Banzai',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'Beware! it bites',
  price_per_day: 10,
  species: 'Cactus',
  photo_url: 'https://bergamotte.imgix.net/dqgx45g3qwobvk80x6vkl46kgj0e?ixlib=rails-4.2.0&auto=format%2Ccompress&fit=crop&q=65&ar=4%3A5&w=2048'
)

Bonzai.create!(
  user: helene,
  name: 'Bonzo',
  address: "31 rue de l'Aigle 92250 La Garenne Colombes",
  description: "Très joli bonzaï d'intérieur",
  price_per_day: 12,
  species: 'Ficus retusa',
  photo_url: 'https://www.la-boutique-du-jardinier.com/img/p/1/1/0/1/8/1/110181-large_default.webp'
)

Bonzai.create!(
  user: lucie,
  name: 'Cerise',
  address: '68 avenue Parmentier 75011 Paris',
  description: 'Parfum très délicat',
  price_per_day: 15,
  species: 'Cerisier',
  photo_url: 'https://www.bonsaiempire.fr/images/advanced/cherry/cherry1.jpg'
)

Bonzai.create!(
  user: eugene,
  name: 'Red',
  address: '41 rue de Caulaincourt 75018 Paris',
  description: 'Donnera de la couleur à votre intérieur',
  price_per_day: 12.5,
  species: 'Erable',
  photo_url: 'https://m.media-amazon.com/images/I/51bFma8wauL._AC_.jpg'
)

Bonzai.create!(
  user: lesly,
  name: 'Roudoudou',
  address: '25 avenue de Crimée',
  description: 'Ses fleurs embelliront votre intérieur',
  price_per_day: 20,
  species: 'Rhododendron',
  photo_url: 'https://www.bonsai-entretien.fr/wp-content/uploads/sites/5/2017/12/Rhododendron-Indicum.jpg'
)

Bonzai.create!(
  user: helene,
  name: 'Cédric',
  address: "12 rue Rameau 21000 Dijon",
  description: "Il est fragile, et n'aime pas le soleil direct",
  price_per_day: 17.5,
  species: 'Cèdre du Japon',
  photo_url: 'https://i.etsystatic.com/35716232/r/il/17736a/4186771961/il_1588xN.4186771961_tpkc.jpg'
)

Bonzai.create!(
  user: lucie,
  name: 'Olive',
  address: "16 villa Gaudelet 75011 Paris",
  description: "Vous ne pourrez pas faire d'huile d'olive avec elle, mais elle est très sympa quand même !",
  price_per_day: 7.5,
  species: 'Olivier',
  photo_url: 'https://i.ebayimg.com/images/g/KLUAAOSw-hVkKBgt/s-l500.jpg'
)

Bonzai.create!(
  user: eugene,
  name: 'Tonic',
  address: "20 boulevard Paoli 22100 Bastia",
  description: "Le plein d'énergie avec ce bonzai !",
  price_per_day: 13,
  species: 'Ficus Ginseng',
  photo_url: 'https://cdn.shopify.com/s/files/1/0061/6389/0289/products/bonsaificusginseng_4b9e9db9-a9bd-48f2-b858-96ef085001c9_x700.jpg?v=1616559250'
)

Bonzai.create!(
  user: lesly,
  name: 'Giligili',
  address: "10 boulevard de la République 71100 Chalon sur Saone",
  description: "Elle déteste les chatouilles !",
  price_per_day: 21.4,
  species: 'Glycine chinoise',
  photo_url: 'https://i.etsystatic.com/36349245/r/il/9ce49e/4490339017/il_1588xN.4490339017_lepw.jpg'
)

Bonzai.create!(
  user: helene,
  name: 'Solitaire',
  address: "Place de la République 75003 Paris",
  description: "Verse quelques larmes quand il est un peu triste",
  price_per_day: 5.5,
  species: 'Saule pleureur',
  photo_url: 'https://i.etsystatic.com/27290069/r/il/cf937b/2983750782/il_1588xN.2983750782_97yl.jpg'
)
