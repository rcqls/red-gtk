#!/bin/bash
to=""

if [ "$1" = "" ];then 
	to=../../red
else
	to="$1"
fi

files=(
	compiler.r
	build/includes.r 
	environment/codecs/bmp.red
	environment/codecs/gif.red
	environment/codecs/jpeg.red
	environment/codecs/png.red
	environment/console/CLI/console-view.red
	modules/view/backends/platform.red
	modules/view/backends/gtk3/comdlgs.reds
	modules/view/backends/gtk3/events.reds
	modules/view/backends/gtk3/gtk.reds
	modules/view/backends/gtk3/handlers.reds
	modules/view/backends/gtk3/style.reds
	modules/view/backends/gtk3/draw.reds
	modules/view/backends/gtk3/font.reds
	modules/view/backends/gtk3/gui.reds
	modules/view/backends/gtk3/para.reds
	modules/view/backends/gtk3/text-box.reds
	runtime/red.reds
	runtime/platform/image-gdk.reds
	tests/gtk3/README.gtk3
	tests/gtk3/react-test6-mini.red
	tests/gtk3/view-test.red
	tests/gtk3/align-test.red
	tests/gtk3/react-test6.red
	tests/gtk3/view-test2.red
	tests/gtk3/draw.red
	tests/gtk3/request.red
	tests/gtk3/group-box-test.red
	tests/gtk3/vid.red
)

for file in "${files[@]}";do
	if [ -e "master/$file" ]; then
		echo "master/$file -> $to/$file"
		mkdir -p $(dirname "$to/$file")
		cp master/$file $to/$file
	else
		echo "gtk3/$file -> $to/$file"
		mkdir -p $(dirname "$to/$file")
		cp gtk3/$file $to/$file
	fi
done