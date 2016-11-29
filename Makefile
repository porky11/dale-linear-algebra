.RECIPEPREFIX+= 

FLAGS=-M../dale-extensions

all: test

test: liblinear-algebra.dtm src/test.dt
  dalec src/test.dt -o test $(FLAGS)

liblinear-algebra.dtm: src/linear-algebra.dt
  dalec -c src/linear-algebra.dt $(FLAGS)

src/%.dt:
  true

.PHONY: all clean

clean:
  rm -f test && rm *.so && rm *.bc && rm *.dtm

