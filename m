Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B7164C80AB8
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:42 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 16:42:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="720559641"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 16:42:21 -0700
Message-Id: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 17:38:58 -0600
Date: Tue, 15 Mar 2011 17:43:13 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 00/13] [DOCS] ADT Manual
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:42 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These commits represent the new Application Development Toolkit 
(ADT) User's Manual into the GIT repository.  The changes are 
incremental and work from creation of the new directory 
within the 'documentation' directory through some final tweeks
on one of the individual chapters.  

These need to be merged with master before the git documentation 
cutoff date.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/adt-work
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (13):
  documentation/adt-manual:  New file structure for ADT Manual
  documentation/adt-manual/figures:  Added title PNG file, deleted
    kernel title PNG file.
  documentation/adt-manual/adt-manual.xml: Initial file
  documentation/adt-manual/Makefile:  Initial Makefile
  documentation/adt-manual:  cleaned up labels in chapter files
  documentation/adt-manual/style.css:  Changed PNG file in the title
    page style
  documentation/adt-manual/adt-intro.xml: Initial text
  documentation/adt-manual/adt-prepare.xml:  Initial draft of
    preparation chapter
  documentation/adt-manual/adt-package.xml:  Initial file
  documentation/adt-manual/adt-eclipse.xml:  Initial draft for Eclipse
    chapter.
  documentation/adt-manual/adt-command.xml:  Initial draft of command
    line chapter
  documentation/adt-manual/adt-eclipse.xml:  Removed Autotools plug-in
    requirement
  documentation/adt-manual/adt-eclipse.xml: Specified qemu options
    outside of brackets.

 documentation/adt-manual/Makefile                  |   42 +
 documentation/adt-manual/adt-command.xml           |   66 ++
 documentation/adt-manual/adt-eclipse.xml           |  430 +++++++++
 documentation/adt-manual/adt-intro.xml             |  117 +++
 .../adt-manual/adt-manual-customization.xsl        |    8 +
 documentation/adt-manual/adt-manual.xml            |   70 ++
 documentation/adt-manual/adt-package.xml           |   82 ++
 documentation/adt-manual/adt-prepare.xml           |  236 +++++
 documentation/adt-manual/figures/adt-title.png     |  Bin 0 -> 14349 bytes
 .../adt-manual/figures/yocto-project-transp.png    |  Bin 0 -> 8626 bytes
 documentation/adt-manual/style.css                 |  968 ++++++++++++++++++++
 11 files changed, 2019 insertions(+), 0 deletions(-)
 create mode 100644 documentation/adt-manual/Makefile
 create mode 100644 documentation/adt-manual/adt-command.xml
 create mode 100644 documentation/adt-manual/adt-eclipse.xml
 create mode 100644 documentation/adt-manual/adt-intro.xml
 create mode 100644 documentation/adt-manual/adt-manual-customization.xsl
 create mode 100644 documentation/adt-manual/adt-manual.xml
 create mode 100644 documentation/adt-manual/adt-package.xml
 create mode 100644 documentation/adt-manual/adt-prepare.xml
 create mode 100644 documentation/adt-manual/figures/adt-title.png
 create mode 100755 documentation/adt-manual/figures/yocto-project-transp.png
 create mode 100644 documentation/adt-manual/style.css


