Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F30FE00873; Fri, 20 Feb 2015 10:44:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57D97E002F9
	for <poky@yoctoproject.org>; Fri, 20 Feb 2015 10:44:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t1KIiTmo008200
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 Feb 2015 10:44:29 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Fri, 20 Feb 2015 10:44:29 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 20 Feb 2015 13:44:26 -0500
Message-ID: <cover.1424457539.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] yocto-bsp: update BSPs to match 3.19 kernel addition
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
X-List-Received-Date: Fri, 20 Feb 2015 18:44:35 -0000
Content-Type: text/plain

These are the updates to meta-yocto, and meta-yocto-bsps to match the 
3.19 kernel introduction (and 3.10/3.17 removal) in oe-core.

This changes the default for the qemu BSPs to 3.19 (sato has been tested
for them all), and remove the now dangling bbappend.

Cheers,

Bruce

The following changes since commit a9038233862667971dc193ad0e160a7b28ef252a:

  linux-yocto: warn when a generated BSP description is used (2015-02-20 13:17:43 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  meta-yocto: update qemu default kernel version to 3.19
  meta-yocto-bsps: remove 3.10 bbappend

 .../recipes-kernel/linux/linux-yocto_3.10.bbappend         | 14 --------------
 meta-yocto/conf/distro/poky.conf                           | 14 +++++++-------
 2 files changed, 7 insertions(+), 21 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend

-- 
2.1.0


