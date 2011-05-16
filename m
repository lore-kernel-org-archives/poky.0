Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0430E4C800E0
	for <poky@yoctoproject.org>; Mon, 16 May 2011 10:18:41 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4GFIeFE021436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 08:18:40 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 08:18:39 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>, <dvhart@linux.intel.com>, 
	<sgw@linux.intel.com>
Date: Mon, 16 May 2011 23:18:58 +0800
Message-ID: <cover.1305558153.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V2 [PATCH 0/3] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Mon, 16 May 2011 15:18:42 -0000
Content-Type: text/plain

Changes of V2:
  * Add the definition of actions to the comment area in skeleton
  * Implement try-restart and force-reload according to their definitions
  * Replace start-stop-daemon with "exec $DAEMON ..." to make it more easier
    to control the output message, so that we would not depend on the output
    of start-stop-daemon
  * Output simple and uniform messages
  * Move the function pidofproc () to ${sysconfdir}/init.d/functions and
    declare that it can't get the pid of a script unless pidof supports "-x".
  * Add /usr/sbin/skeleton-test to make /etc/init.d/skeleton can be run by
    default.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: robert/init_scripts
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts

Thanks,
    Robert Yang <liezhi.yang@windriver.com>
---


Robert Yang (3):
  Add the layer meta-skeleton
  Add pidofproc to ${sysconfdir}/init.d/functions
  Add a skeleton for init scripts

 meta-skeleton/conf/layer.conf                      |   10 +
 .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
 .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
 .../service/service/skeleton_test.c                |   11 +
 .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
 .../initscripts/initscripts-1.0/functions          |   32 +++-
 6 files changed, 291 insertions(+), 2 deletions(-)
 create mode 100644 meta-skeleton/conf/layer.conf
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
 create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb


