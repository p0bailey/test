# Makefile for starting Hugo server in docs directory with cleaning

# Variables
HUGO = hugo
DOCS_DIR = docs
PUBLIC_DIR = $(DOCS_DIR)/public

.PHONY: serve clean

serve: clean
	cd $(DOCS_DIR) && $(HUGO) server

clean:
	rm -rf $(PUBLIC_DIR)
