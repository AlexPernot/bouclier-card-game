extends Node2D

var value: int
var suit: String

func set_card_data(suit: String, value: int):
	suit = suit
	value = value
	var texture_path = "res://assets/cards/%s_%d.png" % [suit, value]
	$Sprite2D.texture = load(texture_path)
