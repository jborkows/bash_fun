.PHONY: lsfun, basharguments,all
force:
lsfun: force
	@cd lsfun && \
	bash summary.sh
basharguments: force
	@cd basharguments && \
	bash summary.sh
all: lsfun basharguments
	@echo ""
