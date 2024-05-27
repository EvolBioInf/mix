all:
	for a in mix doc; do \
		make -C $$a; \
	done
	cp mix/start.sh scripts
	cd mix && sudo docker build -t mix . && cd -
weave:
	make -C doc
clean:
	for a in mix doc; do \
		make clean -C $$a; \
	done
