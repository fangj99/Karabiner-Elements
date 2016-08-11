all:
	$(MAKE) -C appendix | ruby ./scripts/reduce-logs.rb
	$(MAKE) -C src | ruby ./scripts/reduce-logs.rb

clean:
	$(MAKE) -C appendix clean
	$(MAKE) -C src clean

gitclean:
	git clean -f -x -d

ibtool-upgrade:
	find * -name '*.xib' | while read f; do xcrun ibtool --upgrade "$$f"; done
