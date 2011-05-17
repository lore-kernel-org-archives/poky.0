Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CCA4F4C804CC
	for <poky@yoctoproject.org>; Mon, 16 May 2011 21:39:31 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H2dVin022653
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 19:39:31 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 19:39:30 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>, <dvhart@linux.intel.com>, 
	<sgw@linux.intel.com>
Date: Tue, 17 May 2011 10:39:50 +0800
Message-ID: <cover.1305599686.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V3 [PATCH 0/4] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Tue, 17 May 2011 02:39:32 -0000
Content-Type: text/plain

Changes of V3:
  * Correct the typos
  * Cleanup the whitespace in ${sysconfdir}/init.d/functions
  * Don't indent in the cases of case, e.g.:
    case $? in
    0)
        do_yes
        ;;
    1)
        do_no
        ;;
    esac
  * Try to remove the "<cmd> || status=$?", I just remove one of them,
    fo other cases I had to save "$?" and return it at the end of the
    function.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: robert/init_scripts
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts

Thanks,
    Robert Yang <liezhi.yang@windriver.com>
---


Robert Yang (4):
  Add the layer meta-skeleton
  Cleanup the whitespace in functions
  Add pidofproc to ${sysconfdir}/init.d/functions
  Add a skeleton for init scripts

 meta-skeleton/conf/layer.conf                      |   10 +
 .../recipes-skeleton/service/service/COPYRIGHT     |   15 ++
 .../recipes-skeleton/service/service/skeleton      |  193 ++++++++++++++++++++
 .../service/service/skeleton_test.c                |   11 +
 .../recipes-skeleton/service/service_0.1.bb        |   32 ++++
 .../initscripts/initscripts-1.0/functions          |   39 ++++-
 6 files changed, 295 insertions(+), 5 deletions(-)
 create mode 100644 meta-skeleton/conf/layer.conf
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton_test.c
 create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb


