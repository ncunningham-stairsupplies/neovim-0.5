## Language Servers to install
- Typescript
	- `npm install -g typescript typescript-language-server`
- Efm 
	- requires go to be installed correctly
	```
		export GOROOT=/usr/local/go
		export GOPATH=$HOME/go
		export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
	```
	- `go get github.com/mattn/efm-langserver`
- Prisma
	- `npm install -g @prisma/Language-server`
- Graphql
	- `npm install -g graphql-language-service-cli`
