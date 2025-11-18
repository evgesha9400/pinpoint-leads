.PHONY: install build serve clean help

help:
	@echo "Pinpoint Leads - Available targets:"
	@echo "  make install  - Install dependencies"
	@echo "  make build    - Build Tailwind CSS"
	@echo "  make serve    - Serve the website locally (http://localhost:3000)"
	@echo "  make clean    - Remove generated files"

install:
	npm install

build:
	npm run build:css

serve: build
	npx http-server src -p 3000 -c-1 -o

clean:
	rm -f src/assets/css/styles.css
	rm -rf node_modules

