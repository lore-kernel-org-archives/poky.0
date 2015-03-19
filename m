Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61A7DE00832; Thu, 19 Mar 2015 04:34:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A3FE00832
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 04:34:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2JBYPTV002087
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 11:34:25 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id peh3Fn_6gRsG for <poky@yoctoproject.org>;
	Thu, 19 Mar 2015 11:34:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t2JBYDOF002074
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 11:34:24 GMT
Message-ID: <1426764853.29168.50.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 19 Mar 2015 11:34:13 +0000
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Subject: [PATCH] poky-tiny: ext2 isn't enabled in the kernel so don't mention/build it
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
X-List-Received-Date: Thu, 19 Mar 2015 11:34:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The kernel config specifically excludes ext2 support for size reasons
so update the distro config to match.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 75508c1..aa60e77 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -105,11 +105,11 @@ VIRTUAL-RUNTIME_keymaps = ""
 # packagegroup-core-base to select modutils-initscripts or not.  Similar with "net" and
 # netbase.
 
-# By default we only support ext2 and initramfs. We don't build live as that
+# By default we only support initramfs. We don't build live as that
 # pulls in a lot of dependencies for the live image and the installer, like
 # udev, grub, etc.  These pull in gettext, which fails to build with wide
 # character support.
-IMAGE_FSTYPES = "ext2 cpio.gz"
+IMAGE_FSTYPES = "cpio.gz"
 
 # Drop v86d from qemu dependency list (we support serial)
 # Drop grub from meta-intel BSPs



