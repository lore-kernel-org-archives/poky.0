Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65201E00728
	for <poky@yoctoproject.org>; Thu,  8 Dec 2011 03:19:13 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB8BJ7He027300;
	Thu, 8 Dec 2011 11:19:07 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26934-02; Thu,  8 Dec 2011 11:19:03 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB8BIuG9027263
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 8 Dec 2011 11:18:57 GMT
Message-ID: <1323343148.971.14.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Thu, 08 Dec 2011 11:19:08 +0000
In-Reply-To: <1323333949-20359-1-git-send-email-sgw@linux.intel.com>
References: <1323333949-20359-1-git-send-email-sgw@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc.conf: ensure grub is included in base image
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
X-List-Received-Date: Thu, 08 Dec 2011 11:19:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-08 at 00:45 -0800, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  meta-yocto/conf/machine/atom-pc.conf |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
> index 7cbe157..1585a74 100644
> --- a/meta-yocto/conf/machine/atom-pc.conf
> +++ b/meta-yocto/conf/machine/atom-pc.conf
> @@ -27,6 +27,8 @@ XSERVER ?= "xserver-xorg \
>  
>  #MACHINE_EXTRA_RDEPENDS = "rt2860"
>  
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "grub" 
> +
>  MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>  
>  IMAGE_FSTYPES ?= "ext3 cpio.gz live"

I can think of several scenarios this doesn't make sense. Its only
really essential if you're making live images. Could you give some
details about the problem you're seeing please?

Cheers,

Richard


