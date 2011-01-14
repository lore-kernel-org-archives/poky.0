Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 647DD4C81069;
	Thu, 13 Jan 2011 23:48:31 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0E5mFat006084;
	Thu, 13 Jan 2011 21:48:18 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 14 Jan 2011 00:50:39 -0500
Message-Id: <9e34cf21b22cd8e420fc3082ec49d074ddc890c3.1294984024.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294984024.git.bruce.ashfield@windriver.com>
References: <cover.1294984024.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294984024.git.bruce.ashfield@windriver.com>
References: <cover.1294984024.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/2] linux-yocto-stable: add atom-pc preempt_rt support
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
X-List-Received-Date: Fri, 14 Jan 2011 05:48:36 -0000

Updating the SRCREV to capture this commit to the 2.6.34 kernel:

    linux-2.6-windriver: atom-pc-preempt_rt meta-data

    The following patch adds support for the preempt_rt kernel type
    for the atom-pc machine. It should be applied to the wrs_meta
    branch.

    Signed-off-by: Darren Hart <dvhart@linux.intel.com>
    CC: Bruce Ashfield <bruce.ashfield@windriver.com>
    CC: Tom Zanussi <tom.zanussi@intel.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index ad6ee84..d620c76 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -93,7 +93,7 @@ SRCREV_machine_pn-linux-yocto-stable_atom-pc ?= "35521a5a70316785a67aca1de1d39a7
 SRCREV_machine_pn-linux-yocto-stable_routerstationpro ?= "b323ab98f055df012277f09d444951619fda24e3"
 SRCREV_machine_pn-linux-yocto-stable_mpc8315e-rdb ?= "0d19c4ab6185b2e093beb5f366ccff4746197166"
 SRCREV_machine_pn-linux-yocto-stable_beagleboard ?= "35521a5a70316785a67aca1de1d39a7b84c49ccf"
-SRCREV_meta_pn-linux-yocto-stable ?= "48fd1292a8c24bd7b8fbfebb2b160f65a5a959a3"
+SRCREV_meta_pn-linux-yocto-stable ?= "b0615811ce38836d1ade230e3bdb1efaaa68471f"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm ?= "4f86b5a0cb23faa4134cc004730d673f6640614b"
 SRCREV_machine_pn-linux-yocto_qemumips ?= "2b43d84250a582b61397ad5f59a6445ce1258615"
-- 
1.7.0.4


