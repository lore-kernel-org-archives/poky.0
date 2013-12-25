Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B69E007C6
	for <poky@yoctoproject.org>; Tue, 24 Dec 2013 18:25:42 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rBP2PfbC008471
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 24 Dec 2013 18:25:41 -0800 (PST)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 24 Dec 2013 18:25:41 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 24 Dec 2013 21:25:38 -0500
Message-ID: <cf4495188dbcc789a9818598e8b7dace54618037.1387938255.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1387938255.git.liezhi.yang@windriver.com>
References: <cover.1387938255.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] poky: Add Fedora-20 to supported distros list
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
X-List-Received-Date: Wed, 25 Dec 2013 02:25:42 -0000
Content-Type: text/plain

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index b13c57f..3340064 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,6 +80,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-13.10 \n \
             Fedora-18 \n \
             Fedora-19 \n \
+            Fedora-20 \n \
             CentOS-6.4 \n \
             Debian-6.0.7 \n \
             Debian-7.0 \n \
-- 
1.7.10.4


