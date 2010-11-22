Return-Path: <paul.eggleton@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2712A4C81065
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 05:52:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 03:52:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,235,1288594800"; d="scan'208";a="629099831"
Received: from unknown (HELO helios) ([10.255.16.138])
	by fmsmga002.fm.intel.com with SMTP; 22 Nov 2010 03:52:34 -0800
Received: by helios (sSMTP sendmail emulation); Mon, 22 Nov 2010 11:52:32 +0000
Message-Id: <cover.1290423211.git.paul.eggleton@intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
Date: Mon, 22 Nov 2010 10:53:31 +0000
To: poky@pokylinux.org
Subject: [PATCH 0/3] Patches for successful Fedora 14 build
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
X-List-Received-Date: Mon, 22 Nov 2010 11:52:36 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"


These patches were required to get a successful Poky build on Fedora 14. (Note
that these patches were posted to the list last week and are unchanged aside from
some additional comments.)

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: paule/fixes
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/fixes

Thanks,
    Paul Eggleton <paul.eggleton@intel.com>
---


Paul Eggleton (3):
  openssl: disable execstack flag to prevent problems with SELinux
  sanity.bbclass: add wget to required utilities
  qemu: fix failure to find zlib header files during configure

 meta/classes/sanity.bbclass                        |    2 +-
 meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    2 +-
 .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   16 ++++++++++++++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 ++-
 5 files changed, 21 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


