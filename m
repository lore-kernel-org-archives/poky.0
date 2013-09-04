Return-Path: <liming.wang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0AFE01206
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 00:22:07 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r847M4Ue007578
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Sep 2013 00:22:04 -0700 (PDT)
Received: from pek-lwang0-d1.corp.ad.wrs.com (128.224.162.222) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Wed, 4 Sep 2013 00:22:03 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <saul.wold@intel.com>, <richard.purdie@linuxfoundation.org>
Date: Wed, 4 Sep 2013 15:08:28 +0800
Message-ID: <1378278510-19727-1-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] beagleboard/mpc8315e-rdb: upgrade u-boot to the latest version
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
X-List-Received-Date: Wed, 04 Sep 2013 07:22:08 -0000
Content-Type: text/plain

Richard/Saul,

The following patches are to upgrade u-boot to the latest version, 2013.07.
We have tested the u-boot on both boards and it works well.
These two patches are to fix bug of bugzilla 5077.

Liming Wang

