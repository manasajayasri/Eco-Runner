extends Node3D

#@onready var animation=$AnimationPlayer2
# Called when the node enters the scene tree for the first time.
var animation_played = false 
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.name=="Door":
		if not animation_played:
			var door_node = area.get_parent()
			print(door_node.name)
			print(door_node.get_children())  # Debug: Check children of the door_node
	
			var animation_player = door_node.get_node("AnimationPlayer2")
			if animation_player:
				animation_player.play("open")
				animation_played=true
			else:
				print("AnimationPlayer2 not found!")
''
