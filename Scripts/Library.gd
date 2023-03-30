extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	sim.offrepo = true
	if sim.loadrepo("https://github.com/priyacoding/OfficialRepository"):
		print(sim.moddata)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	sim.modid = 0
	get_tree().change_scene("res://Scenes/modloader.tscn")


func _on_Button2_pressed():
	sim.modid = 1
	get_tree().change_scene("res://Scenes/modloader.tscn")


func _on_Button3_pressed():
	sim.modid = 2
	get_tree().change_scene("res://Scenes/modloader.tscn")


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/mainmenu.tscn")


func _on_Button5_pressed():
	sim.modid = 3
	get_tree().change_scene("res://Scenes/modloader.tscn")


func _on_Button9_pressed():
	sim.modid = 4
	get_tree().change_scene("res://Scenes/modloader.tscn")
