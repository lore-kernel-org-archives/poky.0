Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A739E004CF
	for <poky@yoctoproject.org>; Thu, 30 May 2013 20:32:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r4V3WiNr023054
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 May 2013 20:32:44 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.130.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 30 May 2013 20:32:43 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 30 May 2013 23:32:38 -0400
Message-ID: <cover.1369971009.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] kernel-yocto/meta-yocto: BSP and feature updates
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
X-List-Received-Date: Fri, 31 May 2013 03:32:46 -0000
Content-Type: text/plain

Richard/Saul,

Here are two small changes for meta-yocto related to BSPs. 

 - Set the preferred kernel version for qemumips64
 - Just as we do in oe-core, restricted the NFSD kernel feature requirement
   to linux-yocto* recipes. This fixes linux-yocto-custom usecases.

Cheers,

Bruce

The following changes since commit 0c454dd43ac52cbc4fd4e938dae00ea92840bbd5:

  kern-tools: expand kernel features that point to a directory name (2013-05-30 23:24:01 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  poky.conf: add qemumips64 preferred version
  poky-lsb: make NFS kernel server support specific to linux-yocto

 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 meta-yocto/conf/distro/poky.conf     |    1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
1.7.10.4


