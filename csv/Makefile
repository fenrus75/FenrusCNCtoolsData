OUTPUTS := $(patsubst %.csv,%.nc,$(wildcard *.csv))


all: $(OUTPUTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.csv $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) -t 201  $<  


clean:
	@rm -f *.nc
	