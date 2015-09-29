applications = mysql/.ottoid memcached/.ottoid $(PWD)/.ottoid

compile: $(applications)
$(applications): %/.ottoid : %/Appfile
	cd $* ; otto compile

clean:
	$(RM) $(applications)
