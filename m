Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F49BE0162B
	for <poky@yoctoproject.org>; Thu, 14 Nov 2013 08:58:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rAEGwdjq013843
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 14 Nov 2013 08:58:39 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 14 Nov 2013 08:58:39 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 14 Nov 2013 11:58:35 -0500
Message-ID: <cover.1384448213.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsps: update reference board SRCREVs
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
X-List-Received-Date: Thu, 14 Nov 2013 16:58:44 -0000
Content-Type: text/plain

Richard/Saul,

Here's the promised bump of the reference BSPs to 3.10.17. With
this change, we can now safely update the lttng kernel modules
to the latest (But of course other people with older kernels ..
cannot).

Cheers,

Bruce

The following changes since commit 468e4174c0fd56edc6e37ef744d93fe712a9a983:

  kernel.bbclass: test for hardlinks before installing (2013-11-14 11:46:55 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto-bsp: update SRCREVs for 3.10.17 and beagleboard fixes

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
1.8.1.2


