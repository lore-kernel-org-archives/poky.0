Return-Path: <richard@tim.rpsys.net>
Received: from smtp.elevenwireless.com (smtp.elevenwireless.com
	[69.48.211.177])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89BAF4C81214
	for <poky@pokylinux.org>; Mon, 29 Nov 2010 07:01:12 -0600 (CST)
Received: from [216.151.15.131] (helo=rex)
	by smtp.elevenwireless.com with esmtp (Exim 4.63)
	(envelope-from <richard@tim.rpsys.net>) id 1PN3J0-00069T-V9
	for poky@pokylinux.org; Mon, 29 Nov 2010 04:58:07 -0800
Received: by rex (Postfix, from userid 1000)
	id 06A532A500; Mon, 29 Nov 2010 05:00:54 -0800 (PST)
Message-Id: <a81c8cc855c9dd9b62211e975ab85228c2302101.1291035335.git.rpurdie@linux.intel.com>
In-Reply-To: <cover.1291035335.git.rpurdie@linux.intel.com>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
From: Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 28 Nov 2010 17:42:36 +0000
To: poky@pokylinux.org
Subject: [PATCH 3/3] devshell: Clean up devshell code so this task doesn't polute the global namespace
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
X-List-Received-Date: Mon, 29 Nov 2010 13:01:13 -0000

Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 meta/classes/devshell.bbclass |   11 +++++------
 1 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/meta/classes/devshell.bbclass b/meta/classes/devshell.bbclass
index d08056b..4fb3e63 100644
--- a/meta/classes/devshell.bbclass
+++ b/meta/classes/devshell.bbclass
@@ -1,15 +1,14 @@
-EXTRA_OEMAKE[export] = "1"
-
 do_devshell[dirs] = "${S}"
 do_devshell[nostamp] = "1"
 
-export DISPLAY
-export DBUS_SESSION_BUS_ADDRESS
-export XAUTHORITY ?= "${HOME}/.Xauthority"
-export FAKEROOTENV
+XAUTHORITY ?= "${HOME}/.Xauthority"
 
 devshell_do_devshell() {
+	export DISPLAY='${DISPLAY}'
+	export DBUS_SESSION_BUS_ADDRESS='${DBUS_SESSION_BUS_ADDRESS}'
+	export XAUTHORITY='${XAUTHORITY}'
 	export TERMWINDOWTITLE="Bitbake Developer Shell"
+	export EXTRA_OEMAKE='${EXTRA_OEMAKE}'
 	${TERMCMD}
 	if [ $? -ne 0 ]; then
 	    echo "Fatal: '${TERMCMD}' not found. Check TERMCMD variable."
-- 
1.7.0.4


