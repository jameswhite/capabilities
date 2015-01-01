### Just a repo for organizing my thoughts on this topic.

Choose your "race"
  + Cloud
  |   + pkgrepo: aptly
  |   + vcs: GitHub
  |   + cfgmgr: Chef (hosted)
  |
  + Windows
  |   + pkgrepo: IIS, Nuget
  |
  + Debian/Ubuntu
  |   + pkgrepo: apache2, apt-ftparchve
  |   + pkgbuild: brew2deb
  |   + vcs: git+gitolite
  |   + cfgmgr: git+gitolite
  |
  + Fedora/RHEL/CentOS
      + pkgrepo: apache2, rpmtools


Deploy your "Command Center/Hive/Gateway"
  - A single server with your base OS'es "race" with:
    - pkgrepo  : a place to store and deploy packages (e.g. apache2, apt-ftparchive)
    - pkgbuild : a system for building packages
    - vcs      : a version control system (e.g. git)
    - cfgmgr   : a config management system (e.g puppet, chef, cfengine3)
