.PHONY: simple buffer_sizes simple_writing_to_full automatic_descriptors automatic_descriptors_inheritance multiple_descriptors spooky false_logger
simple:
	@cc simple.c -o simple.exe 
	@./simple.exe && cat simple_example.txt | xxd
buffer_sizes: 
	@cc buffer_sizes.c -o buffer_sizes.exe
	@./buffer_sizes.exe
simple_writing_to_full:
	@cc simple_writing_to_full.c -o simple_writing_to_full.exe
	@./simple_writing_to_full.exe
automatic_descriptors:
	@cc automatic_descriptors.c -o automatic_descriptors.exe
	@echo "Print all"
	@./automatic_descriptors.exe 
	@echo "Redirect stdout to /dev/null only stderr should be visible"
	@./automatic_descriptors.exe > /dev/null
	@echo "(Same but with explicit syntax) Redirect stdout to /dev/null only stderr should be visible"
	@./automatic_descriptors.exe 1> /dev/null
	@echo "Redirect stderr to /dev/null only stdout should be visible"
	@./automatic_descriptors.exe 2> /dev/null
automatic_descriptors_inheritance:
	@cc automatic_descriptors_inheritance.c -o automatic_descriptors_inheritance
	@echo "For now descriptor does not exists, so it will not write anything"
	@./automatic_descriptors_inheritance
	@echo "Lets redirect descriptor 3 to stdout"
	#exec 3>&- closes descriptor
	@exec 3>&1 && ./automatic_descriptors_inheritance && exec 3>&- && ./automatic_descriptors_inheritance
	#Writing to file
	@exec 3>automatic_descriptors_inheritance.txt && ./automatic_descriptors_inheritance && cat automatic_descriptors_inheritance.txt && exec 3>&- && ./automatic_descriptors_inheritance && echo "After running again with descriptor of" && cat automatic_descriptors_inheritance.txt
multiple_descriptors:
	@cc multiple_descriptors.c -o multiple_descriptors.exe
	@./multiple_descriptors.exe
	@cat multiple_descriptors.txt
false_logger:
	@cc false_logger.c -o false_logger.exe
	@./false_logger.exe
	@echo File content
	@cat false_logger.txt
spooky:
	@bash spooky.sh
