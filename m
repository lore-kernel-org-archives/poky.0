Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D8FE003E1
	for <poky@yoctoproject.org>; Fri, 17 Feb 2012 01:25:47 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1H9PkKh021596
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Feb 2012 01:25:46 -0800 (PST)
Received: from localhost.localdomain (128.224.162.202) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Fri, 17 Feb 2012 01:25:46 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>, <poky@yoctoproject.org>
Date: Fri, 17 Feb 2012 17:25:37 +0800
Message-ID: <cover.1329470296.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.202]
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] Yocto 1656: Recipe creation/import script
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
X-List-Received-Date: Fri, 17 Feb 2012 09:25:47 -0000
Content-Type: text/plain

Hi Saul,

I send this patch version 2 one week ago, and no new comment received.
So would you like to give some comments or commit it?

Thanks a lot.

The following changes since commit 41a83ccfe50ec69425a4828fb5836d38d3f99e67:

  guile: fix cross configure failure (2012-02-10 17:01:42 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/distro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Kang Kai (1):
  create-recipe: create a recipe from source URI

 scripts/create-recipe |  769 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 769 insertions(+), 0 deletions(-)
 create mode 100755 scripts/create-recipe

-- 
1.7.5.4


