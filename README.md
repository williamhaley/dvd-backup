# DVD Backup

For backuping up DVDs. A DVD's [shelf life can be as little as 30 years](https://www.sony.com/electronics/support/articles/00009195). An `iso` file is probably a more robust long-term solution for preserving a personal DVD. This can be helpful for backing up old family video DVDs, data DVDs, hobby project/student film DVDs, etc.

**Better projects exist than this one. This repository exists only to suit the needs of a single user**

# Run

```
bash dvd-to-iso.sh
```

# Alternatives

* `ddrescue -n -b 2048 $DEVICE "$SCRATCH/$NAME.iso" "$SCRATCH/$NAME.mapfile"`
* `dvdbackup -i "${device}" -o "${SCRATCH}" --mirror --name="${NAME}"`
* `mkisofs -V "${NAME}" -dvd-video -udf -o "${SCRATCH}/${NAME}.iso" "${SCRATCH}/${NAME}"`

# Prior Art

This repository was generated for the sake ofarchiving the work of the `python-dvdvideo` repos that seem to be abandoned (or at least not recently maintained) from what I can tell.

* https://anonscm.debian.org/git/users/waldi/python-dvdvideo.git
* https://gitlab.com/waldi/python-dvdvideo
* https://packages.ubuntu.com/xenial/python3-dvdvideo
* https://launchpad.net/ubuntu/+source/python-dvdvideo

Typically `ddrescue` works for me when I need to back up an old family video DVD, but in some cases it fails. I've found the `python-dvdvideo` scripts to be more reliable in those cases.
