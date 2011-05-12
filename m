Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D62E24C80132
	for <poky@yoctoproject.org>; Thu, 12 May 2011 15:19:19 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CKIiwT020967;
	Thu, 12 May 2011 13:18:45 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 12 May 2011 16:21:16 -0400
Message-Id: <0c9a2ad77557ecbb3251d3c74f28751082b10c8d.1305229934.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1305229934.git.bruce.ashfield@windriver.com>
References: <cover.1305229934.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1305229934.git.bruce.ashfield@windriver.com>
References: <cover.1305229934.git.bruce.ashfield@windriver.com>
Cc: openembedded-core@lists.openembedded.org, dvhart@linux.intel.com,
	poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] kern-tools: error if features are not found
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
X-List-Received-Date: Thu, 12 May 2011 20:19:20 -0000

Richard/Saul,

I'll just repeat the patch contents here:

Fixes bug: [YOCTO #955]

Updating the SRCREV to pickup the kern-tools change:

[
    updateme: error if features are not found

    Rather than silently dropping addon features, we emit a warning
    and then exit with a failure code. The caller can then abort a
    build and not simply miss features.

    Passing --no-strict to the script disables this new functionality
    if for some reason a feature description is missing on purpose.
]

We ran into this during 1.0 development, if someone tags an
extra feature into a bbapend (or wherever) and that feature
isn't valid they get a log to the console, and the build stops.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../kern-tools/kern-tools-native_git.bb            |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
index c808e17..829d105 100644
--- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
+++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://git/tools/kgit;beginline=5;endline=9;md5=e2bf4415f3d8
 
 DEPENDS = "git-native guilt-native"
 
-SRCREV = "ab49d8e48b7e66d1b4f924385d65d062d25e44f7"
+SRCREV = "ecbdf3cdf6705a63dcb3c50bb24c311046f0b35c"
 PR = r10
 PV = "0.1+git${SRCPV}"
 
-- 
1.7.0.4


