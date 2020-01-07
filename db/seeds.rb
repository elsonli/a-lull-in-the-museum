# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User Seeds
User.create!(
  username: "TestUser",
  password: "DemoLogin"
)

# Artwork Seeds
artwork_1 = Artwork.create!(
  title: "Universe of Water Particles on a Rock where People Gather",
  description: "Crossing the boundaries of other works, sometimes influencing other works, water flows from the Athletics Forest, Graffiti Nature - High Mountains and Deep Valleys, and accumulates into the waterfall of the Universe of Water Particles on a Rock where People Gather.\n\nThe Rock where People Gather is reproduced in a virtual three-dimensional space. Water is simulated to fall onto the rock, and the flow of the water draws the shape of the waterfall. The water is represented by a continuum of numerous water particles and the interaction between the particles is then calculated. Lines are drawn in relation to the behavior of the water particles. The lines are then 'flattened' using what teamLab considers to be ultrasubjective space.\n\nWhen a person stands on the rock or touches the waterfall, they too become like a rock that changes the flow of water. The flow of water continues to transform in real time due to the interaction of people. Previous visual states can never be replicated, and will never reoccur."
)

artwork_1.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/01/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_2 = Artwork.create!(
  title: "Walk, Walk, Walk: Free Infinity",
  description: "Anonymous and diverse figures walk freely in space. They sing, and when they walk near visitors, they sing more. Just as the figures in the artwork move freely singing and dancing in any direction, people in real life are free to dance anywhere and walk in any direction.\n\nThis work is to be viewed from a position close to the entrance.\n\nThe work begins when the figures of Walk, Walk, Walk enter into the Cave Universe in the middle of the aisle. When the work ends, when the figures leave the space and disappear.\n\nIf you stand at position close to the entrance the boundary between the wall and the floor disappears, the real space dissolves and the body becomes immersed in the artwork.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. Previous states will never be repeated and can never be seen again."
)

artwork_2.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/02/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_3 = Artwork.create!(
  title: "The Way of the Sea, Floating Nest",
  description: "A large nest floats in the center of the space. The work is viewed by lying down or sitting in the Floating Nest.\n\nThis work starts when the shoal of fish from The Way of the Sea passes through the Flower Forest and enters the Floating Nest. The work ends when the fish leave the space and disappear.\n\nLie down in the Floating Nest and the lines drawn by the traces of the fish appears to be drawn in three dimensions in the space. The body becomes immersed into the work, and the boundary between people and the work dissolves.\n\nThe fish are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road the road of the bird is not fixed. Its meaning is freedom and of leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands of fish and birds is beautiful and mysterious, like a single giant life form. The flock has neither a leader nor mutual consensus, but moves on the simple basis of; if my neighbor moves, then I move too. The biological mechanism that causes flocks of hundreds of fish and birds to move at the same time is enigmatic. It seems there is a universal principle that humans do not understand. Likewise, the coloring of the flock is not predetermined. Influenced by the presence of people, the space becomes a complex and beautiful coloration. This coloration is created by the movement of each fish and bird obeying some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
)

artwork_3.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/03/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_4 = Artwork.create!(
  title: "Wander through the Crystal World",
  description: "This interactive installation artwork uses an accumulation of light points to create a sculptural body, similar to the way distinct dots of color form an image in a pointillist painting. The accumulation of lights in three-dimensional space form an expression of a world inside the Crystal World.\n\nBack when kanji (hieroglyphic characters) were carved into the shell of a turtle, the bone of a cow or deer, or cast in a piece of bronze ware, each character contained an entire world within in. Here, a Crystal World is created when a person summons the worlds contained in the characters up, through their smartphone. Each summoned world has an affect on the world of other visitors', and is influenced by the people in the installation.\n\nButterflies drawn and created by visitors at other A Lull In The Museum locations, or through other works of art, can make their way into this world, transformed into 3D creations through points of light.\n\nDue to visitor interaction this Crystal World is in perpetual change, the space is reborn moment by moment."
)

artwork_4.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/04/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_5 = Artwork.create!(
  title: "Memory of Topography",
  description: "This artwork installation depicts a rural mountain landscape of varying elevations. The scenery instills in the viewer a feeling of eternal permanence, however with the flow of real time the scenergy is continuously changing. In the spring, the rice fields are still small and lush. In summer, they begin to mature, and in fall, they turn a golden color. And with the flow of time, the insects and flowers that make an appearance also changes. The movement of insects if influenced by the movement and actions of people. And as people move around, the flow of air changes and blows the rice plants or scatters flower petals in different directions.\n\nThe overall appearance of this work will hardly change with each year. However, as in nature, the scenery is actually changing and you will never see the same scenery twice. This moment will never be repeated and can never be seen again. Seemingly unchanging landscapes, go on year after year for eternity.\n\nThe work and the canvas that mediates it are separated - the canvas has become transformative. The visual illusion produced by continuous dynamic change causes the viewer to become bodily immersed in the work, and the border between the viewer and artwork dissolves. As the unified world changes, viewers may feel a sense of melting into the world, becoming one with it and with each other."
)

