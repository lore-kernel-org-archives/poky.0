Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEB5D4C810FF
	for <poky@lists.pokylinux.org>; Thu, 25 Nov 2010 05:06:49 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 98C9A166090D; Thu, 25 Nov 2010 04:06:48 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B2BD31660855;
	Thu, 25 Nov 2010 04:06:47 -0700 (MST)
Message-ID: <4CEE4347.1070700@mlbassoc.com>
Date: Thu, 25 Nov 2010 04:06:47 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: bitbake listtasks broken
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
X-List-Received-Date: Thu, 25 Nov 2010 11:06:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Filed as bug #548

This command [no longer?] produces any output:
   bitbake recipe -c listtasks

$ bitbake qemu -c listtasks
NOTE: Handling BitBake files: | (0756/0756) [100 %]
Parsing of 756 .bb files complete (0 cached, 756 parsed). 913 targets, 34 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "local_master"
METADATA_REVISION = "94b1fda09671b58aafb54983e4a6e499f6ffc369"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "0.9+snapshot-20101125"
TARGET_FPU        = ""

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing runqueue
NOTE: Full skip list set([])
NOTE: Running task 1 of 1 (ID: 0, /tmp/poky-amltd/meta/recipes-devtools/qemu/qemu_0.12.4.bb, do_listtasks)
NOTE: package qemu-0.12.4-r22: task do_listtasks: Started
NOTE: package qemu-0.12.4-r22: task do_listtasks: Succeeded
NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be rerun and 0 failed.


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

