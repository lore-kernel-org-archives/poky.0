Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF81E00BA7
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 02:41:21 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s2S9f74f009926; Fri, 28 Mar 2014 09:41:07 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id StODy7yl4vwZ; Fri, 28 Mar 2014 09:41:07 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s2S9f2Ck009921
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 28 Mar 2014 09:41:03 GMT
Message-ID: <1395999655.24890.166.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 28 Mar 2014 09:40:55 +0000
In-Reply-To: <bc72d57bd8234c080074fd2c2d44df4a7cbdf946.1395944862.git.bruce.ashfield@windriver.com>
References: <cover.1395944862.git.bruce.ashfield@windriver.com>
	<bc72d57bd8234c080074fd2c2d44df4a7cbdf946.1395944862.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/6] yocto-bsps: routerstationpro: explicitly set preferred version
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
X-List-Received-Date: Fri, 28 Mar 2014 09:41:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-03-27 at 14:29 -0400, Bruce Ashfield wrote:
> The other reference BSPs have an explicit version in their conf files.
> To avoid the routerstationpro picking up kernel's newer than 3.10, we
> do the same for it.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto-bsp/conf/machine/edgerouter.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index f3ea33bb0d6b..c5e490f824ea 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,6 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>  
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
> +PREFERRED_VERSION_linux-yocto ?= "3.10%"
>  
>  SERIAL_CONSOLE = "115200 ttyS0"
>  USE_VT ?= "0"

I think some commits have got confused here. edgerouter.conf !=
routerstationpro.conf...

Cheers,

Richard




