key: .ssh/ssh-container
	@runmany 'echo $$1; jq . <$$1 >/dev/null' *.json

.ssh/ssh-container:
	@mkdir -p $(shell dirname $@)
	@ssh-keygen -f $@ -P '' -C "packer@$(shell uname -n)"
