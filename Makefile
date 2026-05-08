TEX    = xelatex
MAIN   = schwarzschild
SRC    = $(MAIN).tex
OUT    = $(MAIN).pdf
FLAGS  = -interaction=nonstopmode -halt-on-error

.PHONY: all clean distclean view force

all: $(OUT)

$(OUT): $(SRC)
	@echo "==> First pass..."
	@$(TEX) $(FLAGS) $(SRC) > /dev/null
	@echo "==> Second pass (cross-references)..."
	@$(TEX) $(FLAGS) $(SRC) > /dev/null
	@echo "==> Third pass (stabilize)..."
	@$(TEX) $(FLAGS) $(SRC) > /dev/null
	@echo "==> Done: $(OUT) ($$(grep -o '([0-9]* pages)' $(MAIN).log | tail -1))"

force:
	@rm -f $(OUT)
	@$(MAKE) all

clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.fdb_latexmk *.fls

distclean: clean
	rm -f $(OUT)

view: $(OUT)
	open $(OUT)
