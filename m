Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A22E01211
	for <poky@yoctoproject.org>; Fri,  2 Sep 2011 20:07:55 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p8337LDm012790;
	Fri, 2 Sep 2011 20:07:21 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  2 Sep 2011 23:06:53 -0400
Message-Id: <cover.1315019063.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update to v3.0.4
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
X-List-Received-Date: Sat, 03 Sep 2011 03:07:56 -0000

Richard/Saul,

This is the meta-yocto update that goes along with the oe-core bump
to v3.0.4. The same testing applies here as well, and this change is
stacked directly on top of that series.

The following changes since commit e77a7093c5abf6d1ca6c3032aa22c724f789a02e:

  linux-yocto: clean configuration for v3.0.4 (2011-09-02 16:51:22 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update SRCREV for v3.0.4

 .../linux/linux-yocto-rt_3.0.bbappend              |    4 ++--
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   11 ++++++-----
 2 files changed, 8 insertions(+), 7 deletions(-)

-- 
1.7.4.1


