BIN=bin
CONF=.mlvwm
MENU_EXTRAS=$(CONF)/MenuExtras

install:
	mkdir -p $(BIN)
	cp $(BIN)/apmstats $(HOME)/$(BIN)/apmstats
	chmod +x $(HOME)/$(BIN)/apmstats
	cp -r $(MENU_EXTRAS)/* $(HOME)/$(MENU_EXTRAS)
