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

artwork_2 = Artwork.create!(
  title: "Walk, Walk, Walk: Free Infinity",
  description: "Anonymous and diverse figures walk freely in space. They sing, and when they walk near visitors, they sing more. Just as the figures in the artwork move freely singing and dancing in any direction, people in real life are free to dance anywhere and walk in any direction.\n\nThis work is to be viewed from a position close to the entrance.\n\nThe work begins when the figures of Walk, Walk, Walk enter into the Cave Universe in the middle of the aisle. When the work ends, when the figures leave the space and disappear.\n\nIf you stand at position close to the entrance the boundary between the wall and the floor disappears, the real space dissolves and the body becomes immersed in the artwork.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. Previous states will never be repeated and can never be seen again."
)

artwork_3 = Artwork.create!(
  title: "The Way of the Sea, Floating Nest",
  description: "A large nest floats in the center of the space. The work is viewed by lying down or sitting in the Floating Nest.\n\nThis work starts when the shoal of fish from The Way of the Sea passes through the Flower Forest and enters the Floating Nest. The work ends when the fish leave the space and disappear.\n\nLie down in the Floating Nest and the lines drawn by the traces of the fish appears to be drawn in three dimensions in the space. The body becomes immersed into the work, and the boundary between people and the work dissolves.\n\nThe fish are rendered in light as they fly around the space, leaving trails of light in their paths and creating spatial calligraphy.\n\n'The way of the bird' is a saying in Zen which refers to the fact that unlike a human road the road of the bird is not fixed. Its meaning is freedom and of leaving no trace. Here the birds are replaced with fish.\n\nThe movement of thousands of fish and birds is beautiful and mysterious, like a single giant life form. The flock has neither a leader nor mutual consensus, but moves on the simple basis of; if my neighbor moves, then I move too. The biological mechanism that causes flocks of hundreds of fish and birds to move at the same time is enigmatic. It seems there is a universal principle that humans do not understand. Likewise, the coloring of the flock is not predetermined. Influenced by the presence of people, the space becomes a complex and beautiful coloration. This coloration is created by the movement of each fish and bird obeying some kind of primitive rule.\n\nThe work is rendered in real time by a computer program, it is neither a prerecorded animation nor imagery on loop. The work as a whole is in constant change; previous states will never be repeated and can never be seen again."
)

artwork_4 = Artwork.create!(
  title: "Wander through the Crystal World",
  description: "This interactive installation artwork uses an accumulation of light points to create a sculptural body, similar to the way distinct dots of color form an image in a pointillist painting. The accumulation of lights in three-dimensional space form an expression of a world inside the Crystal World.\n\nBack when kanji (hieroglyphic characters) were carved into the shell of a turtle, the bone of a cow or deer, or cast in a piece of bronze ware, each character contained an entire world within in. Here, a Crystal World is created when a person summons the worlds contained in the characters up, through their smartphone. Each summoned world has an affect on the world of other visitors', and is influenced by the people in the installation.\n\nButterflies drawn and created by visitors at other A Lull In The Museum locations, or through other works of art, can make their way into this world, transformed into 3D creations through points of light.\n\nDue to visitor interaction this Crystal World is in perpetual change, the space is reborn moment by moment."
)

artwork_5 = Artwork.create!(
  title: "Memory of Topography",
  description: "This artwork installation depicts a rural mountain landscape of varying elevations. The scenery instills in the viewer a feeling of eternal permanence, however with the flow of real time the scenergy is continuously changing. In the spring, the rice fields are still small and lush. In summer, they begin to mature, and in fall, they turn a golden color. And with the flow of time, the insects and flowers that make an appearance also changes. The movement of insects if influenced by the movement and actions of people. And as people move around, the flow of air changes and blows the rice plants or scatters flower petals in different directions.\n\nThe overall appearance of this work will hardly change with each year. However, as in nature, the scenery is actually changing and you will never see the same scenery twice. This moment will never be repeated and can never be seen again. Seemingly unchanging landscapes, go on year after year for eternity.\n\nThe work and the canvas that mediates it are separated - the canvas has become transformative. The visual illusion produced by continuous dynamic change causes the viewer to become bodily immersed in the work, and the border between the viewer and artwork dissolves. As the unified world changes, viewers may feel a sense of melting into the world, becoming one with it and with each other."
)