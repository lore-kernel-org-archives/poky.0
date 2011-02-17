Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F2AA4C800A3
	for <poky@lists.pokylinux.org>; Thu, 17 Feb 2011 12:36:26 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B9B141660305; Thu, 17 Feb 2011 11:36:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 603D816602EF;
	Thu, 17 Feb 2011 11:35:41 -0700 (MST)
Message-ID: <4D5D6A7D.8000902@mlbassoc.com>
Date: Thu, 17 Feb 2011 11:35:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: [PATCH] Suppress useless warnings during udev startup
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
X-List-Received-Date: Thu, 17 Feb 2011 18:36:28 -0000
X-Groupsio-MsgNum: 3739
Content-Type: multipart/mixed; boundary="------------020906050302070200020001"

--------------020906050302070200020001
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a number of platforms which have no realtime clock
(i.e. no sense of what day/time it is).  On these platforms,
poky dutifully tries to keep somewhat sane with stored
time stamps that are saved on reboot and restored early
on during initialization.  A fair compromise.

However, before that code runs, the udev script tries to
restore well known devices using tar.  This will often
lead to messages such as these since the kernel has no
way to set the time:
   tar: dev/pts: implausibly old time stamp 1970-01-01 00:00:00
   tar: dev/char/3:134: time stamp 1970-01-01 00:00:09 is 0.435041705 s in the future

The attached patch filters these messages out as they don't
convey anything useful and indeed are worrisome to more naive
users.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020906050302070200020001
Content-Type: text/plain;
 name="0001-Suppress-messages-about-bad-time-stamps-during-initi.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Suppress-messages-about-bad-time-stamps-during-initi.pa";
 filename*1="tch"

From a6773d3e00dbd168817730fff1c3fc7e1b6950f5 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 17 Feb 2011 11:30:18 -0700
Subject: [PATCH] Suppress messages about bad time stamps during initial device setup

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/recipes-core/udev/udev-164/init |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/udev/udev-164/init b/meta/recipes-core/udev/udev-164/init
index eb5e507..1a8fca5 100644
--- a/meta/recipes-core/udev/udev-164/init
+++ b/meta/recipes-core/udev/udev-164/init
@@ -35,7 +35,7 @@ LANG=C awk "\$2 == \"/dev\" && \$4 == \"tmpfs\" { exit 1 }" /proc/mounts && {
 }
 
 if [ -e /etc/dev.tar ]; then
-	(cd /; tar xf /etc/dev.tar)
+	(cd /; tar xf /etc/dev.tar 2>&1 | grep -v 'time stamp')
 	not_first_boot=1
 fi
 
-- 
1.7.3.4


--------------020906050302070200020001--
