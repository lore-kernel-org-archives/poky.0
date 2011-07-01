Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E95674C80AC5
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 04:41:40 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p619feKc015420
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 1 Jul 2011 02:41:40 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 1 Jul 2011 02:41:39 -0700
Message-ID: <b5b0312005639c617b40ce2c0f6860eb08ba28a8.1309412032.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1309412032.git.xiaofeng.yan@windriver.com>
References: <cover.1309412032.git.xiaofeng.yan@windriver.com>
Old-Date: Wed, 29 Jun 2011 20:02:09 +0800
Date: Fri, 1 Jul 2011 17:36:53 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] poky-lsb: Change provider of virtual/libx11 to libx11-trim
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
X-List-Received-Date: Fri, 01 Jul 2011 09:41:41 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

BUG 1196 reports  compilation error like the following information from package startup-notification  when the provider of virtual/libx11 was libx11
| configure: error: Cannot find x11-xcb
| ERROR: oe_runconf failed
| ERROR: Function 'do_configure' failed (see

Fix [BUGID #1196]
Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 49d12da..5385012 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -4,6 +4,6 @@ DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
 DISTRO_FEATURES_append = " pam largefile"
-PREFERRED_PROVIDER_virtual/libx11 = "libx11"
+PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 
 
-- 
1.7.0.4


