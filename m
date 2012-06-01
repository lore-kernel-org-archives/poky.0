Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78293E0030B
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 01:51:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q518pBZr015785
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 1 Jun 2012 01:51:11 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.69) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 1 Jun 2012 01:51:10 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 1 Jun 2012 16:51:42 +0800
Message-ID: <cover.1338538332.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
MIME-Version: 1.0
Subject: [PATCH 0/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Fri, 01 Jun 2012 08:51:11 -0000
Content-Type: text/plain

Note: This is only for yocto, not for oe-core, since oe-core doesn't
have scripts/lib/bsp/kernel.py.

// Robert

The following changes since commit de4cdfd6bc1280ac7ac0559b87734d26294ef773:

  documentation/kernel-manual/kernel-how-to.xml: Updated to kernel 3.4 (2012-05-31 21:16:55 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib robert/kernel_py
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/kernel_py

Robert Yang (1):
  kernel.py: replace os.popen with subprocess.Popen

 scripts/lib/bsp/kernel.py |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


