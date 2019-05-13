.PHONY: mac-all
mac-all: link mac-brew mac-config node code-extensions  ## setup complete mac environment

.PHONY: mac-config
mac-config: ## change mac default settings
	~/dotfiles/install/mac.sh 

.PHONY: mac-brew
mac-brew: ## install all brew packages 
	~/dotfiles/install/brew.sh

.PHONY: ubuntu-all
ubuntu-all: link ubuntu-apt-full node## setup complemte ubuntu environment

.PHONY: ubuntu-ess
ubuntu-ess: link ubuntu-apt-ess## setup minimal ubuntu environment

.PHONY: ubuntu-apt-full
ubuntu-apt-full: ## install all ubuntu packages
	~/dotfiles/install/apt.sh full

.PHONY: ubuntu-apt-ess
ubuntu-apt-ess: ## install only essentail packages
	~/dotfiles/install/apt.sh

.PHONY: link
link: ## link only dotfiles
	#make link
	@for file in $(shell find ~/dotfiles/dot); \
	do \
		echo "Creating symlink to $$file in home directory."; \
		ln -sf $$file $(HOME)/$${file##*/}; \
	done

.PHONY: node
node: ## install all global node packages using yarn
	~/dotfiles/install/node.sh

.PHONY: code-extensions
code-extensions: ## install all vscode extensions for code-insiders
	~/dotfiles/install/code-extensions.sh

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'