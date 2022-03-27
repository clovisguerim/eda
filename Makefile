## -----------------------------------------------------------------------------
## The purpose of this Makefile is to provide the commands to setup the
## environment for development of the EDA Package
## -----------------------------------------------------------------------------

help: ## Show this help
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "};  \
	{printf "%-15s %s\n", $$1, $$2}'

miniconda:	## Downloads and install latest Miniconda3 x86_64 for Linux
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh -p ~/miniconda
	rm Miniconda3-latest-Linux-x86_64.sh

env-create-eda:	## Creates a conda environment named "bases" with Python 3.8
	conda create -n eda python=3.8 --yes

env-remove-anac:	## Removes the "bases" environment
	conda env remove -n eda

# must run `conda activate bases` before executing this
env-setup:  ## Sets up the environment for development
	# Install repository as an editable package
	pip install -r requirements.txt

	# Install jupyter to remove notebooks output
	pip install jupyter
env-java-install: ## Install Java in enviroment
	sudo apt install openjdk-11-jdk

env-import-eda:
	pip install -e ./