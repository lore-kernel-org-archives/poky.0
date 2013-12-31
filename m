Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE98AE00822
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rBV34ujd023669
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:56 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 30 Dec 2013 19:04:55 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 31 Dec 2013 19:07:08 +0800
Message-ID: <b0a412ab15e9ad7bd6e7bab0ff72f5beee017413.1388487789.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1388487789.git.liezhi.yang@windriver.com>
References: <cover.1388487789.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2 1/2] upstream_tracking.inc: update entries
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 31 Dec 2013 03:04:57 -0000
Content-Type: text/plain

Remove/update the following entries:

autoconf: out of date, it was added before/when 2.68, now we use 2.69
autogen: out of date, it was added before/when 5.12, now we use 5.17.4
automake: out of date, it was added before/when 1.12, now we use 1.14
pn-gmp: out of date, it was added before/when 5.0.5, now we use 5.1.1
makedevs: out of date, it was added before/when 1.0.0, now we use 1.0.1
glib-2.0: update it.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index ae1ae49..d2ed2be 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -24,12 +24,6 @@
 #
 RECIPE_UPSTREAM_VERSION_pn-adt-installer = "1.1"
 CHECK_DATE_pn-adt-installer = "Sep 11, 2012"
-RECIPE_NO_UPDATE_REASON_pn-autoconf="seeing rpm issue with the 2.68 version, a bug is open"
-RECIPE_UPSTREAM_VERSION_pn-autogen = "5.12"
-CHECK_DATE_pn-autogen = "Jan 17, 2012"
-RECIPE_NO_UPDATE_REASON_pn-autogen = "newer versions are dumping core while building, and no distro has picked up the newer versions yet"
-RECIPE_UPSTREAM_VERSION_pn-automake="1.12"
-CHECK_DATE_pn-automake = "Aug 27, 2012"
 RECIPE_UPSTREAM_DATE_pn-avahi-ui = "Oct 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-avahi = "0.6.31"
 RECIPE_UPSTREAM_DATE_pn-avahi = "Oct 01, 2010"
@@ -71,13 +65,10 @@ RECIPE_UPSTREAM_VERSION_pn-gdk-pixbuf = "2.27.2"
 RECIPE_UPSTREAM_DATE_pn-gdk-pixbuf = "Mar 3, 2013"
 CHECK_DATE_pn-gdk-pixbuf = "Mar 5, 2013"
 RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.27.2 is unstable"
-RECIPE_NO_UPDATE_REASON_pn-glib-2.0 = "2.35.8 is unstable"
+RECIPE_NO_UPDATE_REASON_pn-glib-2.0 = "2.39.2 is unstable"
 RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
 RECIPE_UPSTREAM_DATE_pn-glibc = "May 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-glibc = "two glibc plugins are based on 2.10.1"
-RECIPE_UPSTREAM_VERSION_pn-gmp="5.0.5"
-RECIPE_UPSTREAM_DATE_pn-gmp = "Jul 05, 2012"
-CHECK_DATE_pn-gmp = "Aug 28, 2012"
 RECIPE_NO_UPDATE_REASON_pn-glib-networking = "Pending Glib-2.0 Update"
 RECIPE_UPSTREAM_VERSION_pn-gnome-desktop = "3.7.90"
 RECIPE_UPSTREAM_DATE_pn-gnome-desktop = "Feb 19, 2013"
@@ -160,9 +151,6 @@ RECIPE_UPSTREAM_VERSION_pn-linuxdoc-tools-native = "0.9.66"
 CHECK_DATE_pn-linuxdoc-tools-native = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
-RECIPE_UPSTREAM_VERSION_pn-makedevs = "1.0.0"
-RECIPE_UPSTREAM_DATE_pn-makedevs = "Feb 11, 2009"
-CHECK_DATE_pn-makedevs = "Aug 31, 2012"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
-- 
1.8.3.1


