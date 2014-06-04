Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6600CE00B94; Wed,  4 Jun 2014 15:33:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72255E00B6A
	for <poky@yoctoproject.org>; Wed,  4 Jun 2014 15:32:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Jun 2014 15:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,975,1392192000"; d="scan'208";a="522854802"
Received: from kmaligas-mobl1.gar.corp.intel.com (HELO [10.255.12.167])
	([10.255.12.167])
	by orsmga001.jf.intel.com with ESMTP; 04 Jun 2014 15:32:48 -0700
Message-ID: <538F9E90.6070009@linux.intel.com>
Date: Wed, 04 Jun 2014 15:32:48 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1401807171-30011-1-git-send-email-sgw@linux.intel.com>
	<1401807171-30011-2-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1401807171-30011-2-git-send-email-sgw@linux.intel.com>
Subject: Re: [for dora and daisy] [PATCH 2/2 v2] busybox: fix meta-yocto's bbappend's FILESEXTRAPATH
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
X-List-Received-Date: Wed, 04 Jun 2014 22:33:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2014 07:52 AM, Saul Wold wrote:
> The FILESEXTRAPATH was not getting used correctly since our distro
> OVERRIDE is for poky-tiny, not poky, so just remove it, also we are
> not using a version directory so ensure we get correct BPN (Base Package
> Name).
>
> [YOCTO #6353]
>
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>   meta-yocto/recipes-core/busybox/busybox_%.bbappend | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-yocto/recipes-core/busybox/busybox_%.bbappend b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
> index ffe8631..0005787 100644
> --- a/meta-yocto/recipes-core/busybox/busybox_%.bbappend
> +++ b/meta-yocto/recipes-core/busybox/busybox_%.bbappend
> @@ -1,2 +1,2 @@
> -FILESEXTRAPATHS_prepend_poky := "${THISDIR}/${P}:"
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"
>
>

