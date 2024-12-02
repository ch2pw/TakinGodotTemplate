extends Control

@export_group("Next Scene")
@export var scene: String = "main_menu"
@export var scene_manager_options: String = "fade_basic"

var _boot_splash_color: Color = ProjectSettings.get("application/boot_splash/bg_color")
var _boot_splash_image: String = ProjectSettings.get("application/boot_splash/image")
var _boot_splash_texture: Texture = load(_boot_splash_image)

@onready var boot_splash_color_rect: ColorRect = %BootSplashColorRect
@onready var boot_splash_texture_rect: TextureRect = %BootSplashTextureRect


func _ready() -> void:
	Log.debug("MAIN SCENE READY: ", name)

	boot_splash_color_rect.color = _boot_splash_color
	boot_splash_texture_rect.texture = _boot_splash_texture

	SceneManagerWrapper.change_scene(scene, scene_manager_options)
