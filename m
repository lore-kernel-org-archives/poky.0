Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB8AE01358
	for <poky@yoctoproject.org>; Tue, 27 Aug 2013 02:10:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Aug 2013 02:10:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,967,1367996400"; d="scan'208";a="352122080"
Received: from unknown (HELO helios.localnet) ([10.252.123.40])
	by azsmga001.ch.intel.com with ESMTP; 27 Aug 2013 02:10:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Aug 2013 10:10:27 +0100
Message-ID: <2657066.KAO69rK0gI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <4ccb62aafe6f32ce224b71484767302d4d84a891.1377555271.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
	<4ccb62aafe6f32ce224b71484767302d4d84a891.1377555271.git.dvhart@linux.intel.com>
MIME-Version: 1.0
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 6/6] documentation: Replace atom-pc with genericx86 in the manuals
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
X-List-Received-Date: Tue, 27 Aug 2013 09:10:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Darren,

On Monday 26 August 2013 15:18:12 Darren Hart wrote:
> Update the manuals to reflect the recent replacement of atom-pc with
> genericx86.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> Cc: Ross Burton <ross.burton@intel.com>
> Cc: Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
>  documentation/dev-manual/dev-manual-model.xml  |    2 +-
>  documentation/ref-manual/ref-variables.xml     |    2 +-
>  documentation/ref-manual/technical-details.xml |    2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/documentation/dev-manual/dev-manual-model.xml
> b/documentation/dev-manual/dev-manual-model.xml index a59a447..efa50b0
> 100644
> --- a/documentation/dev-manual/dev-manual-model.xml
> +++ b/documentation/dev-manual/dev-manual-model.xml
> @@ -156,7 +156,7 @@
>                      "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP
> Layers</ulink>" section in the Yocto Project Board Support Package (BSP)
> Developer's Guide.</para> <note>Four BSPs exist that are part of the
> -                    Yocto Project release: <filename>atom-pc</filename>,
> <filename>beagleboard</filename>, +                    Yocto Project
> release: <filename>genericx86</filename>, <filename>beagleboard</filename>,
> <filename>mpc8315e</filename>, and <filename>routerstationpro</filename>.
> The recipes and configurations for these four BSPs are located and
> dispersed within the <link linkend='source-directory'>Source
> Directory</link>. diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml index afcf7a7..4ac67c3 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -2784,7 +2784,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
> "${INC_PR}.3" MACHINE ?= "qemuppc"
>       MACHINE ?= "qemux86"
>       MACHINE ?= "qemux86-64"
> -     MACHINE ?= "atom-pc"
> +     MACHINE ?= "genericx86"
>       MACHINE ?= "beagleboard"
>       MACHINE ?= "mpc8315e-rdb"
>       MACHINE ?= "routerstationpro"
> diff --git a/documentation/ref-manual/technical-details.xml
> b/documentation/ref-manual/technical-details.xml index 1b67ca7..faf259b
> 100644
> --- a/documentation/ref-manual/technical-details.xml
> +++ b/documentation/ref-manual/technical-details.xml
> @@ -1875,7 +1875,7 @@
>        DEFAULTTUNE = "x86-64-x32"
>        baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE',
> True) \ or 'INVALID'), True) or 'lib'}"
> -      #MACHINE = "atom-pc"
> +      #MACHINE = "genericx86"
>        #DEFAULTTUNE = "core2-64-x32"
>                      </literallayout></para></listitem>
>                  <listitem><para>As usual, use BitBake to build an image
> that supports the x32 psABI.

This patch needs to be made against yocto-docs and sent to the yocto list (CC 
Scott).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

