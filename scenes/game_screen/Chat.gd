extends ColorRect
@onready var hide_chat_button: Button = %HideChatButton


func _on_hide_chat_button_pressed() -> void:
	self.visible = !self.visible
	hide_chat_button.text = "<" if !self.visible else ">"
