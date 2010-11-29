Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 460CD4C80815
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:37:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Nov 2010 14:37:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="682132580"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 14:37:44 -0800
Message-ID: <4CF42B37.5030001@intel.com>
Date: Mon, 29 Nov 2010 14:37:43 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@intel.com>
References: <201011191026.30354.paul.eggleton@intel.com>
In-Reply-To: <201011191026.30354.paul.eggleton@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] sanity.bbclass: add wget to required utilities
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
X-List-Received-Date: Mon, 29 Nov 2010 22:37:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 02:26 AM, Paul Eggleton wrote:
> sanity.bbclass: add wget to required utilities
>
> Signed-off-by: Paul Eggleton<paul.eggleton@intel.com>
>
> diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
> index 7f1f800..06aeddc 100644
> --- a/meta/classes/sanity.bbclass
> +++ b/meta/classes/sanity.bbclass
> @@ -106,7 +106,7 @@ def check_sanity(e):
>   	if not check_app_exists('${BUILD_PREFIX}g++', e.data):
>   		missing = missing + "C++ Compiler (%sg++)," % data.getVar("BUILD_PREFIX", e.data, True)
>
> -	required_utilities = "patch help2man diffstat texi2html makeinfo cvs svn bzip2 tar gzip gawk hg chrpath"
> +	required_utilities = "patch help2man diffstat texi2html makeinfo cvs svn bzip2 tar gzip gawk hg chrpath wget"
>
>   	# qemu-native needs gcc 3.x
>   	if "qemu-native" not in assume_provided and "gcc3-native" in assume_provided:
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!


