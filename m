Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D4B04C80132
	for <poky@lists.pokylinux.org>; Thu,  4 Nov 2010 06:39:44 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C710016606CF; Thu,  4 Nov 2010 05:39:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7C40216606B9;
	Thu,  4 Nov 2010 05:39:42 -0600 (MDT)
Message-ID: <4CD29B7D.90702@mlbassoc.com>
Date: Thu, 04 Nov 2010 05:39:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: [PATCH v2] Make /etc/timestamp usage consistent
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
X-List-Received-Date: Thu, 04 Nov 2010 11:39:44 -0000
X-Groupsio-MsgNum: 67
Content-Type: multipart/mixed; boundary="------------030402040706090500070002"

--------------030402040706090500070002
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Per the previous discussion and bug #265, the use of /etc/timestamp?
is inconsistent:
   * Different scripts format this differently
   * Some places it's /etc/timestamp, others /etc/timestamp2

The attached patch cleans this up.  Also note that I switched to
always keeping the timestamp in UTC.  This is important for systems
without a notion of timezone (typical for those with no hardware
clock where this really matters).  You notice this the most when
the build/development environment is somewhere other than UTC :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------030402040706090500070002
Content-Type: text/plain;
 name="0001-Make-etc-timestamp-usage-consistent.-Also-keep-tim.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Make-etc-timestamp-usage-consistent.-Also-keep-tim.patc";
 filename*1="h"

From cf19242b0b8466b703581cc0b0ca981605c13007 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 4 Nov 2010 05:34:12 -0600
Subject: [PATCH] Make /etc/timestamp usage consistent.  Also keep timestamp in UTC

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 meta/classes/image.bbclass                         |    4 ++--
 .../initscripts/initscripts-1.0/bootmisc.sh        |    8 ++++----
 .../initscripts/initscripts-1.0/save-rtc.sh        |    2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
index 3db34ac..4be5103 100644
--- a/meta/classes/image.bbclass
+++ b/meta/classes/image.bbclass
@@ -183,7 +183,7 @@ zap_root_password () {
 } 
 
 create_etc_timestamp() {
-	date +%2m%2d%2H%2M%Y >${IMAGE_ROOTFS}/etc/timestamp
+	date -u +%2m%2d%2H%2M%4Y >${IMAGE_ROOTFS}/etc/timestamp
 }
 
 # Turn any symbolic /sbin/init link into a file
@@ -217,7 +217,7 @@ set_image_autologin () {
 # Can be use to create /etc/timestamp during image construction to give a reasonably 
 # sane default time setting
 rootfs_update_timestamp () {
-	date "+%m%d%H%M%Y" >${IMAGE_ROOTFS}/etc/timestamp
+	date -u +%2m%2d%2H%2M%4Y >${IMAGE_ROOTFS}/etc/timestamp
 }
 
 # Prevent X from being started
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh b/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
index 162df2b..03fd67c 100755
--- a/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/bootmisc.sh
@@ -65,13 +65,13 @@ fi
 # If the timestamp is 1 day or more recent than the current time,
 # use the timestamp instead.
 /etc/init.d/hwclock.sh start
-if test -e /etc/timestamp2
+if test -e /etc/timestamp
 then
-	SYSTEMDATE=`date "+%Y%m%d%2H%2M"`
-	read TIMESTAMP < /etc/timestamp2
+	SYSTEMDATE=`date  -u +%2m%2d%2H%2M%4Y`
+	read TIMESTAMP < /etc/timestamp
         NEEDUPDATE=`expr \( $TIMESTAMP \> $SYSTEMDATE + 10000 \)`
         if [ $NEEDUPDATE -eq 1 ]; then 
-		date -s $TIMESTAMP
+		date -u $TIMESTAMP
 		/etc/init.d/hwclock.sh stop
 	fi
 fi
diff --git a/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh b/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
index 75e4300..77aa11c 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
+++ b/meta/recipes-core/initscripts/initscripts-1.0/save-rtc.sh
@@ -10,4 +10,4 @@
 ### END INIT INFO
 
 # Update the timestamp
-date +%Y%m%d%2H%2M > /etc/timestamp2
+date -u +%2m%2d%2H%2M%4Y > /etc/timestamp
-- 
1.6.2.5


--------------030402040706090500070002--
