extends Control

var result = sim.res
var rank = drivers.rank()
var cons = drivers.crank()

func _ready():
	$Label2.text="Round "+str(sim.rnd)
	$Label.text="Season "+str(sim.ssn)
	for i in range(len(rank)):
		var label = Label.new()
		label.text = str(i+1)+". "
		$e/e/drivers/Ranks.add_child(label)
		var label2 = Label.new()
		label2.text = rank[i][0]
		$e/e/drivers/Names.add_child(label2)
		var label3 = Label.new()
		label3.text = str(rank[i][1])
		$e/e/drivers/Points.add_child(label3)
		
	for i in range(len(cons)):
		var label = Label.new()
		label.text = str(i+1)+". "
		$e/e/const/Ranks.add_child(label)
		var label2 = Label.new()
		label2.text = cons[i][0]
		$e/e/const/Names.add_child(label2)
		var label3 = Label.new()
		label3.text = str(cons[i][1])
		$e/e/const/Points.add_child(label3)
		
	if len(result) == 0:
		pass
	else:
		for i in range(len(result)):
			if str(result[i][1]) == "DNF":
				var label2 = Label.new()
				label2.text = result[i][0]
				$a/prevres/Names.add_child(label2)
				var label3 = Label.new()
				label3.text = "DNF"
				$a/prevres/Points.add_child(label3)
				$Result.text = ""
			else:
				var label = Label.new()
				label.text = str(i+1)+". "
				$a/prevres/Ranks.add_child(label)
				var label2 = Label.new()
				label2.text = result[i][0]
				$a/prevres/Names.add_child(label2)
				var label3 = Label.new()
				if i<len(sim.pts):
					if len(result[i]) ==4 and sim.flpoint[0]:
						label3.text = "+" + str(sim.pts[i]+sim.flpoint[1]) + " (FL)"
					else:
						label3.text = "+" + str(sim.pts[i])
				else:
					label3.text = "0"
				$a/prevres/Points.add_child(label3)
				$Result.text = ""


func _on_Button_pressed():
	$simmenu.visible=true


func _on_closemenu_pressed():
	$simmenu.visible=false


func _on_Button7_pressed():
	OS.set_clipboard(drivers.exportdat())


func _on_Button8_pressed():
	var j = drivers.importdat()
	if j == null:
		$Label4.text="Import Failed!"
		


func _on_Button4_pressed():
	drivers.reset()


func _on_Button6_pressed():
	if sim.rnd == 1:
		return
	drivers.wdc.append(rank[0][2])
	drivers.wcc.append(cons[0][2])
	sim.ssn +=1
	sim.rnd = 1
	drivers.resets()
	get_tree().change_scene("res://Scenes/Main.tscn")
	print(drivers.wdc, drivers.wcc)


func _on_Button2_pressed():
	$bulksim.visible=true


func _on_Button5_pressed():
	get_tree().change_scene("res://Scenes/mainmenu.tscn")


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/halloffame.tscn")
