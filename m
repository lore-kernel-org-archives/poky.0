Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC7B2E006EA
	for <poky@yoctoproject.org>; Mon,  7 Oct 2013 07:56:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Oct 2013 07:56:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1050,1371106800"; d="scan'208";a="389040357"
Received: from unknown (HELO helios.localnet) ([10.252.120.157])
	by orsmga001.jf.intel.com with ESMTP; 07 Oct 2013 07:55:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Cristiana Voicu <cristiana.voicu@intel.com>
Date: Mon, 07 Oct 2013 15:55:55 +0100
Message-ID: <1595534.Sg7Vt0aon1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1381153273-16725-1-git-send-email-cristiana.voicu@intel.com>
References: <1381153273-16725-1-git-send-email-cristiana.voicu@intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH_V2] maintainers.inc: remove obsolete recipes
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
X-List-Received-Date: Mon, 07 Oct 2013 14:56:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Cristiana,

On Monday 07 October 2013 16:41:13 Cristiana Voicu wrote:
> This patch removes some references on imake, xorg-cf-files and transfig
> from maintainers, distro_alias, recipe_color, package_regex and
> seperatebuilddir files. Transfig, imake and the associated xorg-cf-files
> were removed.
> 
> Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
> ---
>  meta-yocto/conf/distro/include/distro_alias.inc  |    2 --
>  meta-yocto/conf/distro/include/maintainers.inc   |    3 ---
>  meta-yocto/conf/distro/include/package_regex.inc |    2 --
>  meta-yocto/conf/distro/include/recipe_color.inc  |    2 --
>  meta/conf/distro/include/seperatebuilddir.inc    |    4 ----

This patch needs to be split in two; the last file is in OE-Core rather than 
meta-yocto.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

