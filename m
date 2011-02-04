Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 064D24C800A4
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 02:53:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Feb 2011 00:53:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,425,1291622400"; d="scan'208";a="599427215"
Received: from unknown (HELO localhost) ([10.255.16.164])
	by orsmga002.jf.intel.com with ESMTP; 04 Feb 2011 00:53:17 -0800
Message-Id: <cover.1296808673.git.josh@linux.intel.com>
Old-Date: Fri, 4 Feb 2011 08:37:53 +0000
Date: Fri, 04 Feb 2011  8:53:11 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [RFC] [PATCH 00/13] Prototype GUI Image Creator
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
X-List-Received-Date: Fri, 04 Feb 2011 08:53:19 -0000

From: Joshua Lock <josh@linux.intel.com>

This patch series introduces a very basic image creator for BitBake. It is far from complete and not very usable but begins to explore the possibilities of graphical tooling built on top of BitBake.

Note: this does *not* work with the default None server in Poky, you need to use the XML-RPC server (uncomment the two xmlrpc lines in bitbake/bin/bitbake and comment out the none lines).

The code is pretty ugly in places, though I hope it's not too Poky specific.
Currently it will just set the targets of the build command to all of the selected packages, this needs refinement - ideally it will 'squash' the list of packages to only include packages not brough in by a selected image (this will also be useful to provide a summary/confirmation dialog before the build)but I want to implement this in a generic way (i.e. not relying on Poky metadata conventions).

There are also various NOTE/FIXME/TODO comments - these all need adressing.
Several UI enhancements are planned, such as an 'Advanced' section of the GUI which will enable the tweaking of variables such as DISTRO, PACKAGE_CLASSES, BB_NUMBER_THREADS and others. There are also various  usability niggles that need work such as: the treeview columns being sized better and the fact that
the sort column in the 'Packages (by Group)' column needs a custom sort function otherwise sort order changes when packages are toggled for inclusion.

I'm hoping for feedback on the approach and code review.

Thanks,
Joshua

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/gui
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/gui

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (13):
  bitbake/cache: store a list of inherited files in the cache
  bitbake: implement command to get all possible targets and their
    dependencies
  bitbake: implement command to find configuration files for a config
    variable
  bitbake/cooker: add generateTargetsTree method
  bitbake/cooker: reduce code duplication
  bitbake/[cooker|cache]: cache summary, license and group. Add to
    targets tree
  bitbake: introduce crumbs.TaskListModel a gtk.ListStore subclass
  bitbake/event: fix some whitespace issues
  bitbake/crumbs: update documentation header
  bitbake/progress: add method to pulse the progress bar
  bitbake/cooker: don't drop possible_world ref count
  bitbake: Add new UI hob, a prototype Gtk+ GUI for creating images
  bitbake/progress: make progress dialog modal for parent window

 bitbake/lib/bb/cache.py                     |   17 +
 bitbake/lib/bb/command.py                   |   21 +
 bitbake/lib/bb/cooker.py                    |  111 +++++-
 bitbake/lib/bb/event.py                     |   17 +
 bitbake/lib/bb/ui/crumbs/__init__.py        |    2 +-
 bitbake/lib/bb/ui/crumbs/hobeventhandler.py |  138 ++++++
 bitbake/lib/bb/ui/crumbs/progress.py        |    7 +-
 bitbake/lib/bb/ui/crumbs/tasklistmodel.py   |  346 ++++++++++++++++
 bitbake/lib/bb/ui/hob.py                    |  596 +++++++++++++++++++++++++++
 9 files changed, 1245 insertions(+), 10 deletions(-)
 create mode 100644 bitbake/lib/bb/ui/crumbs/hobeventhandler.py
 create mode 100644 bitbake/lib/bb/ui/crumbs/tasklistmodel.py
 create mode 100644 bitbake/lib/bb/ui/hob.py

-- 
1.7.4


