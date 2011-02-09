Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2CB04C800BA;
	Wed,  9 Feb 2011 00:23:56 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196NqsS015198;
	Tue, 8 Feb 2011 22:23:54 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:27:09 -0500
Message-Id: <a6bff87bb87644fe4a5afdeb4b53a55453c7f8d6.1297232632.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 2/3] dtc: add LIC_FILES_CHKSUM to dtc-native
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
X-List-Received-Date: Wed, 09 Feb 2011 06:23:57 -0000

The new license processing rules error if dtc-native itself
doesn't have license information. Previously only the .inc
files contained this information, so we make a copy and leave
the existing license info to be removed pending further review.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/recipes-kernel/dtc/dtc-native_git.bb |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/dtc/dtc-native_git.bb b/meta/recipes-kernel/dtc/dtc-native_git.bb
index 2d6f092..fd5bde5 100644
--- a/meta/recipes-kernel/dtc/dtc-native_git.bb
+++ b/meta/recipes-kernel/dtc/dtc-native_git.bb
@@ -1,2 +1,5 @@
+LIC_FILES_CHKSUM = "file://GPL;md5=94d55d512a9ba36caa9b7df079bae19f \
+		    file://libfdt/libfdt.h;beginline=3;endline=52;md5=fb360963151f8ec2d6c06b055bcbb68c"
+
 require dtc-native.inc
 require dtc_git.inc
-- 
1.7.0.4


