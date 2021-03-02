DESTDIR :=
prefix  := /usr/local
bindir  := ${prefix}/bin
# mandir  := ${prefix}/share/man
envdir  := /etc/default
systemdir  := /etc/systemd/system

.PHONY: install
install: 
	install -d ${DESTDIR}${bindir}
	install -m755 cifs-automount ${DESTDIR}${bindir}/
	install -d ${DESTDIR}${systemdir}
	install -m644 cifs-automount.service ${DESTDIR}${systemdir}/
	install -d ${DESTDIR}${envdir}
	install -m644 environment ${DESTDIR}${envdir}/cifs-automount

.PHONY: uninstall
uninstall:
	rm -f ${DESTDIR}${bindir}/cifs-automount
	rm -f ${DESTDIR}${systemdir}/cifs-automount.service
	rm -f ${DESTDIR}${envdir}/cifs-automount
