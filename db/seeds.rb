# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

User.destroy_all
Artwork.destroy_all

# User Seeds
user_1 = User.create!(
  username: "TestUser",
  password: "DemoLogin"
)

user_2 = User.create!(
  username: "Miuna",
  password: "Shiodome"
)

# Artwork Seeds
artwork_1 = Artwork.create!(
  title: "Universe of Water Particles on a Rock where People Gather",
  description: "Crossing the boundaries of other works, sometimes influencing other works, water flows from the Athletics Forest, Graffiti Nature - High Mountains and Deep Valleys, and accumulates into the waterfall of the Universe of Water Particles on a Rock where People Gather.\n\nThe Rock where People Gather is reproduced in a virtual three-dimensional space. Water is simulated to fall onto the rock, and the flow of the water draws the shape of the waterfall. The water is represented by a continuum of numerous water particles and the interaction between the particles is then calculated. Lines are drawn in relation to the behavior of the water particles. The lines are then 'flattened' using what teamLab considers to be ultrasubjective space.\n\nWhen a person stands on the rock or touches the waterfall, they too become like a rock that changes the flow of water. The flow of water continues to transform in real time due to the interaction of people. Previous visual states can never be replicated, and will never reoccur."
)

artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/19809"), filename: "Image_01.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/19810"), filename: "Image_02.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14593"), filename: "Image_03.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14392"), filename: "Image_04.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14393"), filename: "Image_05.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14394"), filename: "Image_06.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14395"), filename: "Image_07.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14396"), filename: "Image_08.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14397"), filename: "Image_09.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14896"), filename: "Image_10.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14897"), filename: "Image_11.jpeg")
artwork_1.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/17422"), filename: "Image_12.jpeg")
artwork_1.videos.attach(io: open("https://www.youtube.com/watch?v=iUSXVxOb4Hk"), filename: "Video_01.mp4")

# artwork_2 = Artwork.create!(
#   title: "Walk, Walk, Walk: Free Infinity",
#   description: "Anonymous and diverse figures walk freely in space. They sing, and when they walk near visitors, they sing more. Just as the figures in the artwork move freely singing and dancing in any direction, people in real life are free to dance anywhere and walk in any direction.\n\nThis work is to be viewed from a position close to the entrance.\n\nThe work begins when the figures of Walk, Walk, Walk enter into the Cave Universe in the middle of the aisle. When the work ends, when the figures leave the space and disappear.\n\nIf you stand at position close to the entrance the boundary between the wall and the floor disappears, the real space dissolves and the body becomes immersed in the artwork.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. Previous states will never be repeated and can never be seen again."
# )

artwork_2.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14910"), filename: "Image_01.jpeg")

# artwork_3 = Artwork.create!(
#   title: "The Way of the Sea, Floating Nest",
#   description: "A large nest floats in the center of the space. The work is viewed by lying down or sitting in the Floating Nest.\n\nThis work starts when the shoal of fish from The Way of the Sea passes through the Flower Forest and enters the Floating Nest. The work ends when the fish leave the space and disappear.\n\nLie down in the Floating Nest and the lines drawn by the traces of the fish appears to be drawn in three dimensions in the space. The body becomes immersed into the work, and the boundary between people and the work dissolves.\n\nThe fish are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road the road of the bird is not fixed. Its meaning is freedom and of leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands of fish and birds is beautiful and mysterious, like a single giant life form. The flock has neither a leader nor mutual consensus, but moves on the simple basis of; if my neighbor moves, then I move too. The biological mechanism that causes flocks of hundreds of fish and birds to move at the same time is enigmatic. It seems there is a universal principle that humans do not understand. Likewise, the coloring of the flock is not predetermined. Influenced by the presence of people, the space becomes a complex and beautiful coloration. This coloration is created by the movement of each fish and bird obeying some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

artwork_3.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14882"), filename: "Image_01.jpeg")
artwork_3.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14883"), filename: "Image_02.jpeg")
artwork_3.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16195"), filename: "Image_03.jpeg")

artwork_4 = Artwork.create!(
  title: "Wander through the Crystal World",
  description: "This interactive installation artwork uses an accumulation of light points to create a sculptural body, similar to the way distinct dots of color form an image in a pointillist painting. The accumulation of lights in three-dimensional space form an expression of a world inside the Crystal World.\n\nBack when kanji (hieroglyphic characters) were carved into the shell of a turtle, the bone of a cow or deer, or cast in a piece of bronze ware, each character contained an entire world within in. Here, a Crystal World is created when a person summons the worlds contained in the characters up, through their smartphone. Each summoned world has an affect on the world of other visitors', and is influenced by the people in the installation.\n\nButterflies drawn and created by visitors at other A Lull In The Museum locations, or through other works of art, can make their way into this world, transformed into 3D creations through points of light.\n\nDue to visitor interaction this Crystal World is in perpetual change, the space is reborn moment by moment."
)

artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16227"), filename: "Image_01.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16221"), filename: "Image_02.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/14928"), filename: "Image_03.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/15039"), filename: "Image_04.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/15119"), filename: "Image_05.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/15120"), filename: "Image_06.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/15121"), filename: "Image_07.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16216"), filename: "Image_08.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16217"), filename: "Image_09.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16218"), filename: "Image_10.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16219"), filename: "Image_11.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16220"), filename: "Image_12.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16222"), filename: "Image_13.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16223"), filename: "Image_14.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16224"), filename: "Image_15.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16225"), filename: "Image_16.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16226"), filename: "Image_17.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16228"), filename: "Image_18.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16229"), filename: "Image_19.jpeg")
artwork_4.photos.attach(io: open("https://borderless.teamlab.art/images/pc-m/16230"), filename: "Image_20.jpeg")

