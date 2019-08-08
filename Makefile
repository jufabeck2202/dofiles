.PHONY: mac-all
mac-all: link mac-brew mac-config node code-extensions mac-mas  ## setup complete mac environment

.PHONY: mac-config
mac-config: ## change mac default settings
	$$HOME/dotfiles/install/mac.sh 

.PHONY: mac-brew
mac-brew: ## install all brew packages 
	$$HOME/dotfiles/install/brew.sh

.PHONY: mac-mas
mac-brew: ## install all brew packages 
	$$HOME/dotfiles/install/mas.sh

.PHONY: ubuntu-all
ubuntu-all: link ubuntu-apt-full node## setup complemte ubuntu environment

.PHONY: ubuntu-ess
ubuntu-ess: link ubuntu-apt-ess## setup minimal ubuntu environment

.PHONY: ubuntu-apt-full
ubuntu-apt-full: ## install all ubuntu packages
	$$HOME/dotfiles/install/apt.sh full

.PHONY: ubuntu-apt-ess
ubuntu-apt-ess: ## install only essentail packages
	$$HOME/dotfiles/install/apt.sh

.PHONY: link
link: ## link only dotfiles
	#make link
	@for file in $(shell find $(HOME)/dotfiles/dot); \
	do \
		echo "Creating symlink to $$file in home directory."; \
		ln -sfn $$file $(HOME)/$${file##*/}; \
	done
	@rm $(HOME)/dot

.PHONY: node
node: ## install all global node packages using yarn
	$$HOME/dotfiles/install/node.sh

.PHONY: code-extensions
code-extensions: ## install all vscode extensions for code-insiders
	$$HOME/dotfiles/install/code-extensions.sh

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'