extends Node2D

@onready var card_scene = preload("res://scenes/Card.tscn")
@onready var card_container = $CardsContainer

func _ready() -> void:
	randomize()

func _on_button_pressed():
	# Reset cards
	card_container.free_children()
	
	var card_instance = card_scene.instantiate()
	var suit = Globals.Suit.values()[randi() % 4]
	var value = randi() % 13 + 1
	card_instance.set_card_data(Globals.SUIT_NAMES[suit], value)
	card_instance.position = get_viewport_rect().size / 2
	card_container.add_child(card_instance)
