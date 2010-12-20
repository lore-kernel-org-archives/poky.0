Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9EE114C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 14:23:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="689034097"
Received: from scottrif-desktop.jf.intel.com (HELO localhost) ([10.7.201.54])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 12:23:58 -0800
Message-Id: <cover.1292876262.git.scott.m.rifenbark@intel.com>
From: Scott Rifenbark <scott.m.rifenbark@intel.com>
Date: Mon, 20 Dec 2010 12:17:42 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/29] Docs - BSP Guide Updates for changes to the BSP template
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
X-List-Received-Date: Mon, 20 Dec 2010 20:23:58 -0000

This group of commits represents the work done to the BSP Guide with Tom Z.
and Saul W.  I have updated the template to match a more generic standard
that is based on the crownbay BSP that Tom has created.  The rest of the 
work reflects re-writing the individual sections to match changes in the template.
There were several iterations to the work between Tom and I.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/bsp-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/bsp-work

Thanks,
    Scott Rifenbark <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (29):
  documentation/bsp-guide/bsp.xml:  Changed meta naming convention
  documentation/bsp-guide/bsp.xml:  Added note qualifying BSP file
    structure.
  documentation/bsp-guide/bsp.xml:  Fixed typo
  documentation/bsp-guide/bsp.xml:  Added information about /binary
  documentation/bsp-guide/bsp.xml:  Created better BSP example base
    names
  documentation/bsp-guide/bsp.xml:  Inserted text before the file
    structure example
  documentation/bsp-guide/bsp.xml:  Updated common form for file
    structure.
  documentation/bsp-work/bsp.xml:  Added crownbay BSP example to
    section 1.1.
  documentation/bsp-guide/bsp.xml:  Updated the introductary paragraph
    to the sections.
  documentation/bsp-guide/bsp.xml:  Added new "License Files" section.
  documentation/bsp-guide/bsp.xml:  Added the README section.
  documentation/bsp-guide/bsp.xml:  Updated the Pre-built User Binaries
    section.
  documenation/bsp-guide/bsp.xml:  Updated the Layer Configuration File
    section.
  documentation/bsp-guide/bsp.xml:  Updated the Hardware Configuration
    Options section
  documentation/bsp-guide/bsp.xml:  Added a Miscellaneous Recipe Files
    section
  documentation/bsp-guide/bsp.xml:  Removed the recipes-bsp/formfactor
    directory from the common structure.
  documentation/bsp-guide/bsp.xml: Added a Display Support Files
    section.
  documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
    section.
  documentation/bsp-guide/bsp.xml:  Commented out three sections.
  documentation/bsp-guide/bsp.xml:  Changed numbering scheme.
  documentation/bsp-guide/bsp.xml: Updated Layer Configuration File
    Section
  documentation/bsp-guild/bsp.xml: Updated Miscellaneous Recipe Files
    section
  documentation/bsp-guide/bsp.xml:  Updated Display Support Files
    section.
  documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
    section.
  documentation/bsp-guide/bsp.xml: Added reference to Kernel
    documentation.
  documentation/bsp-guide/bsp.xml:  Updated the Linux Kernel
    Configuration section
  documentation/bsp-guide/bsp.xml:  replaced the append file line in
    the template
  documentation/bsp-guide/bsp.xml:  Updated Linux Kernel Configuration
    section.
  documentation/bsp-guide/bsp.xml:  Spell checked the file.

 documentation/bsp-guide/bsp.xml |  324 ++++++++++++++++++++++++++++++---------
 1 files changed, 250 insertions(+), 74 deletions(-)


