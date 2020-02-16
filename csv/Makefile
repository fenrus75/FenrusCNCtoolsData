OUTPUTS := $(patsubst %.csv,%.nc,$(wildcard *.csv))
FINGERPRINTS := $(patsubst %.csv,%.fingerprint,$(wildcard *.csv))


all: $(OUTPUTS) $(FINGERPRINTS)


TOOLPATH_RUN := ../../FenrusCNCtools/toolpath/toolpath --library ../../FenrusCNCtools/toolpath/toollib.csv  --quiet
GCODECHECK_RUN := ../../FenrusCNCtools/gcodecheck/gcodecheck --library ../../FenrusCNCtools/toolpath/toollib.csv   --nospeed
TOOLPATH_DEPS := ../../FenrusCNCtools/toolpath/toolpath ../../FenrusCNCtools/toolpath/toollib.csv 

%.nc : %.csv $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) -t 18  $<  

joint.nc : joint.csv $(TOOLPATH_DEPS)
	@echo "Processing $< ==> $@"
	@$(TOOLPATH_RUN) -t 29  $<  

%.fingerprint : %.nc 
	@echo "Analyzing $<"
	@$(GCODECHECK_RUN) $<


clean:
	@rm -f *.nc
	