extends Resource
class_name Item

# Resource em Desevolvimento

# Variaveis Exportaveis
@export var Icon: Texture2D # Carregar Textura -> Sprite
@export var Name: String # Adição de Nome
@export var Effect: GDScript # Criação e Edição de Efeitos de Item
@export var EffectCSharp: CSharpScript # Criação e Ediçaõ em CSharp
@export var DataBase: JSON # Arquivo JSON para Dados do Item

@export var Stats: StatsBattle

# Dados de Tipo do Item
@export_enum("Arma", "Armadura", "Medicina", "Classe", "Pet", "Ferramenta")
var tipo: String = "Arma"

# Dados de Raridade
@export_enum("Comum", "Raro", "Epico", "Lendário")
var raridade: String = "Comum"

# Dados da Descrição do Item
@export_multiline var descrição: String

# Sinal de Use Item
signal item_used

# Função Use Item
func use_item():
	item_used.emit()
