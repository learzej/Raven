install:
	cp -v raven /usr/bin/raven
	chown -v root:root /usr/bin/raven
	chmod -v 755 /usr/bin/raven
	cp -v raven.conf /etc/raven.conf
	chown -v root:root /etc/raven.conf
	chmod -v 644 /etc/raven.conf

	if [ ! -d /var/raven ]; then \
	  mkdir -v /var/raven; \
		chown -v root:root /var/raven; \
		chmod -v 755 /var/raven; \
	fi

uninstall:
	rm -v /usr/bin/raven
	rm -v /etc/raven.conf

uninstall_all:
	rm -v /usr/bin/raven
	rm -v /etc/raven.conf
	rm -rfv /var/raven
