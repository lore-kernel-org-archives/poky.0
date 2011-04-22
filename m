Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B4E24C80A7B
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 22:10:12 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3M3ABYe000785
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 20:10:11 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 21 Apr 2011 20:10:11 -0700
Message-ID: <4DB0F192.6020809@windriver.com>
Date: Fri, 22 Apr 2011 11:10:10 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Hatle, Mark" <mark.hatle@windriver.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: About minimal image
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
X-List-Received-Date: Fri, 22 Apr 2011 03:10:12 -0000
X-Groupsio-MsgNum: 5482
Content-Type: multipart/mixed; boundary="------------060803050705070503050108"

--------------060803050705070503050108
Content-Type: multipart/alternative;
	boundary="------------060109090705030306070604"

--------------060109090705030306070604
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

I have read your mail about minimal image posted on Feb 19 on this mail 
list.  We try to reduce image size by what your provided:

   1. eglic configurability
   2. using mklibs

Right now after migrate eglic configurability to my local yocto branch, 
and I only enable 4 options ("locale-code nsswitch rtld-debug 
posix-clang-wchar ", pls. check in attachment) of eglibc to make compile 
pass.

When after create minimal image, the rootfs (tar.bz2) is still about 
3.4M, same size as without configure eglibc.

Could you give me some directions what should we do next step? We also 
hope some information about how to use mklibs to reduce packages and 
image size?

Thanks and Regards,
Kai

--------------060109090705030306070604
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hi Mark,<br>
    <br>
    I have read your mail about minimal image posted on Feb 19 on this
    mail list.&nbsp; We try to reduce image size by what your provided:<br>
    <ol>
      <li>eglic configurability</li>
      <li>using mklibs<br>
      </li>
    </ol>
    Right now after migrate eglic configurability to my local yocto
    branch, and I only enable 4 options ("locale-code nsswitch
    rtld-debug posix-clang-wchar ", pls. check in attachment) of eglibc
    to make compile pass.<br>
    <br>
    When after create minimal image, the rootfs (tar.bz2) is still about
    3.4M, same size as without configure eglibc. <br>
    <br>
    Could you give me some directions what should we do next step? We
    also hope some information about how to use mklibs to reduce
    packages and image size?<br>
    <br>
    Thanks and Regards,<br>
    Kai<br>
  </body>
</html>

--------------060109090705030306070604--

--------------060803050705070503050108
Content-Type: text/x-patch;
	name="0001-eglibc-migrate-configurability-from-oe.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="0001-eglibc-migrate-configurability-from-oe.patch"

From 410f884c4bd0b2037d1df22ccdcd0bfb3c54ffdc Mon Sep 17 00:00:00 2001
From: Kang Kai <kai.kang@windriver.com>
Date: Thu, 21 Apr 2011 15:23:27 +0800
Subject: [PATCH] eglibc: migrate configurability from oe

migrate configurability from oe, try to shrink minimal image size

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-core/eglibc/eglibc-options.inc |   51 +++++++++++++++++++++++++++
 meta/recipes-core/eglibc/eglibc.inc         |   14 +++++++
 2 files changed, 65 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/eglibc/eglibc-options.inc

diff --git a/meta/recipes-core/eglibc/eglibc-options.inc b/meta/recipes-core/eglibc/eglibc-options.inc
new file mode 100644
index 0000000..0af0aab
--- /dev/null
+++ b/meta/recipes-core/eglibc/eglibc-options.inc
@@ -0,0 +1,51 @@
+def eglibc_cfg(feature, features, tokens, cnf ):
+	if type(tokens) == type(""):
+		tokens = [tokens]
+	if type(features) == type([]) and feature in features:
+		cnf.extend([token + ' = y' for token in tokens])
+	else:
+		cnf.extend([token + ' = n' for token in tokens])
+
+# Map distro features to eglibc options settings
+def features_to_eglibc_settings(d):
+        cnf = ([])
+        distro_features = (bb.data.getVar('DISTRO_FEATURES_EGLIBC', d, True) or '').split() 
+        eglibc_cfg('ipv6',      distro_features, 'OPTION_EGLIBC_ADVANCED_INET6', cnf)
+        eglibc_cfg('backtrace',      distro_features, 'OPTION_EGLIBC_BACKTRACE', cnf)
+        eglibc_cfg('big-macros',      distro_features, 'OPTION_EGLIBC_BIG_MACROS', cnf)
+        eglibc_cfg('bsd',      distro_features, 'OPTION_EGLIBC_BSD', cnf)
+        eglibc_cfg('cxx-tests',      distro_features, 'OPTION_EGLIBC_CXX_TESTS', cnf)
+        eglibc_cfg('catgets',      distro_features, 'OPTION_EGLIBC_CATGETS', cnf)
+        eglibc_cfg('charsets',      distro_features, 'OPTION_EGLIBC_CHARSETS', cnf)
+        eglibc_cfg('crypt',      distro_features, 'OPTION_EGLIBC_CRYPT', cnf)
+        eglibc_cfg('crypt-ufc',      distro_features, 'OPTION_EGLIBC_CRYPT_UFC', cnf)
+        eglibc_cfg('db-aliases',      distro_features, 'OPTION_EGLIBC_DB_ALIASES', cnf)
+        eglibc_cfg('envz',      distro_features, 'OPTION_EGLIBC_ENVZ', cnf)
+        eglibc_cfg('fcvt',      distro_features, 'OPTION_EGLIBC_FCVT', cnf)
+        eglibc_cfg('fmtmsg',      distro_features, 'OPTION_EGLIBC_FMTMSG', cnf)
+        eglibc_cfg('fstab',      distro_features, 'OPTION_EGLIBC_FSTAB', cnf)
+        eglibc_cfg('ftraverse',      distro_features, 'OPTION_EGLIBC_FTRAVERSE', cnf)
+        eglibc_cfg('getlogin',      distro_features, 'OPTION_EGLIBC_GETLOGIN', cnf)
+        eglibc_cfg('idn',      distro_features, 'OPTION_EGLIBC_IDN', cnf)
+        eglibc_cfg('inet',      distro_features, 'OPTION_EGLIBC_INET', cnf)
+        eglibc_cfg('inet-anl',      distro_features, 'OPTION_EGLIBC_INET_ANL', cnf)
+        eglibc_cfg('libm',      distro_features, 'OPTION_EGLIBC_LIBM', cnf)
+        eglibc_cfg('libm-big',      distro_features, 'OPTION_EGLIBC_LIBM_BIG', cnf)
+        eglibc_cfg('locales',      distro_features, 'OPTION_EGLIBC_LOCALES', cnf)
+        eglibc_cfg('locale-code',      distro_features, 'OPTION_EGLIBC_LOCALE_CODE', cnf)
+        eglibc_cfg('memusage',      distro_features, 'OPTION_EGLIBC_MEMUSAGE', cnf)
+        eglibc_cfg('nis',      distro_features, 'OPTION_EGLIBC_NIS', cnf)
+        eglibc_cfg('nsswitch',      distro_features, 'OPTION_EGLIBC_NSSWITCH', cnf)
+        eglibc_cfg('rcmd',      distro_features, 'OPTION_EGLIBC_RCMD', cnf)
+        eglibc_cfg('rtld-debug',      distro_features, 'OPTION_EGLIBC_RTLD_DEBUG', cnf)
+        eglibc_cfg('spawn',      distro_features, 'OPTION_EGLIBC_SPAWN', cnf)
+        eglibc_cfg('streams',      distro_features, 'OPTION_EGLIBC_STREAMS', cnf)
+        eglibc_cfg('sunrpc',      distro_features, 'OPTION_EGLIBC_SUNRPC', cnf)
+        eglibc_cfg('utmp',      distro_features, 'OPTION_EGLIBC_UTMP', cnf)
+        eglibc_cfg('utmpx',      distro_features, 'OPTION_EGLIBC_UTMPX', cnf)
+        eglibc_cfg('wordexp',      distro_features, 'OPTION_EGLIBC_WORDEXP', cnf)
+        eglibc_cfg('posix-clang-wchar',      distro_features, 'OPTION_POSIX_C_LANG_WIDE_CHAR', cnf)
+        eglibc_cfg('posix-regexp',      distro_features, 'OPTION_POSIX_REGEXP', cnf)
+        eglibc_cfg('posix-regexp-glibc',      distro_features, 'OPTION_POSIX_REGEXP_GLIBC', cnf)
+        eglibc_cfg('posix-wchar-io',      distro_features, 'OPTION_POSIX_WIDE_CHAR_DEVICE_IO', cnf)
+        return "\n".join(cnf)
diff --git a/meta/recipes-core/eglibc/eglibc.inc b/meta/recipes-core/eglibc/eglibc.inc
index 8314cb1..d5016bf 100644
--- a/meta/recipes-core/eglibc/eglibc.inc
+++ b/meta/recipes-core/eglibc/eglibc.inc
@@ -28,6 +28,7 @@ DEPENDS = "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
 PROVIDES = "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc"
 PROVIDES += "virtual/libintl virtual/libiconv"
 inherit autotools
+require eglibc-options.inc
 
 LEAD_SONAME = "libc.so"
 
@@ -37,3 +38,16 @@ INHIBIT_DEFAULT_DEPS = "1"
 ARM_INSTRUCTION_SET = "arm"
 
 PACKAGES = "glibc catchsegv sln nscd ldd localedef glibc-utils glibc-dev glibc-doc glibc-locale libsegfault glibc-extra-nss glibc-thread-db glibc-pcprofile"
+
+
+DISTRO_FEATURES_EGLIBC = "locale-code nsswitch rtld-debug posix-clang-wchar "
+#DISTRO_FEATURES_EGLIBC = "ipv6 backtrace big-macros bsd cxx-tests catgets charsets \
+#                          crypt crypt-ufc db-aliases envz fcvt fmtmsg fstab ftraverse \
+#                          getlogin idn inet inet-anl libm libm-big locales locale-code \
+#                          memusage nis nsswitch rcmd rtld-debug spawn streams sunrpc utmp \
+#                          utmpx wordexp posix-clang-wchar posix-regexp posix-regexp-glibc posix-wchar-io \
+#                          "
+OE_FEATURES := "${@features_to_eglibc_settings(d)}"
+do_configure_prepend() {
+	echo '${OE_FEATURES}' > ${B}/option-groups.config
+}
-- 
1.7.1


--------------060803050705070503050108--
