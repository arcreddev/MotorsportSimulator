extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in drivers.wdc:
		var l = Label.new()
		l.text = drivers.d[i]["name"]
		$ScrollContainer2/VBoxContainer.add_child(l)
	for i in drivers.wcc:
		var l = Label.new()
		l.text = drivers.t[i]["name"]
		$ScrollContainer/VBoxContainer.add_child(l)	


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Main.tscn")
