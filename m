Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA9FE002AB
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2013 10:27:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="275588029"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2013 10:27:12 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:11 -0600
Message-Id: <cover.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/7] new 'yocto-layer' tool for creating generic Yocto layers, v1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Jan 2013 18:27:14 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

NOTE: No changes here from previous posting of this patchset, just
reposting to the right list this time...

Since I've been doing kind of similar work lately for the 'custom kernel'
support for yocto-bsp and have gotten several requests lately (mainly
from Darren in support of the new kernel documentation) for something
like this, I decided to just go ahead and try to quickly implement a
general-purpose layer-generation tool based on the BSP-generation code
used in the yocto-bsp tool.  

There's actually an enhancement request bug for this already in the
Yocto bugzilla, but it doesn't contain many details:

Bug 3094 - Add a layer generation tool:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3094

v1 changes (the previous version was an RFC):

- if layer_priority is specified on the command line, the user is not
  queried and the layer is generated immediately
- explicitly return 0 in the hello.c example code

Below are a couple examples of how it's used - you really have to try it
yourself to see what's generated - I don't want to post tarballs or such on
the list and it's simple to generate and look at the layers.

The first case is just a very simple layer with a layer.conf and README -
basically the simplest layer you can create, and which exists mainly because
even that is easy to get wrong.  As with the yocto-bsp tool, the script
queries the user for a couple items, here we just take the defaults, which
are a priority of 6 for the layer and no other components such as example
recipes:

 [trz@empanada build]$ yocto-layer create simplestlayer
 Please enter the layer priority you'd like to use for the layer: [default: 6] 
 Would you like to have an example recipe created? (y/n) [default: n]  
 Would you like to have an example bbappend file created? (y/n) [default: n] 

 New layer created in meta-simplestlayer.

 Don't forget to add it to your BBLAYERS (for details see meta-simplestlayer\README).

 [trz@empanada build]$ find .
 .
 ./meta-simplestlayer
 ./meta-simplestlayer/conf
 ./meta-simplestlayer/conf/layer.conf
 ./meta-simplestlayer/README
 ./meta-simplestlayer/COPYING.MIT

If you specify a layer_priority directly on the command line,
yocto-layer will not query the user at all but instead will generate
the layer (without example recipes etc) immediately:

 [trz@empanada build]$ yocto-layer create simplestlayer 7

 New layer created in meta-simplestlayer.

 Don't forget to add it to your BBLAYERS (for details see meta-simplestlayer\README).

In the second case, we tell the tool that we do want an example .bb and and
an example .bbappend.  We're queried for the recipe name that we want our
recipe to have, and for the .bbappend, the name of the base recipe and its
version.  Below you can see the files it generates - please look at the files
themselves to see the contents.  For the recipe example, it generates a recipe
based on the example in the Yocto manual, and my own helloworld.c code
(untested so far which is also why this is an RFC).  For the .bbappend example,
it just creates an empty .patch file with some instructions on what to do to
modify the parent recipe with a patch:

 [trz@empanada build]$ yocto-layer create mylayer
 Please enter the layer priority you'd like to use for the layer: [default: 6] 
 Would you like to have an example recipe created? (y/n) [default: n] y
 Please enter the name you'd like to use for your example recipe: [default: example] flork
 Would you like to have an example bbappend file created? (y/n) [default: n] y
 Please enter the name you'd like to use for your bbappend file: [default: example] chork
 Please enter the version number you'd like to use for your bbappend file (this should match the recipe you're appending to): [default: 0.1] 0.22.3

 New layer created in meta-mylayer.

 Don't forget to add it to your BBLAYERS (for details see meta-mylayer\README).

 [trz@empanada build]$ find .
 .
 ./meta-mylayer
 ./meta-mylayer/recipes-example
 ./meta-mylayer/recipes-example/example
 ./meta-mylayer/recipes-example/example/flork-0.1
 ./meta-mylayer/recipes-example/example/flork-0.1/helloworld.c
 ./meta-mylayer/recipes-example/example/flork-0.1/example.patch
 ./meta-mylayer/recipes-example/example/flork_0.1.bb
 ./meta-mylayer/conf
 ./meta-mylayer/conf/layer.conf
 ./meta-mylayer/recipes-example-bbappend
 ./meta-mylayer/recipes-example-bbappend/example-bbappend
 ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork-0.22.3
 ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork-0.22.3/example.patch
 ./meta-mylayer/recipes-example-bbappend/example-bbappend/chork_0.22.3.bbappend
 ./meta-mylayer/README
 ./meta-mylayer/COPYING.MIT

Thanks,

Tom

The following changes since commit 53cc748b93e8af584557d6db5309c3e955182c5c:

  linux-libc-headers: fix headers install in long path name environments (2013-01-10 23:53:51 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-layer-v1
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-layer-v1

Tom Zanussi (7):
  scripts/lib/bsp/engine.py: add yocto_layer_create()
  yocto-layer: new script
  yocto-layer: add help/usage
  yocto-layer: add 'layer' template data
  scripts/lib/bsp/engine.py: refactor bsp-creation code
  yocto-layer: add optional layer priority param
  scripts/lib/bsp/engine.py: add handling for JSON strings

 scripts/lib/bsp/engine.py                          | 114 ++++++++--
 scripts/lib/bsp/help.py                            | 238 +++++++++++++++++++++
 .../bsp/substrate/target/arch/layer/COPYING.MIT    |  17 ++
 scripts/lib/bsp/substrate/target/arch/layer/README |  64 ++++++
 .../substrate/target/arch/layer/conf/layer.conf    |  10 +
 .../target/arch/layer/layer-questions.noinstall    |  14 ++
 .../example.patch"                                 |  12 ++
 ..._name}}_{{=example_bbappend_version}}.bbappend" |   8 +
 .../{{=example_recipe_name}}-0.1/example.patch"    |  12 ++
 .../{{=example_recipe_name}}-0.1/helloworld.c"     |   8 +
 .../example/{{=example_recipe_name}}_0.1.bb"       |  23 ++
 scripts/yocto-layer                                | 147 +++++++++++++
 12 files changed, 645 insertions(+), 22 deletions(-)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"
 create mode 100755 scripts/yocto-layer

-- 
1.7.11.4


