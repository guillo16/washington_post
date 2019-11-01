# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clearing database'
Article.destroy_all
Category.destroy_all

puts 'creating categories'

politics = Category.create(name: 'Politics')
sports = Category.create(name: 'Sports')
tech = Category.create(name: 'Tech')
world = Category.create(name: 'World')
us = Category.create(name: 'Us')

puts 'creating articles'

users = User.all.sample
categories = Category.all.sample

20.times do
Article.create!(title: 'Invitados de lujo, sorpresas y alta costura: la celebración de los 25 años de trayectoria de Claudio Cosano',
 subtitle:'El diseñador argentino realizó una muestra de sus vestidos más icónicos acompañada de un espectacular desfile con las creaciones que marcaron cada etapa de su carrera. Con la presencia de Susana Giménez y la familia Messi en primera fila, los momentos más importantes de una noche mágica',
 photo: 'https://static01.nyt.com/images/2019/11/01/multimedia/01AlvaradoES-1/merlin_152292138_777f0ef5-414f-457f-b1ae-590d108e9837-superJumbo.jpg?quality=90&auto=webp',
 photo1:'https://www.infobae.com/new-resizer/FNkrVjHLggHc5foP93iR4yW1AjU=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/06/10224028/Vestidos-Cosano-Desfile-Silkey-52.jpg',
 photo2:'https://www.infobae.com/new-resizer/EmCu_by5vN9qh2a0NAKuGZFTDK8=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/06/10223944/Vestidos-Cosano-Desfile-Silkey-47.jpg',
 photo3:'https://www.infobae.com/new-resizer/3ySXjiqE352KfN6EO-ae2yPG8ic=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/06/10231329/Gustavo_Gavotti_Fotoperiodismo_2019-06-10_20.29.03.jpg',
 photo4:'https://www.infobae.com/new-resizer/Ob06aewSWUR8fq-XDQ2rk24b0EQ=/750x0/filters:quality(100)/s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/06/10231337/Gustavo_Gavotti_Fotoperiodismo_2019-06-10_20.36.33.jpg',
 content_1:'Este 2019 tiene algo de especial en el mundo de la moda. En el marco de los 25 años de trayectoria, Claudio Cosano realizó una muestra de sus vestidos icónicos acompañada de un espectacular desfile con las creaciones que marcaron cada etapa de su carrera en el Centro de Convenciones de Buenos Aires y en el marco de los 50 años de Silkey.
 Con una exposición de 21 vestidos que usaron reconocidas figuras de la industria del modelaje, las personas pudieron ser testigos de las creaciones que marcaron un antes y un después en la carrera de Claudio Cosano. Desde Mirtha Legrand, Susana Giménez, Nicole Neumann, la familia Messi, Liz Solari, Wanda Nara, Teté Coustarot, Teresa Calandra, Nequi Galloti, entre otras diosas argentinas que eligieron al diseñador argentino repetidas veces.',
 content_2:'"Estoy muy contento y feliz con lo que se logró. Una exposición y puesta en escena impresionante. Además, el honor de tener a Susana Giménez y a la familia Messi en primera fila. Un vestido que no me voy a olvidar nunca: el del millón de Susana", dijo a Infobae Claudio Cosano. Autodidacta, obsesivo por la moldería y encandilado por los brillos bordados a mano, Cosano logró instalar su ADN en el universo de la moda femenina. Y al igual que la marca Silkey, su extensa carrera dejó una huella en el mundo fashionista.',
 content_3:'Los primeros en estrenar la pasarela fueron el director de la marca, Mauricio Wachs, la directora artística Elizabeth Yelin y Susana Giménez quienes brindaron unas palabras de aliento y emoción su querido amigo Claudio Cosano. "Queremos crear una mística del cuidado de la mujer y el hombre. Nos sentimos orgullosos y estamos felices", dijo Mauricio Wachs.',
 category: categories)
end


puts 'finishing'































