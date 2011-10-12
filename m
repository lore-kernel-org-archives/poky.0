Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841C4E005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 06:11:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Oct 2011 06:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,334,1315206000"; d="scan'208";a="25548357"
Received: from unknown (HELO [10.255.14.245]) ([10.255.14.245])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Oct 2011 06:11:11 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20111012121249.GO27073@jama.jama.net>
References: <cover.1318403772.git.dexuan.cui@intel.com>
	<ad155bb2f7c2032a923332275d698d0787c764d2.1318403772.git.dexuan.cui@intel.com>
	<20111012072254.GL27073@jama.jama.net>
	<20111012072624.GM27073@jama.jama.net>
	<1865303E0DED764181A9D882DEF65FB6D23164EA25@shsmsx502.ccr.corp.intel.com>
	<20111012121249.GO27073@jama.jama.net>
Date: Wed, 12 Oct 2011 08:11:01 -0500
Message-ID: <1318425061.21195.55.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] xserver-xf86-dri-lite: rename it to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 13:11:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-10-12 at 05:12 -0700, Martin Jansa wrote:
> On Wed, Oct 12, 2011 at 03:34:56PM +0800, Cui, Dexuan wrote:
> > Martin Jansa wrote on 2011-10-12:
> > > On Wed, Oct 12, 2011 at 09:22:54AM +0200, Martin Jansa wrote:
> > >> On Wed, Oct 12, 2011 at 03:17:53PM +0800, Dexuan Cui wrote:
> > >>> Recently poky's commit c09f0eb561a53b97a769dd0744076af7d904eafb
> > >>> (xserver-xf86(-dri)-lite: rename to xserver-xorg and
> > >>> xserver-xorg-lite) breaks BSP building.
> > >>> This patch makes changes accordingly.
> > >>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => 
> > >>> xserver-xorg}/nodolt.patch (100%)  rename 
> > >>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.
> > >>> bb
> > >>> => xserver-xorg_1.11.1.bb} (87%)
> > >> 
> > >> just curious, why there is whole xserver-xorg_1.11.1.bb recipe and 
> > >> patches not just small .bbappend?
> > Yes, it seems strange to me, too.
> > I suppose Tom may know the history? 
> 
> Maybe it's because of extra
> --enable-dga which is by default disabled in xserver-xorg-common, but
> maybe we can enable it by default and keep it disabled only for
> xserver-xorg-lite as in attached patch (which would need PR bump too).
> 

The reason it's there is that 1.9.3 is required for EMGD, used by the
meta-intel BSPS.  EMGD is very particular about versions and won't work
with e.g. 1.11.1.

Tom 

> Regards,
> 
> From b5bbb8e8860708c9e07370595176c52a57ddc18e Mon Sep 17 00:00:00 2001
> From: Martin Jansa <Martin.Jansa@gmail.com>
> Date: Wed, 12 Oct 2011 14:10:16 +0200
> Subject: [PATCH] xserver-xorg: disable DGA only in -lite version, and force
>  it enabled in xserver-xorg
> 
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../xorg-xserver/xserver-xorg-common.inc           |    1 -
>  .../xorg-xserver/xserver-xorg-lite.inc             |    1 +
>  .../recipes-graphics/xorg-xserver/xserver-xorg.inc |    1 +
>  3 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc b/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
> index a8c7b0a..4d82d79 100644
> --- a/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
> +++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
> @@ -98,7 +98,6 @@ EXTRA_OECONF += "--with-fop=no \
>                   --disable-acfb \
>                   --disable-ccfb \
>                   --disable-mcfb \
> -                 --disable-dga \
>                   --disable-xinerama \
>                   --disable-xf86misc \
>                   --disable-xorgcfg \
> diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc b/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
> index be84e9e..57615f5 100644
> --- a/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
> +++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
> @@ -3,4 +3,5 @@ require xserver-xorg-common.inc
>  EXTRA_OECONF += "\
>                   --disable-dri \
>                   --disable-glx \
> +                 --disable-dga \
>  "
> diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc b/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
> index 01cdd68..0f34c1a 100644
> --- a/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
> +++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
> @@ -8,6 +8,7 @@ require ../mesa/glx-use-tls.inc
>  EXTRA_OECONF += "\
>                   --enable-dri \
>                   --enable-dri2 \
> +                 --enable-dga \
>                   --with-pic \
>                   --with-int10=x86emu \
>  "



