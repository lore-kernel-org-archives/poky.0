Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F0E34C80044
	for <poky@lists.pokylinux.org>; Wed,  3 Nov 2010 08:58:40 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 8A97616606FE; Wed,  3 Nov 2010 07:58:39 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id AF01F16606FB;
	Wed,  3 Nov 2010 07:58:38 -0600 (MDT)
Message-ID: <4CD16A8E.7090100@mlbassoc.com>
Date: Wed, 03 Nov 2010 07:58:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Inconsistent timestamp use
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 13:58:41 -0000
X-Groupsio-MsgNum: 56
Content-Type: multipart/mixed; boundary="------------050505050702030107090909"

--------------050505050702030107090909
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The Poky root file system (init scripts) has a mechanism for
supporting systems without a working hardware [time of day] clock.
It seems that this has suffered some rot recently and is now
quite inconsistent:
   * rootfs_update_timestamp() uses a different format for the time stamp
   * the init scripts look for /etc/timestamp2, not /etc/timestamp which
     is created with the image

The attached patch makes this consistent and the system clock now works
much better (about as good as a machine without a hardware clock can!)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050505050702030107090909
Content-Type: text/plain;
 name="0001-Make-etc-timestamp-usage-consistent-for-machines-w.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Make-etc-timestamp-usage-consistent-for-machines-w.patc";
 filename*1="h"

From 20ffc320d37895028ed5c3d2a5e13c76aba0a934 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 3 Nov 2010 06:52:28 -0600
Subject: [PATCH] Make /etc/timestamp usage consistent (for machines without hardware clocks)

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/image.bbclass                         |    4 ++--
 .../initscripts/initscripts-1.0/bootmisc.sh        |    4 ++--
 .../initscripts/initscripts-1.0/save-rtc.sh        |    2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 3db34ac..0a6df8e 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -183,7 +183,7 @@ zap_root_password () {
 } 
 
 create_etc_timestamp() {
-	date +%2m%2d%2H%2M%Y >${IMAGE_ROOTFS}/etc/timestamp
+	date +%Y%m%d%2H%2M >${IMAGE_ROOTFS}/etc/timestamp
 }
 
 # Turn any symbolic /sbin/init link into a file
@@ -217,7 +217,7 @@ set_image_autologin () {
 # Can be use to create /etc/timestamp during image construction to give a reasonably 
 # sane default time setting
 rootfs_update_timestamp () {
-	date "+%m%d%H%M%Y" >${IMAGE_ROOTFS}/etc/timestamp
+	date "+%Y%m%d%2H%2M" >${IMAGE_ROOTFS}/etc/timestamp
 }
 
 # Prevent X from being started
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh b/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
index 162df2b..41c313a 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
@@ -65,10 +65,10 @@ fi
 # If the timestamp is 1 day or more recent than the current time,
 # use the timestamp instead.
 /etc/init.d/hwclock.sh start
-if test -e /etc/timestamp2
+if test -e /etc/timestamp
 then
 	SYSTEMDATE=`date "+%Y%m%d%2H%2M"`
-	read TIMESTAMP < /etc/timestamp2
+	read TIMESTAMP < /etc/timestamp
         NEEDUPDATE=`expr \( $TIMESTAMP \> $SYSTEMDATE + 10000 \)`
         if [ $NEEDUPDATE -eq 1 ]; then 
 		date -s $TIMESTAMP
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh b/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
index 75e4300..3b95411 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
@@ -10,4 +10,4 @@
 ### END INIT INFO
 
 # Update the timestamp
-date +%Y%m%d%2H%2M > /etc/timestamp2
+date +%Y%m%d%2H%2M > /etc/timestamp
-- 
1.6.2.5


--------------050505050702030107090909--
