Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B63A84C80049
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 19:16:25 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 17:16:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,209,1297065600"; d="scan'208";a="890275553"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2011 17:16:24 -0800
Date: Wed, 23 Feb 2011 09:21:21 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <saul.wold@intel.com>
Message-ID: <20110223012121.GA2728@kyu3-hedt>
References: <cover.1298390312.git.ke.yu@intel.com>
	<cdf118155b97a7f445c20edb75eba29cfc1c07fb.1298390312.git.ke.yu@intel.com>
	<4D641690.4060509@intel.com>
MIME-Version: 1.0
In-Reply-To: <4D641690.4060509@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] xf86-video-intel: add config option to support rootless X
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
X-List-Received-Date: Wed, 23 Feb 2011 01:16:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Feb 22, 12:03, Saul Wold wrote:
> On 02/22/2011 08:00 AM, Yu Ke wrote:
> >- add global config option ROOTLESS_X to control if enable
> >   rootless X for the machine. ROOTLESS_X requires graphics
> >   driver supporting KMS (kernel mode setting), so far, only
> >   atom_pc support this. so enable ROOTLESS_X for atom_pc machine
> >
> >- add config options for xf86-video-intel to support rootless X
> >
> >Signed-off-by: Yu Ke<ke.yu@intel.com>
> >---
> >  meta/conf/machine/atom-pc.conf                     |    2 ++
> >  .../xorg-driver/xf86-video-intel_2.14.0.bb         |    5 +++++
> >  2 files changed, 7 insertions(+), 0 deletions(-)
> >
> >diff --git a/meta/conf/machine/atom-pc.conf b/meta/conf/machine/atom-pc.conf
> >index 58c9b0d..b94deb2 100644
> >--- a/meta/conf/machine/atom-pc.conf
> >+++ b/meta/conf/machine/atom-pc.conf
> >@@ -42,3 +42,5 @@ GLIBC_ADDONS = "nptl"
> >  GLIBC_EXTRA_OECONF = "--with-tls"
> >
> >  EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
> >+
> >+ROOTLESS_X = "1"
> Can this also be set for qemux86?  If so, why not have it default?

Unfortunately not. rootless X requires graphics driver to support KMS (kernel mode setting). qemux86 use vmware vga driver, which does not meet this requirement, so can not use rootless x.

Regards
Ke

> 
> 
> >diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
> >index 017a2e0..099cf9d 100644
> >--- a/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
> >+++ b/meta/recipes-graphics/xorg-driver/xf86-video-intel_2.14.0.bb
> >@@ -9,8 +9,13 @@ Infrastructure (DRI)."
> >
> >  LIC_FILES_CHKSUM = "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
> >
> >+PR = "r1"
> >+
> >  EXTRA_OECONF += "--disable-xvmc"
> >
> >+# --enable-kms-only option is required by ROOTLESS_X
> >+EXTRA_OECONF += '${@base_conditional( "ROOTLESS_X", "1", " --enable-kms-only", "", d )}'
> >+
> >  DEPENDS += "virtual/libx11 libxvmc drm xf86driproto glproto \
> >  	    virtual/libgl xineramaproto xf86driproto libpciaccess"
> >
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