artwork_5.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/05/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_6 = Artwork.create!(
  title: "Animals of Flowers Born in the Flower Forest, Symbiotic Lives",
  description: "Animals that are born in the Flower Forest are made of the Flowers of the Forest. The flowers grow from the body of the animals, bloom, and in time their petals scatter, they wither and die. The cycle of life and death continues for eternity. When people touch the animals the flower petals scatter. If people touch the animals too much all the flowers will scatter, and the animals will die and fade away.\n\nThe work is rendered in real time by a computer program. It is neither a prerecorded animation nor on loop. The interaction between the viewer and the installation causes continuous changes in the artwork; previous visual states can never be replicated, and will never reoccur."
)

artwork_6.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/06/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_7 = Artwork.create!(
  title: "Born From the Darkness a Loving, and Beautiful World",
  description: "When a person stands close to a character, the world that that character embodies will appear and a new world will be created. The objects that are released from the characters go on to influence one another in the new world.\n\nThe work is also influenced by other works. For example, when crows fly through the characters they release the world contained within them.\n\nBehind the projected world, there is a 360-degree computer-generated space. The objects that are born from the characters are placed at various positions within that space, and the physical influences and connections between the objects are calculated in real time, producing a complex and natural world. For example, if the wind blows, the objects are subjected to its physical influence. Butterflies are frightened by fire, but attracted to flowers. Just as in nature, no two moments are repeated. The passing moments of the world are never the same and new visual worlds are constantly being created.\n\nChinese characters were first carved in turtle shells and ox or deer bones, and were engraved in bronze ware. Each character contained its own world that was conjured up by its meaning. Through the characters, the world that people call up connects and interacts with others to create a new continuously changing world."
)

artwork_7.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/07/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_8 = Artwork.create!(
  title: "The Way of the Sea, Transcending Space - Colors of Life",
  description: "This work starts when the shoal of fish from The Way of the Sea enters the Cave Universe, and the work ends when the fish leave the space and disappear.\n\nIf you stand at a position close to the entrance, the boundary between the wall and the floor disappear. The real space dissolves and the lines drawn by the trails of the crows appear to be drawn in three dimensions in the space. Eventually the body becomes immersed in the artwork world, and the border between the artwork and the viewer dissolves.\n\nThe school of fish illuminated by the light move freely through the space, and their trails of light become spatial calligraphy. The fish sense people in the space and try to avoid colliding with them. People are also assigned a color, and when a fish passes by a person they take on that color.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road, the road of the bird is not fixed. Its meaning is freedom and of leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
)

artwork_8.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/08/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_9 = Artwork.create!(
  title: "Forest of Flowers and People: Lost, Immersed and Reborn",
  description: "The flowers bud, grow, and blossom before their petals begin to wither and eventually fade away. The cycle of growth and decay repeats itself in perpetuity. If viewers stay still, flowers surrounding them bloom and grow more abundantly than usual. If viewers touch or step on the flowers, they shed their petals all at once.\n\nThe flowers of Flower Foest are influenced by other works causing them to scatter. For example, butterflies gather in places where flowers are blooming, the flowers scatter when crows enter the forest or when the waterfall swells.\n\nNeither a prerecorded animation nor on loop, the work in rendered in real time by a computer program. The interaction between the viewer and the installation causes continuous change in the artwork; previous visual states can never be replicated, and will never reoccur.\n\n In spring in the Kunisaki Peninsula, there are many cherry blossoms in the mountains and rapeseed blossoms at their base. The abundance of flowers caused A Lull in the Museum to wonder how many of these flowers were planted by people and how many were native to the environment. It is a place of great sereniy and contentment, but the expansive body of flowers is an ecosystem influenced by human intervention, and the boundary between the work of nature and the work of humans is unclear. Rather than nature and humans being in conflict, a healthy ecosystem is one that includes people.\n\nIn the past people understood that they could not grasp nature in its entirety, and that it is not possible to control nature. People lived more clsoely aligned to the rules of nature that created a comfortable natural environment. Before the modern era, civilization prospered by the sea. Since then it moved inland leaving pockets of isolated people in the solitary valleys. In these valleys there are faint traces of the relationship with nature that existed. If nature cannot be controlled, perhaps a hint for the future lies in the relationship that once existed between humans and nature."
)

