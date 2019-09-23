DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback.desktop $(PREFIX)/share/applications/i3-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/i3-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/i3-gnome-flashback-session $(PREFIX)/bin/i3-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/i3-gnome-flashback $(PREFIX)/bin/i3-gnome-flashback

uninstall:
	rm -f $(PREFIX)/bin/i3-gnome-flashback \
	      $(PREFIX)/bin/i3-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session \
	      $(PREFIX)/share/applications/i3-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop

.PHONY: install uninstall
