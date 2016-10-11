key: .ssh/ssh-container

.ssh/ssh-container:
	@mkdir -p $(shell dirname $@)
	@ssh-keygen -f $@ -P '' -C "provision@$(shell uname -n)"
