PROGS = cmp diff diff3 sdiff

all: $(PROGS:%=build-%)

install: $(PROGS:%=install-%)

clean: $(PROGS:%=clean-%)

build-%: %
	@$(MAKE) -C $<

install-%: %
	@$(MAKE) -C $< install DESTDIR='$(shell test -n '$(DESTDIR)' && realpath '$(DESTDIR)')'

clean-%: %
	@$(MAKE) -C $< clean
