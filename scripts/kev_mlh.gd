extends CharacterBody2D

var dialogueOptions = [
	"Hello, I'm Kev. What do you want to know?",
	"Ask me anything about MLH!",
	"Need information about this area?",
	"Just say the word, and I'll help you out!"
]

func _ready():
	# Start idle animation when NPC is initialized
	$AnimatedSprite2D.play("idle_front")

func _on_Player_interact():
	# Pause idle animation when interacting with the NPC
	$AnimatedSprite2D.stop()

	# Display dialogue options
	for option in dialogueOptions:
		print(option) # Replace with code to display dialogue UI

	# Wait for player input
	var selectedOption = get_player_input()

	# Respond to player selection
	match selectedOption:
		0:
			print("You: Hello, Kev! Nice to meet you.")
			print("Kev: Likewise!")
		1:
			print("You: Can you tell me about MLH?")
			print("Kev: Sure thing! MLH is...")
		# Add more dialogue options and responses here

	# Resume idle animation after interaction
	$AnimatedSprite2D.play("idle_front")

func get_player_input():
	# Replace this with code to handle player input and return selected option
	return 0 # For now, just return the first option

