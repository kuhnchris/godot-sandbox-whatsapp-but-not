extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var xx = text.split("\n")
	
	#var size:Vector2 = self.get_font("normal_font").get_string_size(text)
	var s:Vector2 = Vector2(0,0)
	
	for k in xx:
		var a = self.get_font("normal_font").get_string_size(k)
		if a[0] > s[0]: 
			s = a
	
	var u = Vector2(s[0] + 80, self.rect_size[1])
	self.fit_content_height = false
	self.size_flags_horizontal = SIZE_EXPAND
	print(self.rect_size, u)
	if self.rect_size[1] < u[1]:
		u[1] = self.rect_size[1]
	self.rect_min_size = u
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
