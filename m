Return-Path: <SRS0=tGvxcT=AX=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout10.eigbox.net (bosmailout10.eigbox.net [66.96.187.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89814E01217
	for <poky@yoctoproject.org>; Sun, 12 Feb 2012 20:48:13 -0800 (PST)
Received: from bosmailscan07.eigbox.net ([10.20.15.7])
	by bosmailout10.eigbox.net with esmtp (Exim) id 1Rwnpk-0002yX-Ci
	for poky@yoctoproject.org; Sun, 12 Feb 2012 23:48:12 -0500
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan07.eigbox.net with esmtp (Exim) id 1Rwnpk-0001UB-22
	for poky@yoctoproject.org; Sun, 12 Feb 2012 23:48:12 -0500
Received: from bosauthsmtp05.eigbox.net ([10.20.18.5])
	by bosimpout01.eigbox.net with NO UCE
	id ZGoC1i00106Zqne01GoC6x; Sun, 12 Feb 2012 23:48:12 -0500
X-EN-OrigOutIP: 10.20.18.5
X-EN-IMPSID: ZGoC1i00106Zqne01GoC6x
Received: from [108.25.174.63] (helo=[192.168.1.3])
	by bosauthsmtp05.eigbox.net with esmtpa (Exim) id 1Rwnpj-00018I-So
	for poky@yoctoproject.org; Sun, 12 Feb 2012 23:48:11 -0500
Message-ID: <4F389609.7010900@mindchasers.com>
Date: Sun, 12 Feb 2012 23:48:09 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.174.63
X-EN-OrigHost: unknown
Subject: [PATCH] udev.inc has a bad link for udev home page; update the link
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
X-List-Received-Date: Mon, 13 Feb 2012 04:48:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Fixed bad link in udev.inc to the udev home page / documentation on 
kernel.org


Signed-off-by: Robert Cochran<yocto@mindchasers.com>
---
  meta/recipes-core/udev/udev.inc |    2 +-
  1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-core/udev/udev.inc 
b/meta/recipes-core/udev/udev.inc
index e5fbe40..886fa0b 100644
--- a/meta/recipes-core/udev/udev.inc
+++ b/meta/recipes-core/udev/udev.inc
@@ -1,7 +1,7 @@
  SUMMARY = "/dev/ and hotplug management daemon"
  DESCRIPTION = "udev is a daemon which dynamically creates and removes 
device nodes from \
  /dev/, handles hotplug events and loads drivers at boot time."
-HOMEPAGE = "http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev.html"
+HOMEPAGE = 
"http://www.kernel.org/pub/linux/utils/kernel/hotplug/udev/udev.html"
  LICENSE = "GPLv2.0+ & LGPLv2.1+"
  LICENSE_${PN} = "GPLv2.0+"
  LICENSE_libudev = "LGPLv2.1+"
-- 
1.7.5.4


