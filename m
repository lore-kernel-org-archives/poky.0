Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 506044C8120D
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 05:24:52 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Dec 2010 03:24:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634316534"
Received: from unknown (HELO helios.localnet) ([10.255.16.53])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 03:24:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Wolfgang Denk <wd@denx.de>
Date: Wed, 8 Dec 2010 11:24:45 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <1291756443-28767-1-git-send-email-wd@denx.de>
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
MIME-Version: 1.0
Message-Id: <201012081124.45901.paul.eggleton@linux.intel.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Wed, 08 Dec 2010 11:24:52 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi Wolfgang / Vasily,

FYI I'm building on a Fedora 14 x86_64 system here, as is Joshua Lock.

On Tuesday 07 December 2010 21:13:58 Wolfgang Denk wrote:
> From: Vasily Khoruzhick <anarsoul@gmail.com>
> 
> The following is a series of patches trying to get Poky (both laverne
> 4.0 and top of tree) to build under a Fedora 14 x86_64 system.

What are you building exactly? (distro/image/etc.)
 
> [1/5] eglibc: fix build issue with make-3.82
>  meta/recipes-core/eglibc/eglibc_2.12.bb            |    3 ++-
>  .../eglibc/files/eglibc-make-382.patch             |   15 +++++++++++++++
>  2 files changed, 17 insertions(+), 1 deletions(-)

A similar fix has already been applied to master.
 
> [2/5] gstreamer: fix build issue with make-3.82
>  .../gstreamer-0.10.29/gstreamer-make-382.patch     |  178 ++++++++++++++++++++
>  .../gstreamer/gstreamer_0.10.30.bb                 |    5 +-
>  2 files changed, 181 insertions(+), 2 deletions(-)

This patch is needed; however it doesn't seem to work because (a) the inner patch file is in the wrong directory (gstreamer-0.10.29 instead of gstreamer-0.10.30), and (b) when this is moved into the correct location on my system it fails do_patch. I haven't yet looked into why.

> [3/5] Add support for 40x configuration (kilauea from OE)
>  meta/conf/machine/include/tune-ppc405.inc          |    6 ++++++
>  meta/conf/machine/kilauea.conf                     |   22 ++++++++++++++++++++++
>  2 files changed, 28 insertions(+), 0 deletions(-)

I'm guessing that this one is unrelated to getting things working on F14?
 
> [4/5] elfutils-0.148: fix build problem with "ar"
>  .../elfutils/elfutils-0.148/ar-options.patch       |   11 +++++++++++
>  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 ++-
>  2 files changed, 13 insertions(+), 1 deletions(-)
> 
> [5/5] elfutils-0.148: fix problems with `ld' not recognizing options
>  .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
>  meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
>  2 files changed, 58 insertions(+), 1 deletions(-)

Not sure about these two; for me with master this builds successfully. Could you retry with master and see if it works for you?

Cheers,
Paul

