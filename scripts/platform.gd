extends Area2D
class_name Platform


func _on_body_entered(body):
	if body is Player:
		if body.velocity.y > 0:
			body.jump()

func getWidth():
	return $CollisionShape2D.shape.extents.x * 2

func getHeight():
	return $Sprite2D.texture.get_height()
