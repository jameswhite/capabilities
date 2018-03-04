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
  - Some capabilities genereate paper, others just enable other capabilities.

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
  - Humans have capability complexity scores. Not having a high enough score means it'll take longer to instanciate a capability, as Research will need to be done.
  - Humans come with an inital cost and an upkeep, automations are maintained like any other capability.
  - Upkeep comes in the form of paper.
  - Sales and Marketing Humans are a special kind of Human that will increase Users per Capability.

### Research
  - If no resource has a capability at the level required to instantiate something, they can either spend time (with the associated upkeep spend) to research it or you can acquire another Resource with that capability.
  - Research will increase the capability score of that Human permanently. Humans with higher capabilities have higher upkeep requirements, and may leave you for greener pastures.

### Culture
  - Culture will affect how your capabilities are instantiated
  - Found in ./culture
  - Some cultures are mutually exclusive with others.
  - Cultures will decide which Humans and Automations you need to build an maintain Capabilities
  - Examples include (arch/vendor/os/host : monoculture/polyculture, package culture, hero culture, crunch time, agile, waterfall, flat hiearchy, silos, cult/"family", open vs. closed florr plan, 9-5, rowe, remote or local, contractor culture, independent vs vc backed, hipster vs. new hotness, science lab, optimize-for-happiness, retalitory culture, outsource culture, etc)

### Initial Conditions
  - The game starts with one resource (you) with a random, but humble, set of capabilities. You must spend time Researching the capabilities you'd like to instantiate.
  - You'll have 250,000 paper to buy instances and acquire Humans.

### Turns
  - Instantiations, Upkeep and Paper move around during Turns.
  - If a capability gives you 10 paper/User you get that every turn for evey User.
  - If a Human costs you 10,000 paper, that is deducted every turn
  - If an Instance has an upkeep of 100, it is deducted every turn.
  - If an Instance has an upkeep of 100, it is deducted every turn.
  - 200 Turns can be considered roughly a year in game time.

### Users
  - These are the consumers that bring in Paper.
  - There are several types of Users you can attract. Free, Paying, Enterprise, and Institutional.
  - Each type brings in more Paper (e.g. Enterprise Users pay more than Paying Users.)

### Endgame
  - Use Paper to enlist Humans to instantiate capabilities for which the Users will give you Paper. Sounds pretty simple, right?
  - Which Humans you can enlist will depend on your Culture, Capabilites, and how much Paper you offer them.
  - Which Users give you paper will depend on which Capabilities you offer.

