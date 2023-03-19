all:
	make -C lister 
	make -C basicdtypes 
	make -C dump 

doc:
	make -C lister/doc 
	make -C basicdtypes/doc 
	make -C dump/doc 
	find . -name "*.tpp.tex" -exec cp {} ../../Book/build \;
	cp hello.tex ../../Book/build