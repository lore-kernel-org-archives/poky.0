Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69CC84C80546
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 13:50:16 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1SJoGIq006757
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 11:50:16 -0800 (PST)
Received: from localhost.localdomain (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Mon, 28 Feb 2011 11:50:15 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 28 Feb 2011 13:50:10 -0600
Message-ID: <c8fff34ebe8c9e22bc863e54f5db81a5988c89bb.1298922394.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <cover.1298922394.git.mark.hatle@windriver.com>
References: <cover.1298922394.git.mark.hatle@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [172.25.36.229]
Subject: [PATCH 1/1] populate_sdk_rpm.bbclass: Add the necessary solvedb lock
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
X-List-Received-Date: Mon, 28 Feb 2011 19:50:16 -0000
Content-Type: text/plain

[BUG #776]

When using the RPM solve databases, we have to lock our operations
to avoid removing it while it's in use.

The same lock is shared by the rootfs_rpm.bbclass

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/populate_sdk_rpm.bbclass |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/classes/populate_sdk_rpm.bbclass b/meta/classes/populate_sdk_rpm.bbclass
index 0afe042..da308c1 100644
--- a/meta/classes/populate_sdk_rpm.bbclass
+++ b/meta/classes/populate_sdk_rpm.bbclass
@@ -5,6 +5,7 @@ rpmlibdir = "/var/lib/rpm"
 RPMOPTS="--dbpath ${rpmlibdir} --define='_openall_before_chroot 1'"
 RPM="rpm ${RPMOPTS}"
 
+do_populate_sdk[lockfiles] += "${DEPLOY_DIR_RPM}/rpm.lock"
 
 populate_sdk_post_rpm () {
 
-- 
1.7.4


