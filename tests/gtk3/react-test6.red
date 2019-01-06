Red [
	Title:   "Red VID reactive test"
	Author:  "Nenad Rakocevic"
	File: 	 %react-test6.red
	Needs:	 View
]

system/view/debug?: no

view [
	style txt: text right
	txt "Text" f: area 200x80 
		font [name: "Comic Sans MS" size: 15 color: red]
		return

	txt "Size in pixels" text "0x0"
		react [[f/text f/font] face/text: form size-text f print ["size: " form size-text f f/text lf]]
		return
	
	txt "Font name" drop-list 120
		data  ["Arial" "Consolas" "Comic Sans MS" "Times"]
		react [f/font/name: pick face/data any [face/selected 3] print ["changed:" mold face/text]]
		return
		
	txt "Font size" s: field "15" 80x10 react [f/font/size: s/data print ["text " face/text lf]]
	button "+" bold 40 [s/data: s/data + 1]
	button "-" bold 40 [s/data: max 1 s/data - 1 s/size/x: s/size/x - 1 "s/size: " print s/size/x ]
	return
]

