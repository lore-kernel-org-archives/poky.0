Return-Path: <aalonso@secretlab.ca>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A1E54C8008F
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:10:47 -0500 (CDT)
Received: by gwj22 with SMTP id 22so1257951gwj.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:10:47 -0700 (PDT)
Received: by 10.236.187.70 with SMTP id x46mr3720573yhm.179.1304622646909;
	Thu, 05 May 2011 12:10:46 -0700 (PDT)
Received: from localhost.localdomain
	(adsl-99-66-253-228.dsl.emhril.sbcglobal.net [99.66.253.228])
	by mx.google.com with ESMTPS id x76sm1126712yhn.94.2011.05.05.12.10.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:10:46 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:10:44 -0500
Message-Id: <cover.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
Subject: [PATCH 0/7] Microblaze target arch support
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
X-List-Received-Date: Thu, 05 May 2011 19:10:48 -0000

* Microblaze big-endian soft-cpu support
* Only external-toolchain support using meta-xilinx layer
* meta-xilinx layer provides an initramfs-image descriptor
  so only a limited subset of packages can be built due to basic
  glibc support
* To use set in user local.conf
  POKYMODE = "xilinx-external"
  XILINX_TOOLCHAIN "Absolute path of prebuilt toolchain"
* Prebuilt toolchain can be found at:
  git://git.xilinx.com/xldk/microblaze_v2.0.git

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: aalonso/external-toolchain
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=aalonso/external-toolchain

Thanks,
    Adrian Alonso <aalonso@secretlab.ca>
---


Adrian Alonso (7):
  insane: add micrblaze target info
  kernel-arch: add microblaze to valid archs
  siteinfo: add microblaze target info
  linux-libc-headers: add microblaze ARCH definition
  image-mklibs: add microblaze arch support
  package_rpm: use target vendor information
  readline: update version

 meta/classes/image-mklibs.bbclass                  |    2 +-
 meta/classes/insane.bbclass                        |    4 +++-
 meta/classes/kernel-arch.bbclass                   |    3 ++-
 meta/classes/package_rpm.bbclass                   |    3 ++-
 meta/classes/siteinfo.bbclass                      |    1 +
 meta/recipes-core/readline/readline_6.2.bb         |    6 ++++++
 .../linux-libc-headers_2.6.37.2.bb                 |    3 ++-
 7 files changed, 17 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-core/readline/readline_6.2.bb

-- 
1.7.4.4


