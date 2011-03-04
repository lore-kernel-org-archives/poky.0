Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 056B24C800A3
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 01:51:49 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 23:51:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="893710988"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 23:51:48 -0800
Date: Fri, 4 Mar 2011 15:57:12 +0800
From: Yu Ke <ke.yu@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20110304075712.GF23315@kyu3-hedt>
References: <cover.1299210292.git.ke.yu@intel.com>
	<98727668717469ae0d90f6d8deb1f8bf224c36f6.1299210292.git.ke.yu@intel.com>
	<4D70749F.4010207@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4D70749F.4010207@gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] x11vnc: add big endian CFLAG for mips, to fix bug 782
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
X-List-Received-Date: Fri, 04 Mar 2011 07:51:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mar 03, 21:11, Khem Raj wrote:
> On 3/3/2011 7:50 PM, Yu Ke wrote:
> >linux mips is big endian, so need "LIBVNCSERVER_WORDS_BIGENDIAN"
> >flag for mips compilling.
> >
> >this patch fix bug [YOCTO #782]
> >
> >Signed-off-by: Yu Ke<ke.yu@intel.com>
> >---
> >  meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb |    1 +
> >  1 files changed, 1 insertions(+), 0 deletions(-)
> >
> >diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> >index f5a6662..17e9593 100644
> >--- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> >+++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
> >@@ -17,3 +17,4 @@ SRC_URI[sha256sum] = "60a7cceee2c9a5f1c854340b2bae13f975ac55906237042f81f795b28a
> >
> >  inherit autotools
> >
> >+CFLAGS_mips += "-DLIBVNCSERVER_WORDS_BIGENDIAN"
> 
> I see that this package uses autconf macro AC_C_BIGENDIAN
> to assert endianness. I would interested to know why this test does
> not work.

Good observation. I take more look, and find although AC_C_BIGENDIAN is used in autocof, the src code unfortunately did not use the generated WORDS_BIGENDIAN, instead, it use LIBVNCSERVER_WORDS_BIGENDIAN, so that is the reason why AC_C_BIGENDIAN has no effect.

in the case, the more elegant fix seems replacing LIBVNCSERVER_WORDS_BIGENDIAN with WORDS_BIGENDIAN. i will have a try.

Regards
Ke

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