# artwork_5 = Artwork.create!(
#   title: "Memory of Topography",
#   description: "This artwork installation depicts a rural mountain landscape of varying elevations. The scenery instills in the viewer a feeling of eternal permanence, however with the flow of real time the scenergy is continuously changing. In the spring, the rice fields are still small and lush. In summer, they begin to mature, and in fall, they turn a golden color. And with the flow of time, the insects and flowers that make an appearance also changes. The movement of insects if influenced by the movement and actions of people. And as people move around, the flow of air changes and blows the rice plants or scatters flower petals in different directions.\n\nThe overall appearance of this work will hardly change with each year. However, as in nature, the scenery is actually changing and you will never see the same scenery twice. This moment will never be repeated and can never be seen again. Seemingly unchanging landscapes, go on year after year for eternity.\n\nThe work and the canvas that mediates it are separated - the canvas has become transformative. The visual illusion produced by continuous dynamic change causes the viewer to become bodily immersed in the work, and the border between the viewer and artwork dissolves. As the unified world changes, viewers may feel a sense of melting into the world, becoming one with it and with each other."
# )

# artwork_5.photos.attach(io: open("app/assets/images/05/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_11.jpeg")), filename: "Image_11.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_12.jpeg")), filename: "Image_12.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_13.jpeg")), filename: "Image_13.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_14.jpeg")), filename: "Image_14.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_15.jpeg")), filename: "Image_15.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_16.jpeg")), filename: "Image_16.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_17.jpeg")), filename: "Image_17.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_18.jpeg")), filename: "Image_18.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_19.jpeg")), filename: "Image_19.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_20.jpeg")), filename: "Image_20.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_21.jpeg")), filename: "Image_21.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_22.jpeg")), filename: "Image_22.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_23.jpeg")), filename: "Image_23.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_24.jpeg")), filename: "Image_24.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_25.jpeg")), filename: "Image_25.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_26.jpeg")), filename: "Image_26.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_27.jpeg")), filename: "Image_27.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_28.jpeg")), filename: "Image_28.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_29.jpeg")), filename: "Image_29.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_30.jpeg")), filename: "Image_30.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_31.jpeg")), filename: "Image_31.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_32.jpeg")), filename: "Image_32.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_33.jpeg")), filename: "Image_33.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_34.jpeg")), filename: "Image_34.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_35.jpeg")), filename: "Image_35.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_36.jpeg")), filename: "Image_36.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_37.jpeg")), filename: "Image_37.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_38.jpeg")), filename: "Image_38.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_39.jpeg")), filename: "Image_39.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_40.jpeg")), filename: "Image_40.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_41.jpeg")), filename: "Image_41.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_42.jpeg")), filename: "Image_42.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_43.jpeg")), filename: "Image_43.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_44.jpeg")), filename: "Image_44.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_45.jpeg")), filename: "Image_45.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_46.jpeg")), filename: "Image_46.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_47.jpeg")), filename: "Image_47.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_48.jpeg")), filename: "Image_48.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_49.jpeg")), filename: "Image_49.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_50.jpeg")), filename: "Image_50.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_51.jpeg")), filename: "Image_51.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_52.jpeg")), filename: "Image_52.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_53.jpeg")), filename: "Image_53.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_54.jpeg")), filename: "Image_54.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_55.jpeg")), filename: "Image_55.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_56.jpeg")), filename: "Image_56.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_57.jpeg")), filename: "Image_57.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_58.jpeg")), filename: "Image_58.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_59.jpeg")), filename: "Image_59.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_60.jpeg")), filename: "Image_60.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_61.jpeg")), filename: "Image_61.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_62.jpeg")), filename: "Image_62.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_63.jpeg")), filename: "Image_63.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_64.jpeg")), filename: "Image_64.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_65.jpeg")), filename: "Image_65.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_66.jpeg")), filename: "Image_66.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_67.jpeg")), filename: "Image_67.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_68.jpeg")), filename: "Image_68.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_69.jpeg")), filename: "Image_69.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_70.jpeg")), filename: "Image_70.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_71.jpeg")), filename: "Image_71.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_72.jpeg")), filename: "Image_72.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_73.jpeg")), filename: "Image_73.jpeg")
# # artwork_5.photos.attach(io: open("app/assets/images/05/Image_74.jpeg")), filename: "Image_74.jpeg")

# artwork_6 = Artwork.create!(
#   title: "Animals of Flowers Born in the Flower Forest, Symbiotic Lives",
#   description: "Animals that are born in the Flower Forest are made of the Flowers of the Forest. The flowers grow from the body of the animals, bloom, and in time their petals scatter, they wither and die. The cycle of life and death continues for eternity. When people touch the animals the flower petals scatter. If people touch the animals too much all the flowers will scatter, and the animals will die and fade away.\n\nThe work is rendered in real time by a computer program. It is neither a prerecorded animation nor on loop. The interaction between the viewer and the installation causes continuous changes in the artwork; previous visual states can never be replicated, and will never reoccur."
# )

# artwork_6.photos.attach(io: open("app/assets/images/06/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_11.jpeg")), filename: "Image_11.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_12.jpeg")), filename: "Image_12.jpeg")
# # artwork_6.photos.attach(io: open("app/assets/images/06/Image_13.jpeg")), filename: "Image_13.jpeg")

# artwork_7 = Artwork.create!(
#   title: "Born From the Darkness a Loving, and Beautiful World",
#   description: "When a person stands close to a character, the world that that character embodies will appear and a new world will be created. The objects that are released from the characters go on to influence one another in the new world.\n\nThe work is also influenced by other works. For example, when crows fly through the characters they release the world contained within them.\n\nBehind the projected world, there is a 360-degree computer-generated space. The objects that are born from the characters are placed at various positions within that space, and the physical influences and connections between the objects are calculated in real time, producing a complex and natural world. For example, if the wind blows, the objects are subjected to its physical influence. Butterflies are frightened by fire, but attracted to flowers. Just as in nature, no two moments are repeated. The passing moments of the world are never the same and new visual worlds are constantly being created.\n\nChinese characters were first carved in turtle shells and ox or deer bones, and were engraved in bronze ware. Each character contained its own world that was conjured up by its meaning. Through the characters, the world that people call up connects and interacts with others to create a new continuously changing world."
# )

