extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$tracks.add_item("Spa-Francorchamps", 0)
	$tracks.add_item("Red Bull Ring", 1)
	$tracks.add_item("Autodromo Nazionale Monza", 2)
	$tracks.add_item("Monte Carlo", 3)
	$tracks.add_item("Zandvoort", 4)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_quick_pressed():
	sim.quick()


func _on_full_pressed():
	sim.track = $tracks.selected
	sim.laps = int($LineEdit.text)
	get_tree().change_scene("res://Scenes/Race.tscn")
