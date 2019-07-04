Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F3A6E00BE9; Thu,  4 Jul 2019 07:40:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994C1E00BE9
	for <poky@yoctoproject.org>; Thu,  4 Jul 2019 07:40:23 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x64EdVnJ004539
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 4 Jul 2019 07:39:41 -0700
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Thu, 4 Jul 2019 07:39:20 -0700
From: <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 4 Jul 2019 21:45:18 +0800
Message-ID: <20190704134520.16320-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH v7 0/2] Make systemd as default init manager
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
X-List-Received-Date: Thu, 04 Jul 2019 14:40:36 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

v7:
* move the main logical to oe-core that not only poky could use it
* rename POKY_INIT_MANAGER with INIT_MANAGER
* remove init-manager-systemd-compat.inc which is not a real separated init manager

Tested with
1
for arch in qemux86 qemux86-64 qemuarm qemuarm64 qemuppc qemumips qemumips64; do
    MACHINE=$arch bitbake core-image-minimal
done


2 run

  bitbake core-image-full-cmdline -c testimage

without error with the auto.conf from Yocto autobuilder:

$ cat conf/auto.conf
MACHINE = "qemux86"
DISTRO = "poky"
SDKMACHINE = "x86_64"
PACKAGE_CLASSES = "package_rpm package_deb package_ipk"
#DL_DIR =
'/srv/autobuilder/autobuilder.yoctoproject.org/current_sources'
PRSERV_HOST = 'localhost:0'
#SSTATE_DIR ?=
'/srv/autobuilder/autobuilder.yoctoproject.org/pub/sstate'
TCLIBC = 'musl'
QEMU_USE_KVM = 'True'
INHERIT += 'report-error'
PREMIRRORS = ''
BB_GENERATE_MIRROR_TARBALLS = '1'
#BB_NUMBER_THREADS = '16'
#PARALLEL_MAKE = '-j 16'
BB_TASK_NICE_LEVEL = '5'
BB_TASK_NICE_LEVEL_task-testimage = '0'
BB_TASK_IONICE_LEVEL = '2.7'
BB_TASK_IONICE_LEVEL_task-testimage = '2.1'
INHERIT += 'testimage'
TEST_QEMUBOOT_TIMEOUT = '1500'
SANITY_TESTED_DISTROS = ''
SDK_EXT_TYPE = 'minimal'
SDK_INCLUDE_TOOLCHAIN = '1'
BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G
STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K
ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M
ABORT,/tmp,10M,1K'


Kai Kang (2):
  defaultsetup.conf: enable select init manager
  poky.conf: make systemd as default init manager

 meta-poky/conf/distro/poky-tiny.conf                   | 8 ++------
 meta-poky/conf/distro/poky.conf                        | 5 +++++
 meta/conf/distro/defaultsetup.conf                     | 3 +++
 meta/conf/distro/include/init-manager-mdev-busybox.inc | 7 +++++++
 meta/conf/distro/include/init-manager-systemd.inc      | 6 ++++++
 meta/conf/distro/include/init-manager-sysvinit.inc     | 6 ++++++
 6 files changed, 29 insertions(+), 6 deletions(-)
 create mode 100644 meta/conf/distro/include/init-manager-mdev-busybox.inc
 create mode 100644 meta/conf/distro/include/init-manager-systemd.inc
 create mode 100644 meta/conf/distro/include/init-manager-sysvinit.inc

--
2.18.0


