# Makefile for managing a Hugo site

# Configurable variables
HUGO = hugo
SERVER_FLAGS = --buildDrafts --buildFuture --disableFastRender
DESTINATION = public

# Serve the site locally
serve:
	@echo "Starting Hugo server..."
	@$(HUGO) server $(SERVER_FLAGS)

# Build the static site
build:
	@echo "Building site..."
	@$(HUGO) --destination $(DESTINATION)

# Clean the workspace
clean:
	@echo "Cleaning up..."
	@rm -rf $(DESTINATION)

.PHONY: serve build clean

