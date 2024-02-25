settings {
  logfile = "/var/log/lsyncd/lsyncd.log",
  statusFile = "/var/log/lsyncd/lsyncd.status",
  statusInterval = 20,
  nodaemon   = false
}

sync {
  default.rsync,
  source = "/opt/buynow",
  target = "/mnt/sdb/buynow"
}

sync {
  default.rsync,
  source = "/home/aelassas/buynow",
  target = "/mnt/sdb/__buynow__"
 }
 
sync {
  default.rsync,
  source = "/opt/bookcars",
  target = "/mnt/sdb/bookcars"
}

sync {
 default.rsync,
 source = "/home/aelassas/bookcars",
 target = "/mnt/sdb/__bookcars__"
}