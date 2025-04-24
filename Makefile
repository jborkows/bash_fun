.PHONY: lsfun, basharguments,all,md, generate-md, newsection
force:
lsfun: force
	@cd lsfun && \
	bash summary.sh
basharguments: force
	@cd basharguments && \
	bash summary.sh
all: lsfun basharguments
	@echo ""
md:
	@MARKDOWN_ON=true $(MAKE) --no-print-directory all
generate-md:
	@bash generate.sh
newsection:
	@if [ -z "$(TITLE)" ]t; then \
		echo "Error:TITLE  is required. Usage: make mycommand TITLE=value"; \
		exit 1; \
	fi; \
	bash create_section.sh "$(TITLE)"
