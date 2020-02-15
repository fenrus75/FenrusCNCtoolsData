OUTPUTS := $(patsubst %.svg,%.nc,$(wildcard *.svg))


all: $(OUTPUTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.svg $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) `cat $<.opts`  $<  


