.PHONY: lsfun, basharguments,all,md
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
aaa:
	@bash generate.sh