# artwork_7.photos.attach(io: open("app/assets/images/07/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_8 = Artwork.create!(
#   title: "The Way of the Sea, Transcending Space - Colors of Life",
#   description: "This work starts when the shoal of fish from The Way of the Sea enters the Cave Universe, and the work ends when the fish leave the space and disappear.\n\nIf you stand at a position close to the entrance, the boundary between the wall and the floor disappear. The real space dissolves and the lines drawn by the trails of the crows appear to be drawn in three dimensions in the space. Eventually the body becomes immersed in the artwork world, and the border between the artwork and the viewer dissolves.\n\nThe school of fish illuminated by the light move freely through the space, and their trails of light become spatial calligraphy. The fish sense people in the space and try to avoid colliding with them. People are also assigned a color, and when a fish passes by a person they take on that color.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road, the road of the bird is not fixed. Its meaning is freedom and of leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_8.photos.attach(io: open("app/assets/images/08/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_9 = Artwork.create!(
#   title: "Forest of Flowers and People: Lost, Immersed and Reborn",
#   description: "The flowers bud, grow, and blossom before their petals begin to wither and eventually fade away. The cycle of growth and decay repeats itself in perpetuity. If viewers stay still, flowers surrounding them bloom and grow more abundantly than usual. If viewers touch or step on the flowers, they shed their petals all at once.\n\nThe flowers of Flower Foest are influenced by other works causing them to scatter. For example, butterflies gather in places where flowers are blooming, the flowers scatter when crows enter the forest or when the waterfall swells.\n\nNeither a prerecorded animation nor on loop, the work in rendered in real time by a computer program. The interaction between the viewer and the installation causes continuous change in the artwork; previous visual states can never be replicated, and will never reoccur.\n\n In spring in the Kunisaki Peninsula, there are many cherry blossoms in the mountains and rapeseed blossoms at their base. The abundance of flowers caused A Lull in the Museum to wonder how many of these flowers were planted by people and how many were native to the environment. It is a place of great sereniy and contentment, but the expansive body of flowers is an ecosystem influenced by human intervention, and the boundary between the work of nature and the work of humans is unclear. Rather than nature and humans being in conflict, a healthy ecosystem is one that includes people.\n\nIn the past people understood that they could not grasp nature in its entirety, and that it is not possible to control nature. People lived more clsoely aligned to the rules of nature that created a comfortable natural environment. Before the modern era, civilization prospered by the sea. Since then it moved inland leaving pockets of isolated people in the solitary valleys. In these valleys there are faint traces of the relationship with nature that existed. If nature cannot be controlled, perhaps a hint for the future lies in the relationship that once existed between humans and nature."
# )

# artwork_9.photos.attach(io: open("app/assets/images/09/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_9.photos.attach(io: open("app/assets/images/09/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_10 = Artwork.create!(
#   title: "Flutter of Butterflies Beyond Borders, Floating Nest",
#   description: "A large nest floats in the center of the space. The artwork is viewed by lying down or sitting in the Floating Nest.\n\nThis work starts when the butterflies from Flutter of Butterflies Beyond Borders enters the Floating Nest. The work ends when Crows are Chased and the Chasing Crows are Destined to be Chased as Well or The Way of the Sea enters the space, and the butterflies all die.\n\nThe group of butterflies that come into this space are those from the Flutter of Butterflies Beyond Borders (a group of butterflies born from other artworks, such as the butterflies born from people's bodies in the Butterfly House). These butterflies release art from the concept of the frame, removing boundaries from the artwork space, the butterflies seamlessly fly inside other artworks.\n\nLie down in the Floating Nest, and before long, the body will become immersed in the art, dissolving the boundary between people and the work.\n\nThe artwork is rendered in real time by a computer program. It is neither a prerecorded animation nor on loop. As a whole, it is continuously changing, and previous visual states are never replicated. The picture at this moment can never be seen again."
# )

# artwork_10.photos.attach(io: open("app/assets/images/10/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_10.photos.attach(io: open("app/assets/images/10/Image_07.jpeg")), filename: "Image_07.jpeg")

# artwork_11 = Artwork.create!(
#   title: "Sharing Stone, Transcending Space",
#   description: ""
# )

# artwork_11.photos.attach(io: open("app/assets/images/11/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_11.photos.attach(io: open("app/assets/images/11/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_11.photos.attach(io: open("app/assets/images/11/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_11.photos.attach(io: open("app/assets/images/11/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_11.photos.attach(io: open("app/assets/images/11/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_12 = Artwork.create!(
#   title: "The Way of the Sea in the Memory of Topography - Colors of Life",
#   description: "This work begins when The Way of the Sea enters the Memory of Topography, a space of varying elevations. The work ends when the shoal of fish leaves the space and disappears.\n\nThe fish are rendered in light as they fly around the space, they sense people and try to avoid them. People in the space are assigned colors and when the fish pass by they are dyed by that color.\n\nThe work and the canvas that mediates it are separated - the canvas has become transformative. The visual illusion produced by continuous dynamic change causes the viewer to become bodily immersed in the work, and the border between the viewer and artwork dissolves. As the unified world changes viewers may feel a sense of melting into the world, becoming one with it and each other.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery or loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_12.photos.attach(io: open("app/assets/images/12/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_11.jpeg")), filename: "Image_11.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_12.jpeg")), filename: "Image_12.jpeg")
# # artwork_12.photos.attach(io: open("app/assets/images/12/Image_13.jpeg")), filename: "Image_13.jpeg")

