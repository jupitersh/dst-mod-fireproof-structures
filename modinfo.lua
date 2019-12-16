name = "Fireproof Structures"

description = "Structures are now fireproof"

author = "辣椒小皇纸"

icon_atlas = "modicon.xml"
icon = "modicon.tex"

version = "1.1"

forumthread = ""

api_version = 10

dst_compatible = true

all_clients_require_mod = false
clients_only_mod = false

----------------------
-- General settings --
----------------------

configuration_options =
{
	{
		name = "plants_fireproof",
		label = "Plants Fireproof",
		hover = "",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = false,
	},
}