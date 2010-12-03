Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1AEE44C80039
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 15:27:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Dec 2010 13:27:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,295,1288594800"; d="scan'208";a="683721495"
Received: from unknown (HELO [10.255.13.235]) ([10.255.13.235])
	by orsmga001.jf.intel.com with ESMTP; 03 Dec 2010 13:27:53 -0800
Message-ID: <4CF960D8.20909@intel.com>
Date: Fri, 03 Dec 2010 13:27:52 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
	"Purdie, Richard" <richard.purdie@intel.com>
Subject: [PULL] Consolidated Pull to Fix Master
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 03 Dec 2010 21:27:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


This is a set up patches and reverts to get master back to buildable 
state again.

I am going to push these directly since Richard is travelling.

Sau!




Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/stage
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Adrian Alonso (1):
   librsvg: fix gdk-pixbuf-query-loaders not found in path

Gary Thomas (1):
   libart-lgpl: Add missing config file - allows builds on PowerPC

Qing He (1):
   libnl: fix parallel make

Saul Wold (3):
   Revert "gssdp: Disable gobject introspection explicitly"
   Revert "gssdp: Upgrade to version 0.9.0"
   Revert "qemugl: upgrade to git commit
     33466cd83c2a9d7d3fb9fe437fb6a4d6fbd866b9"

  .../conf/distro/include/poky-default-revisions.inc |    4 +-
  .../gupnp/{gssdp_0.9.0.bb => gssdp_0.7.1.bb}       |    5 ----
  .../gnome/libart-lgpl/powerpc/art_config.h         |   10 +++++++++
  meta/recipes-gnome/librsvg/librsvg_2.32.0.bb       |    3 +-
  .../libnl/libnl-2.0/fix-makefile.patch             |   22 
++++++++++++++++++++
  meta/recipes-support/libnl/libnl_2.0.bb            |    7 ++++-
  6 files changed, 41 insertions(+), 10 deletions(-)
  rename meta/recipes-connectivity/gupnp/{gssdp_0.9.0.bb => 
gssdp_0.7.1.bb} (73%)
  create mode 100644 
meta/recipes-gnome/gnome/libart-lgpl/powerpc/art_config.h
  create mode 100644 meta/recipes-support/libnl/libnl-2.0/fix-makefile.patch


