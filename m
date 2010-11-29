Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49C604C811D3
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 07:01:12 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PN3J0-00069N-Rn
	for poky@pokylinux.org; Mon, 29 Nov 2010 04:58:06 -0800
Received: by rex (Postfix, from userid 1000)
	id BB58A2045D; Mon, 29 Nov 2010 05:00:54 -0800 (PST)
Message-Id: <cover.1291035335.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Mon, 29 Nov 2010 04:55:35 -0800
To: poky@pokylinux.org
Subject: [PATCH 0/3] Poky environment tweaks + imagetest change
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
X-List-Received-Date: Mon, 29 Nov 2010 13:01:12 -0000

This patch set contains an RFC for some changes to the Poky environment 
handing. These are to allow us to minimise the nunmber of variables our
standard tasks see and hence allow improvements to sstate to be made.
I think the changes are very positive but they need further testing before
they can go into master. In particular this removes variables like DISPLAY
and DBUS socket addresses and so forth, only making them available to tasks
that specifically require them. Some changes to interactive patch reject 
handling will probably be needed to complete this change.

The imagetest change I'd appreciate feed back from Scott Garman
and Jiajun on.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: rpurdie/tweaks2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks2

Cheers,

Richard
---


Richard Purdie (3):
  imagetest-qemu: Allow the task to run after any rootfs is created and
    also standalone
  bitbake: Overhaul environment handling
  devshell: Clean up devshell code so this task doesn't polute the
    global namespace

 bitbake/bin/bitbake-runtask         |    3 ++
 bitbake/lib/bb/cooker.py            |    3 +-
 bitbake/lib/bb/data.py              |   10 ++++++-
 bitbake/lib/bb/runqueue.py          |    1 +
 bitbake/lib/bb/utils.py             |   48 ++++++++++++++++++++++++-----------
 meta/classes/devshell.bbclass       |   11 +++----
 meta/classes/imagetest-qemu.bbclass |   19 ++++++++++---
 7 files changed, 67 insertions(+), 28 deletions(-)


