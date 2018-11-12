.PHONY=clean

SRC_DIR=src
SOURCE_NAME=Site
JS_DIR=js
ARTIFACT_NAME=site

SOURCE=$(SRC_DIR)/$(SOURCE_NAME).elm
ARTIFACT=$(JS_DIR)/$(ARTIFACT_NAME).js
MINIFIED=$(JS_DIR)/$(ARTIFACT_NAME).min.js

$(MINIFIED): $(ARTIFACT) src/*.elm
	uglifyjs $< --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | uglifyjs --mangle --output=$@

$(ARTIFACT): $(SOURCE)
	elm make --optimize --output=$@ $<

clean:
	rm -f $(ARTIFACT) $(MINIFIED)
