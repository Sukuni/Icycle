extends Sprite

export var speed = 100
export var sprint_multiplier = 1.5
var direction = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	direction = Vector2(0, 0)	
	if Input.is_key_pressed(KEY_W):
		direction += Vector2(0, -1)
	if Input.is_key_pressed(KEY_S):
		direction += Vector2(0, 1)
	if Input.is_key_pressed(KEY_D):
		direction += Vector2(1, 0)
	if Input.is_key_pressed(KEY_A):
		direction += Vector2(-1, 0)
	
	direction = direction.normalized()
	if Input.is_key_pressed(KEY_SHIFT):
		position += direction * speed * sprint_multiplier * delta
	else:
		position += direction * speed * delta
	
