Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF5C94C811BF;
	Fri, 12 Nov 2010 12:40:12 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oACIe97Q022416;
	Fri, 12 Nov 2010 10:40:11 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 12 Nov 2010 13:40:30 -0500
Message-Id: <dba65bf5c06310c39af4b398e9f8d93c78de7f73.1289583673.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1289583673.git.bruce.ashfield@windriver.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289583673.git.bruce.ashfield@windriver.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 2/2] linux-wrs: BSP bootstrap
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
X-List-Received-Date: Fri, 12 Nov 2010 18:40:12 -0000

Updating the kern-tools SRCREV to pickup changes required for
BSP bootstrapping:

commit 9722d8decacd2b750f079b3fde7918810700f80e
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Nov 11 01:28:33 2010 -0500

    createme: improve BSP bootstrapping

    To streamline BSP bootstrapping, createme now actually
    creates the required branch rather than only dumping it
    in a .scc file. Later phases of the build will create
    the .scc file, so it isn't required here.

    Also, a BSP with a '-' in the name would break the parent
    branch detection. Improving the parsing of this allows more
    flexibile branch naming.

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

commit c7d222b4cffb5108d9b14298fc4dc4cae31b784f
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Nov 11 01:27:33 2010 -0500

    updateme: improve parent and target parsing

    A BSP with a '-' in the name would break the parent branch
    detection. Improving the parsing of this allows more
    flexibile branch naming.

    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 4571995..ed8420f 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -55,7 +55,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "140693a6b0d81b7ba7175b6cfce11c6c22f81e24"
+SRCREV_pn-kern-tools-native ??= "9722d8decacd2b750f079b3fde7918810700f80e"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
-- 
1.7.0.4


