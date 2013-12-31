Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E38CAE0080C
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:55 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBV34tKL003621
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:55 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 30 Dec 2013 19:04:54 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 31 Dec 2013 19:07:07 +0800
Message-ID: <cover.1388487789.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [PATCH V2 0/2] update upstream_tracking.inc and maintainers.inc
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
X-List-Received-Date: Tue, 31 Dec 2013 03:04:57 -0000
Content-Type: text/plain

V2:
Update RECIPE_NO_UPDATE_REASON_pn-glib-2.0 rather than remove it.

// Robert

The following changes since commit 005af45191ded6185c618c708181b31281e43092:

  bitbake: fetch2: avoid printing "no checksum" error message twice (2013-12-22 14:29:13 +0000)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib robert/tracking
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/tracking

Robert Yang (2):
  upstream_tracking.inc: update entries
  maintainers.inc: reassign tzcode-native

 meta-yocto/conf/distro/include/maintainers.inc       |  2 +-
 meta-yocto/conf/distro/include/upstream_tracking.inc | 14 +-------------
 2 files changed, 2 insertions(+), 14 deletions(-)

-- 
1.8.3.1


