Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3920D4C804C2
	for <poky@pokylinux.org>; Mon, 23 May 2011 05:56:03 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4NAu21T025723
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@pokylinux.org>; Mon, 23 May 2011 03:56:02 -0700 (PDT)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 23 May 2011 03:56:02 -0700
Message-ID: <4DDA3D8A.1000300@windriver.com>
Date: Mon, 23 May 2011 18:57:14 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Hatle, Mark" <mark.hatle@windriver.com>
X-Originating-IP: [128.224.162.196]
Cc: poky@pokylinux.org
Subject: Do LSB test unreported issues need fix?
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
X-List-Received-Date: Mon, 23 May 2011 10:56:03 -0000
X-Groupsio-MsgNum: 6327
Content-Type: multipart/mixed; boundary="------------090209030905030804070506"

--------------090209030905030804070506
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

I meet one test item of LSB core test,

/tset/LSB.fhs/var/lib-hwclock/lib-hwclock-tc 1    unreported

the result is unreported.

We were told that unreported issues don't need to be fixed. Would you 
give us some confirmation?

And this issue will test /var/lib/hwclock/adjtime whether exists,  if 
this issue needs to be fixed could I add it manually just as in 
attachment patch.

Regards,
Kai

--------------090209030905030804070506
Content-Type: text/x-patch;
	name="0001-lsbsetup-add-var-lib-hwclock-adjtime-manually.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-lsbsetup-add-var-lib-hwclock-adjtime-manually.patch"

From fc887b0afa36845ae044e2f0e5f3c55db30498d0 Mon Sep 17 00:00:00 2001
From: Kang Kai <kai.kang@windriver.com>
Date: Mon, 23 May 2011 18:54:56 +0800
Subject: [PATCH] lsbsetup: add /var/lib/hwclock/adjtime manually

LSB core test will test /var/lib/hwclock/adjtime whether exists,
but no package provides it. So add it manually.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup_0.9.bb |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index b0d0a3f..b98bbce 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "auto-setup environment for lsb test"
 SECTION = "console/utils"
 PRIORITY = "required"
 LICENSE = "GPLv2"
-PR = "r2"
+PR = "r3"
 
 LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
 
@@ -20,4 +20,14 @@ do_install() {
         ln -sf ${base_sbindir}/sendmail ${D}/${libdir}/lsb/sendmail
 }
 
+pkg_postinst_${PN} () {
+        if [ "x$D" = "x" ]; then
+            [ -d /var/lib/hwclock ] || mkdir -p /var/lib/hwclock
+            touch /var/lib/hwclock/adjtime
+        else
+            exit 1
+        fi
+}
+
+
 FILES_${PN} += "${libdir}/lsb"
-- 
1.7.5.1.300.gc565c


--------------090209030905030804070506--
