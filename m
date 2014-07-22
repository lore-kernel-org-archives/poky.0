Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 958EDE007B3; Tue, 22 Jul 2014 03:31:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EF54E007AD
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6MAVQvn028950
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:26 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 03:31:26 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 22 Jul 2014 03:31:25 -0700
Message-ID: <8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1406024955.git.liezhi.yang@windriver.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 10:31:50 -0000
Content-Type: text/plain

Fixed do_configure error:

ERROR: User requested feature sdl
       configure was not able to find it.
       Install SDL devel

This is error from log.do_configure, and if we check config.log, the error is:

sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to `_XEatDataWords'

The _XEatDataWords is provided by libX11.so, the dependencies are:

qemu-native -> sdl(from the host) -> libXext.so(maybe host or native) -> libX11.so (maybe host or native)

We may meet the error if host's libX11.so doesn't provide _XEatDataWords, and native's
libX11.so has been removed (for example, rebuild).

Another way to fix is: let qemu-native depend on libxext-naive when sdl is
enabled, for example:

PACKAGECONFIG[sdl] = "--enable-sdl,--disable-sdl,libsdl libxext-native,"

But this might be incorrect since target sdl or qemu may not require X11, so
set:

DEPENDS_pn-qemu-native += "libxext-naive"

in local.conf.sample to fix problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/local.conf.sample |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index bcb0864..742eb1a 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -243,6 +243,7 @@ BB_DISKMON_DIRS = "\
 # seen. The two lines below enable the SDL backend too. This assumes there is a
 # libsdl library available on your build system.
 PACKAGECONFIG_pn-qemu-native = "sdl"
+DEPENDS_pn-qemu-native += "libxext-naive"
 PACKAGECONFIG_pn-nativesdk-qemu = "sdl"
 ASSUME_PROVIDED += "libsdl-native"
 
-- 
1.7.9.5


