.PHONY: mac-all
mac-all:  ## setup complete mac env.
	echo "test"

.PHONY: link
link: ## link only dotfiles
	#make link
	@for file in $(shell find ~/dotfiles/dot); \
	do \
		echo "Creating symlink to $$file in home directory."; \
		ln -sf $$file $(HOME)/$${file##*/}; \
	done

.PHONY: ubuntu-all
ubuntu-all: ## setup complemte ubuntu env.

.PHONY: ubuntu-ess
ubuntu-ess:




.PHONY: node
node: ## install all global node packages using yarn
	~/dotfiles/install/node.sh

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'