Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A0AE00B95; Fri,  6 Jun 2014 08:33:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 614E4E009E7
	for <poky@yoctoproject.org>; Fri,  6 Jun 2014 08:32:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2014 08:32:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,989,1392192000"; d="scan'208";a="524058677"
Received: from kmaligas-mobl1.gar.corp.intel.com (HELO [10.255.12.167])
	([10.255.12.167])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2014 08:32:57 -0700
Message-ID: <5391DF28.5080103@linux.intel.com>
Date: Fri, 06 Jun 2014 08:32:56 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1401807171-30011-1-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1401807171-30011-1-git-send-email-sgw@linux.intel.com>
Subject: Re: [PATCH 1/2 v2][daisy] poky-tiny: Update kernel version to 3.14
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
X-List-Received-Date: Fri, 06 Jun 2014 15:33:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2014 07:52 AM, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>   meta-yocto/conf/distro/poky-tiny.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
> index 2548d79..3350491 100644
> --- a/meta-yocto/conf/distro/poky-tiny.conf
> +++ b/meta-yocto/conf/distro/poky-tiny.conf
> @@ -37,7 +37,7 @@ DISTRO = "poky-tiny"
>   # Distro config is evaluated after the machine config, so we have to explicitly
>   # set the kernel provider to override a machine config.
>   PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
> -PREFERRED_VERSION_linux-yocto-tiny = "3.8%"
> +PREFERRED_VERSION_linux-yocto-tiny = "3.14%"
>
>   # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
>   #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
>

This patch is needed for daisy also

