extends Area2D

enum ItemType
{
	HEALTH,
	SHOOT_RANGE,
	MOVE_SPEED
}

@export var type: ItemType
@export var value: float

func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("Player"):
		return
		
	if type == ItemType.HEALTH:
		body.heal(int(value))
	elif type == ItemType.SHOOT_RANGE:
		body.shoot_range -= value
	elif type == ItemType.MOVE_SPEED:
		body.move_speed += value
		
	queue_free()
