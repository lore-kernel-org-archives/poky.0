Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F3AE00596
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 22:00:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3A5088A029207
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 9 Apr 2012 22:00:08 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.69) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 9 Apr 2012 22:00:08 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Apr 2012 13:00:05 +0800
Message-ID: <7f1dbead94f74f0acad5c8a382718715c7defed9.1334033789.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1334033789.git.liezhi.yang@windriver.com>
References: <cover.1334033789.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] beagleboard.conf: fix hardcode of virtual/xserver
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
X-List-Received-Date: Tue, 10 Apr 2012 05:00:09 -0000
Content-Type: text/plain

Here is the message from the bug 2260:

meta-yocto/conf/machine/beagleboard.conf hardcodes the virtual/xserver
provider, i.e., it includes the following:

PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"

I don't think machine conf is the correct place for selecting what is
essentially a distro feature, but at least this should use the '?='
operator; as is to select a different provider one must provide a
complete beagleboard.conf file.

[YOCTO #2260]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/machine/beagleboard.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index fa2f8e7..06a0ecd 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -2,8 +2,8 @@
 #@NAME: Beagleboard machine
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 
-PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg-lite"
-XSERVER = "xserver-xorg-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg-lite"
+XSERVER ?= "xserver-xorg-lite \
            xf86-input-evdev \
            xf86-input-mouse \
            xf86-video-omapfb \
-- 
1.7.1


