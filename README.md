Geaaru Gentoo Overlay

For install overlay:
- copy geaaru_overlay.xml file in /etc/layman/ directory;
- add 'file:///etc/layman/geaaru_overlay.xml' on overlays section of the layman.cfg
  file.

For Gnome3+systemd, enable systemd use in this way:
mkdir /etc/portage/profile
echo "-gtk3" >> /etc/portage/profile/use.mask
echo "-systemd" >> /etc/portage/profile/use.mask
echo "-introspection" >> /etc/portage/profile/use.mask



