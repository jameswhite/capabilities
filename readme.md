### Just a repo for organizing my thoughts on this topic.
Aquire a domain (example.org, this will come with a DNS provider)

Choose your "race" (Warcraft/Starcraft terminology)
  - Cloud
      - pkgrepo: aptly
      - pkgbuild: (local workstations)
      - vcs: GitHub
      - cfgmgr: Chef (hosted)

  - Debian/Ubuntu
      - pkgrepo: apache2, apt-ftparchve
      - pkgbuild: brew2deb
      - vcs: git-gitolite
      - cfgmgr: cfengine3

  - Fedora/RHEL/CentOS
      - pkgrepo: apache2, rpmtools
      - pkgbuild: _________
      - vcs: git, gitlab
      - cfgmgr: puppet

  - Windows
      - pkgrepo: IIS, Nuget

### Deploy your "Command Center/Hive/Gateway"
  - A single server with your base OS'es "race" with:
    - dnsentry : a DNS entry (A record) with your DNS provider
    - pkgrepo  : a place to store and deploy packages (e.g. apache2, apt-ftparchive)
    - pkgbuild : a system for building packages
    - vcs      : a version control system (e.g. git)
    - cfgmgr   : a config management system (e.g puppet, chef, cfengine3)


some kind of data bag? lastpass?

