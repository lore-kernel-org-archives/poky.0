Return-Path: <Kai.Kang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB263E004D2
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 00:57:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2G7vDp0029991
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Mar 2012 00:57:13 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.241) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Fri, 16 Mar 2012 00:57:13 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <poky@yoctoproject.org>
Date: Fri, 16 Mar 2012 15:57:07 +0800
Message-ID: <cover.1331884360.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.241]
Subject: [PATCH 0/1] V3: Yocoto 1561: clean up the workdir
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
X-List-Received-Date: Fri, 16 Mar 2012 07:57:17 -0000
Content-Type: text/plain

Hi Richard,

This version update:
1 limits the script run under BUILDDIR and after source oe-init-build-env file
2 get WORKDIR by TMPDIR+'/work'
3 replace system() call with module commands

Regards,

The following changes since commit 8bae18bb358755131f13865abb279ac687a03848:

  slang: Fix rpath QA warnings (2012-03-15 00:11:40 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kangkai/cleanup
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/cleanup

Kang Kai (1):
  cleanup-workdir: add a script to clean up WORKDIR

 scripts/cleanup-workdir |  150 +++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 150 insertions(+), 0 deletions(-)
 create mode 100755 scripts/cleanup-workdir

-- 
1.7.5.4


