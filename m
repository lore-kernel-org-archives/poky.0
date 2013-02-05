Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76BE4E002AB
	for <poky@yoctoproject.org>; Tue,  5 Feb 2013 14:51:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Feb 2013 14:51:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,610,1355126400"; d="scan'208";a="281408755"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.201.160])
	by orsmga002.jf.intel.com with ESMTP; 05 Feb 2013 14:51:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>, openembedded-core@lists.openembedded.org,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue,  5 Feb 2013 14:52:43 -0800
Message-Id: <c3eb52b9dbde2bccc9d3b53340712e445c949d2f.1360104547.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1360104547.git.dvhart@linux.intel.com>
References: <cover.1360104547.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1360104547.git.dvhart@linux.intel.com>
References: <cover.1360104547.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, bitbake-devel@lists.openembedded.org
Subject: [PATCH 1/9] bitbake: fetch2: Print the complete SRCREV variable name when INVALID
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
X-List-Received-Date: Tue, 05 Feb 2013 22:51:14 -0000

If a particular SRCREV (say for a particular branch) is missing, the
fetcher will currently just report an obtuse error about the "SRCREV"
being invalid. If there is more information is to be had (say from name,
i.e. branch, and pn) then display that as well.

The new error looks something like this:

ERROR: ExpansionError during parsing /home/dvhart/source/poky/meta/recipes-kernel/linux/linux-yocto_3.4.bb: Failure expanding variable do_patch: ExpansionError: Failure expanding variable SRCPV, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fetcher failure for URL: 'git://otcgit.jf.intel.com/dvhart/linux-yocto-minnow-3.4.git;protocol=git;nocheckout=1;branch=standard/minnow,meta,emgd-1.14;name=machine,meta,emgd'. Please set SRCREV_emgd_pn-linux-yocto to a valid value

Note the variable listed as invalid is
"SRCREV_emgd_pn-linux-yocto", making it explicit what is wrong.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: bitbake-devel@lists.openembedded.org
---
 bitbake/lib/bb/fetch2/__init__.py |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 4746356..cba45d0 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -650,11 +650,14 @@ def srcrev_internal_helper(ud, d, name):
         if not rev:
             rev = d.getVar("SRCREV_%s" % name, True)
     if not rev:
-       rev = d.getVar("SRCREV_pn-%s" % pn, True)
+        rev = d.getVar("SRCREV_pn-%s" % pn, True)
     if not rev:
         rev = d.getVar("SRCREV", True)
     if rev == "INVALID":
-        raise FetchError("Please set SRCREV to a valid value", ud.url)
+        var = "SRCREV_pn-%s" % pn
+        if name != '':
+            var = "SRCREV_%s_pn-%s" % (name, pn)
+        raise FetchError("Please set %s to a valid value" % var, ud.url)
     if rev == "AUTOINC":
         rev = ud.method.latest_revision(ud.url, ud, d, name)
 
-- 
1.7.5.4


