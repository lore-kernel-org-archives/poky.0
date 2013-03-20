Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8856E0148C
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:01 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2K8A0Fl011698
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:01 -0700 (PDT)
Received: from pek-usp-9.wrs.com (128.224.162.26) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 20 Mar 2013 01:10:00 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Mar 2013 15:54:37 +0800
Message-ID: <cover.1363765882.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.7
MIME-Version: 1.0
Subject: [PATCH 0/2] meta-yocto: remove several duplicated lines
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
X-List-Received-Date: Wed, 20 Mar 2013 08:10:01 -0000
Content-Type: text/plain

The following changes since commit 808967b84cef66e0b59b9a720fa0808f6a546d3a:

  qemuimage-testlib: Fix IP address handling (2013-03-19 23:35:01 +0000)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib robert/duplicated_yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/duplicated

Robert Yang (2):
  maintainers.inc: remove several duplicated lines
  poky-floating-revisions.inc: remove the duplicated
    SRCREV_pn-exmap-console

 meta-yocto/conf/distro/include/maintainers.inc     |    7 -------
 .../distro/include/poky-floating-revisions.inc     |    1 -
 2 files changed, 0 insertions(+), 8 deletions(-)

-- 
1.7.7


