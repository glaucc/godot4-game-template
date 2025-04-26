extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	$LogoWaitTimer.start()
	


func _on_logo_wait_timer_timeout() -> void:
	animation_player.play("show_logo")


func _on_animation_player_animation_finished(anim_name):
	if anim_name == "show_logo":
		get_tree().change_scene_to_file("res://Menus/start_screen.tscn")
