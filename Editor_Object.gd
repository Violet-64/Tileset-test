extends Node2D

var can_place = true;
var is_panning = true
var do_save = false

onready var level = get_node("/root/main/Level")
onready var editor = get_node("/root/main/cam_container")
onready var editor_cam = editor.get_node("Camera2D")

onready var popup : FileDialog = get_node("/root/main/Item_Select/FileDialog")

onready var tile_map : TileMap = level.get_node("TileMap")

var current_item #packed scene to plac

func _ready():
	editor_cam.current = true
	pass 

func _process(delta):
	print(do_save)
	global_position = get_global_mouse_position()