# artwork_13 = Artwork.create!(
#   title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Flying Beyond Borders",
#   description: "Crows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn become chased themselves. When the chased crows crash into one another, they scatter, turning into flowers. The crows attempt to fly around people in the space, but when they crash into a viewer, they scatter, turning into flowers in the same way.\n\nWhen you stand near a certain designated space within the artwork the boundary between the wall and the floor disappears, the real space dissolves, eventually we become immersed in the artwork world and the lines drawn by the trails of the crows appears to be drawn in three dimensions in the space.\n\nThe installation is rendered in real time by a computer program, it is neither a prerecorded animation nor on loop. The installation as a whole is in constant change, previous states will never be repeated and can never be seen again."
# )

# artwork_13.photos.attach(io: open("app/assets/images/13/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_13.photos.attach(io: open("app/assets/images/13/Image_11.jpeg")), filename: "Image_11.jpeg")

# artwork_14 = Artwork.create!(
#   title: "The Way of the Sea, Flying Beyond Borders - Colors of Life",
#   description: "This work begins with a shoal of fish, The Way of the Sea, leaves a room and crosses the boundaries of other works, sometimes influencing the works, and freely moves around.\n\nThe school of fish illuminated by the light move freely through space, and their trails of light become spatial calligraphy. The fish sense people in the space and try to avoid colliding with them.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road the road of the bird is not fixed. It means freedom and leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule."
# )

# artwork_14.photos.attach(io: open("app/assets/images/14/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_14.photos.attach(io: open("app/assets/images/14/Image_08.jpeg")), filename: "Image_08.jpeg")

# artwork_15 = Artwork.create!(
#   title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Transcending Space",
#   description: "This work is to be viewed from a position close to the entrance.\n\nThe work begins with crows of Crows are Chased and the Chasing Crows are Destined to be Chased as well enter into the Cave Universe in the middle of the aisle. When the work ends, the crows leave the space and disappear.\n\nIf you stand at a position close to the entrance, the boundary between the wall and the floor disappears, the real space dissolves and the lines drawn by the trails of the crows appear to be drawn in three dimensions in the space. Eventually the body becomes immersed in the artwork world, and the border between the artwork and the viewer dissolves.\n\nCrows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn become chased themselves. When the chased crows crash into one another, they scatter, turning into flowers. The crows attempt to fly around people in the space, but when they crash into a viewer, they scatter, turning into flowers in the same way.\n\nThe installation is rendered in real time by a computer program, it is neither a prerecorded animation nor on loop. The installation is in constant change, previous states will never be repeated and can never be seen again."
# )

# artwork_15.photos.attach(io: open("app/assets/images/15/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_16 = Artwork.create!(
#   title: "Spirits of the Flowers",
#   description: "Throughout the year, with the passing of time, flowers bloom and change. They bud, grow, and blossom before their petals to wither and eventually fade away. The cycle of growth and decay repeats itself in perpetuity. When people touch them, the flowers sway and scatter.\n\nThe flowers affect and are affected by other artworks. The influence of other works can cause the petals to scatter. When the figures from Walk, Walk, Walk pass by, the flowers bloom more frequently, and these blooming flowers obscure other artwork worlds.\n\nThe work is rendered in real time by a computer program, it is neither prerecorded nor imagery on loop. Previous states will never be repeated and can never be seen again."
# )

# artwork_16.photos.attach(io: open("app/assets/images/16/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_11.jpeg")), filename: "Image_11.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_12.jpeg")), filename: "Image_12.jpeg")
# # artwork_16.photos.attach(io: open("app/assets/images/16/Image_13.jpeg")), filename: "Image_13.jpeg")

# artwork_17 = Artwork.create!(
#   title: "Flutter of Butterflies Beyond Borders in the Crystal World",
#   description: "A flutter of butterflies created from an accumulation of light points.\n\nThis work starts when the Flutter of Butterflies Beyond Borders enter the Crystal World. The work ends when the butterflies leave the space and disappear.\n\nThe group of butterflies that come into this space are those from the Flutter of Butterflies Beyond Borders (a group of butterflies born from other artworks, such as the butterflies born from people's bodies in the Butterfly House). These butterflies release art from the concept of the frame, removing boundaries from the artwork space, the butterflies seamlessly fly inside other artworks.\n\nPointillism uses an accumulation of distinct dots of color to create a picture, here light points are used to create three-dimensional objects. The butterflies that are drawn by light points fly freely around the space. A visual illusion due to continuous dynamic behavior, causes the body of people in the space to be immersed in the flock of butterflies. The boundary between the body and the artwork world dissolve. As the shared world of the artwork changes, due to your existence and that of others in the work, people dissolve into the artwork and perhaps feel a sense of unity with others.\n\nNeither prerecorded nor on loop, the work is rendered in real time by a computer program. The interaction between the viewer and the installation causes continuous change in the artwork; previous visual states can never be replicated, and will never reoccur. This moment can never be seen again."
# )

