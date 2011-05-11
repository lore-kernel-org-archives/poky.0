Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7940F4C803BA
	for <poky@yoctoproject.org>; Wed, 11 May 2011 08:40:57 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4BDep8F028298
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 May 2011 06:40:51 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 11 May 2011 06:40:50 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>, <dvhart@linux.intel.com>, 
	<sgw@linux.intel.com>
Date: Wed, 11 May 2011 21:41:04 +0800
Message-ID: <cover.1305120861.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/2] Add meta-skeleton and a skeleton for init scripts
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
X-List-Received-Date: Wed, 11 May 2011 13:40:57 -0000
Content-Type: text/plain

* Add the layer meta-skeleton, it will be used to place the various
  canonical examples.

* Add a skeleton for init scripts.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: robert/init_scripts
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/init_scripts

Thanks,
    Robert Yang <liezhi.yang@windriver.com>
---


Robert Yang (2):
  Add the layer meta-skeleton
  Add a skeleton for init scripts

 meta-skeleton/conf/layer.conf                      |   10 +
 .../recipes-skeleton/service/service/COPYRIGHT     |   19 ++
 .../recipes-skeleton/service/service/skeleton      |  188 ++++++++++++++++++++
 .../recipes-skeleton/service/service_0.1.bb        |   20 ++
 4 files changed, 237 insertions(+), 0 deletions(-)
 create mode 100644 meta-skeleton/conf/layer.conf
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/COPYRIGHT
 create mode 100644 meta-skeleton/recipes-skeleton/service/service/skeleton
 create mode 100644 meta-skeleton/recipes-skeleton/service/service_0.1.bb


