Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA6F44C80517
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 10:30:12 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Feb 2011 08:30:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="711792745"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 08:30:12 -0800
Message-ID: <4D63E493.9080706@intel.com>
Date: Tue, 22 Feb 2011 08:30:11 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <849307$bkqj5g@azsmga001.ch.intel.com>
In-Reply-To: <849307$bkqj5g@azsmga001.ch.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] crownbay: fix matchbox-panel segfault
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
X-List-Received-Date: Tue, 22 Feb 2011 16:30:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/18/2011 12:06 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This fixes [BUGID #738].
>
> matchbox-panel[437]: segfault at c ip 4715bbed sp bff6e580 error 4 in
> libgdk-x11-2.0.so.0.2000.1[470f6000+90000]
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../recipes-gnome/gtk+/gtk+_2.22.1.bbappend        |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>   create mode 100644 meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>
> diff --git a/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> new file mode 100644
> index 0000000..6efeb5c
> --- /dev/null
> +++ b/meta-crownbay/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
> @@ -0,0 +1,2 @@
> +#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on crownbay
> +FULL_OPTIMIZATION_crownbay = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"

Merged into meta-intel/master

Sau!