# artwork_17.photos.attach(io: open("app/assets/images/17/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_18 = Artwork.create!(
#   title: "The Way of the Sea in the Crystal World",
#   description: "This work starts when the shoal of fish from The Way of the Sea enters the Crystal World. The work ends when the shoal of fish leave the space and disappear.\n\nThe fish sense people and try to avoid them. People in the space are assigned a color, when the fish pass close to a person they are dyed by the color of that person.\n\nPointillism uses an accumulation of distinct dots of color to create a picture, here light points are used to create three-dimensional objects. The fish that are drawn by light points swim freely around the space. A visual illusion due to continuous dynamic behavior, causes the body of people in the space to be immersed in the shoal of fish. The boundary between the body and the artwork world dissolve. As the shared world of the artwork changes, due to your existence and that of others in the work, people dissolve into the artwork and perhaps feel a sense of unity with others.\n\nThe movement of thousands of fish and birds is beautiful and mysterious, like a single giant life form. The flock has neither a leader nor mutual consensus, but moves on the simple basis of: if my neighbor moves, then I move too. The biological mechanism that causes flocks of hundreds of fish and birds to move at the same time is enigmatic. It seems there is a universal principle that humans do not understand. Likewise, the coloring of the flock is not predetermined. Influenced by the presence of people, the space becomes a complex and beautiful coloration. This coloration is created by the movement of each fihs and bird obeying some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_18.photos.attach(io: open("app/assets/images/18/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_18.photos.attach(io: open("app/assets/images/18/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_19 = Artwork.create!(
#   title: "Peace can be Realized Even without Order",
#   description: "An interactive digital installation consisting of numerous transparent figures.\n\nThis work starts when the figures from Walk, Walk, Walk: Search, Deviate, Reunite enter the numerous transparent image space. The work ends when the figures leave the space.\n\nThe figures in the space are all autonomous. They play instruments and dance, and each individual is influenced by the sounds from the figures close to them. There is no lead figure that oversees of influences all the other dancers, and there is no center or order enforced on the crowd. External events can cause disorder, but in time, peace will gradually be restored.\n\nWhen a person enters the installation and a figure senses the viewer, that figure sometimes responds to the person and stops playing music. After a short period of time, the figure will start playing music and dance again, but this disturbance will have disrupted the harmony. If, however, the viewer stays still or goes away, the dancers will begin to form back into one harmonious group and the feeling of peace will return.\n\nThe figures in the space will sometimes leave and walk outside. When they return they will start playing their instruments and dancing once again.\n\nIn Japan, there is an ancient dance festival called Awa Odori. Groups of individual dancers play music and proceed around the town arbitrarily. Groups play their own music as they like and dance as they like. Interestingly, for some reason, the music forms into a peaceful order across the whole town. Dancers who randomly meet other groups of dancers gradually and subconsciously match the tempo of their music with that of the other group. This is not due to any set of rules; it just feels right and happens without conscious choice. It seems that when people are set free from their inhibitions, an extraordinary peaceful feeling prevails despite the lack of any order to the dancers. Perhaps this is how people of ancient times maintained a feeling of peacefulness.\n\nThrough the Internet, people are arbitrarily connected with people they like. As a result, people throughout the world have become increasingly connected, and these connections have become more important. What we experience in these unordered connections is similar to the dance festival, perhaps it will provide a new methodology, to find peace.\n\nThe anonymous figures in the work represent no one but express someone.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_19.photos.attach(io: open("app/assets/images/19/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_20 = Artwork.create!(
#   title: "Flutter of Butterflies Beyond Borders, Ephemeral Life Born from People",
#   description: "The butterflies in Flutter of Butterflies are born from people, they dance in the space, but if people touch them they die.\n\nIf there are no people in the Butterfly House it is a dark space with nothing existing in it. When people enter the space and stand still a butterfly chrysalis appears on their body, and the butterfly emerges and flies from their feet.\n\nThe artwork is born from a person, but they themselves may not realize, instead they will notice the butterflies being born on other people before realizing that they too are creating the artwork.\n\nThe butterflies transcend the boundary of the display and leave the space, transcending the boundaries of artworks, enter and fly around in other works. By seamlessly flying into other works they break the concept of the artwork frame, and make the boundaries ambiguous. The butterflies are affected by the conditions in other artworks.\n\nOutside this space the butterflies gather with those drawn by people in Graffiti Nature, and released from characters in Born From the Darkness a Loving, and Beautiful World, to make a Flutter of Butterflies.\n\nIn the Borderless World there are only the butterflies that are born in the Butterfly House, Graffiti Nature, and Born From the Darkness a Loving, and Beautiful World. If people touch and kill too many butterflies then the work will cease to exist.\n\nNeither prerecorded nor on loop, the work is rendered in real time by a computer program. The interaction between the viewer and the installation causes continuous change in the artwork; previous visual states can never be replicated, and will never reoccur."
# )

# artwork_20.photos.attach(io: open("app/assets/images/20/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_20.photos.attach(io: open("app/assets/images/20/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_20.photos.attach(io: open("app/assets/images/20/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_20.photos.attach(io: open("app/assets/images/20/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_20.photos.attach(io: open("app/assets/images/20/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_21 = Artwork.create!(
#   title: "The Void",
#   description: ""
# )

# artwork_21.photos.attach(io: open("app/assets/images/21/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_21.photos.attach(io: open("app/assets/images/21/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_22 = Artwork.create!(
#   title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Layered Ultrasubjective Space",
#   description: "This is an installation consisting of countless translucent figures.\n\nThe work starts when the crows of Crows are Chased and the Chasing Crows are Destined to be Chased as well enters the Infinite Transparency Space. When the crows leave the space, the work ends.\n\nCrows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn become chased themselves. When the chased crows crash into one another, they scatter, turning into flowers."
# )

# artwork_22.photos.attach(io: open("app/assets/images/22/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_22.photos.attach(io: open("app/assets/images/22/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_23 = Artwork.create!(
#   title: "Flutter of Butterflies Beyond Borders in Layered Ultrasubjective Space",
#   description: "A Flutter of Butterflies expressed as countless semi-transparent images.\n\nThe work starts when Flutter of Butterflies Beyond Borders enters Infinite Transparency. The butterflies propagate in Infinite Transparency, and dance in the space, but when a viewer approaches they die.\n\nA large number of screens are positioned in the exhibition space. The position of the screens is reproduced on a computer in a virtual three dimensional space, and then the space is 'flattened' from multiple viewpoints into ultrasubjective space. The flattened multiple viewpoints are then positioned onto the screens. Ultrasubjective space allows for the area around the viewpoints to be cut out and the artwork to be exhibited layed within the exhibition space.\n\nWhen a visitor passes a screen and becomes immersed in the flutter of butterflies, from another person's viewpoint that person appears to be in the same relative position as the flutter of butterflies, both in the artwork and exhibition space. For the viewer that person has become a part of the artwork. In other words, when visitors are seen through the screen by others, they become a part of the artwork not only in the exhibition space but also in the artwork world.\n\nThe artwork is rendered in real time by a computer program. It is neither prerecorded nor on loop, and it is continuously changing. Previous visual states can never be replicated, and will never reoccur."
# )

