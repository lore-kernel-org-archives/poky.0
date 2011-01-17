Return-Path: <aalonso00@gmail.com>
Received: from mail-yi0-f54.google.com (mail-yi0-f54.google.com
	[209.85.218.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FBB04C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:35 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yie19 with SMTP id 19so2880643yie.13
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=HbnYyy2s95LITBKo06gyH1Yk6tGLIdimeKMLWxb6cKg=;
	b=cwoSKFBRHeqSmQaFMpXbjuLQ6QrlRNuJ0+efG1LVukrbSSweaCFrni3sJErFEmeT/8
	6q14RJfa/sO4KRdG9eHFkyrosbelxS/PW1HGDgKNrXcIjqKWFAZsWxQU3rz4Gwxycrdt
	0LzQzWbo54OfZ5bsn6j24PKeCra6gh7CzRDV4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=X9PiCFKkaRc0kmgmmvFV8vKnndRFf52PVQLViNkiWUVxrhoFMxfKrEBUGlxApotDkm
	cxNZYnsHV72k9wtgm+923jEcgGsh9xGaGrpirCafFjjWSpptHMYv/jdCWMljzVM+xdmd
	2hYGN78FKK3d8M00Tpx9BLmtXBHO8kI5I8Klc=
Received: by 10.90.34.17 with SMTP id h17mr5118850agh.129.1295295814843;
	Mon, 17 Jan 2011 12:23:34 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.31
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:33 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:16 -0600
Message-Id: <1295296178-18590-3-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:35 -0000

* Configure fails due that --with-float=soft
  flag isn't supportted by powerpc arch
* Unsetting TARGET_FPU this flag to not try to use
  this flag
* crosssdk disable decimal point support

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../gcc/gcc-crosssdk-initial_4.5.1.bbappend        |    7 +++++++
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bbappend   |    7 +++++++
 recipes-devtools/gcc/gcc-crosssdk_4.5.1.bbappend   |    8 ++++++++
 3 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bbappend
 create mode 100644 recipes-devtools/gcc/gcc-crosssdk_4.5.1.bbappend

diff --git a/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bbappend b/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bbappend
new file mode 100644
index 0000000..9bb8f77
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bbappend
@@ -0,0 +1,7 @@
+# Unset TARGET_FPU --with-float=soft flag not supported for powerpc targets
+# --with-float=soft
+
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
+TARGET_FPU=""
diff --git a/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bbappend b/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bbappend
new file mode 100644
index 0000000..9bb8f77
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bbappend
@@ -0,0 +1,7 @@
+# Unset TARGET_FPU --with-float=soft flag not supported for powerpc targets
+# --with-float=soft
+
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
+TARGET_FPU=""
diff --git a/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bbappend b/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bbappend
new file mode 100644
index 0000000..35eab60
--- /dev/null
+++ b/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bbappend
@@ -0,0 +1,8 @@
+# Unset TARGET_FPU --with-float=soft flag not supported for powerpc targets
+# --with-float=soft
+
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
+TARGET_FPU=""
+EXTRA_OECONF += " --disable-decimal-float"
-- 
1.7.3.4


