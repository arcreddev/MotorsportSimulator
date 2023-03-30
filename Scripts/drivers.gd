extends Node

var temp = {
	"name": '',
	"team": 0,
	"aware": 0,
	"race": 0,
	"points": 0
}
var ttemp = {
	"name": '',
	"speed": 0,
	"rel": 0
}

var wdc = []
var wcc = []
var d = [{
	"name": 'Charles Leclerc',
	"team": 0,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Carlos Sainz',
	"team": 0,
	"aware": 90,
	"race": 85,
	"points": 0
}, {
	"name": 'Max Verstappen',
	"team": 1,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Sergio Perez',
	"team": 1,
	"aware": 85,
	"race": 85,
	"points": 0
}, {
	"name": 'Lewis Hamilton',
	"team": 2,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'George Russell',
	"team": 2,
	"aware": 85,
	"race": 90,
	"points": 0
}, {
	"name": 'Lando Norris',
	"team": 3,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Daniel Ricciardo',
	"team": 3,
	"aware": 75,
	"race": 90,
	"points": 0
}, {
	"name": 'Valtteri Bottas',
	"team": 4,
	"aware": 95,
	"race": 85,
	"points": 0
}, {
	"name": 'Zhou Guanyu',
	"team": 4,
	"aware": 65,
	"race": 80,
	"points": 0
}, {
	"name": 'Fernando Alonso',
	"team": 5,
	"aware": 80,
	"race": 95,
	"points": 0
}, {
	"name": 'Esteban Ocon',
	"team": 5,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Pierre Gasly',
	"team": 6,
	"aware": 85,
	"race": 90,
	"points": 0
}, {
	"name": 'Yuki Tsunoda',
	"team": 6,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Kevin Magnussen',
	"team": 7,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'Mick Schumacher',
	"team": 7,
	"aware": 75,
	"race": 90,
	"points": 0
}, {
	"name": 'Sebastian Vettel',
	"team": 8,
	"aware": 85,
	"race": 85,
	"points": 0
}, {
	"name": 'Lance Stroll',
	"team": 8,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Alexander Albon',
	"team": 9,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'Nicholas Latifi',
	"team": 9,
	"aware": 60,
	"race": 60,
	"points": 0
}]

var t = [{
	"name": 'Ferrari',
	"speed": 95,
	"rel": 95
}, {
	"name": 'Red Bull',
	"speed": 95,
	"rel": 75
}, {
	"name": 'Mercedes',
	"speed": 85,
	"rel": 75
}, {
	"name": 'McLaren',
	"speed": 75,
	"rel": 75
}, {
	"name": 'Alfa Romeo',
	"speed": 80,
	"rel": 85
}, {
	"name": 'Alpine',
	"speed": 80,
	"rel": 85
}, {
	"name": 'AlphaTauri',
	"speed": 75,
	"rel": 85
}, {
	"name": 'Haas',
	"speed": 80,
	"rel": 70
}, {
	"name": 'Aston Martin',
	"speed": 65,
	"rel": 65
}, {
	"name": 'Williams',
	"speed": 70,
	"rel": 60
}]

func _ready():
	pass

func rank():
	var u = []
	for i in d:
		if len(u)==0:
			u.append([i["name"], i["points"], d.find(i)])
		else:
			for j in range(len(u)):
				var x = len(u)-j-1
				if i["points"] > u[x][1]:
					if j == len(u) - 1:
						u.insert(0, [i["name"], i["points"], d.find(i)])
						break
					else:
					 continue
				else:
					u.insert(x+1, [i["name"], i["points"], d.find(i)])
					break
	return u

func crank():
	var c = []
	var r = []
	for i in t:
		c.append([i["name"], 0, t.find(i)])
	for i in d:
		c[i["team"]][1] += i["points"]
	for i in c:
		if len(r)==0:
			r.append(i)
		else:
			for j in range(len(r)):
				var x=len(r)-j-1
				if i[1] > r[x][1]:
					if j == len(r) - 1:
						r.insert(0, i)
						break
					else:
					 continue
				else:
					r.insert(x+1, i)
					break
	
	return r
	
func exportdat():
	
	var obj = {
		"drivers": d,
		"const": t,
		"wdc":wdc,
		"wcc":wcc,
		"other": {
			"res": sim.res,
			"ssn": sim.ssn,
			"rnd": sim.rnd,
			"pts": sim.pts,
			"fl": sim.flpoint
		}
	}
	var json = JSON.print(obj, "\t")
	return json