# artwork_23.photos.attach(io: open("app/assets/images/23/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_23.photos.attach(io: open("app/assets/images/23/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_24 = Artwork.create!(
#   title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Floating Nest",
#   description: "A large nest floats in the center of the space. The work is viewed by lying down or sitting in the Floating Nest.\n\nThis work begins when the crows of Crows are Chased and the Chasing Crows are Destined to be Chased as well, cross the Flower Forest and enter the Floating Nest. The work ends when the crows leave the space and disappear.\n\nLie down in the Floating Nest and the lines drawn by the traces of crows appears to be drawn in three dimensions in the space. The body becomes immersed in the work, and the boundary between people and the work dissolves.\n\nCrows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn are chased themselves. When the chased crows crash into one another, they scatter, turning into flowers. The crows attempt to fly around people in the space, but when they crash into a viewer, they scatter, turning into flowers in the same way.\n\nThe installation is rendered in real time by a computer program, it is neither a prerecorded animation nor on loop. The installation as a whole is in constant change, previous states will never be repeated and can never be seen again."
# )

# artwork_24.photos.attach(io: open("app/assets/images/24/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_24.photos.attach(io: open("app/assets/images/24/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_24.photos.attach(io: open("app/assets/images/24/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_24.photos.attach(io: open("app/assets/images/24/Image_04.jpeg")), filename: "Image_04.jpeg")

# artwork_25 = Artwork.create!(
#   title: "Animals of Flowers, Symbiotic Lives - Layered Ultrasubjective Space",
#   description: "This is an interactive installation consisting of countless translucent figures.\n\nThe work starts when the animals of Animals of Flowers Born in the Flower Forest, Symbiotic Lives enter Infinite Transparency. When they leave the space the work ends.\n\nFlowers grow from the bodies of animals. The flowers bud, bloom, scatter, and fade away. When people touch the animals the flowers scatter. Once all of the flowers have scattered, the animals disappear.\n\nThe work is rendered in real time by a computer program. It is neither a prerecorded animation nor on loop. The interaction between the viewer and the installation causes continuous change in the artwork; previous visual states can never be replicated, and will never reoccur."
# )

# artwork_25.photos.attach(io: open("app/assets/images/25/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_26 = Artwork.create!(
#   title: "Flowers - Layered Ultrasubjective Space",
#   description: "Countless semi-transparent images of flowers.\n\nA seasonal year of flowers blooms and changes in time. However when lotus flowers in the passageway, they also flower here. The flowers are born, they grow, bud, blossom, and in time the petals scatter and they die and fade away. The flowers repeat the process of birth and death endlessly.\n\nA large number of screens are positioned in the exhibition space. The position of the screens are reproduced on a computer in a virtual three dimensional space, and then the space is 'flattened' from multiple viewpoints into ultrasubjective space. The flattened multiple viewpoints are then positioned onto the screens. Ultrasubjective space allows for the area around the viewpoints ot be cut out and the artwork to be exhibited layered within the exhibition space.\n\nWhen a visitor passes between screens they become layered in flowers, and from another person's perspective they exist in the artwork world. In other words, when visitors are seen through the screen by others, they become a part of the work not only in the exhibition space but also in the artwork world.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_26.photos.attach(io: open("app/assets/images/26/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_26.photos.attach(io: open("app/assets/images/26/Image_07.jpeg")), filename: "Image_07.jpeg")

# artwork_27 = Artwork.create!(
#   title: "Flowers Bombing",
#   description: "The flowers drawn on paper in Graffiti Nature appear on the wall and grow in clusters.\n\nThe flowers created by people are born, they bloom, scatter and die. As the flowers scatter, the trajectory of the petals draw new lines. If people place their hands on the wall and hold them still, more flowers bloom. If they move their hands, all the flowers scatter in an instant.\n\nThis work is based on the Red List and depicts local endangered wildlife."
# )

# artwork_27.photos.attach(io: open("app/assets/images/27/Image_01.jpeg")), filename: "Image_01.jpeg")

# artwork_28 = Artwork.create!(
#   title: "Walk, Walk Walk: Search, Deviate, Reunite",
#   description: "This artwork is based on a 2004 artwork Flowers are Crimson.\n\nThe artwork starts when Peace can be Realized Even without Order leaves its exhibition space, transcends the boundaries between artworks, sometimes influences other works, and continues walking.\n\nThis space is made of a group of anonymous and diverse figures. The figures keep walking and as they do the artwork moves. When visitors touch the figures, they react, sometimes stop, sometimes change the direction and choose a different path.\n\nAs visitors keep walking they make decisions and choices, sometimes abandoning things along the way.\n\nThe Zen expression 'Hoho kore dojo' says every step is the place to learn. The figures of the work continue walking endlessly while confronting new situations. Walking after the figures or confronting new figures one another another the visitors also make choices along their own path.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
# )

# artwork_28.photos.attach(io: open("app/assets/images/28/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_10.jpeg")), filename: "Image_10.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_11.jpeg")), filename: "Image_11.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_12.jpeg")), filename: "Image_12.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_13.jpeg")), filename: "Image_13.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_14.jpeg")), filename: "Image_14.jpeg")
# # artwork_28.photos.attach(io: open("app/assets/images/28/Image_15.jpeg")), filename: "Image_15.jpeg")

