Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2496C4C810EE
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:49:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jan 2011 14:49:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="647108957"
Received: from unknown (HELO localhost) ([10.255.14.43])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2011 14:49:53 -0800
Message-Id: <e222686705ee0aa4d90e43f6101a12ae28067f75.1295044979.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1295044979.git.tom.zanussi@intel.com>
References: <cover.1295044979.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Fri, 14 Jan 2011 16:33:05 -0600
Date: Fri, 14 Jan 2011 16:49:50 -0600
To: poky@yoctoproject.org
Subject: [PATCH 1/1] linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON
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
X-List-Received-Date: Fri, 14 Jan 2011 22:49:54 -0000

ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
using it to compile perf, which results in a compilation error that
started appearing just recently.

This turns the code that makes use of ExtUtils::Embed off and simply
hard-codes NO_LIBPERL.

It does the same for LIBPYTHON while we're at it, since it probably
suffers from a similar underlying problem and just by chance hasn't
broken anything yet.

This will be re-enabled after I familiarize myself with the perf
recipe and am able to create a proper fix.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../linux-yocto/tools-perf-no-scripting.patch      |   49 ++++++++++++++++++++
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    5 +-
 2 files changed, 52 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch

diff --git a/meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch b/meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch
new file mode 100644
index 0000000..e0ad999
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto/tools-perf-no-scripting.patch
@@ -0,0 +1,49 @@
+Index: tools/perf/Makefile
+===================================================================
+--- a/tools/perf/Makefile	2011-01-14 14:17:33.127008554 -0600
++++ b/tools/perf/Makefile	2011-01-14 14:18:14.227008548 -0600
+@@ -588,42 +588,8 @@
+ 	endif
+ endif
+ 
+-ifdef NO_LIBPERL
+-	BASIC_CFLAGS += -DNO_LIBPERL
+-else
+-       PERL_EMBED_LDOPTS = $(shell perl -MExtUtils::Embed -e ldopts 2>/dev/null)
+-       PERL_EMBED_LDFLAGS = $(call strip-libs,$(PERL_EMBED_LDOPTS))
+-       PERL_EMBED_LIBADD = $(call grep-libs,$(PERL_EMBED_LDOPTS))
+-	PERL_EMBED_CCOPTS = `perl -MExtUtils::Embed -e ccopts 2>/dev/null`
+-	FLAGS_PERL_EMBED=$(PERL_EMBED_CCOPTS) $(PERL_EMBED_LDOPTS)
+-
+-	ifneq ($(call try-cc,$(SOURCE_PERL_EMBED),$(FLAGS_PERL_EMBED)),y)
+-		BASIC_CFLAGS += -DNO_LIBPERL
+-	else
+-               ALL_LDFLAGS += $(PERL_EMBED_LDFLAGS)
+-               EXTLIBS += $(PERL_EMBED_LIBADD)
+-		LIB_OBJS += $(OUTPUT)util/scripting-engines/trace-event-perl.o
+-		LIB_OBJS += $(OUTPUT)scripts/perl/Perf-Trace-Util/Context.o
+-	endif
+-endif
+-
+-ifdef NO_LIBPYTHON
+-	BASIC_CFLAGS += -DNO_LIBPYTHON
+-else
+-       PYTHON_EMBED_LDOPTS = $(shell python-config --ldflags 2>/dev/null)
+-       PYTHON_EMBED_LDFLAGS = $(call strip-libs,$(PYTHON_EMBED_LDOPTS))
+-       PYTHON_EMBED_LIBADD = $(call grep-libs,$(PYTHON_EMBED_LDOPTS))
+-	PYTHON_EMBED_CCOPTS = `python-config --cflags 2>/dev/null`
+-	FLAGS_PYTHON_EMBED=$(PYTHON_EMBED_CCOPTS) $(PYTHON_EMBED_LDOPTS)
+-	ifneq ($(call try-cc,$(SOURCE_PYTHON_EMBED),$(FLAGS_PYTHON_EMBED)),y)
+-		BASIC_CFLAGS += -DNO_LIBPYTHON
+-	else
+-               ALL_LDFLAGS += $(PYTHON_EMBED_LDFLAGS)
+-               EXTLIBS += $(PYTHON_EMBED_LIBADD)
+-		LIB_OBJS += $(OUTPUT)util/scripting-engines/trace-event-python.o
+-		LIB_OBJS += $(OUTPUT)scripts/python/Perf-Trace-Util/Context.o
+-	endif
+-endif
++BASIC_CFLAGS += -DNO_LIBPERL
++BASIC_CFLAGS += -DNO_LIBPYTHON
+ 
+ ifdef NO_DEMANGLE
+ 	BASIC_CFLAGS += -DNO_DEMANGLE
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 21023da..7833f65 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -13,12 +13,13 @@ KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 LINUX_VERSION ?= "2.6.37"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
-PR = "r14"
+PR = "r15"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"
 
 SRC_URI = "git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=${KBRANCH};name=machine \
-           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta"
+           git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;noclone=1;branch=meta;name=meta \
+           file://tools-perf-no-scripting.patch"
 
 COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro)"
 
-- 
1.7.0.4


