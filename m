Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40ED0E0043B
	for <poky@yoctoproject.org>; Tue, 10 Sep 2013 08:54:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r8AFsptu005348
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2013 08:54:51 -0700 (PDT)
Received: from yow-bashfiel-d3.corp.ad.wrs.com (128.224.22.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Sep 2013 08:54:48 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 10 Sep 2013 11:54:43 -0400
Message-ID: <cover.1378828354.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsps: update to v3.10.11
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
X-List-Received-Date: Tue, 10 Sep 2013 15:54:53 -0000
Content-Type: text/plain

Richard/Saul,

Following my oe-core update to 3.10.11, this updates the h/w reference BSPs
to the same -stable release.

As per the first change set, ssh was also tested on this.

Cheers,

Bruce

The following changes since commit 28e6f9781ee0503231c161dbf3f6cab52981507c:

  linux-yocto/3.10: bump kver to 3.10.11 (2013-09-10 11:44:49 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto-bsp: bump reference BSPs to v3.10.11

 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

-- 
1.7.10.4


