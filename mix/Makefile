all:
tangle: Dockerfile README start.sh
Dockerfile: mix.org README
	bash ../scripts/org2nw mix.org | notangle -RDockerfile > Dockerfile
README: mix.org
	bash ../scripts/org2nw mix.org | notangle -RREADME > README
docker:
	sudo docker build -t mix .
start.sh: mix.org
	bash ../scripts/org2nw mix.org | notangle -Rstart > start.sh
clean:
	rm -f Dockerfile README start.sh
