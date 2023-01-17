extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_save_stats():
	return {
		'filename' : get_filename(),
		'parent' : get_parent().get_path(),
		'TileMapLoad' : get_used_cells()
	}

func load_save_stats(stats):
	get_used_cells()
