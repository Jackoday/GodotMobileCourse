extends Node2D

@onready var player = $Player
@onready var level_generator = $LevelGenerator

var camera_scene = preload("res://scenes/game_camera.tscn")

var camera = null


func _ready():
	camera = camera_scene.instantiate()
	camera.setup_camera($Player)
	add_child(camera)
	
	if (player && camera):
		level_generator.setup(player, camera)


func _process(delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
	
