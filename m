Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCB3E0049D
	for <poky@yoctoproject.org>; Thu,  4 Oct 2012 17:26:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2012 17:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="230755470"
Received: from unknown (HELO helios.localnet) ([10.252.122.37])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2012 17:26:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Fri, 05 Oct 2012 01:26:18 +0100
Message-ID: <1472694.z6zoviGNz8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <1349394751-28272-1-git-send-email-sgw@linux.intel.com>
References: <1349394751-28272-1-git-send-email-sgw@linux.intel.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky.conf: fix Poky release info to include release number
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
X-List-Received-Date: Fri, 05 Oct 2012 00:26:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 04 October 2012 16:52:31 Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf
> b/meta-yocto/conf/distro/poky.conf index ad45f25..8e82496 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -71,8 +71,8 @@ CONNECTIVITY_CHECK_URIS ?= " \
>  SANITY_TESTED_DISTROS ?= " \
>              Yocto (Built by Poky 7.0) 1.2 \n \
>              Yocto (Built by Poky 8.0) 1.3 \n \
> -            Poky 7.0 (Yocto Project 1.2 Reference Distro) \n \
> -            Poky 8.0 (Yocto Project 1.3 Reference Distro) \n \
> +            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
> +            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \

Hmm, in prompting Richard to change DISTRO_NAME in the manner we have, I 
hadn't realised we would still end up with the version at the end as well :(

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

