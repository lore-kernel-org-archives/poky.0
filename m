Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13094E0034C
	for <poky@yoctoproject.org>; Fri,  8 Feb 2013 14:26:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="259980211"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2013 14:26:01 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri,  8 Feb 2013 14:27:18 -0800
Message-Id: <cover.1360362264.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH V3 0/7] Git proxy handling updates (now with socat)
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
X-List-Received-Date: Fri, 08 Feb 2013 22:26:02 -0000

The current git fetcher environment and proxy handling between bitbake,
base.bbclass, and oe-buildenv-internal has become stale and is largely
non-functional. The crux of the problem is that GIT_CONFIG is no longer honored
by anything other than the git-config command, rendering the GIT_CORE_CONFIG and
the assocaited proxy handling routines obsolete.

(the bitbake patches have been merged and dropped from this series)

The GIT_PROXY_COMMAND, ALL_PROXY, and NO_PROXY environment variables are more
than adequate for storing the required information to manage proxies with a git
helper script.

These patches series aggressively removes the old stuff, fixes up some missing
environment settings, and adds a new git proxy handling script.

Note: These patches DO NOT address the bitbake gui builder.py references to git
      proxy settings!

I felt this series was best viewed as a whole, so I'm sending it to poky AND
oe-core. Anything else seemed too likely to result in confusion, missing
context, and lots and lots of redundant discussion.

V2: Updates to the new oe-git-proxy script from feedback received
    Split out meta-yocto changes
    Split out removal of old scripts
    Minor commit log corrections

V3: Fedora 18 dropped BSD nc support, so add a patch converting oe-git-proxy
    to use socat which is broadly available. HTTP proxy still remains untested.

The following changes since commit 20b4dcace222d6b1d659a8813b4affad075ec0c6:

  dbus-native: Don't install dbus-launch (2013-02-08 14:50:38 +0000)

are available in the git repository at:
  git://git.yoctoproject.org/poky-contrib dvhart/gitproxy
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=dvhart/gitproxy

Darren Hart (7):
  oe-buildenv-internal: Remove GIT variables from BB_ENV_EXTRAWHITE
  oe-buildenv-internal: Add upper and lower case proxy vars to
    BB_ENV_EXTRAWHITE
  base.bbclass: Remove generate_git_config()
  oe-git-proxy: Add a new comprehensive git proxy script
  meta-yocto: Document new oe-git-proxy in site.conf.sample
  oe-git-proxy*: Remove previous git proxy solutions
  oe-git-proxy: Use socat instead of BSD nc

 meta-yocto/conf/site.conf.sample   |   35 +-
 meta/classes/base.bbclass          |   21 -
 scripts/oe-buildenv-internal       |    2 +-
 scripts/oe-git-proxy               |  133 ++
 scripts/oe-git-proxy-command       |   10 -
 scripts/oe-git-proxy-socks-command |   23 -
 scripts/oe-git-proxy-socks.c       | 2982 ------------------------------------
 7 files changed, 143 insertions(+), 3063 deletions(-)
 create mode 100755 scripts/oe-git-proxy
 delete mode 100755 scripts/oe-git-proxy-command
 delete mode 100755 scripts/oe-git-proxy-socks-command
 delete mode 100755 scripts/oe-git-proxy-socks.c

-- 
1.7.5.4


