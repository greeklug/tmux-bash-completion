SHELL:=/usr/bin/bash
INSTALL:=install --group=root --owner=root --mode=u=rw,g=r,o=r -Dt

SYSTEM_COMPLETION_DIR:=/etc/bash_completion.d

.PHONY: help
help:
	@echo "Usage make <command>"
	@echo "  where <command> is one of:"
	@echo "    - install: Installs the bash completion script for Tmux"
	@echo "    - uninstall: Unisntalls the bash completion script for Tmux"

.PHONY: install
install: $(SYSTEM_COMPLETION_DIR)/tmux

.PHONY: uninstall
uninstall:
	rm -f $(SYSTEM_COMPLETION_DIR)/tmux

$(SYSTEM_COMPLETION_DIR)/tmux:
	$(INSTALL) $(SYSTEM_COMPLETION_DIR) completions/tmux
