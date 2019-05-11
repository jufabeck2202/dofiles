.PHONY: all
all:  ## Installs all Programms, links all dotfiles, setup complete dev env.
	echo "test"

.PHONY: link
link: ##link all dotfiles
	#make link
	@for file in $(shell find ~/dotfiles/dot); \
	do \
		echo "Creating symlink to $$file in home directory."; \
		ln -sf $$file $(HOME)/$${file##*/}; \
	done

.PHONY: install

.PHONY: install node

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'