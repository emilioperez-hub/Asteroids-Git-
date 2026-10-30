class_name Ship extends RigidBody2D
#primer valor = minimo, segundo valor = maximo, tercer valor = 
@export_range(200,800, 15) var speed : float = 600

@export_category("shooting")
@export var bullet : PackedScene
@export var pivot : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		_shoot()
	pass
func get_input():
	pass

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("left","right","up", "down").normalized()
	var screen_size = get_viewport_rect().size
	linear_velocity = direction * speed
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	pass
func _take_damage() -> void:
	print_debug("ship damaged")
	queue_free()
	pass
func _shoot() -> void:
	var bulletObj = (bullet.instantiate() as Bullet)
	get_parent().add_child(bulletObj)
	bulletObj.global_position = pivot.global_position
	bulletObj.linear_velocity = Vector2.UP *1000
	pass
