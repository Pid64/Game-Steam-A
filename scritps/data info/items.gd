extends Resource
class_name Item

@export var Icon: Texture2D # Carregar Textura -> Sprite
@export var Name: String # Adição de Nome
@export var CSharp: CSharpScript # Carregar Script CSharp
@export var Effect: Script

@export_enum("Arma", "Armadura", "Medicina", "Classe")
var tipo: String = "Arma"

@export_enum("Comum", "Raro", "Epico", "Lendário")
var raridade: String = "Comum"

@export_multiline var descrição: String

signal item_used

func use_item():
	item_used.emit()