# artwork_29 = Artwork.create!(
#   title: "Black Waves - Continuous",
#   description: "The movement of waves in water is simulated in a computer-generated three-dimensional space. The water is expressed as a continuous body after calculating the interactions of hundreds of thousands of particles. To visualize the waves, the behavior of the particles of the water was then extracted and lines were drawn in relation to the movement of the particles. The wave created in a 3-D space is then turned into an artwork in accordance with what A Lull in the Museum refers to as ultrasubjective space.\n\nIn premodern Japanese painting, oceans, rivers, and other bodies of water were expressed as a series of lines. These lines give the impression of life, as though water was a living entity. This form of expression leads us to question why premodern people sensed life in rivers and oceans. Also, why did they behave as if they themselves were a part of nature? Perhaps something can be discovered by fusing the fixed objective world of today's common knowledge with the subjective world of premodern people.\n\nWhen viewing this artwork, as opposed to watching waves shot with a video camera, people may feel that the barrier between themselves and the waves disappears. They feel immersed in the work, perhaps even feeling life in the collection of lines, as if the waves are luring them in. Perhaps we can find a connection to the way premodern Japanese people perceived the world and consequently behaved towards the world.\n\nIf we regard ourselves as a part of nature, and consider nature not just as something to be observed, we might join premodern people in perceiving rivers and oceans as living entities. This is a way of seeing the world that lures us in and allows us to feel that there is no boundary between ourselves and nature."
# )

# artwork_29.photos.attach(io: open("app/assets/images/29/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_29.photos.attach(io: open("app/assets/images/29/Image_07.jpeg")), filename: "Image_07.jpeg")

# artwork_30 = Artwork.create!(
#   title: "Red People in the Blue",
#   description: "There are red people in the blue space.\n\nLight Sculpture Fog series. Reconstruction of ambiguous space with smoke and light, construction of ambiguous solid objects.\n\nAmbiguous space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_30.photos.attach(io: open("app/assets/images/30/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_30.photos.attach(io: open("app/assets/images/30/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_31 = Artwork.create!(
#   title: "Aurora Lights II",
#   description: "At the center of the space a mass of light in which light color mixes is born.\n\nLight Sculpture Fog series. Reconstruction of ambiguous space with fog and light, construction of ambiguous solid objects.\n\nAmbiguous space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_31.photos.attach(io: open("app/assets/images/31/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_31.photos.attach(io: open("app/assets/images/31/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_31.photos.attach(io: open("app/assets/images/31/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_32 = Artwork.create!(
#   title: "The Haze",
#   description: "In the centre of the space due to a haze being created a three-dimensional object is born.\n\nLight Sculpture Fog series. Reconstruction of ambiguous space with smoke and light, construction of ambiguous solid objects.\n\nAmbiguous space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_32.photos.attach(io: open("app/assets/images/32/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_32.photos.attach(io: open("app/assets/images/32/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_32.photos.attach(io: open("app/assets/images/32/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_32.photos.attach(io: open("app/assets/images/32/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_32.photos.attach(io: open("app/assets/images/32/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_33 = Artwork.create!(
#   title: "Grid Spaces",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_33.photos.attach(io: open("app/assets/images/33/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_33.photos.attach(io: open("app/assets/images/33/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_33.photos.attach(io: open("app/assets/images/33/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_34 = Artwork.create!(
#   title: "Descent of the Gods",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_34.photos.attach(io: open("app/assets/images/34/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_34.photos.attach(io: open("app/assets/images/34/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_34.photos.attach(io: open("app/assets/images/34/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_35 = Artwork.create!(
#   title: "Light Cave",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_35.photos.attach(io: open("app/assets/images/35/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_35.photos.attach(io: open("app/assets/images/35/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_35.photos.attach(io: open("app/assets/images/35/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_36 = Artwork.create!(
#   title: "Light Shell II",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_36.photos.attach(io: open("app/assets/images/36/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_36.photos.attach(io: open("app/assets/images/36/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_36.photos.attach(io: open("app/assets/images/36/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_37 = Artwork.create!(
#   title: "Light Vortex II",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_37.photos.attach(io: open("app/assets/images/37/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_37.photos.attach(io: open("app/assets/images/37/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_37.photos.attach(io: open("app/assets/images/37/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_37.photos.attach(io: open("app/assets/images/37/Image_04.jpeg")), filename: "Image_04.jpeg")

# artwork_38 = Artwork.create!(
#   title: "Light Evaporating with People",
#   description: "When people touch the focal point where floating lines meet, the points evaporate and disappear.\n\nLight Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_38.photos.attach(io: open("app/assets/images/38/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_38.photos.attach(io: open("app/assets/images/38/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_38.photos.attach(io: open("app/assets/images/38/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_38.photos.attach(io: open("app/assets/images/38/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_38.photos.attach(io: open("app/assets/images/38/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_38.photos.attach(io: open("app/assets/images/38/Image_06.jpeg")), filename: "Image_06.jpeg")

# artwork_39 = Artwork.create!(
#   title: "Flutter of Butterflies Beyond Borders, Intersections Create Life - 1 Butterfly where 64 Light Rays Cross",
#   description: "This artwork starts when the butterflies from Flutter of Butterflies Beyond Borders enter the Light Sculpture Space of the Flower Forest.\n\nThe group of butterflies that come into this space are those from the Flutter of Butterflies Beyond Borders (a group of butterflies born from other artworks, such as the butterflies born from people's bodies in the Butterfly House). These butterflies release art from the concept of the frame, removing boundaries from the artwork space, the butterflies seamlessly fly inside other artworks.\n\nButterflies are expressed at the convergence of light lines and fly around the space in three-dimensions. If people touch the butterflies, they disappear.\n\nThe artwork ends when the butterflies leave the space and fly again in the space outside. The artwork ends when all the butterflies leave the space and disappear."
# )

# artwork_39.photos.attach(io: open("app/assets/images/39/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_39.photos.attach(io: open("app/assets/images/39/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_39.photos.attach(io: open("app/assets/images/39/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_40 = Artwork.create!(
#   title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Intersections Create Life - 1 Crow where 16 Light Rays Cross",
#   description: "This work starts when the crows of Crows are Chased and the Chasing Crows are Destined to be Chased as well enter the Light Sculpture Space that is located in the Flower Forest.\n\nCrows are drawn at the intersection of 16 rays of light and fly around the space in three-dimensions. Crows chase after each other, and the chasing crows eventually are chased themselves.\n\nThe Light Sculpture Line series uses light to construct sculptural space in three-dimensions. The space and three-dimensional light sculptures move around people immersing their bodies in the artwork."
# )