func importdat():
	var o = JSON.parse(OS.get_clipboard()).get_result()
	if o == null:
		return null
	
	d = o["drivers"]
	t = o["const"]
	wdc = o["wdc"]
	wcc = o["wcc"]
	var ot = o["other"]
	sim.res = ot["res"]
	sim.ssn = ot["ssn"]
	sim.rnd = ot["rnd"]
	sim.pts = ot["pts"]
	sim.flpoint = ot["fl"]
	get_tree().change_scene("res://Scenes/Main.tscn")
	return true
	
func import(i):
	var o = JSON.parse(i).get_result()
	if o == null:
		return null
	
	d = o["drivers"]
	t = o["const"]
	wdc = o["wdc"]
	wcc = o["wcc"]
	var ot = o["other"]
	sim.res = ot["res"]
	sim.ssn = ot["ssn"]
	sim.rnd = ot["rnd"]
	sim.pts = ot["pts"]
	sim.flpoint = ot["fl"]
	get_tree().change_scene("res://Scenes/Main.tscn")
	return true

func resets():
	for i in d:
		i["points"] = 0
		
func reset():
	d = [{
	"name": 'Charles Leclerc',
	"team": 0,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Carlos Sainz',
	"team": 0,
	"aware": 90,
	"race": 85,
	"points": 0
}, {
	"name": 'Max Verstappen',
	"team": 1,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Sergio Perez',
	"team": 1,
	"aware": 85,
	"race": 85,
	"points": 0
}, {
	"name": 'Lewis Hamilton',
	"team": 2,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'George Russell',
	"team": 2,
	"aware": 85,
	"race": 90,
	"points": 0
}, {
	"name": 'Lando Norris',
	"team": 3,
	"aware": 85,
	"race": 95,
	"points": 0
}, {
	"name": 'Daniel Ricciardo',
	"team": 3,
	"aware": 75,
	"race": 90,
	"points": 0
}, {
	"name": 'Valterri Bottas',
	"team": 4,
	"aware": 95,
	"race": 85,
	"points": 0
}, {
	"name": 'Zhou Guanyu',
	"team": 4,
	"aware": 65,
	"race": 80,
	"points": 0
}, {
	"name": 'Fernando Alonso',
	"team": 5,
	"aware": 80,
	"race": 95,
	"points": 0
}, {
	"name": 'Esteban Ocon',
	"team": 5,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Pierre Gasly',
	"team": 6,
	"aware": 85,
	"race": 90,
	"points": 0
}, {
	"name": 'Yuki Tsunoda',
	"team": 6,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Kevin Magnussen',
	"team": 7,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'Mick Schumacher',
	"team": 7,
	"aware": 75,
	"race": 90,
	"points": 0
}, {
	"name": 'Sebastian Vettel',
	"team": 8,
	"aware": 85,
	"race": 85,
	"points": 0
}, {
	"name": 'Lance Stroll',
	"team": 8,
	"aware": 80,
	"race": 85,
	"points": 0
}, {
	"name": 'Alexander Albon',
	"team": 9,
	"aware": 90,
	"race": 90,
	"points": 0
}, {
	"name": 'Nicholas Latifi',
	"team": 9,
	"aware": 60,
	"race": 60,
	"points": 0
}]
	t = [{
	"name": 'Ferrari',
	"speed": 95,
	"rel": 95
}, {
	"name": 'Red Bull',
	"speed": 95,
	"rel": 75
}, {
	"name": 'Mercedes',
	"speed": 85,
	"rel": 75
}, {
	"name": 'McLaren',
	"speed": 75,
	"rel": 75
}, {
	"name": 'Alfa Romeo',
	"speed": 80,
	"rel": 85
}, {
	"name": 'Alpine',
	"speed": 80,
	"rel": 85
}, {
	"name": 'AlphaTauri',
	"speed": 75,
	"rel": 85
}, {
	"name": 'Haas',
	"speed": 80,
	"rel": 70
}, {
	"name": 'Aston Martin',
	"speed": 65,
	"rel": 65
}, {
	"name": 'Williams',
	"speed": 70,
	"rel": 60
}]
	sim.res = []
	wdc = []
	wcc = []
	sim.ssn = 1
	sim.rnd = 1
	get_tree().change_scene("res://Scenes/Main.tscn")
