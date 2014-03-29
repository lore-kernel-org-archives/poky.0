Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65E5FE00BAA
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 21:18:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s2T4IeDf018226
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 21:18:40 -0700 (PDT)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Fri, 28 Mar 2014 21:18:39 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 29 Mar 2014 00:18:37 -0400
Message-ID: <cover.1396066584.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH 0/1] distro_alias.inc: remove packagegroup-toolset-native
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
X-List-Received-Date: Sat, 29 Mar 2014 04:18:43 -0000
Content-Type: text/plain

The following changes since commit cf61e44a7afcb305e634f8771455dec0c7303e2d:

  packagegroup-toolset-native: remove it (2014-03-29 00:13:55 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/ptn
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/ptn

Robert Yang (1):
  distro_alias.inc: remove packagegroup-toolset-native

 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 1 file changed, 1 deletion(-)

-- 
1.7.10.4


