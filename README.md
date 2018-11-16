# Portraitor

## Usage

1. Download this repository and unzip it or just copy the ``portraitor.vbs`` file.
1. Download images from imgur as a zip (3 button menu at the bottom).
1. unzip the images into a folder named that is not called ``target`` or ``.git``. The folder has to be in the same folder as the ``portraitor.vbs`` file. The script will not work if the images are unzipped to the same directory that contains the ``portraitor.vsb`` file; they need to be in a subfolder.
1. Execute ``portraitor.vbs``. You might have to refresh (F5) the folder after that. The script will generate portait files for each gallery folder in the same directory as the ``portraitor.vbs`` file.
1. Copy the folders from ``target`` to ``C:\Users\``_name_``\AppData\LocalLow\Owlcat Games\Pathfinder Kingmaker\Portraits``

### Trouble Shooting

This script will fail if:

* The folder containing ``portraitor.vbs`` contains any subfolders with content other than images in the correct format for conversion. The script will create a folder called ``target`` containing the outputs.
* The images in the folder don't start with a number followed by a blank
* The target folder is currently in use (e.g. by the explorer)

## Hints for uploading images

This script expects all images for one portrait to be in the order:

1. Fulllength
1. Medium.png
1. Small.png

## Feel free to contribute

I am not familiar with the syntax of vbs, I just made it work. I wanted to have a simple tool, that does not require any JVM, Node.js or something like that and is not compiled (so anybody can easily see there's no harm in this tool).

Also this solution only works for Windows. If you want to port this script to Mac OS X or SteamOS/Linux feel free to do so.
