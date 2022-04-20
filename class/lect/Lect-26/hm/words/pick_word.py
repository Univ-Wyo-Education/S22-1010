import random
words = [ 
"aardvark",
"aardwolf",
"abyssinian",
"addax",
"affenpinscher",
"aidi",
"ainu",
"airedoodle",
"akbash",
"akita",
"alabai",
"albatross",
"alligator",
"alpaca",
"alusky",
"anaconda",
"anchovies",
"angelfish",
"anglerfish",
"ant",
"anteater",
"antelope",
"ape",
"arapaima",
"armadillo",
"armyworm",
"asp",
"aurochs",
"aussiedoodle",
"aussiedor",
"avocet",
"axolotl",
"babirusa",
"baboon",
"badger",
"baiji",
"balinese",
"bandicoot",
"barb",
"barbet",
"barnacle",
"barracuda",
"bassador",
"bassetoodle",
"bat",
"baya",
"bea-Tzu",
"beabull",
"beagador",
"beagle",
"beaglier",
"beago",
"bear",
"beaski",
"beauceron",
"beaver",
"bee",
"beefalo",
"beetle",
"bergamasco",
"bernedoodle",
"bichir",
"bichpoo",
"bilby",
"binturong",
"bird",
"birman",
"bison",
"blobfish",
"bloodhound",
"bobcat",
"bobolink",
"boggle",
"boiga",
"bombay",
"bongo",
"bonobo",
"booby",
"boomslang",
"borador",
"bordoodle",
"borkie",
"bowfin",
"boxador",
"boxerdoodle",
"boxfish",
"boxsky",
"boxweiler",
"brittany",
"brug",
"budgerigar",
"buffalo",
"bulldog",
"bullfrog",
"bullmastiff",
"bullsnake",
"bumblebee",
"burmese",
"butterfly",
"caecilian",
"caiman",
"camel",
"cantil",
"capybara",
"caracal",
"caribou",
"carp",
"cascabel",
"cassowary",
"cat",
"caterpillar",
"catfish",
"cavador",
"cavapoo",
"centipede",
"chameleon",
"chamois",
"chartreux",
"cheagle",
"cheetah",
"chickadee",
"chicken",
"chihuahua",
"chimaera",
"chimpanzee",
"chinchilla",
"chinook",
"chipmunk",
"chipoo",
"chiweenie",
"chorkie",
"cicada",
"cichlid",
"clownfish",
"coati",
"cockalier",
"cockapoo",
"cockatiel",
"cockatoo",
"cockroach",
"codfish",
"coelacanth",
"collie",
"copperhead",
"coral",
"corgidor",
"corgipoo",
"corkie",
"cottonmouth",
"cougar",
"cow",
"coyote",
"crab",
"crane",
"cricket",
"crocodile",
"crow",
"cuckoo",
"cuscus",
"cuttlefish",
"dachsador",
"dachshund",
"dalmadoodle",
"dalmador",
"dalmatian",
"danios",
"deer",
"dhole",
"dik-Dik",
"dingo",
"discus",
"dodo",
"dog",
"dolphin",
"donkey",
"dorgi",
"dorkie",
"dormouse",
"douc",
"doxiepoo",
"doxle",
"dragonfish",
"dragonfly",
"drever",
"duck",
"dugong",
"dunker",
"dunnock",
"eagle",
"earthworm",
"earwig",
"echidna",
"eel",
"eland",
"elephant",
"elk",
"emu",
"ermine",
"escolar",
"eskipoo",
"falcon",
"fangtooth",
"feist",
"ferret",
"firefly",
"fish",
"flamingo",
"flea",
"flounder",
"fly",
"fossa",
"fox",
"frenchton",
"frengle",
"frigatebird",
"frog",
"frogfish",
"gar",
"gazelle",
"gecko",
"genet",
"gerbil",
"gharial",
"gibbon",
"giraffe",
"glechon",
"gnat",
"goat",
"goberian",
"goldador",
"goldendoodle",
"goldfish",
"goose",
"gopher",
"gorilla",
"goshawk",
"grasshopper",
"greyhound",
"griffonshire",
"groenendael",
"grouper",
"grouse",
"guppy",
"haddock",
"hagfish",
"halibut",
"hamster",
"hare",
"harrier",
"havanese",
"havapoo",
"havashire",
"hedgehog",
"hellbender",
"heron",
"herring",
"himalayan",
"hippopotamus",
"hokkaido",
"hoopoe",
"horgi",
"hornbill",
"horse",
"horsefly",
"housefly",
"human",
"hummingbird",
"huntaway",
"huskador",
"huskita",
"husky",
"huskydoodle",
"hyena",
"ibex",
"ibis",
"iguana",
"impala",
"indri",
"insect",
"insects",
"jacana",
"jackabee",
"jackal",
"jackdaw",
"jackrabbit",
"jaguar",
"javanese",
"jellyfish",
"jerboa",
"junglefowl",
"kakapo",
"kangal",
"kangaroo",
"keeshond",
"kestrel",
"kingfisher",
"kinkajou",
"kishu",
"kiwi",
"koala",
"kodkod",
"kooikerhondje",
"kookaburra",
"koolie",
"krill",
"kudu",
"kuvasz",
"labahoula",
"labmaraner",
"labradane",
"labradoodle",
"labraheeler",
"ladybug",
"lamprey",
"leech",
"lemming",
"lemur",
"leonberger",
"leopard",
"lhasapoo",
"liger",
"lion",
"lionfish",
"lizard",
"lizardfish",
"llama",
"loach",
"lobster",
"locust",
"lorikeet",
"lowchen",
"lumpfish",
"lungfish",
"lynx",
"lyrebird",
"macaque",
"macaw",
"maggot",
"magpie",
"mallard",
"malteagle",
"maltese",
"maltipoo",
"mamba",
"manatee",
"mandrill",
"markhor",
"marmoset",
"marmot",
"massasauga",
"mastador",
"mastiff",
"mayfly",
"meagle",
"mealybug",
"meerkat",
"megalodon",
"miki",
"milkfish",
"millipede",
"mink",
"mole",
"molly",
"mongoose",
"mongrel",
"monkey",
"monkfish",
"moorhen",
"moose",
"morkie",
"mosquito",
"moth",
"mouse",
"mudi",
"mudpuppy",
"mule",
"muntjac",
"muskox",
"muskrat",
"narwhal",
"natterjack",
"neanderthal",
"nebelung",
"needlefish",
"newfoundland",
"newfypoo",
"newt",
"nightingale",
"nilgai",
"nudibranch",
"numbat",
"nyala",
"ocelot",
"octopus",
"okapi",
"olm",
"opossum",
"orang-utan",
"ostrich",
"otter",
"otterhound",
"owl",
"oyster",
"paddlefish",
"pademelon",
"pangolin",
"panther",
"papillon",
"parakeet",
"parrot",
"parrotfish",
"parrotlet",
"peacock",
"peagle",
"peekapoo",
"pekingese",
"pelican",
"penguin",
"persian",
"pheasant",
"pig",
"pigeon",
"pika",
"pipefish",
"piranha",
"pitador",
"pitsky",
"platypus",
"pointer",
"polecat",
"pomapoo",
"pomchi",
"pomeagle",
"pomeranian",
"pomsky",
"poochon",
"poodle",
"poogle",
"porcupine",
"porpoise",
"possum",
"potoo",
"potoroo",
"prawn",
"pronghorn",
"pudelpointer",
"pufferfish",
"puffin",
"pug",
"pugapoo",
"puggle",
"pugshire",
"puma",
"pumi",
"pyrador",
"pyredoodle",
"quagga",
"quail",
"quetzal",
"quokka",
"quoll",
"rabbit",
"raccoon",
"ragamuffin",
"ragdoll",
"raggle",
"rat",
"rattlesnake",
"reindeer",
"rhinoceros",
"robin",
"rockfish",
"rodents",
"rooster",
"rottsky",
"rottweiler",
"sable",
"saiga",
"salamander",
"salmon",
"saluki",
"sambar",
"samoyed",
"saola",
"sardines",
"sawfish",
"schipperke",
"schneagle",
"schnoodle",
"scorpion",
"seagull",
"seahorse",
"seal",
"serval",
"shark",
"sheep",
"sheepadoodle",
"shepadoodle",
"shepkita",
"shepweiler",
"shollie",
"shrew",
"shrimp",
"siamese",
"siberian",
"siberpoo",
"skunk",
"sloth",
"slug",
"snail",
"snake",
"snorkie",
"snowshoe",
"somali",
"spanador",
"sparrow",
"sparrowhawk",
"spider",
"sponge",
"springador",
"springbok",
"springerdoodle",
"squid",
"squirrel",
"squirrelfish",
"stabyhoun",
"starfish",
"stingray",
"stoat",
"stork",
"sturgeon",
"swan",
"takin",
"tamaskan",
"tang",
"tapir",
"tarpon",
"tarsier",
"termite",
"terrier",
"tetra",
"thrush",
"tick",
"tiffany",
"tiger",
"toadfish",
"torkie",
"tortoise",
"toucan",
"treecreeper",
"tropicbird",
"trout",
"tuatara",
"tuna",
"turkey",
"turtles",
"uakari",
"uguisu",
"umbrellabird",
"utonagan",
"vaquita",
"vicuña",
"vinegaroon",
"vizsla",
"vulture",
"wallaby",
"walrus",
"warthog",
"wasp",
"weasel",
"weimaraner",
"weimardoodle",
"westiepoo",
"whippet",
"whoodle",
"wildebeest",
"wolf",
"wolffish",
"wolverine",
"wombat",
"woodlouse",
"woodpecker",
"woodrat",
"worm",
"wrasse",
"xerus",
"xoloitzcuintli",
"yak",
"yoranian",
"yorkie-poo",
"zebra",
"zebu",
"zonkey",
"zorse",
"zuchon",
]

# This function returns a random string from the passed list of strings.
def getRandomWord(wordList):
    wordIndex = random.randint(0, len(wordList) - 1)
    return wordList[wordIndex]


if __name__ == "__main__":
    print ( getRandomWord( words ) )

