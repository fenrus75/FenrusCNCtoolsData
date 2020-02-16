OUTPUTS := $(patsubst %.svg,%.nc,$(wildcard *.svg))
FINGERPRINTS := $(patsubst %.svg,%.fingerprint,$(wildcard *.svg))

all: $(OUTPUTS) $(FINGERPRINTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
GCODECHECK_RUN := ../../FenrusCNCtools/gcodecheck/gcodecheck --library ../../FenrusCNCtools/toolpath/toollib.csv   --nospeed
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.svg $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) `cat $<.opts`  $<  

%.fingerprint : %.nc 
	@echo "Analyzing $<"
	@$(GCODECHECK_RUN) $<


clean:
	@rm -f *.nc