artwork_9.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/09/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_10 = Artwork.create!(
  title: "Flutter of Butterflies Beyond Borders, Floating Nest",
  description: "A large nest floats in the center of the space. The artwork is viewed by lying down or sitting in the Floating Nest.\n\nThis work starts when the butterflies from Flutter of Butterflies Beyond Borders enters the Floating Nest. The work ends when Crows are Chased and the Chasing Crows are Destined to be Chased as Well or The Way of the Sea enters the space, and the butterflies all die.\n\nThe group of butterflies that come into this space are those from the Flutter of Butterflies Beyond Borders (a group of butterflies born from other artworks, such as the butterflies born from people's bodies in the Butterfly House). These butterflies release art from the concept of the frame, removing boundaries from the artwork space, the butterflies seamlessly fly inside other artworks.\n\nLie down in the Floating Nest, and before long, the body will become immersed in the art, dissolving the boundary between people and the work.\n\nThe artwork is rendered in real time by a computer program. It is neither a prerecorded animation nor on loop. As a whole, it is continuously changing, and previous visual states are never replicated. The picture at this moment can never be seen again."
)

artwork_10.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/10/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_11 = Artwork.create!(
  title: "Sharing Stone, Transcending Space",
  description: ""
)

artwork_11.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/11/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_12 = Artwork.create!(
  title: "The Way of the Sea in the Memory of Topography - Colors of Life",
  description: "This work begins when The Way of the Sea enters the Memory of Topography, a space of varying elevations. The work ends when the shoal of fish leaves the space and disappears.\n\nThe fish are rendered in light as they fly around the space, they sense people and try to avoid them. People in the space are assigned colors and when the fish pass by they are dyed by that color.\n\nThe work and the canvas that mediates it are separated - the canvas has become transformative. The visual illusion produced by continuous dynamic change causes the viewer to become bodily immersed in the work, and the border between the viewer and artwork dissolves. As the unified world changes viewers may feel a sense of melting into the world, becoming one with it and each other.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery or loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
)

artwork_12.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/12/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_13 = Artwork.create!(
  title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Flying Beyond Borders",
  description: "Crows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn become chased themselves. When the chased crows crash into one another, they scatter, turning into flowers. The crows attempt to fly around people in the space, but when they crash into a viewer, they scatter, turning into flowers in the same way.\n\nWhen you stand near a certain designated space within the artwork the boundary between the wall and the floor disappears, the real space dissolves, eventually we become immersed in the artwork world and the lines drawn by the trails of the crows appears to be drawn in three dimensions in the space.\n\nThe installation is rendered in real time by a computer program, it is neither a prerecorded animation nor on loop. The installation as a whole is in constant change, previous states will never be repeated and can never be seen again."
)

artwork_13.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/13/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_14 = Artwork.create!(
  title: "The Way of the Sea, Flying Beyond Borders - Colors of Life",
  description: "This work begins with a shoal of fish, The Way of the Sea, leaves a room and crosses the boundaries of other works, sometimes influencing the works, and freely moves around.\n\nThe school of fish illuminated by the light move freely through space, and their trails of light become spatial calligraphy. The fish sense people in the space and try to avoid colliding with them.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road the road of the bird is not fixed. It means freedom and leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands or tens of thousands of fish is beautiful and mysterious, like a single giant life form. The school of fish has neither a leader nor mutual consensus, but just moves on the simple basis of: if my neighbor moves, then I move, too. However, the biological mechanism that causes hundreds of fish to move at the same time is still enigmatic. It seems there is a universal principle that human beings do not yet understand. The group of trails of light drawn in the space have no meaning as a whole, while being influenced by the existence of people, the lines are drawn by the movement of each fish that seems to obey some kind of primitive rule."
)

artwork_14.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/14/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_15 = Artwork.create!(
  title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Transcending Space",
  description: "This work is to be viewed from a position close to the entrance.\n\nThe work begins with crows of Crows are Chased and the Chasing Crows are Destined to be Chased as well enter into the Cave Universe in the middle of the aisle. When the work ends, the crows leave the space and disappear.\n\nIf you stand at a position close to the entrance, the boundary between the wall and the floor disappears, the real space dissolves and the lines drawn by the trails of the crows appear to be drawn in three dimensions in the space. Eventually the body becomes immersed in the artwork world, and the border between the artwork and the viewer dissolves.\n\nCrows are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy. The crows chase one another and in turn become chased themselves. When the chased crows crash into one another, they scatter, turning into flowers. The crows attempt to fly around people in the space, but when they crash into a viewer, they scatter, turning into flowers in the same way.\n\nThe installation is rendered in real time by a computer program, it is neither a prerecorded animation nor on loop. The installation is in constant change, previous states will never be repeated and can never be seen again."
)

