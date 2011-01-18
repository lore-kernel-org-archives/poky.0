Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F6894C80039
	for <poky@lists.pokylinux.org>; Tue, 18 Jan 2011 05:44:53 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9DDC416603E4; Tue, 18 Jan 2011 04:44:52 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 71D3A16603E3;
	Tue, 18 Jan 2011 04:44:51 -0700 (MST)
Message-ID: <4D357D33.3070305@mlbassoc.com>
Date: Tue, 18 Jan 2011 04:44:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: [PATCH] Fix build for igep targets
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
X-List-Received-Date: Tue, 18 Jan 2011 11:44:53 -0000
X-Groupsio-MsgNum: 2459
Content-Type: multipart/mixed; boundary="------------080905020809070701050804"

--------------080905020809070701050804
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The current kernel for the IGEP based targets no longer
builds due to missing license checksum.  Patch attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080905020809070701050804
Content-Type: text/plain;
 name="0001-Add-required-LIC_FILES_CHKSUM.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Add-required-LIC_FILES_CHKSUM.patch"

From 1ddc51b6eec682fe2091a1840ecd00569a7c3527 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 18 Jan 2011 04:41:36 -0700
Subject: [PATCH] Add required LIC_FILES_CHKSUM

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/recipes-kernel/linux/linux-igep_2.6.33.5.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-igep_2.6.33.5.bb b/meta/recipes-kernel/linux/linux-igep_2.6.33.5.bb
index 6e961b7..4cb7f40 100644
--- a/meta/recipes-kernel/linux/linux-igep_2.6.33.5.bb
+++ b/meta/recipes-kernel/linux/linux-igep_2.6.33.5.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "2.6 Linux Kernel for IGEP based platforms"
 SECTION = "kernel"
 LICENSE = "GPL"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7 "
 
 DEFAULT_PREFERENCE = "-1"
 DEFAULT_PREFERENCE_igep0020 = "1"
-- 
1.7.3.4


--------------080905020809070701050804--
