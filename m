Return-Path: <radu.moisan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF66E01482
	for <poky@yoctoproject.org>; Thu,  4 Jul 2013 08:14:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Jul 2013 08:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,995,1363158000"; d="scan'208";a="364830000"
Received: from ubuntu.rb.intel.com (HELO [10.237.105.59]) ([10.237.105.59])
	by orsmga002.jf.intel.com with ESMTP; 04 Jul 2013 08:14:33 -0700
Message-ID: <51D591CA.8070201@intel.com>
Date: Thu, 04 Jul 2013 18:16:26 +0300
From: Radu Moisan <radu.moisan@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1362674804-1689-1-git-send-email-radu.moisan@intel.com>
In-Reply-To: <1362674804-1689-1-git-send-email-radu.moisan@intel.com>
Subject: Re: [PATCH] busybox.bbappend: Upgrade to v1.21.0
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
X-List-Received-Date: Thu, 04 Jul 2013 15:14:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Resent upgrade patch on oe-core

Radu

On 03/07/2013 06:46 PM, Radu Moisan wrote:
> Signed-off-by: Radu Moisan <radu.moisan@intel.com>
> ---
>   .../poky-tiny/defconfig                            |    0
>   ...box_1.20.2.bbappend => busybox_1.21.0.bbappend} |    0
>   2 files changed, 0 insertions(+), 0 deletions(-)
>   rename meta-yocto/recipes-core/busybox/{busybox-1.20.2 => busybox-1.21.0}/poky-tiny/defconfig (100%)
>   rename meta-yocto/recipes-core/busybox/{busybox_1.20.2.bbappend => busybox_1.21.0.bbappend} (100%)
>
> diff --git a/meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig b/meta-yocto/recipes-core/busybox/busybox-1.21.0/poky-tiny/defconfig
> similarity index 100%
> rename from meta-yocto/recipes-core/busybox/busybox-1.20.2/poky-tiny/defconfig
> rename to meta-yocto/recipes-core/busybox/busybox-1.21.0/poky-tiny/defconfig
> diff --git a/meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.21.0.bbappend
> similarity index 100%
> rename from meta-yocto/recipes-core/busybox/busybox_1.20.2.bbappend
> rename to meta-yocto/recipes-core/busybox/busybox_1.21.0.bbappend


