OUTPUTS := $(patsubst %.stl,%.nc,$(wildcard *.stl))
FINGERPRINTS := $(patsubst %.stl,%.fingerprint,$(wildcard *.stl))


all: $(OUTPUTS) $(FINGERPRINTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
GCODECHECK_RUN := ../../FenrusCNCtools/gcodecheck/gcodecheck --library ../../FenrusCNCtools/toolpath/toollib.csv   --nospeed
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.stl $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) `cat $<.opts`  $<  

%.fingerprint : %.nc 
	@echo "Analyzing $<"
	@$(GCODECHECK_RUN) $<
	
clean:
	@rm -f *.nc
	