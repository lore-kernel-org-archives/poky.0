Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 352284C80B71;
	Fri, 17 Dec 2010 14:50:28 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBHKmjRa025159;
	Fri, 17 Dec 2010 12:48:46 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Date: Fri, 17 Dec 2010 15:50:15 -0500
Message-Id: <cover.1292618741.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto: remove or adjust to _ in branch names
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
X-List-Received-Date: Fri, 17 Dec 2010 20:50:28 -0000

Richard/Saul,

I'll repeat what is in the patch here:

The existing 2.6.34 kernel tree uses _ where poky typically
uses -. This is a historical artifact, since working with
gnu Make and shells means avoiding - is wise. The opposite
is true in Yocto.

To avoid using the _ reserved character wherever possible
we can simply remove it from the branch names in the
new 2.6.37 kernel, but to keep the content stable in the
0.9 2.6.34 kernel, we map _ to - for the purposes of
packaging.

To further faciliate this switch, the branch names no
longer need to be shortened in the KMACHINE mappings, but
can be fully specified and the tools/processing adapt as
required. This gives us the flexibility to map multiple
boards to a single branch for building.

-------

I've been building with this for a week, Darren has also
had sucess with this as well.

*** We need to coordinate the merge, I've pushed the new
    branches to the linux-yocto-2.6.37 kernel, but we need
    to purge the old branches as well. 

    So send me a heads up and I'll do that removal once
    this merges. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: remove or adjust to _ in branch names

 meta/classes/kernel-yocto.bbclass                  |   12 +++++-------
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    8 ++++++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |   18 +++++++++---------
 4 files changed, 21 insertions(+), 19 deletions(-)


