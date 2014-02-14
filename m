Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0062E007CE
	for <poky@yoctoproject.org>; Fri, 14 Feb 2014 10:21:37 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2014 10:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,846,1384329600"; d="scan'208";a="475375837"
Received: from yocto-hm1.jf.intel.com ([10.23.232.34])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2014 10:21:21 -0800
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com, poky@yoctoproject.org,
	richard.purdie@linuxfoundation.org, saul.wold@intel.com
Date: Fri, 14 Feb 2014 10:18:08 -0800
Message-Id: <f46dad0dd114cf36db773cc20d6782dff6849db8.1392401757.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1392401757.git.nitin.a.kamble@intel.com>
References: <cover.1392401757.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] systemtap_git: update to newer version to fix a build issue
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
X-List-Received-Date: Fri, 14 Feb 2014 18:21:38 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This build issue was observed with the 2.4+git version of the systemtap.

.../x86_64-linux/systemtap-native/2.4+gitAUTOINC+9190b3acfe-r0/git/tapsets.cxx: In function 'void validate_module_elf(Dwfl_Module*, const char*, base_query*)':
.../x86_64-linux/systemtap-native/2.4+gitAUTOINC+9190b3acfe-r0/git/tapsets.cxx:1998:10: error: 'EM_AARCH64' was not declared in this scope
.../x86_64-linux/systemtap-native/2.4+gitAUTOINC+9190b3acfe-r0/git/tapsets.cxx: In constructor 'sdt_uprobe_var_expanding_visitor::sdt_uprobe_var_expanding_visitor(systemtap_session&, int, const string&, const string&, const string&, stap_sdt_probe_type, const string&, int)':
.../x86_64-linux/systemtap-native/2.4+gitAUTOINC+9190b3acfe-r0/git/tapsets.cxx:5613:31: error: 'EM_AARCH64' was not declared in this scope

This is a known issue, and it is already fixed in the upstream tree.

Updating the recipe to get the commit which fixes the issue.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-kernel/systemtap/systemtap_git.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-kernel/systemtap/systemtap_git.inc b/meta/recipes-kernel/systemtap/systemtap_git.inc
index b87aa1a..56db7b2 100644
--- a/meta/recipes-kernel/systemtap/systemtap_git.inc
+++ b/meta/recipes-kernel/systemtap/systemtap_git.inc
@@ -1,7 +1,7 @@
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-SRCREV = "9190b3acfe706d3bfd66dec18133d28f98443321"
-PV = "2.4+git${SRCPV}"
+SRCREV = "508059f04842ed85d10bfbec8a9c688d57368860"
+PV = "2.5+git${SRCPV}"
 
 SRC_URI = "git://sourceware.org/git/systemtap.git \
            file://docproc-build-fix.patch \
-- 
1.8.1.4


