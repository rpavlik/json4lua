# Some functions for candiness-looking
err =						\
	@echo -e "\e[1;31m*\e[0m $(1)\e[0m";	\
	@exit 1;
inf =						\
	@echo -e "\e[1;32m*\e[0m $(1)\e[0m";
wrn =						\
	@echo -e "\e[1;33m*\e[0m $(1)\e[0m";
ext =						\
	@echo -e "\e[1;35m*\e[0m $(1)\e[0m";

# LibName and LibVersion
T= json
V= 0.9.50

LUA_LIBDIR= ${DESTDIR}$(shell pkg-config --variable INSTALL_LMOD lua)
LUA_INC= $(shell pkg-config --variable INSTALL_INC lua)
LUA_VERSION_NUM= ${$(shell pkg-config --variable R lua)//.}


all:
	@$(call inf,"Done!")

install:
	@$(call ext,"Installing...")
	@mkdir -p $(LUA_LIBDIR)
	cp -f json/* $(LUA_LIBDIR)
	@$(call inf,"Installing is done!")

clean:
	@$(call inf,"Cleaning is done!")

test:
	cd json && lua ../examples/tests.lua
	@$(call inf,"Testing is done!")

uninstall: clean
	@$(call wrn,"Uninstalling...")
	rm -f $(LUA_LIBDIR)/{json,rpc,rpcserver}.lua
	@$(call inf,"Uninstalling is done!")
