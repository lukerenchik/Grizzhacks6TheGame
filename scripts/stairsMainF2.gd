extends Area2D

var teleport_target_location = Vector2(153, -945)


func _on_body_entered(body):
	#queue_free()
	body.global_position = teleport_target_location
