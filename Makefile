.PHONY: default link clean 
.SILENT: default link clean 

default:
	echo "Select one of the following options:"
	echo "- make link"
	echo "- make clean"

link:
	rm ~/.config/nvim
	ln -s $(shell pwd) ~/.config/nvim

clean:
	rm -rf ~/.local/share/nvim ~/.local/state/nvim