# artwork_40.photos.attach(io: open("app/assets/images/40/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_40.photos.attach(io: open("app/assets/images/40/Image_07.jpeg")), filename: "Image_07.jpeg")

# artwork_41 = Artwork.create!(
#   title: "Barrier",
#   description: "Light Sculpture Line series. Reconstruction of space and three-dimensional objects with light lines. The space and three-dimensional objects move, wrapping around the body of people in the space, and immersing the body."
# )

# artwork_41.photos.attach(io: open("app/assets/images/41/Image_01.jpeg")), filename: "Image_01.jpeg")
# # # artwork_41.photos.attach(io: open("app/assets/images/41/Image_02.jpeg")), filename: "Image_02.jpeg")

# artwork_42 = Artwork.create!(
#   title: "Reversible Rotation - Continuous, Black in White",
#   description: "The Spatial Calligraphy rotates in the artwork space, every aspect rotating in the same direction, but depending on a viewer's perception, it can appear to be rotating clockwise or counterclockwise. Within the artwork, both ends are connected creating a space that is continuous in a single direction.\n\nSpatial Calligraphy offers a contemporary interpretation of traditional Japanese sho (calligraphy) in an abstract space. The artwork reconstructs Japanese sho in three dimensional space and expresses the depth, speed and power of the brush stroke."
# )

# artwork_42.photos.attach(io: open("app/assets/images/42/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_42.photos.attach(io: open("app/assets/images/42/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_42.photos.attach(io: open("app/assets/images/42/Image_03.jpeg")), filename: "Image_03.jpeg")

# artwork_43 = Artwork.create!(
#   title: "Impermanent Life, at the Confluence of Spacetime New Space and Time is Born",
#   description: "In the background, cherry blossoms bloom and scatter, the cycle of life and death repeats itself.\n\nFrom the countless background points, at a certain rhythm and interval, a circle is born that grows and spreads out radially. The circle born transforms only the light and darkness of the background world."
# )

# artwork_43.photos.attach(io: open("app/assets/images/43/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_05.jpeg")), filename: "Image_05.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_06.jpeg")), filename: "Image_06.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_07.jpeg")), filename: "Image_07.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_08.jpeg")), filename: "Image_08.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_09.jpeg")), filename: "Image_09.jpeg")
# # artwork_43.photos.attach(io: open("app/assets/images/43/Image_10.jpeg")), filename: "Image_10.jpeg")

# artwork_44 = Artwork.create!(
#   title: "Peony Peacock",
#   description: "Fleeting Flower Series.\n\nEverything exists on a fragile continuity of life that knows no boundaries and has continued for a long, long time. The image of a peacock appears in peony flowers that are born and blossom. In time the flowers scatter. At the moment each flower scatters that part of the peacock scatters."
# )

# artwork_44.photos.attach(io: open("app/assets/images/44/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_44.photos.attach(io: open("app/assets/images/44/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_44.photos.attach(io: open("app/assets/images/44/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_44.photos.attach(io: open("app/assets/images/44/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_44.photos.attach(io: open("app/assets/images/44/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_45 = Artwork.create!(
#   title: "Chrysanthemum Tiger",
#   description: "Fleeting Flower Series.\n\nEverything exists on a fragile continuity of life that knows no boundaries and has continued for a long, long time. The image of a tiger appears in chrysanthemum flowers that are born and blosom. In time the flowers scatter. At the moment each flower scatters that part of the tiger scatters."
# )

# artwork_45.photos.attach(io: open("app/assets/images/45/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_45.photos.attach(io: open("app/assets/images/45/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_45.photos.attach(io: open("app/assets/images/45/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_45.photos.attach(io: open("app/assets/images/45/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_45.photos.attach(io: open("app/assets/images/45/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_46 = Artwork.create!(
#   title: "Sunflower Phoenix",
#   description: "Fleeting Flower Series.\n\nEverything exists on a fragile continuity of life that knows no boundaries and has contuined for a long, long time. The image of a phoenix appears in sunflowers that are born and blossom. In time the flowers scatter. At the moment each flower scatters that part of the phoenix scatters."
# )

# artwork_46.photos.attach(io: open("app/assets/images/46/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_46.photos.attach(io: open("app/assets/images/46/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_46.photos.attach(io: open("app/assets/images/46/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_46.photos.attach(io: open("app/assets/images/46/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_46.photos.attach(io: open("app/assets/images/46/Image_05.jpeg")), filename: "Image_05.jpeg")

# artwork_47 = Artwork.create!(
#   title: "Lotus Elephant",
#   description: "Fleeting Flower Series.\n\nEverything exists on a fragile continuity of life that knows no boundaries and has continued for a long, long time. The image of an elephant appears in lotus flowers that are born and blossom. In time the flowers scatter. At the moment each flower scatters that part of the elephant scatters."
# )

# artwork_47.photos.attach(io: open("app/assets/images/47/Image_01.jpeg")), filename: "Image_01.jpeg")
# # artwork_47.photos.attach(io: open("app/assets/images/47/Image_02.jpeg")), filename: "Image_02.jpeg")
# # artwork_47.photos.attach(io: open("app/assets/images/47/Image_03.jpeg")), filename: "Image_03.jpeg")
# # artwork_47.photos.attach(io: open("app/assets/images/47/Image_04.jpeg")), filename: "Image_04.jpeg")
# # artwork_47.photos.attach(io: open("app/assets/images/47/Image_05.jpeg")), filename: "Image_05.jpeg")

# # Like Seeds
# like_1 = Like.create!(
#   user_id: user_2.id,
#   artwork_id: artwork_1.id
# )

# # Comment Seeds
# comment_1 = Comment.create!(
#   user_id: user_1.id,
#   artwork_id: artwork_1.id,
#   body: "same as always"
# )

# comment_2 = Comment.create!(
#   user_id: user_2.id,
#   artwork_id: artwork_1.id,
#   body: "boppin"
# )