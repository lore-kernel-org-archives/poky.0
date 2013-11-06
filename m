Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D3A7E017BF
	for <poky@yoctoproject.org>; Tue,  5 Nov 2013 19:12:02 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id rA63C13l014688
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 5 Nov 2013 19:12:01 -0800 (PST)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.213) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 5 Nov 2013 19:12:01 -0800
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 6 Nov 2013 11:13:10 +0800
Message-ID: <923963c295c4c3513a4752f51bd94e3c5c1fcb8f.1383707515.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1383707515.git.Qi.Chen@windriver.com>
References: <cover.1383707515.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] poky.conf: use weak assignment for WARN_QA and ERROR_QA
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
X-List-Received-Date: Wed, 06 Nov 2013 03:12:03 -0000
Content-Type: text/plain

From: Chen Qi <qi.chen@windriver.com>

Use weak assignment for WARN_QA and ERROR_QA in the ditro configuration
file (poky.conf) to allow for override in local.conf.

As local.conf is included before the distro configuration file, we cannot
easily set custom WARN_QA and ERROR_QA in local.conf if we don't use
weak assignment in poky.conf.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 44bc4c6..c4643d2 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -101,8 +101,8 @@ OELAYOUT_ABI = "8"
 INHERIT += "poky-sanity"
 
 # QA check settings - a little stricter than the OE-Core defaults
-WARN_QA = "textrel files-invalid incompatible-license xorg-driver-abi libdir"
-ERROR_QA = "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
+WARN_QA ?= "textrel files-invalid incompatible-license xorg-driver-abi libdir"
+ERROR_QA ?= "dev-so debug-deps dev-deps debug-files arch pkgconfig la perms \
             useless-rpaths rpaths staticdev ldflags pkgvarcheck already-stripped \
             compile-host-path dep-cmp installed-vs-shipped install-host-path \
             packages-list perm-config perm-line perm-link pkgv-undefined \
-- 
1.7.9.5


