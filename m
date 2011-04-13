Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35CEF4C80593
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 19:12:03 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Apr 2011 17:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,200,1301900400"; d="scan'208";a="678275586"
Received: from unknown (HELO localhost) ([10.255.12.244])
	by fmsmga002.fm.intel.com with ESMTP; 12 Apr 2011 17:12:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Apr 2011 17:11:52 -0700
Message-Id: <f558e569b2182b81bba0a9a08bbba5713489e1b1.1302653512.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] bitbake: correct typo in ??= documentation
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
X-List-Received-Date: Wed, 13 Apr 2011 00:12:05 -0000

??= is a lazy version of ?=

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 bitbake/doc/manual/usermanual.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/doc/manual/usermanual.xml b/bitbake/doc/manual/usermanual.xml
index 32b40ee..d5be5f3 100644
--- a/bitbake/doc/manual/usermanual.xml
+++ b/bitbake/doc/manual/usermanual.xml
@@ -97,7 +97,7 @@ share common metadata between many packages.</para></listitem>
                 <title>Setting a default value (??=)</title>
                 <para><screen><varname>A</varname> ??= "somevalue"</screen></para>
                 <para><screen><varname>A</varname> ??= "someothervalue"</screen></para>
-                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ??=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
+                <para>If <varname>A</varname> is set before the above, it will retain that value.  If <varname>A</varname> is unset prior to the above, <varname>A</varname> will be set to <literal>someothervalue</literal>.  This is a lazy version of ?=, in that the assignment does not occur until the end of the parsing process, so that the last, rather than the first, ??= assignment to a given variable will be used.</para>
             </section>
             <section>
                 <title>Immediate variable expansion (:=)</title>
-- 
1.7.1


