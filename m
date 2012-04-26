Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74F07E0030B
	for <poky@yoctoproject.org>; Thu, 26 Apr 2012 01:10:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3Q8AjJv021080
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Apr 2012 01:10:45 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Thu, 26 Apr 2012 01:10:45 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <sgw@linux.intel.com>, <poky@yoctoproject.org>
Date: Thu, 26 Apr 2012 16:10:45 +0800
Message-ID: <cover.1335427135.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
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
X-List-Received-Date: Thu, 26 Apr 2012 08:10:46 -0000
Content-Type: text/plain

Hi Saul,

I sent these patches to poky mail list on March 13, and didn't see the
comments. If I miss your comment, would you like to comment them again?

Thanks a lot.

I rebase Yocto 1656: Recipe creation/import script on autospectacle.pl and
add feature to create recipe file.

The following changes since commit 492a58cabdc053b2312712681dbcffa8270d4ea4:

  self-hosted-image: Update poky revision to point at the 1.2 release branch (2012-04-24 10:21:11 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/autospectacle
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/autospectacle

Kang Kai (2):
  autospectacle.pl: pull it from meego as a base
  autospectacle.pl: create recipe file

 scripts/autospectacle.pl | 1926 ++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 1926 insertions(+), 0 deletions(-)
 create mode 100755 scripts/autospectacle.pl

-- 
1.7.5.4


