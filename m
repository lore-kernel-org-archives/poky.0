Return-Path: <jim.sheldon@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3F26E00592
	for <poky@yoctoproject.org>; Tue, 24 Jan 2012 14:20:42 -0800 (PST)
Received: by wejx9 with SMTP id x9so3131704wej.35
	for <poky@yoctoproject.org>; Tue, 24 Jan 2012 14:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Q5C/Q8C/GwmyTlaha+8zxwNYyvrbidqW9MiU5tGNesA=;
	b=YY9mkm/KN+uSjoSpMqfch5jIqAZUQLTCj7sXM+RkbWfSEt3jKd06NsviXDTVXAcRcg
	NgIsXocdiRxUYl6tT63ABihWOeLAtg1s2KPeZWX2QEI104eRfjupXH30d0DSfABcPqQw
	5NR+T12PA04YLQqVmOcuRJzQ6ofNW+SupgVsM=
MIME-Version: 1.0
Received: by 10.216.136.152 with SMTP id w24mr6018641wei.50.1327443641734;
	Tue, 24 Jan 2012 14:20:41 -0800 (PST)
Received: by 10.180.91.230 with HTTP; Tue, 24 Jan 2012 14:20:41 -0800 (PST)
Date: Tue, 24 Jan 2012 17:20:41 -0500
Message-ID: <CAOm48iiXdJWM5xrejiYFzLUuD-c4Q8X8RR=2RLVMVoinfQ8TuA@mail.gmail.com>
From: Jim Sheldon <jim.sheldon@gmail.com>
To: poky@yoctoproject.org
Subject: [PATCH] fix configure.patch sed line
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
X-List-Received-Date: Tue, 24 Jan 2012 22:20:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

pciutils: configure.patch has a sed line without a trailing single quote

Signed-off-by: Jim Sheldon <jim.sheldon@gmail.com>
---
 .../pciutils/pciutils-3.1.9/configure.patch        |    2 +-
 meta/recipes-bsp/pciutils/pciutils_3.1.9.bb        |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
b/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
index 658e597..66c9f91 100644
--- a/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
+++ b/meta/recipes-bsp/pciutils/pciutils-3.1.9/configure.patch
@@ -67,7 +67,7 @@ diff -r af2b10cc3c14 lib/configure
  		cpu=`/usr/sbin/lsattr -F value -l $proc -a type | sed 's/_.*//'`
  	else
 -		cpu=`uname -m | sed
's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/'`
-+		cpu=${4:-`uname -m | sed
's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/`}
++		cpu=${4:-`uname -m | sed
's/^i.86$/i386/;s/^sun4u$/sparc64/;s/^i86pc$/i386/;s/^BePC$/i386/;s/^BeMac$/powerpc/;s/^BeBox$/powerpc/'`}
  	fi
  	if [ "$sys" = "GNU/kFreeBSD" -o "$sys" = "DragonFly" ]
  	then
diff --git a/meta/recipes-bsp/pciutils/pciutils_3.1.9.bb
b/meta/recipes-bsp/pciutils/pciutils_3.1.9.bb
index 51e7476..ebda0e5 100644
--- a/meta/recipes-bsp/pciutils/pciutils_3.1.9.bb
+++ b/meta/recipes-bsp/pciutils/pciutils_3.1.9.bb
@@ -9,7 +9,7 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 DEPENDS = "zlib"
 RDEPENDS_${PN} = "${PN}-ids"
-PR = "r0"
+PR = "r1"

 SRC_URI = "${KERNELORG_MIRROR}/software/utils/pciutils/pciutils-${PV}.tar.bz2 \
            file://configure.patch \
-- 
1.7.5.4

