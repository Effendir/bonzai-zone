require "open-uri"

puts "Cleaning up database..."
Bonzai.destroy_all
User.destroy_all
puts "Database cleaned"

# Users

file = URI.open("https://avatars.githubusercontent.com/u/48885433?v=4")
lesly = User.new(
  first_name: 'Lesly',
  last_name: 'Urie',
  email: 'lesly75019@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)
lesly.photo.attach(io: file, filename: "lesly.jpg", content_type: "image/jpg")
lesly.save

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1681648037/kuzl5xeiqzxo8alcfzt8.jpg")
lucie = User.new(
  first_name: 'Lucie',
  last_name: 'Gaget',
  email: 'lucie-gaget@orange.fr',
  password: 'azerty',
  password_confirmation: 'azerty'
)
lucie.photo.attach(io: file, filename: "lucie.jpg", content_type: "image/jpg")
lucie.save

file = URI.open("https://avatars.githubusercontent.com/u/98352289?v=4")
eugene = User.new(
  first_name: 'Eugene',
  last_name: 'Dami',
  email: 'eugene.dami@yahoo.fr',
  password: 'azerty',
  password_confirmation: 'azerty'
)
eugene.photo.attach(io: file, filename: "eugene.jpg", content_type: "image/jpg")
eugene.save

file = URI.open("https://avatars.githubusercontent.com/u/130669333?v=4")
helene = User.new(
  first_name: 'Hélène',
  last_name: 'Becquembois',
  email: 'hbecquembois@gmail.com',
  password: 'azerty',
  password_confirmation: 'azerty'
)
helene.photo.attach(io: file, filename: "helene.jpg", content_type: "image/jpg")
helene.save

# Bonzais

file = URI.open("https://bergamotte.imgix.net/dqgx45g3qwobvk80x6vkl46kgj0e?ixlib=rails-4.2.0&auto=format%2Ccompress&fit=crop&q=65&ar=4%3A5&w=2048")
bonzai = Bonzai.new(
  user: lesly,
  name: 'Banzai',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'Beware! it bites',
  price_per_day: 10,
  species: 'Cactus')
bonzai.photo.attach(io: file, filename: "banzai.png", content_type: "image/png")
bonzai.save

file = URI.open("https://www.la-boutique-du-jardinier.com/img/p/1/1/0/1/8/1/110181-large_default.webp")
bonzai = Bonzai.new(
  user: helene,
  name: 'Bonzo',
  address: "31 rue de l'Aigle 92250 La Garenne Colombes",
  description: "Très joli bonzaï d'intérieur",
  price_per_day: 12,
  species: 'Ficus retusa'
)
bonzai.photo.attach(io: file, filename: "bonzo.png", content_type: "image/png")
bonzai.save

file = URI.open("https://www.bonsaiempire.fr/images/advanced/cherry/cherry1.jpg")
bonzai = Bonzai.new(
  user: lucie,
  name: 'Cerise',
  address: '68 avenue Parmentier 75011 Paris',
  description: 'Parfum très délicat',
  price_per_day: 15,
  species: 'Cerisier'
)
bonzai.photo.attach(io: file, filename: "cerise.png", content_type: "image/png")
bonzai.save

file = URI.open("https://m.media-amazon.com/images/I/51bFma8wauL._AC_.jpg")
bonzai = Bonzai.new(
  user: eugene,
  name: 'Red',
  address: '41 rue de Caulaincourt 75018 Paris',
  description: 'Donnera de la couleur à votre intérieur',
  price_per_day: 12.5,
  species: 'Erable'
)
bonzai.photo.attach(io: file, filename: "red.png", content_type: "image/png")
bonzai.save

file = URI.open("https://www.bonsai-entretien.fr/wp-content/uploads/sites/5/2017/12/Rhododendron-Indicum.jpg")
bonzai = Bonzai.new(
  user: lesly,
  name: 'Roudoudou',
  address: '25 avenue de Crimée',
  description: 'Ses fleurs embelliront votre intérieur',
  price_per_day: 20,
  species: 'Rhododendron'
)
bonzai.photo.attach(io: file, filename: "roudoudou.png", content_type: "image/png")
bonzai.save

file = URI.open("https://i.etsystatic.com/35716232/r/il/17736a/4186771961/il_1588xN.4186771961_tpkc.jpg")
bonzai = Bonzai.new(
  user: helene,
  name: 'Cédric',
  address: "12 rue Rameau 21000 Dijon",
  description: "Il est fragile, et n'aime pas le soleil direct",
  price_per_day: 17.5,
  species: 'Cèdre du Japon'
)
bonzai.photo.attach(io: file, filename: "cedric.png", content_type: "image/png")
bonzai.save

file = URI.open("https://i.ebayimg.com/images/g/KLUAAOSw-hVkKBgt/s-l500.jpg")
bonzai = Bonzai.new(
  user: lucie,
  name: 'Olive',
  address: "16 villa Gaudelet 75011 Paris",
  description: "Vous ne pourrez pas faire d'huile d'olive avec elle, mais elle est très sympa quand même !",
  price_per_day: 7.5,
  species: 'Olivier'
)
bonzai.photo.attach(io: file, filename: "olive.png", content_type: "image/png")
bonzai.save

file = URI.open("https://cdn.shopify.com/s/files/1/0061/6389/0289/products/bonsaificusginseng_4b9e9db9-a9bd-48f2-b858-96ef085001c9_x700.jpg?v=1616559250")
bonzai = Bonzai.new(
  user: eugene,
  name: 'Tonic',
  address: "20 boulevard Paoli 22100 Bastia",
  description: "Le plein d'énergie avec ce bonzai !",
  price_per_day: 13,
  species: 'Ficus Ginseng'
)
bonzai.photo.attach(io: file, filename: "tonic.png", content_type: "image/png")
bonzai.save

file = URI.open("https://i.etsystatic.com/36349245/r/il/9ce49e/4490339017/il_1588xN.4490339017_lepw.jpg")
bonzai = Bonzai.new(
  user: lesly,
  name: 'Giligili',
  address: "10 boulevard de la République 71100 Chalon sur Saone",
  description: "Elle déteste les chatouilles !",
  price_per_day: 21.4,
  species: 'Glycine chinoise'
)
bonzai.photo.attach(io: file, filename: "giligili.png", content_type: "image/png")
bonzai.save

file = URI.open("https://i.etsystatic.com/27290069/r/il/cf937b/2983750782/il_1588xN.2983750782_97yl.jpg")
bonzai = Bonzai.new(
  user: helene,
  name: 'Solitaire',
  address: "Place de la République 75003 Paris",
  description: "Verse quelques larmes quand il est un peu triste",
  price_per_day: 5.5,
  species: 'Saule pleureur'
)
bonzai.photo.attach(io: file, filename: "solitaire.png", content_type: "image/png")
bonzai.save
