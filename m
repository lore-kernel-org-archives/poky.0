Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EE8E00785
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:38 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id rBAFBbqr011334
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 07:11:38 -0800 (PST)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Dec 2013 07:11:37 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Dec 2013 10:11:31 -0500
Message-ID: <cover.1386686531.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/3] [dora] fixes for dora
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
X-List-Received-Date: Tue, 10 Dec 2013 15:11:41 -0000
Content-Type: text/plain

The following changes since commit 53d2563ff13fcec74d4250bef5419e36169e55cc:

  bitbake: perforce: Fix path subdirectory issues (2013-12-03 17:51:31 +0000)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib robert/dora-next-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/dora-next-yocto

Bastien JAUNY (1):
  yocto-bsp: Add missing format specifier in bblayers error message

Bruce Ashfield (1):
  meta-yocto-bsp: update SRCREVs for 3.10.17 and beagleboard fixes

Saul Wold (1):
  package-regex: Tweak python-docutils so it works correctly

 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 meta-yocto/conf/distro/include/package_regex.inc             |    2 +-
 scripts/lib/bsp/kernel.py                                    |    2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

-- 
1.7.10.4


