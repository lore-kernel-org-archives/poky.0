Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CFE54C8090B
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 15:33:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Mar 2011 13:33:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,292,1297065600"; d="scan'208";a="400237011"
Received: from unknown (HELO localhost) ([10.255.12.117])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2011 13:33:01 -0800
Message-Id: <edad97936654f13dbbef0651f508615dc4c89e65.1299705776.git.dvhart@linux.intel.com>
Old-Date: Wed, 9 Mar 2011 12:55:20 -0800
Date: Wed, 09 Mar 2011 13:32:59 -0800
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, Joshua Lock <josh@linux.intel.com>
Subject: [PATCH] bitbake docs: use dblatex to build the pdf bitbake manual
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
X-List-Received-Date: Wed, 09 Mar 2011 21:33:03 -0000

From: Darren Hart <dvhart@linux.intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/doc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/doc

Thanks,
    Darren Hart <dvhart@linux.intel.com>

Darren Hart (1):
  bitbake docs: use dblatex to build the pdf bitbake manual

 bitbake/doc/manual/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

Fix [BUGID #593]

The current manual build fails for printing formats which use latex as an
intermediate format. This bug has been reported in multiple locations and I
haven't found a solution posted to any of them.

Using --with-dblatex uses dblatex to make the conversion and successfully
generates the pdf. It adds a dependency on dblatex and its dependencies.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Joshua Lock <josh@linux.intel.com>
---
 bitbake/doc/manual/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/doc/manual/Makefile b/bitbake/doc/manual/Makefile
index a43c025..341ab55 100644
--- a/bitbake/doc/manual/Makefile
+++ b/bitbake/doc/manual/Makefile
@@ -45,7 +45,7 @@ endif
 	$(call command,xsltproc --stringparam base.dir $@/ $(if $(htmlcssfile),--stringparam html.stylesheet $(htmlcssfile)) $(htmlxsl) $(manual),XSLTPROC $@ $(manual))
 
 $(xmltotypes): $(manual)
-	$(call command,xmlto --extensions -o $(topdir)/$@ $@ $(manual),XMLTO $@ $(manual))
+	$(call command,xmlto --with-dblatex --extensions -o $(topdir)/$@ $@ $(manual),XMLTO $@ $(manual))
 
 clean:
 	rm -rf $(cleanfiles)
-- 
1.7.1


