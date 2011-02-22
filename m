Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 230194C8006D
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:48:16 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Feb 2011 07:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="392341134"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 07:48:15 -0800
Message-ID: <4D63DABE.2070502@intel.com>
Date: Tue, 22 Feb 2011 07:48:14 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Lu, Lianhao" <lianhao.lu@intel.com>
References: <C10D3FB0CD45994C8A51FEC1227CE22F2136C4616A@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F2136C4616A@shsmsx502.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: FW: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.
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
X-List-Received-Date: Tue, 22 Feb 2011 15:48:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/15/2011 06:35 PM, Lu, Lianhao wrote:
> Looks like I had problems in sending emails to mailing list from my linux box. So I forward this pull request from my outlook.
>
> Best Regards,
> Lianhao
>
>
> -----Original Message-----
> From: Lu, Lianhao
> Sent: Tuesday, February 15, 2011 7:28 PM
> To: poky@yoctoproject.org
> Cc: Lu, Lianhao
> Subject: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.
>
> From: Lianhao Lu<lianhao.lu@intel.com>
>
> [BUGID #714] Added RPROVIDES_${PN}-dev and RPROVIDES_${PN}-dbg for
> linux-libc-headers-yocto to provides "linux-libc-headers-dev" and
> "linux-libc-headers-dbg" respectively.
>
> This resolved the dependency issue of libc6-dev depending upon
> linux-libc-headers-dev. Package linux-libc-headers-yocto-dev will be
> installed as linux-libc-headers-dev.
>
> Signed-off-by: Lianhao Lu<lianhao.lu@intel.com>
> ---
>   .../linux-libc-headers-yocto_git.bb                |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
> index 0d58354..b0e152d 100644
> --- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
> +++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
> @@ -6,6 +6,8 @@ B = "${S}"
>   INHIBIT_DEFAULT_DEPS = "1"
>   DEPENDS += "unifdef-native"
>   PROVIDES = "linux-libc-headers"
> +RPROVIDES-${PN}-dev = "linux-libc-headers-dev"
> +RPROVIDES-${PN}-dbg = "linux-libc-headers-dbg"
>   PV = "2.6.37+git-${SRCPV}"
>   PR = "r2"
>
Merged into Master

Thanks
	Sau!


