Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF22E01363
	for <poky@yoctoproject.org>; Tue, 13 Mar 2012 02:46:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2D9k3bi005384
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 13 Mar 2012 02:46:03 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.241) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Tue, 13 Mar 2012 02:46:03 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>, <poky@yoctoproject.org>
Date: Tue, 13 Mar 2012 17:45:42 +0800
Message-ID: <cover.1331631626.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.241]
Subject: [PATCH 0/2] Yocto 1656: rebase on autospectacle.pl
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
X-List-Received-Date: Tue, 13 Mar 2012 09:46:04 -0000
Content-Type: text/plain

Hi Saul,

I rebase Yocto 1656: Recipe creation/import script on autospectacle.pl and
add feature to create recipe file.

Regards,

The following changes since commit 19b38a6486086b62efbff2bf8192adbaa34ecc0a:

  package.bbclass: Drop python depends from rpmdeps (2012-03-11 18:27:45 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/distro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro

Kang Kai (2):
  autospectacle.pl: pull it from meego as a base
  autospectacle.pl: create recipe file

 scripts/autospectacle.pl | 1926 ++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 1926 insertions(+), 0 deletions(-)
 create mode 100755 scripts/autospectacle.pl

-- 
1.7.5.4


