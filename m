Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A67334C804B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 08:03:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 06:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="721593633"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga001.jf.intel.com with ESMTP; 18 Mar 2011 06:03:24 -0700
Message-Id: <e58b1befa6d01dbc752fb1d7b27aaa7922d1d493.1300453334.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300453334.git.scott.m.rifenbark@intel.com>
References: <cover.1300453334.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 14:00:27 -0600
Date: Fri, 18 Mar 2011  7:04:17 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/2] documentation/kernel-manual/kernel-how-to.xml: Spell checked
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
X-List-Received-Date: Fri, 18 Mar 2011 13:03:30 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Performed a spell check and found a couple items.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 3ca1746..79c8526 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -475,7 +475,7 @@ repository.
                 <para>
                     You can use many other comparisons to isolate BSP changes.
                     For example, you can compare against kernel.org tags (e.g. v2.6.27.18, etc), or
-                    you can compare agains subsystems (e.g. git whatchanged mm).
+                    you can compare against subsystems (e.g. git whatchanged mm).
                 </para>
             </section>
         </section>
@@ -600,7 +600,7 @@ repository.
                 <para>
                     Distributed development with git is possible when you use a universally 
                     agreed-upon unique commit identifier (set by the creator of the commit) that maps to a
-                    specific changeset with a specific parent.  
+                    specific change set with a specific parent.  
                     This identifier is created for you when
                     you create a commit, and is re-created when you amend, alter or re-apply
                     a commit.  
@@ -1059,7 +1059,7 @@ That's it. Configure and build.
                         (linux-yocto is the kernel listed in
                         <filename>meta-emenlow/conf/machine/emenlow.conf</filename>)</para></listitem>.
                         <listitem><para>Add a new entry in the <filename>build/conf/bblayers.conf</filename> 
-                        so the new layer can be found by Bitbake.</para></listitem>
+                        so the new layer can be found by BitBake.</para></listitem>
                     </itemizedlist>
                 </para></listitem>
                 
-- 
1.7.1


