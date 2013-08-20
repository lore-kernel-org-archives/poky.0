Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ED2E0159E
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2013 01:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="284227866"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 20 Aug 2013 01:40:54 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id DA9E36A4007;
	Tue, 20 Aug 2013 01:40:51 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:18 +0200
Message-Id: <a9e5f08ec3bedb172728521e1907b10842437ae9.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 036/186] dev-manual: Fixed some rogue characters.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:55 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Discovered a random ":S" and ":" character in front of a
couple of list items.  Must have been a wandering cursor
situation during an edit session.

(From yocto-docs rev: b81412e255ca90e850bce61ef7f9927692f0fcb5)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/dev-manual/dev-manual-newbie.xml |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation/dev-manual/dev-manual-newbie.xml
index 55e0c58..ad4c4d8 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -444,14 +444,14 @@
     <para>
         In summary, here is where you can get the project files needed for development:
         <itemizedlist>
-            <listitem><para id='source-repositories'>:S<emphasis><ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi'>Source Repositories:</ulink></emphasis>
+            <listitem><para id='source-repositories'><emphasis><ulink url='&YOCTO_GIT_URL;/cgit/cgit.cgi'>Source Repositories:</ulink></emphasis>
                 This area contains IDE Plugins, Matchbox, Poky, Poky Support, Tools, Yocto Linux Kernel, and Yocto
                 Metadata Layers.
                 You can create local copies of Git repositories for each of these areas.</para>
                 <para>
                 <imagedata fileref="figures/source-repos.png" align="center" width="6in" depth="4in" />
                 </para></listitem>
-            <listitem><para><anchor id='index-downloads' />:<emphasis><ulink url='&YOCTO_DL_URL;/releases/'>Index of /releases:</ulink></emphasis>
+            <listitem><para><anchor id='index-downloads' /><emphasis><ulink url='&YOCTO_DL_URL;/releases/'>Index of /releases:</ulink></emphasis>
                 This area contains index releases such as
                 the <trademark class='trade'>Eclipse</trademark>
                 Yocto Plug-in, miscellaneous support, poky, pseudo, installers for cross-development toolchains,
-- 
1.7.9.5


