extends Node3D

var key:Node3D
# Called when the node enters the scene tree for the first time.
@onready var door_anim_player=$Door/Node3D/AnimationPlayer

func _ready() -> void:
	key= get_node("key")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_2_area_entered(area: Area3D) -> void:
	area.get_parent_node_3d().door_anim_player.play()
	pass # Replace with function body.
