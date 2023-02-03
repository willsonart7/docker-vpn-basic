# 👇 This is a rule 👇
# target: dependency-1 dependency-2
# (tab) 	shell lines
# 👆 This is a rule 👆

build:
	@echo "Build project"
	@echo "Enter the volumen path for example: /opt/openvpn"
	@read volumen; \
	echo "VPN_VOLUMEN_PATH=$$volumen" >> ./docker.env
	@echo "Build completed!!"

config: build
	@echo "Config VPN"
	@echo "Enter the name of the host for example: udp://vpn.example.com"
	@read host; \
	./scripts/init-config.sh $$host
	@echo "Config Completed!"

create-client-only:
	@echo "Create client"
	@echo "Enter the name of the client"
	@read name; \
	./scripts/create-client $$name

generate-file-only:
	@echo "Generate file"
	@echo "Enter the name of the client"
	@read name; \
	./scripts/generate-file $$name

generate-file: create-client-only generate-file-only
	@echo "Generate file completed!!"
