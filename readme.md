## Components of the Game

### Architectures
  - An architecture (arch) is a host system type
  - Examples include (amd64, arm64, armel, armhf, i386, mips, mipsel, powerpc, ppc64el, s390x, sparc)
  - Found under `./archs/<arch>`

### Host Systems
  - An host system (host) is an implementation of an architecture
  - A host system will have a given amount of Storage, CPU, RAM, and Bandwitdh, and comes with an initial cost and an upkeep.
  - Hosts can be bare-metal or cloud, and may also be virtual or containers existing within bare-metal or the cloud.
  - There are various forms of cloud hosts as well.
  - Hosts have a vendor associated.
  - Found under `./archs/<arch>/hosts/<host>`

### Operating Systems
  - An operating system (os) runs on a host
  - Not all operating systems can run on all hosts
  - Found under `./archs/<arch>/hosts/<host>/oses/<os>`
  - Operating systems may have a vendor associated or not.

### Platforms
  - A platform (plats) consists of an an operating system running on a host of an architecture.
  - Platforms must be deployed by a resource.
  - Found under `./archs/<arch>/hosts/<host>/oses/<os>/plats/<plat>`

### Languages
  - Languages (lang) are unique ways to instruct platforms to do tasks
  - Not all languages run on all operating systems or even similarly on various operating systems.
  - Found under `./archs/<arch>/hosts/<host>/oses/<os>/plats/<plat>/langs/<lang>`

### Capability
  - Capabilities (cap) are key, they're what allow you to do things when implemented.
  - Capabilities (or combinations of capabilities) unlock other capabilities
  - Capabilities must be maintained by a resource.
  - Found under `./archs/<arch>/hosts/<host>/oses/<os>/plats/<plat>/langs/<lang>/caps/<cap>`
  - Capabilites can be made up of bundled packages or not.
  - 'black box' is a special type of capability that comes from a vendor, usually with an implied platform requirement.

### Implementations
  - Implementations (imps) are a language-specific, instance of a capablity.
  - Implementations must be added to a platform by a resource
  - Implementations have a complexity score that must be maintained by a resource with a comparable score to not stop working.
  - Found under `./archs/<arch>/hosts/<host>/oses/<os>/plats/<plat>/langs/<lang>/caps/<cap>/instances/<instance>`

### Resources
  - Resources can be either an automation or a human or a combination of both, automations can augment humans.

### Automations
  - An automation is just a capability (a sub-resource)  that must be maintained by another resource, usually requiring fewer resources.

### Humans
  - Humans have capability complexity scores. Not having a high enough score means it'll take longer to instanciate a capability.
  - Humans come with an inital cost and an upkeep, automations are maintained like any other capability.

### Culture
  - Culture will affect how your capabilities are instantiated
  - Found in ./culture
  - Some cultures are mutually exclusive with others.
  - Cultures will decide which Humans and Automations you need to build an maintain Capabilities
  - Examples include (arch/vendor/os/host : monoculture/polyculture, package culture, hero culture, crunch time, agile, waterfall, flat hiearchy, silos, cult/"family", open vs. closed florr plan, 9-5, rowe, remote or local, contractor culture, independent vs vc backed, hipster vs. new hotness, science lab, optimize-for-happiness, retalitory culture, outsource culture, etc)
