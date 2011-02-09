Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6ED394C800A0
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 10:50:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Feb 2011 08:50:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,446,1291622400"; d="scan'208";a="386402522"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by azsmga001.ch.intel.com with ESMTP; 09 Feb 2011 08:50:26 -0800
Message-ID: <4D52C5D2.4070006@linux.intel.com>
Date: Wed, 09 Feb 2011 08:50:26 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] Consolidated Pull Request
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
X-List-Received-Date: Wed, 09 Feb 2011 16:50:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Here are some a set of batched changes for docs, image-mklibs.bbclass 
(to enable using mklibs) and the mesa update for removing the Talloc 
dependency.

Please review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <sgw@linux.intel.com>
---


Nitin A Kamble (1):
   image-mklibs.bbclass: add the library optimization functionality

Saul Wold (1):
   makedepend: remove # from the beginning of DESCRIPTION lines

Scott Garman (7):
   xorg-cf-files: new recipe v1.0.4
   libxext: add native support to recipe
   libxpm: add native support to recipe
   imake: add native support to recipe and update DEPENDS
   transfig: new recipe v3.2.5d
   prelink: add transfig-native to DEPENDS
   xserver-kdrive.inc: add openssl to DEPENDS

Yu Ke (4):
   mesa-dri-7.10: replace GPLv3 talloc with MIT-x licensed ralloc
   mesa-7.10: set mesa 7.10 as default instead of 7.8.2
   mesa-xlib: upgrade to 7.10
   talloc: remove talloc recipe

  meta/classes/image-mklibs.bbclass                  |   69 +
  .../distro/include/preferred-xorg-versions.inc     |    2 +-
  meta/conf/local.conf.sample                        |   12 +-
  meta/recipes-devtools/prelink/prelink_git.bb       |    4 +-
  .../transfig/transfig-native_3.2.5d.bb             |   40 +
  .../mesa/files/talloc-removal.patch                |15571 
++++++++++++++++++++
  meta/recipes-graphics/mesa/mesa-dri_7.10.bb        |    8 +-
  meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |    5 +-
  .../mesa/{mesa-xlib_7.9.bb => mesa-xlib_7.10.bb}   |   11 +-
  meta/recipes-graphics/xorg-lib/libxext_1.2.0.bb    |    2 +-
  meta/recipes-graphics/xorg-lib/libxpm_3.5.9.bb     |    2 +
  meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |   10 +-
  .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   11 +-
  .../xorg-util/xorg-cf-files_1.0.4.bb               |   14 +
  .../xorg-xserver/xserver-kdrive.inc                |    2 +-
  .../xorg-xserver/xserver-kdrive_1.7.99.2.bb        |    2 +-
  meta/recipes-support/talloc/talloc_2.0.1.bb        |   24 -
  17 files changed, 15739 insertions(+), 50 deletions(-)
  create mode 100644 meta/classes/image-mklibs.bbclass
  create mode 100644 
meta/recipes-devtools/transfig/transfig-native_3.2.5d.bb
  create mode 100644 meta/recipes-graphics/mesa/files/talloc-removal.patch
  rename meta/recipes-graphics/mesa/{mesa-xlib_7.9.bb => 
mesa-xlib_7.10.bb} (60%)
  create mode 100644 meta/recipes-graphics/xorg-util/xorg-cf-files_1.0.4.bb
  delete mode 100644 meta/recipes-support/talloc/talloc_2.0.1.bb

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


