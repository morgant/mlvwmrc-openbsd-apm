BIN=bin
CONF=.mlvwm
PIXMAP=$(CONF)/pixmap
MENU_EXTRAS=$(CONF)/MenuExtras

install:
	mkdir -p $(BIN)
	cp $(BIN)/apmstats $(HOME)/$(BIN)/apmstats
	chmod +x $(HOME)/$(BIN)/apmstats
	cp -R $(PIXMAP)/* $(HOME)/$(PIXMAP)
	cp -R $(MENU_EXTRAS)/* $(HOME)/$(MENU_EXTRAS)
	sed -i 's@apmstats@$(HOME)/$(BIN)/apmstats@g' $(HOME)/$(MENU_EXTRAS)/apmstats-*
