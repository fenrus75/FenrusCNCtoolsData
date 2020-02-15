OUTPUTS := $(patsubst %.stl,%.nc,$(wildcard *.stl))


all: $(OUTPUTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.stl $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) `cat $<.opts`  $<  


clean:
	@rm *.nc
	