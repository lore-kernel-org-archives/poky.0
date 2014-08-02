Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEADCE0056A; Sat,  2 Aug 2014 01:44:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 889CFE004DD
	for <poky@yoctoproject.org>; Sat,  2 Aug 2014 01:44:52 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s728ioFW027176
	for <poky@yoctoproject.org>; Sat, 2 Aug 2014 09:44:51 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qluxuRox_que for <poky@yoctoproject.org>;
	Sat,  2 Aug 2014 09:44:50 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s728imiQ027042
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Sat, 2 Aug 2014 09:44:50 +0100
Message-ID: <1406969088.6981.11.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sat, 02 Aug 2014 09:44:48 +0100
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Subject: [PATCH] upstream-tracking: Add various CHECK_DATE and UPDATE_REASONs for my recipes
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
X-List-Received-Date: Sat, 02 Aug 2014 08:44:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Update the CHECK_DATE and various UPDATE_REASON/UPDATE_VERSION fields
for various recipes I maintain.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index d80ede4..a018803 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -118,6 +118,7 @@ RECIPE_UPSTREAM_DATE_pn-keymaps = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-kmod = "9"
 RECIPE_UPSTREAM_DATE_pn-kmod = "Jun 19, 2012"
 CHECK_DATE_pn-kmod = "Jul 27, 2012"
+CHECK_DATE_pn-latencytop = "Jul 30, 2014"
 RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
 RECIPE_UPSTREAM_VERSION_pn-libgnome-keyring = "3.7.91"
 RECIPE_UPSTREAM_DATE_pn-libgnome-keyring = "Mar 4, 2013"
@@ -150,6 +151,7 @@ RECIPE_UPSTREAM_VERSION_pn-linuxdoc-tools-native = "0.9.66"
 CHECK_DATE_pn-linuxdoc-tools-native = "Aug 31, 2012"
 RECIPE_NO_UPDATE_REASON-libxml2 = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-lsbtest = "1.0"
+CHECK_DATE_pn-lsof = "Jul 30, 2014"
 RECIPE_UPSTREAM_VERSION_pn-meta-ide-support = "check"
 RECIPE_UPSTREAM_VERSION_pn-minicom = "2.6.2"
 RECIPE_UPSTREAM_DATE_pn-minicom = "Feb 06, 2013"
@@ -181,7 +183,10 @@ RECIPE_UPSTREAM_VERSION_pn-pong-clock = "1.0"
 RECIPE_NO_UPDATE_REASON_pn-powertop = "Do not upgrade to version 1.97 since it's a beta release of the comming PowerTOP 2.0"
 RECIPE_UPSTREAM_VERSION_pn-ppp-dialin = "check"
 RECIPE_UPSTREAM_VERSION_pn-prelink="1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00"
+RECIPE_NO_UPDATE_REASON_pn-python-distribute = "0.7.3 only upgrades 0.6.32, can't install on its own, also obsolete"
+RECIPE_UPSTREAM_VERSION_pn-python-distribute = "0.7.3"
 RECIPE_NO_UPDATE_REASON_pn-python-pygobject = "Newer versions of python-pygobject depend on gobject-introspection which doesn't cross-compile"
+RECIPE_UPSTREAM_VERSION_pn-python-pygobject = "3.13.3"
 CHECK_DATE_pn-prelink = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-qemu-helper-native = "n/a"
 RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
@@ -232,6 +237,7 @@ RECIPE_NO_UPDATE_REASON_pn-xdg-utils = "only release candidates available "
 RECIPE_UPSTREAM_VERSION_pn-xev = "1.0.4"
 RECIPE_UPSTREAM_DATE_pn-xev = "Oct 13, 2009"
 CHECK_DATE_pn-xev = "Sep 04, 2012"
+CHECK_DATE_pn-xinetd = "Jul 30, 2014"
 RECIPE_UPSTREAM_DATE_pn-xorg-minimal-fonts = "n/a"
 RECIPE_UPSTREAM_DATE_pn-xserver-nodm-init=""
 RECIPE_UPSTREAM_VERSION_pn-xz = "5.0.4"



