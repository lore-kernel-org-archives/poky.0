Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F74FE013E8
	for <poky@yoctoproject.org>; Wed, 29 Feb 2012 22:06:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2166KrO016197
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 29 Feb 2012 22:06:20 -0800 (PST)
Received: from localhost.localdomain (128.224.162.225) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 29 Feb 2012 22:06:20 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>
Date: Thu, 1 Mar 2012 14:06:05 +0800
Message-ID: <cover.1330581369.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.225]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] V3: Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Thu, 01 Mar 2012 06:06:21 -0000
Content-Type: text/plain

Hi Saul,

This is version 3 of create-recipe. According to Joshua's review, I update the license
and add the original autospectacle's description and link.

Regards,

The following changes since commit d86e3082e695cde555df276a2436873fa5381130:

  licenses.conf: fix quotting of SRC_DISTRIBUTE_LICENSES (2012-02-28 17:51:52 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/distro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Kang Kai (1):
  create-recipe: create a recipe from source URI

 scripts/create-recipe |  785 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 785 insertions(+), 0 deletions(-)
 create mode 100755 scripts/create-recipe

-- 
1.7.5.4


