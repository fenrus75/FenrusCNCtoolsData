all:
	@make -s -C svg 
	@make -s -C stl 
	@make -s -C csv 
	

	
clean:
	@make -C svg clean
	@make -C stl clean
	@make -C csv clean
	
	