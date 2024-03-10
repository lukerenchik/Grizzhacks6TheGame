extends CharacterBody2D

func _ready():
	# Start idle animation when NPC is initialized
	$AnimatedSprite2D.play("idle_front")

func _on_Player_interact():
	# Pause idle animation when interacting with the NPC
	$AnimatedSprite2D.stop()

	$AnimatedSprite2D.play("idle_front")

