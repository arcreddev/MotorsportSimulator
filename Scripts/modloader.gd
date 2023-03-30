extends Control

var names = ["F1 2021", "F1 2012", "F1 2008", "F2 2022", "F1 1990"]
var descs = [
	"A mod for the 2021 Formula One Season", 
	"A mod for the 2012 Formula One Season", 
	"DOES NOT HAVE CORRECT STATS! A mod for the 2008 Formula One Season.",
	"A mod for the 2022 Formula Two Season",
	"A mod for the 1990 Formula One Season"]
var offrepo = ["""{
	"drivers": [
		{
			"name": "Charles Leclerc",
			"team": 0,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Carlos Sainz",
			"team": 0,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Max Verstappen",
			"team": 1,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Sergio Perez",
			"team": 1,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Lewis Hamilton",
			"team": 2,
			"aware": 90,
			"race": 95,
			"points": 0
		},
		{
			"name": "Valtteri Bottas",
			"team": 2,
			"aware": 95,
			"race": 85,
			"points": 0
		},
		{
			"name": "Lando Norris",
			"team": 3,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Daniel Ricciardo",
			"team": 3,
			"aware": 75,
			"race": 85,
			"points": 0
		},
		{
			"name": "Kimi Raikonnen",
			"team": 4,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Antonio Giovinazzi",
			"team": 4,
			"aware": 75,
			"race": 90,
			"points": 0
		},
		{
			"name": "Fernando Alonso",
			"team": 5,
			"aware": 80,
			"race": 95,
			"points": 0
		},
		{
			"name": "Esteban Ocon",
			"team": 5,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Pierre Gasly",
			"team": 6,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Yuki Tsunoda",
			"team": 6,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Nikita Mazepin",
			"team": 7,
			"aware": 60,
			"race": 60,
			"points": 0
		},
		{
			"name": "Mick Schumacher",
			"team": 7,
			"aware": 70,
			"race": 80,
			"points": 0
		},
		{
			"name": "Sebastian Vettel",
			"team": 8,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Lance Stroll",
			"team": 8,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "George Russell",
			"team": 9,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Nicholas Latifi",
			"team": 9,
			"aware": 70,
			"race": 70,
			"points": 0
		}
	],
	"const": [
		{
			"name": "Ferrari",
			"speed": 85,
			"rel": 85
		},
		{
			"name": "Red Bull",
			"speed": 95,
			"rel": 85
		},
		{
			"name": "Mercedes",
			"speed": 90,
			"rel": 90
		},
		{
			"name": "McLaren",
			"speed": 85,
			"rel": 85
		},
		{
			"name": "Alfa Romeo",
			"speed": 70,
			"rel": 80
		},
		{
			"name": "Alpine",
			"speed": 80,
			"rel": 80
		},
		{
			"name": "AlphaTauri",
			"speed": 80,
			"rel": 80
		},
		{
			"name": "Haas",
			"speed": 65,
			"rel": 70
		},
		{
			"name": "Aston Martin",
			"speed": 80,
			"rel": 75
		},
		{
			"name": "Williams",
			"speed": 75,
			"rel": 80
		}
	],
	"wdc": [

	],
	"wcc": [

	],
	"other": {
		"res": [

		],
		"ssn": 1,
		"rnd": 1,
		"pts": [
			25,
			18,
			15,
			12,
			10,
			8,
			6,
			4,
			2,
			1
		], "fl": [
			true, 
			1
		]
	}
}""","""{
	"drivers": [
		{
			"name": "Sebastian Vettel",
			"team": 0,
			"aware": 90,
			"race": 95,
			"points": 0
		},
		{
			"name": "Mark Webber",
			"team": 0,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Jenson Button",
			"team": 1,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Lewis Hamilton",
			"team": 1,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Fernando Alonso",
			"team": 2,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Felipe Massa",
			"team": 2,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Michael Schumacher",
			"team": 3,
			"aware": 85,
			"race": 80,
			"points": 0
		},
		{
			"name": "Nico Rosberg",
			"team": 3,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Kimi Raikonnen",
			"team": 4,
			"aware": 95,
			"race": 90,
			"points": 0
		},
		{
			"name": "Romain Grosjean",
			"team": 4,
			"aware": 70,
			"race": 80,
			"points": 0
		},
		{
			"name": "Paul di Resta",
			"team": 5,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Nico Hulkenberg",
			"team": 5,
			"aware": 80,
			"race": 80,
			"points": 0
		},
		{
			"name": "Kamui Kobayashi",
			"team": 6,
			"aware": 85,
			"race": 80,
			"points": 0
		},
		{
			"name": "Sergio Perez",
			"team": 6,
			"aware": 80,
			"race": 80,
			"points": 0
		},
		{
			"name": "Daniel Ricciardo",
			"team": 7,
			"aware": 85,
			"race": 75,
			"points": 0
		},
		{
			"name": "Jean-Eric Vergne",
			"team": 7,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Pastor Maldonado",
			"team": 8,
			"aware": 60,
			"race": 75,
			"points": 0
		},
		{
			"name": "Bruno Senna",
			"team": 8,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Heikki Kovaleinen",
			"team": 9,
			"aware": 80,
			"race": 70,
			"points": 0
		},
		{
			"name": "Vitaly Petrov",
			"team": 9,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Pedro de la Rosa",
			"team": 10,
			"aware": 80,
			"race": 70,
			"points": 0
		},
		{
			"name": "Narain Karthikeyan",
			"team": 10,
			"aware": 70,
			"race": 65,
			"points": 0
		},
		{
			"name": "Timo Glock",
			"team": 11,
			"aware": 80,
			"race": 70,
			"points": 0
		},
		{
			"name": "Charles Pic",
			"team": 11,
			"aware": 75,
			"race": 70,
			"points": 0
		}
	],
	"const": [
		{
			"name": "Red Bull Racing",
			"speed": 95,
			"rel": 95
		},
		{
			"name": "McLaren Mercedes",
			"speed": 95,
			"rel": 60
		},
		{
			"name": "Ferrari",
			"speed": 85,
			"rel": 75
		},
		{
			"name": "Mercedes",
			"speed": 75,
			"rel": 75
		},
		{
			"name": "Lotus",
			"speed": 80,
			"rel": 85
		},
		{
			"name": "Force India",
			"speed": 75,
			"rel": 85
		},
		{
			"name": "Sauber",
			"speed": 75,
			"rel": 85
		},
		{
			"name": "Toro Rosso",
			"speed": 75,
			"rel": 70
		},
		{
			"name": "Williams",
			"speed": 75,
			"rel": 75
		},
		{
			"name": "Caterham",
			"speed": 70,
			"rel": 75
		},
		{
			"name": "HRT",
			"speed": 65,
			"rel": 65
		},
		{
			"name": "Marussia",
			"speed": 70,
			"rel": 70
		}
	],
	"wdc": [

	],
	"wcc": [

	],
	"other": {
		"res": [

		],
		"ssn": 1,
		"rnd": 1,
		"pts": [
			25,
			18,
			15,
			12,
			10,
			8,
			6,
			4,
			2,
			1
		],
		"fl": [
			false,
			1
		]
	}
}""","""{
	"drivers": [
		{
			"name": "Kimi Raikonnen",
			"team": 0,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Felipe Massa",
			"team": 0,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Nick Heidfeld",
			"team": 1,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Robert Kubica",
			"team": 1,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Fernando Alonso",
			"team": 2,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Nelson Piquet",
			"team": 2,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Kazuki Nakajima",
			"team": 3,
			"aware": 85,
			"race": 95,
			"points": 0
		},
		{
			"name": "Nico Rosberg",
			"team": 3,
			"aware": 75,
			"race": 90,
			"points": 0
		},
		{
			"name": "David Coulthard",
			"team": 4,
			"aware": 95,
			"race": 85,
			"points": 0
		},
		{
			"name": "Mark Webber",
			"team": 4,
			"aware": 65,
			"race": 80,
			"points": 0
		},
		{
			"name": "Jarno Trulli",
			"team": 5,
			"aware": 80,
			"race": 95,
			"points": 0
		},
		{
			"name": "Timo Glock",
			"team": 5,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Sebastien Bourdais",
			"team": 6,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Sebastian Vettel",
			"team": 6,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Jenson Button",
			"team": 7,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Rubens Barrichello",
			"team": 7,
			"aware": 75,
			"race": 90,
			"points": 0
		},
		{
			"name": "Takuma Sato",
			"team": 8,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Anthony Davidson",
			"team": 8,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Adrian Sutil",
			"team": 9,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Giancarlo Fisichella",
			"team": 9,
			"aware": 60,
			"race": 60,
			"points": 0
		},
		{
			"name": "Lewis Hamilton",
			"team": 10,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Heikki Kovalainen",
			"team": 10,
			"aware": 60,
			"race": 60,
			"points": 0
		}
	],
	"const": [
		{
			"name": "Ferrari",
			"speed": 95,
			"rel": 95
		},
		{
			"name": "BMW Sauber",
			"speed": 95,
			"rel": 75
		},
		{
			"name": "Renault",
			"speed": 85,
			"rel": 75
		},
		{
			"name": "Williams",
			"speed": 75,
			"rel": 75
		},
		{
			"name": "Red Bull Racing",
			"speed": 80,
			"rel": 85
		},
		{
			"name": "Toyota",
			"speed": 80,
			"rel": 85
		},
		{
			"name": "Toro Rosso",
			"speed": 75,
			"rel": 85
		},
		{
			"name": "Honda",
			"speed": 80,
			"rel": 70
		},
		{
			"name": "Super Aguri",
			"speed": 65,
			"rel": 65
		},
		{
			"name": "Force India",
			"speed": 70,
			"rel": 60
		},
		{
			"name": "McLaren Mercedes",
			"speed": 65,
			"rel": 65
		}
	],
	"wdc": [

	],
	"wcc": [

	],
	"other": {
		"res": [

		],
		"ssn": 1,
		"rnd": 1,
		"pts": [
			10,
			8,
			6,
			5,
			4,
			3,
			2,
			1
		],
		"fl": [
			false,
			1
		]
	}
}""", """{
	"drivers": [
		{
			"name": "Dennis Hauger",
			"team": 0,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Jehan Daruvala",
			"team": 0,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Jack Doohan",
			"team": 1,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Marino Sato",
			"team": 1,
			"aware": 70,
			"race": 75,
			"points": 0
		},
		{
			"name": "Liam Lawson",
			"team": 2,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Logan Sargeant",
			"team": 2,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Marcus Armstrong",
			"team": 3,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Jüri Vips",
			"team": 3,
			"aware": 75,
			"race": 95,
			"points": 0
		},
		{
			"name": "Frederik Vesti",
			"team": 4,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Théo Pourchaire",
			"team": 4,
			"aware": 80,
			"race": 95,
			"points": 0
		},
		{
			"name": "Felipe Drugovich",
			"team": 5,
			"aware": 85,
			"race": 90,
			"points": 0
		},
		{
			"name": "Clément Novalak",
			"team": 5,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Olli Caldwell",
			"team": 6,
			"aware": 70,
			"race": 75,
			"points": 0
		},
		{
			"name": "Ralph Boschung",
			"team": 6,
			"aware": 80,
			"race": 90,
			"points": 0
		},
		{
			"name": "Roy Nissany",
			"team": 7,
			"aware": 70,
			"race": 75,
			"points": 0
		},
		{
			"name": "Ayumu Iwasa",
			"team": 7,
			"aware": 80,
			"race": 90,
			"points": 0
		},
		{
			"name": "Richard Verschoor",
			"team": 8,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Calan Williams",
			"team": 8,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Enzo Fittipaldi",
			"team": 9,
			"aware": 85,
			"race": 85,
			"points": 0
		},
		{
			"name": "Cem Bölükbaşi",
			"team": 9,
			"aware": 70,
			"race": 75,
			"points": 0
		},
		{
			"name": "Jake Hughes",
			"team": 10,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Amaury Cordeel",
			"team": 10,
			"aware": 70,
			"race": 75,
			"points": 0
		}
	],
	"const": [
		{
			"name": "Prema",
			"speed": 90,
			"rel": 85
		},
		{
			"name": "Viruosi",
			"speed": 80,
			"rel": 80
		},
		{
			"name": "Carlin",
			"speed": 90,
			"rel": 85
		},
		{
			"name": "Hitech Grand Prix",
			"speed": 90,
			"rel": 85
		},
		{
			"name": "ART Grand Prix",
			"speed": 90,
			"rel": 85
		},
		{
			"name": "MP Motorsport",
			"speed": 90,
			"rel": 85
		},
		{
			"name": "Campos Racing",
			"speed": 75,
			"rel": 85
		},
		{
			"name": "DAMS",
			"speed": 80,
			"rel": 85
		},
		{
			"name": "Trident",
			"speed": 80,
			"rel": 85
		},
		{
			"name": "Charouz Racing System",
			"speed": 75,
			"rel": 85
		},
		{
			"name": "Van Amersfoort Racing",
			"speed": 75,
			"rel": 85
		}
	],
	"wdc": [

	],
	"wcc": [

	],
	"other": {
		"res": [

		],
		"ssn": 1,
		"rnd": 1,
		"pts": [
			25,
			18,
			15,
			12,
			10,
			8,
			6,
			4,
			2,
			1
		], "fl": [
			true, 
			1
		]
	}
}""", """{
	"drivers": [
		{
			"name": "Ayrton Senna",
			"team": 0,
			"aware": 90,
			"race": 95,
			"points": 0
		},
		{
			"name": "Gerhard Berger",
			"team": 0,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Alain Prost",
			"team": 1,
			"aware": 90,
			"race": 95,
			"points": 0
		},
		{
			"name": "Nigel Mansell",
			"team": 1,
			"aware": 90,
			"race": 85,
			"points": 0
		},
		{
			"name": "Alessandro Nannini",
			"team": 2,
			"aware": 85,
			"race": 75,
			"points": 0
		},
		{
			"name": "Nelson Piquet",
			"team": 2,
			"aware": 90,
			"race": 90,
			"points": 0
		},
		{
			"name": "Thierry Boutsen",
			"team": 3,
			"aware": 80,
			"race": 85,
			"points": 0
		},
		{
			"name": "Riccardo Patrese",
			"team": 3,
			"aware": 85,
			"race": 80,
			"points": 0
		},
		{
			"name": "Jean Alesi",
			"team": 4,
			"aware": 85,
			"race": 80,
			"points": 0
		},
		{
			"name": "Satoru Nakajima",
			"team": 4,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Eric Bernard",
			"team": 5,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Aguri Suzuki",
			"team": 5,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Mauricio Gugelmin",
			"team": 6,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Ivan Capelli",
			"team": 6,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Derek Warwick",
			"team": 7,
			"aware": 75,
			"race": 80,
			"points": 0
		},
		{
			"name": "Martin Donnelly",
			"team": 7,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Michele Alboreto",
			"team": 8,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Alex Caffi",
			"team": 8,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "David Brabham",
			"team": 9,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Stefano Modena",
			"team": 9,
			"aware": 75,
			"race": 75,
			"points": 0
		},
		{
			"name": "Nicola Larini",
			"team": 10,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Philippe Alliot",
			"team": 10,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Pierluigi Martini",
			"team": 11,
			"aware": 80,
			"race": 75,
			"points": 0
		},
		{
			"name": "Paolo Barilla",
			"team": 11,
			"aware": 70,
			"race": 65,
			"points": 0
		},
		{
			"name": "Gregor Foitek",
			"team": 12,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "J. J. Letho",
			"team": 12,
			"aware": 75,
			"race": 65,
			"points": 0
		},
		{
			"name": "Gabriele Tarquini",
			"team": 13,
			"aware": 70,
			"race": 60,
			"points": 0
		},
		{
			"name": "Yannick Dalmas",
			"team": 13,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Andrea De Cesaris",
			"team": 14,
			"aware": 75,
			"race": 65,
			"points": 0
		},
		{
			"name": "Emanuele Pirro",
			"team": 14,
			"aware": 70,
			"race": 60,
			"points": 0
		},
		{
			"name": "Olivier Grouillard",
			"team": 15,
			"aware": 75,
			"race": 70,
			"points": 0
		},
		{
			"name": "Roberto Moreno",
			"team": 16,
			"aware": 80,
			"race": 80,
			"points": 0
		},
		{
			"name": "Claudio Langes",
			"team": 16,
			"aware": 70,
			"race": 60,
			"points": 0
		},
		{
			"name": "Bertrand Gachot",
			"team": 17,
			"aware": 70,
			"race": 60,
			"points": 0
		},
		{
			"name": "Bruno Giacomelli",
			"team": 18,
			"aware": 70,
			"race": 60,
			"points": 0
		}
	],
	"const": [
		{
			"name": "McLaren",
			"speed": 95,
			"rel": 95
		},
		{
			"name": "Ferrari",
			"speed": 95,
			"rel": 95
		},
		{
			"name": "Benetton",
			"speed": 85,
			"rel": 95
		},
		{
			"name": "Williams",
			"speed": 80,
			"rel": 95
		},
		{
			"name": "Tyrrell",
			"speed": 75,
			"rel": 95
		},
		{
			"name": "Lola",
			"speed": 75,
			"rel": 95
		},
		{
			"name": "Leyton House",
			"speed": 75,
			"rel": 95
		},
		{
			"name": "Lotus",
			"speed": 70,
			"rel": 95
		},
		{
			"name": "Arrows",
			"speed": 70,
			"rel": 95
		},
		{
			"name": "Brabham",
			"speed": 70,
			"rel": 95
		},
		{
			"name": "Ligier",
			"speed": 65,
			"rel": 95
		},
		{
			"name": "Minardi",
			"speed": 65,
			"rel": 95
		},
		{
			"name": "Onyx",
			"speed": 65,
			"rel": 95
		},
		{
			"name": "AGS",
			"speed": 60,
			"rel": 95
		},
		{
			"name": "Dallara",
			"speed": 65,
			"rel": 95
		},
		{
			"name": "Osella",
			"speed": 60,
			"rel": 95
		},
		{
			"name": "EuroBrun",
			"speed": 60,
			"rel": 95
		},
		{
			"name": "Coloni",
			"speed": 50,
			"rel": 95
		},
		{
			"name": "Life",
			"speed": 35,
			"rel": 95
		}
	],
	"wdc": [

	],
	"wcc": [

	],
	"other": {
		"res": [

		],
		"ssn": 1,
		"rnd": 1,
		"pts": [
			9,
			6,
			4,
			3,
			2,
			1
		],
		"fl": [
			false,
			1
		]
	}
}"""]


