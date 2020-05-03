
# all Source files have to be listed here
# there is no use for auto search and stuff becuase all source files should be identified
# there should be only cpp Files
SRC = src/sos.cpp

all:
	echo do nothing

check:
	echo do nothing


distcheck:
	@ $(foreach src,$(SRC), \
	echo Checking: $(src) ; \
	cpplint $(src) ; \
	( clang-format --style=Google  -output-replacements-xml $(src) | grep "<replacement ") && { echo "failure!"; exit 1; }  || { echo "success!";  } \
	)

format:
	echo $(SRC) | xargs -n1 clang-format --style=Google -i