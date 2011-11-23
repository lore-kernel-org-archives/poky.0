Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE005.bigfish.com (am1ehsobe005.messaging.microsoft.com
	[213.199.154.208])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A2FAE006BA
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 00:19:27 -0800 (PST)
Received: from mail114-am1-R.bigfish.com (10.3.201.241) by
	AM1EHSOBE005.bigfish.com (10.3.204.25) with Microsoft SMTP Server id
	14.1.225.22; Wed, 23 Nov 2011 08:18:45 +0000
Received: from mail114-am1 (localhost [127.0.0.1])	by
	mail114-am1-R.bigfish.com (Postfix) with ESMTP id F2DFE3600B2;
	Wed, 23 Nov 2011 08:21:02 +0000 (UTC)
X-SpamScore: 3
X-BigFish: VS3(zzzz1202h1082kzz8275bhz2dh2a8h668h839h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail114-am1 (localhost.localdomain [127.0.0.1]) by mail114-am1
	(MessageSwitch) id 1322036462791878_2651;
	Wed, 23 Nov 2011 08:21:02 +0000 (UTC)
Received: from AM1EHSMHS001.bigfish.com (unknown [10.3.201.251])	by
	mail114-am1.bigfish.com (Postfix) with ESMTP id BBD365C0042;
	Wed, 23 Nov 2011 08:21:02 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS001.bigfish.com
	(10.3.207.101) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 23 Nov 2011 08:18:45 +0000
Received: from az33smr02.freescale.net (10.64.34.200) by
	039-SN1MMR1-002.039d.mgd.msft.net (10.84.1.15) with Microsoft SMTP
	Server id 14.1.339.2; Wed, 23 Nov 2011 02:19:19 -0600
Received: from right.am.freescale.net (right.am.freescale.net [10.82.193.13])
	by az33smr02.freescale.net (8.13.1/8.13.0) with ESMTP id
	pAN8JIOn018348; Wed, 23 Nov 2011 02:19:18 -0600 (CST)
From: Matthew McClintock <msm@freescale.com>
To: <poky@yoctoproject.org>
Date: Wed, 23 Nov 2011 02:19:17 -0600
Message-ID: <1322036357-18211-1-git-send-email-msm@freescale.com>
X-Mailer: git-send-email 1.7.6.1
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: joshua.lock@intel.com
Subject: [PATCH] sudo_1.8.1p2.bb: Pull patch from upstream to fix parallel build issue
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
X-List-Received-Date: Wed, 23 Nov 2011 08:19:28 -0000
Content-Type: text/plain

Signed-off-by: Matthew McClintock <msm@freescale.com>
---
This is for the edison 1.1.1 point release if accepted. It's already in the
upstream version used in master

I'm not exactly sure where to send this so I choose the poky list to start
with

 .../sudo/files/sudo-parallel-build.patch           |   15 +++++++++++++++
 meta/recipes-extended/sudo/sudo_1.8.1p2.bb         |    3 ++-
 2 files changed, 17 insertions(+), 1 deletions(-)
 create mode 100755 meta/recipes-extended/sudo/files/sudo-parallel-build.patch

diff --git a/meta/recipes-extended/sudo/files/sudo-parallel-build.patch b/meta/recipes-extended/sudo/files/sudo-parallel-build.patch
new file mode 100755
index 0000000..6cfe56d
--- /dev/null
+++ b/meta/recipes-extended/sudo/files/sudo-parallel-build.patch
@@ -0,0 +1,15 @@
+Upstream-Status: Accepted
+
+Index: sudo-1.8.1p2/plugins/sudoers/Makefile.in
+===================================================================
+--- sudo-1.8.1p2.orig/plugins/sudoers/Makefile.in
++++ sudo-1.8.1p2/plugins/sudoers/Makefile.in
+@@ -164,7 +164,7 @@ sudoers.la: $(SUDOERS_OBJS) libsudoers.l
+ visudo: libsudoers.la $(VISUDO_OBJS) $(LIBS)
+ 	$(LIBTOOL) --mode=link $(CC) -o $@ $(VISUDO_OBJS) $(LDFLAGS) libsudoers.la $(LIBS) $(NET_LIBS)
+ 
+-sudoreplay: $(REPLAY_OBJS) $(LIBS)
++sudoreplay: timestr.lo $(REPLAY_OBJS) $(LIBS)
+ 	$(LIBTOOL) --mode=link $(CC) -o $@ $(REPLAY_OBJS) $(LDFLAGS) timestr.lo $(REPLAY_LIBS) $(LIBS)
+ 
+ testsudoers: libsudoers.la $(TEST_OBJS) $(LIBS)
diff --git a/meta/recipes-extended/sudo/sudo_1.8.1p2.bb b/meta/recipes-extended/sudo/sudo_1.8.1p2.bb
index b568291..0cf8d03 100644
--- a/meta/recipes-extended/sudo/sudo_1.8.1p2.bb
+++ b/meta/recipes-extended/sudo/sudo_1.8.1p2.bb
@@ -1,9 +1,10 @@
 require sudo.inc
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "http://ftp.sudo.ws/sudo/dist/sudo-${PV}.tar.gz \
            file://libtool.patch \
+	   file://sudo-parallel-build.patch \ 
            ${@base_contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}"
 
 PAM_SRC_URI = "file://sudo.pam"
-- 
1.7.6.1