func _ready():
	"""
	var repo = {
		"name":"Official Repository",
		"author": "priya",
		"names": names, 
		"descriptions": descs,
		"mods": offrepo
	}
	
	OS.set_clipboard(JSON.print(repo, "\t"))
	"""
	if sim.offrepo:
		$Label2.text = names[sim.modid]
		$desc.text = descs[sim.modid]
		var o = JSON.parse(offrepo[sim.modid]).get_result()
		if o == null:
			$Label5.visible = true
			return
		var d = o["drivers"]
		var t = o["const"]
		var p = o["other"]["pts"]
		var fl = o["other"]["fl"]
		for i in d:
			var n = Label.new()
			n.text = i["name"] + " (Racecraft: "+str(i["race"])+", Awareness: "+str(i["aware"])+")"
			$ScrollContainer/VBoxContainer.add_child(n)
		for i in t:
			var n = Label.new()
			n.text = i["name"] + " (Speed: "+str(i["speed"])+", Reliability: "+str(i["rel"])+")"
			$ScrollContainer2/VBoxContainer.add_child(n)
		for i in p:
			var n = Label.new()
			n.text = str(p.find(i)+1)+". "+str(i)+" points"
			$ScrollContainer3/VBoxContainer.add_child(n)
		if fl[0]:
			if fl[1] == 1:
				$Label7.text = "1 point awarded for FL"
			else:
				$Label7.text = str(fl[1]) + " points awarded for FL"
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	OS.set_clipboard(offrepo[sim.modid])


func _on_Button2_pressed():
	drivers.import(offrepo[sim.modid])


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/Library.tscn")
