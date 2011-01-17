Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD78F4C8121C
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:34 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 8so2387231yxm.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=AiXVOy0p/4EceNPmSSHJlikbD5V9BBthywKyhl7+kDE=;
	b=jNV2TJ6Z0juYMOSOzG9gzjl1xDoTkAELldgD8oZmHeFLsssKuGdYfsGipwJxTWd7dE
	Ocip21bXwCbH/NTBP9GbxhwzdA1Tz1F2SXKmK0Rewn9dboGkkKs0ebwHIIfUC7kgUr/u
	cj3PmO3xhXABs39ulB/mCaVAL5wlB8XVj4Fro=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=GjLcOwst+PE7cTKrdHY7I/Y7nG8RcCcruO7/+D49DPX1J2leR1CBn6rGBvP4Om1Q4d
	Bz8GR18DHaB3mtS8D0D57DC1WWRzY/kfa3kMdob0+VryLwx5SbyogIS9uIunifrThR5G
	69VUE3sULEW4p4pKsLDLI7CmydEd1RF6BcXvU=
Received: by 10.100.141.13 with SMTP id o13mr2820011and.96.1295295874708;
	Mon, 17 Jan 2011 12:24:34 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.31
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:33 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:38 -0600
Message-Id: <1295296178-18590-25-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 25/25] openssl: powerpc gnueabi toolchain support
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:35 -0000

* Add powerpc-gnueabi toolchain configuration support

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 ...enssl-linux-gnueabi-powerpc-configuration.patch |   27 ++++++++++++++++++++
 .../openssl/openssl_0.9.8p.bbappend                |    5 +++
 2 files changed, 32 insertions(+), 0 deletions(-)
 create mode 100644 recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch
 create mode 100644 recipes-connectivity/openssl/openssl_0.9.8p.bbappend

diff --git a/recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch b/recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch
new file mode 100644
index 0000000..5677756
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl-0.9.8p/openssl-linux-gnueabi-powerpc-configuration.patch
@@ -0,0 +1,27 @@
+From f5fb652a90e71be1665bebb34622d5d205b5f68d Mon Sep 17 00:00:00 2001
+From: Adrian Alonso <aalonso@secretlab.ca>
+Date: Mon, 3 Jan 2011 15:33:20 -0600
+Subject: [PATCH] openssl: linux-gnueabi-powerpc configuration
+
+* Add linux-gnueabi-powerpc configuration option
+
+Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
+---
+ Configure |    1 +
+ 1 files changed, 1 insertions(+), 0 deletions(-)
+
+diff --git a/Configure b/Configure
+index 0428fd2..624e4a5 100755
+--- a/Configure
++++ b/Configure
+@@ -379,6 +379,7 @@ my %table=(
+ # throw in -D[BL]_ENDIAN, whichever appropriate...
+ "linux-generic32","gcc:-DTERMIO -O3 -fomit-frame-pointer -Wall::-D_REENTRANT::-ldl:BN_LLONG RC4_CHAR RC4_CHUNK DES_INT DES_UNROLL BF_PTR:${no_asm}:dlfcn:linux-shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
+ "linux-ppc",	"gcc:-DB_ENDIAN -DTERMIO -O3 -Wall::-D_REENTRANT::-ldl:BN_LLONG RC4_CHAR RC4_CHUNK DES_RISC1 DES_UNROLL::linux_ppc32.o::::::::::dlfcn:linux-shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
++"linux-gnueabi-powerpc",	"gcc:-DB_ENDIAN -DTERMIO -O3 -Wall::-D_REENTRANT::-ldl:BN_LLONG RC4_CHAR RC4_CHUNK DES_RISC1 DES_UNROLL::linux_ppc32.o::::::::::dlfcn:linux-shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
+ #### IA-32 targets...
+ "linux-ia32-icc",	"icc:-DL_ENDIAN -DTERMIO -O2 -no_cpprt::-D_REENTRANT::-ldl:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts}:${x86_elf_asm}:dlfcn:linux-shared:-KPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
+ "linux-elf",	"gcc:-DL_ENDIAN -DTERMIO -O3 -fomit-frame-pointer -Wall::-D_REENTRANT::-ldl:BN_LLONG ${x86_gcc_des} ${x86_gcc_opts}:${x86_elf_asm}:dlfcn:linux-shared:-fPIC::.so.\$(SHLIB_MAJOR).\$(SHLIB_MINOR)",
+-- 
+1.7.3.4
+
diff --git a/recipes-connectivity/openssl/openssl_0.9.8p.bbappend b/recipes-connectivity/openssl/openssl_0.9.8p.bbappend
new file mode 100644
index 0000000..381f31c
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_0.9.8p.bbappend
@@ -0,0 +1,5 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
+SRC_URI_append += "file://openssl-linux-gnueabi-powerpc-configuration.patch \
+                  "
--
1.7.3.4

