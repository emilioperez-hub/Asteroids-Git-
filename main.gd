extends Node2D


# Awake.
func _init() -> void:
	pass
#start
func _ready() -> void:
	print_debug("Game Started")

# update
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("shoot")) : print_debug("shooted")
	if(Input.is_action_just_pressed("up")) : print_debug("Going up")
	if(Input.is_action_just_pressed("down")) : print_debug("Going down")
	if(Input.is_action_just_pressed("left")) : print_debug("Going left")
	if(Input.is_action_just_pressed("right")) : print_debug("Going right")
	pass
#fixed update
func _physics_process(delta: float) -> void:
	pass
