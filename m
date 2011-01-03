Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37C104C810E1;
	Mon,  3 Jan 2011 00:11:46 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0369Cco005233;
	Sun, 2 Jan 2011 22:09:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon,  3 Jan 2011 01:11:13 -0500
Message-Id: <cover.1294034587.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/stable: update to 2.6.34.x -longterm
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
X-List-Received-Date: Mon, 03 Jan 2011 06:11:46 -0000

Richard/Saul,

Paul Gortmaker maintains the upstream 2.6.34.x -longerm tree. The
yocto stable kernel tracks this tree and incorporates those nominated
changes. We are picking up lots of bug fixes and security updates
to the -stable tree with this change.

This commit updates the BSP SRCREVs to the latest 2.6.34.x
merge and picks up 260 -stable commits for each BSP.

Tom: the meta-emenlow layer should be updated with the new SRCREV.
I updated the master version, and simply tossed any changes to the
drivers modified by the emenlow. So taking a quick look at the merge
might be a good idea as well. I did my own build tests here and
everything looked sane.

Darren: I had to resolve a merge in the -rt branches, and preferred
the -rt implementation of the files in question. I used your patches
that are out for review and confirmed that qemux86-64-preempt_rt builds with
the updated kernel.

I built all the -stable boards, and everything looks sane, so this
one should be good to go.

Cheers,

Bruce


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/stable
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/stable

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto/stable: update SRCREVs for 2.6.34.x -stable update

 .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)