artwork_15.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/15/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_16 = Artwork.create!(
  title: "Spirits of the Flowers",
  description: ""
)

artwork_16.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/16/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_17 = Artwork.create!(
  title: "Flutter of Butterflies Beyond Borders in the Crystal World",
  description: ""
)

artwork_17.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/17/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_18 = Artwork.create!(
  title: "The Way of the Sea in the Crystal World",
  description: ""
)

artwork_18.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/18/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_19 = Artwork.create!(
  title: "Peace can be Realized Even without Order",
  description: ""
)

artwork_19.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/19/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_20 = Artwork.create!(
  title: "Flutter of Butterflies Beyond Borders, Ephemeral Life Born from People",
  description: ""
)

artwork_20.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/20/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_21 = Artwork.create!(
  title: "The Void",
  description: ""
)

artwork_21.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/21/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_22 = Artwork.create!(
  title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Layered Ultrasubjective Space",
  description: ""
)

artwork_22.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/22/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_23 = Artwork.create!(
  title: "Flutter of Butterflies Beyond Borders in Layered Ultrasubjective Space",
  description: ""
)

artwork_23.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/23/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_24 = Artwork.create!(
  title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Floating Nest",
  description: ""
)

artwork_24.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/24/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_25 = Artwork.create!(
  title: "Animals of Flowers, Symbiotic Lives - Layered Ultrasubjective Space",
  description: ""
)

artwork_25.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/25/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_26 = Artwork.create!(
  title: "Flowers - Layered Ultrasubjective Space",
  description: ""
)

artwork_26.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/26/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_27 = Artwork.create!(
  title: "Flowers Bombing",
  description: ""
)

artwork_27.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/27/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_28 = Artwork.create!(
  title: "Walk, Walk Walk: Search, Deviate, Reunite",
  description: ""
)

artwork_28.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/28/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_29 = Artwork.create!(
  title: "Black Waves - Continuous",
  description: ""
)

artwork_29.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/29/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_30 = Artwork.create!(
  title: "Red People in the Blue",
  description: ""
)

artwork_30.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/30/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_31 = Artwork.create!(
  title: "Aurora Lights II",
  description: ""
)

artwork_31.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/31/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_32 = Artwork.create!(
  title: "The Haze",
  description: ""
)

artwork_32.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/32/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_33 = Artwork.create!(
  title: "Grid Spaces",
  description: ""
)

artwork_33.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/33/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_34 = Artwork.create!(
  title: "Descent of the Gods",
  description: ""
)

artwork_34.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/34/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_35 = Artwork.create!(
  title: "Light Cave",
  description: ""
)

artwork_35.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/35/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_36 = Artwork.create!(
  title: "Light Shell II",
  description: ""
)

artwork_36.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/36/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_37 = Artwork.create!(
  title: "Light Vortex II",
  description: ""
)

artwork_37.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/37/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_38 = Artwork.create!(
  title: "Light Evaporating with People",
  description: ""
)

artwork_38.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/38/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_39 = Artwork.create!(
  title: "Flutter of Butterflies Beyond Borders, Intersections Create Life - 1 Butterfly where 64 Light Rays Cross",
  description: ""
)

artwork_39.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/39/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_40 = Artwork.create!(
  title: "Crows are Chased and the Chasing Crows are Destined to be Chased as well, Intersections Create Life - 1 Crow where 16 Light Rays Cross",
  description: ""
)

artwork_40.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/40/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_41 = Artwork.create!(
  title: "Barrier",
  description: ""
)

artwork_41.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/41/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_42 = Artwork.create!(
  title: "Reversible Rotation - Continuous, Black in White",
  description: ""
)

artwork_42.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/42/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_43 = Artwork.create!(
  title: "Impermanent Life, at the Confluence of Spacetime New Space and Time is Born",
  description: ""
)

artwork_43.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/43/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_44 = Artwork.create!(
  title: "Peony Peacock",
  description: ""
)

artwork_44.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/44/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_45 = Artwork.create!(
  title: "Chrysanthemum Tiger",
  description: ""
)

artwork_45.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/45/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_46 = Artwork.create!(
  title: "Sunflower Phoenix",
  description: ""
)

artwork_46.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/46/Image_01.jpeg")), filename: "Image_01.jpeg")

artwork_47 = Artwork.create!(
  title: "Lotus Elephant",
  description: ""
)

artwork_47.photos.attach(io: File.open(File.join(Rails.root, "app/assets/images/47/Image_01.jpeg")), filename: "Image_01.jpeg")