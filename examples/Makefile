.PHONY: all 2 4 5 A
all: 2 5
2:
	$(MAKE) -C 2
#4:
#	$(MAKE) -C 4
5:
	$(MAKE) -C 5
#A:
#	$(MAKE) -C A

.PHONY: mostlyclean mclean-2 mclean-4 mclean-5 mclean-A
mostlyclean: mclean-2 mclean-5
mclean-2:
	$(MAKE) -C 2 mostlyclean
#mclean-4:
#	$(MAKE) -C 4 mostlyclean
mclean-5:
	$(MAKE) -C 5 mostlyclean
#mclean-A:
#	$(MAKE) -C A mostlyclean

.PHONY: clean clean-2 clean-4 clean-5 clean-A
clean: clean-2 clean-5
clean-2:
	$(MAKE) -C 2 clean
#clean-4:
#	$(MAKE) -C 4 clean
clean-5:
	$(MAKE) -C 5 clean
#clean-A:
#	$(MAKE) -C A clean

.PHONY: distclean distclean-2 distclean-4 distclean-5 distclean-A
distclean: distclean-2 distclean-5
distclean-2:
	$(MAKE) -C 2 distclean
#distclean-4:
#	$(MAKE) -C 4 distclean
distclean-5:
	$(MAKE) -C 5 distclean
#distclean-A:
#	$(MAKE) -C A distclean
