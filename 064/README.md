## To update

### Files to update in master branch

* `./update_master_folder_from_source.sh` updates `master` folder from `../source/red` containing last red/red:master branch
* `git status` shows if some files have changed in master
* These files need to be updated in `gtk3` folder

### Files specific to gtk branch

These files can simply be copied in the developping a folder containing `red:master` branch. If `<red-folder>` is the name of this folder, `./update_github_red_GTK.sh <red-folder>` will update the folder with the GTK tools.

## Some helpers

### diff between gtk3 and master

To have a quick view of differences between files in master folder

* `gtk3` and `master` subfolders: `./diff_gtk3_master.sh <relative path file in master folder>`
* `gtk3` and `../source/red` subfolders: `./diff_gtk3_master.sh --source <relative path file in master folder>`

## get list of files shared between GTK and master branch

* `./get_shared_files_with_master.sh` generates the file `shared_files_red_master_and_gtk3.md`
