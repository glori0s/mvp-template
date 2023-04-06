TEMPLATES_DIR=~/Library/Developer/Xcode/Templates
MVP_TEMPLATE_DIR=MVP

install:
	rm -r -f $(TEMPLATES_DIR)/$(MVP_TEMPLATE_DIR)
	mkdir -p $(MVP_TEMPLATE_DIR)
	cp -r -f $(MVP_TEMPLATE_DIR) $(TEMPLATES_DIR)

deinstall:
	rm -r -f $(TEMPLATES_DIR)/$(MVP_TEMPLATE_DIR)
