PROGS = cmp diff

all: $(PROGS:%=build-%)

install: $(PROGS:%=install-%)

clean: $(PROGS:%=clean-%)

build-%: %
	@$(MAKE) -C $<

install-%: %
	@$(MAKE) -C $< install DESTDIR='$(shell test -n '$(DESTDIR)' && realpath '$(DESTDIR)')'

clean-%: %
	@$(MAKE) -C $< clean
