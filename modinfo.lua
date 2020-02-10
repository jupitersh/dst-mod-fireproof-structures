name = "Fireproof Structures"

description = "Structures are now fireproof"

author = "辣椒小皇纸"

icon_atlas = "modicon.xml"
icon = "modicon.tex"

version = "1.2.0"

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
		name = "sign_fireproof",
		label = "Sign Fireproof",
		hover = "",
		options =	{
						{description = "Both", data = {"homesign","arrowsign_post"}, hover = ""},
						{description = "Only Homesign", data = {"homesign"}, hover = ""},
						{description = "Only Arrowsign", data = {"arrowsign_post"}, hover = ""},
						{description = "Neither", data = false, hover = ""},
					},
		default = false,
	},
	{
		name = "wall_fireproof",
		label = "Wall Fireproof",
		hover = "",
		options =	{
						{description = "Both", data = {"wall_hay","wall_wood"}, hover = ""},
						{description = "Only Hay Wall", data = {"wall_hay"}, hover = ""},
						{description = "Only Wooden Wall", data = {"wall_wood"}, hover = ""},
						{description = "Neither", data = false, hover = ""},
					},
		default = false,
	},
	{
		name = "endtable_fireproof",
		label = "Endtable Fireproof",
		hover = "",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = false,
	},
	{
		name = "boat_fireproof",
		label = "Boat Fireproof",
		hover = "",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = false,
	},
	{
		name = "plants_fireproof",
		label = "Plants Fireproof",
		hover = "Be Cautious About Bugs!",
		options =	{
						{description = "Yes", data = true, hover = ""},
						{description = "No", data = false, hover = ""},
					},
		default = false,
	},
}