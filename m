Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BACE5E013DE
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365374562"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:40:03 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 971756A4007;
	Tue, 20 Aug 2013 01:40:00 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:48 +0200
Message-Id: <3a8f3b88813c79e18a8b03c9fad959a406cbf19d.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 006/186] net-tools: upgrade to v1.60-25
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:07 -0000

From: Cristian Iorga <cristian.iorga@intel.com>

(From OE-Core rev: 2277b106b947248b06a257a90420d8d69fe522f9)

Signed-off-by: Cristian Iorga <cristian.iorga@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../net-tools-config.h                             |    0
 .../net-tools-config.make                          |    0
 ...net-tools_1.60-24.2.bb => net-tools_1.60-25.bb} |    5 ++---
 3 files changed, 2 insertions(+), 3 deletions(-)
 rename meta/recipes-extended/net-tools/{net-tools-1.60-24.2 => net-tools}/net-tools-config.h (100%)
 rename meta/recipes-extended/net-tools/{net-tools-1.60-24.2 => net-tools}/net-tools-config.make (100%)
 rename meta/recipes-extended/net-tools/{net-tools_1.60-24.2.bb => net-tools_1.60-25.bb} (94%)

diff --git a/meta/recipes-extended/net-tools/net-tools-1.60-24.2/net-tools-config.h b/meta/recipes-extended/net-tools/net-tools/net-tools-config.h
similarity index 100%
rename from meta/recipes-extended/net-tools/net-tools-1.60-24.2/net-tools-config.h
rename to meta/recipes-extended/net-tools/net-tools/net-tools-config.h
diff --git a/meta/recipes-extended/net-tools/net-tools-1.60-24.2/net-tools-config.make b/meta/recipes-extended/net-tools/net-tools/net-tools-config.make
similarity index 100%
rename from meta/recipes-extended/net-tools/net-tools-1.60-24.2/net-tools-config.make
rename to meta/recipes-extended/net-tools/net-tools/net-tools-config.make
diff --git a/meta/recipes-extended/net-tools/net-tools_1.60-24.2.bb b/meta/recipes-extended/net-tools/net-tools_1.60-25.bb
similarity index 94%
rename from meta/recipes-extended/net-tools/net-tools_1.60-24.2.bb
rename to meta/recipes-extended/net-tools/net-tools_1.60-25.bb
index 4040e1a..bd72acc 100644
--- a/meta/recipes-extended/net-tools/net-tools_1.60-24.2.bb
+++ b/meta/recipes-extended/net-tools/net-tools_1.60-25.bb
@@ -5,7 +5,6 @@ BUGTRACKER = "http://bugs.debian.org/net-tools"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b \
                     file://ifconfig.c;beginline=11;endline=15;md5=d1ca372080ad5401e23ca0afc35cf9ba"
-PR = "r0"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/n/net-tools/net-tools_1.60.orig.tar.gz;name=tarball \
            ${DEBIAN_MIRROR}/main/n/net-tools/${BPN}_${PV}.diff.gz;apply=no;name=patch \
@@ -17,8 +16,8 @@ S = "${WORKDIR}/net-tools-1.60"
 SRC_URI[tarball.md5sum] = "ecaf37acb5b5daff4bdda77785fd916d"
 SRC_URI[tarball.sha256sum] = "ec67967cf7b1a3a3828a84762fbc013ac50ee5dc9aa3095d5c591f302c2de0f5"
 
-SRC_URI[patch.md5sum] = "524658bb8df5ff92c4a991f5edcaf240"
-SRC_URI[patch.sha256sum] = "170cc024fcb34329f4c25fd88b5f160a06be5d6d3eaf0bc976650fd1b1a6235d"
+SRC_URI[patch.md5sum] = "5ab1e2184d0fa6518031291138f2fc51"
+SRC_URI[patch.sha256sum] = "1bddcd96ac60e794978cb20fb7ea4c2e77258c56c042c9ac8b6ec2b2033bc56f"
 
 inherit gettext
 
-- 
1.7.9.5


