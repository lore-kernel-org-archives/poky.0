Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BACFE01757
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 14:23:36 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	rA4MNFlU030955; Mon, 4 Nov 2013 22:23:15 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id LJkVW4xyFTQh; Mon,  4 Nov 2013 22:23:15 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	rA4MNAxO030952
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 4 Nov 2013 22:23:11 GMT
Message-ID: <1383603785.6271.144.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Zanussi <tom.zanussi@linux.intel.com>
Date: Mon, 04 Nov 2013 22:23:05 +0000
In-Reply-To: <5431bd9e48a771622d9aa143793ec42d3a273782.1383598600.git.tom.zanussi@linux.intel.com>
References: <cover.1383598600.git.tom.zanussi@linux.intel.com>
	<5431bd9e48a771622d9aa143793ec42d3a273782.1383598600.git.tom.zanussi@linux.intel.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 1/1] busybox.bbappend: add override for poky-tiny defconfig
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
X-List-Received-Date: Mon, 04 Nov 2013 22:23:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-11-04 at 14:58 -0600, Tom Zanussi wrote:
> The defconfig for poky-tiny resides in {$P}/poky-tiny, so that needs
> to be added to FILESEXTRAPATHS if the distro is poky-tiny.
> 
> This fixes boot problems such as below, where init doesn't work
> because setsid isn't found, because setsid isn't configured into
> busybox, because the defconfig adding it isn't found:
> 
>   /init: line 26: setsid: not found
>   Console sh exited with 127, respawning...
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
> ---
>  meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> index ffe8631..e15f2b6 100644
> --- a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> +++ b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> @@ -1,2 +1,3 @@
>  FILESEXTRAPATHS_prepend_poky := "${THISDIR}/${P}:"
> +FILESEXTRAPATHS_prepend_poky-tiny := "${THISDIR}/${P}/${DISTRO}:"

In addition to Martin's comment, why isn't tiny using the standard poky
overrides?

poky-lsb and poky-bleeding do:

DISTROOVERRIDES = "poky"

or variants thereof. Shouldn't tiny be doing "poky-tiny:poky" or
something like that (I forget the right order)?

The above line suggests that poky-tiny was using the poky override but
stopped for some reason, otherwise the file would never have worked?

Cheers,

Richard






