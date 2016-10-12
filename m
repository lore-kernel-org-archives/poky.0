Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A65E00AF2; Wed, 12 Oct 2016 01:47:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8DD2E00A07
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 01:47:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u9C8lNoJ008636
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 01:47:23 -0700 (PDT)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Wed, 12 Oct 2016 01:47:23 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 12 Oct 2016 01:47:22 -0700
Message-ID: <83e6d553413e6278b9ece0ca8f40eace9e52d0a2.1476262014.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <cover.1476262014.git.liezhi.yang@windriver.com>
References: <cover.1476262014.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] poky-tiny.conf: set QB_DEFAULT_FSTYPE to IMAGE_FSTYPES
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
X-List-Received-Date: Wed, 12 Oct 2016 08:47:27 -0000
Content-Type: text/plain

Its IMAGE_FSTYPES is cpio.gz, not the default ext4 which is set in
qemuboot.bbclass. Now we can boot it by:
$ runqemu tmp/deploy/images/qemux86/ nographic

[YOCTO #7477]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 4d30bde..08bd497 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -98,6 +98,8 @@ DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
 # character support.
 IMAGE_FSTYPES = "cpio.gz"
 
+QB_DEFAULT_FSTYPE = "${IMAGE_FSTYPES}"
+
 # Drop v86d from qemu dependency list (we support serial)
 # Drop grub from meta-intel BSPs
 # FIXME: A different mechanism is needed here. We could define -tiny
-- 
2.9.0


