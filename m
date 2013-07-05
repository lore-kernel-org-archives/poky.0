Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C62E014F4
	for <poky@yoctoproject.org>; Thu,  4 Jul 2013 19:35:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r652ZCjx013438
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 4 Jul 2013 19:35:13 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 4 Jul 2013 19:35:11 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 5 Jul 2013 10:35:42 +0800
Message-ID: <b080f1f3aa735c54e1368ee8fcc3159fe43a0116.1372991616.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1372991616.git.Qi.Chen@windriver.com>
References: <cover.1372991616.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH 1/1] busybox.bbappend: upgrade to 1.21.1
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
X-List-Received-Date: Fri, 05 Jul 2013 02:35:13 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 .../poky-tiny/defconfig                            |    0
 ...box_1.20.2.bbappend => busybox_1.21.1.bbappend} |    0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto/recipes-core/busybox/{busybox-1.20.2 => busybox-1.21.1}/poky-tiny/defconfig (100%)
 rename meta-yocto/recipes-core/busybox/{busybox_1.20.2.bbappend => busybox_1.21.1.bbappend} (100%)

diff --git a/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig b/meta-yocto/recipes-core/busybox/busybox-1.21.1/poky-tiny/defconfig
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
rename to meta-yocto/recipes-core/busybox/busybox-1.21.1/poky-tiny/defconfig
diff --git a/meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend
rename to meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
-- 
1.7.9.5


