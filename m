Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C973E01206
	for <poky@yoctoproject.org>; Thu, 26 Apr 2012 19:41:05 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3R2f3IK020534
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Apr 2012 19:41:05 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Thu, 26 Apr 2012 19:41:03 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>, <poky@yoctoproject.org>
Date: Fri, 27 Apr 2012 10:41:08 +0800
Message-ID: <cover.1335494224.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Subject: [PATCH V2 0/2] Yocto 1656: add script create-recipe base on autospectacle
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
X-List-Received-Date: Fri, 27 Apr 2012 02:41:06 -0000
Content-Type: text/plain

Hi Saul,

this version just rename autospectacle.pl to create-recipe because you asked.

Regards,

The following changes since commit 492a58cabdc053b2312712681dbcffa8270d4ea4:

  self-hosted-image: Update poky revision to point at the 1.2 release branch (2012-04-24 10:21:11 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/create-recipe
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/create-recipe

Kang Kai (2):
  autospectacle.pl: pull it from meego as a base
  create-recipe: base on autospectacle.pl to create recipe file

 scripts/create-recipe | 1926 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 1926 insertions(+), 0 deletions(-)
 create mode 100755 scripts/create-recipe

-- 
1.7.5.4


