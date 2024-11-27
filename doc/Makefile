TEXT = mix
SRC1 = $(TEXT).tex intro.tex

date = $(shell git log | grep Date | head -n 1 | sed -r 's/Date: +[A-Z][a-z]+ ([A-Z][a-z]+) ([0-9]+) [^ ]+ ([0-9]+) .+/\2_\1_\3/')
version = $(shell git describe)

all: $(TEXT)Doc.pdf
$(TEXT)Doc.pdf: $(TEXT).tex $(SRC1)
	echo $(date) | tr '_' ' ' > date.txt
	echo $(version) | tr '-' ' ' | awk '{printf "%s", $$1; if ($$2) printf "-%s", $$2; printf "\n"}' > version.txt
	latex $(TEXT)Doc.tex
	latex $(TEXT)Doc.tex
	dvips $(TEXT)Doc -o -q
	ps2pdf -dALLOWPSTRANSPARENCY $(TEXT)Doc.ps
publish: $(TEXT)Doc.pdf
	if [ -d /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/ ]; then \
		cp $(TEXT)Doc.pdf /mnt/c/Users/haubold/ownCloud\ -\ haubold@evolbio.mpg.de@owncloud.gwdg.de/docs/; \
	fi
%.tex: ../*/%.org $(TEXT)Doc.tex
	bash ../scripts/org2nw $< | noweave -n -x | sed 's/_test/\\_test/' > $@
clean:
	rm -f $(TEXT).tex $(TEXT)Doc.aux $(TEXT)Doc.dvi $(TEXT)Doc.log $(TEXT)Doc.pdf $(TEXT)Doc.ps  $(TEXT)Doc.toc version.txt date.txt
