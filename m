Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CA5E002A6
	for <poky@yoctoproject.org>; Fri, 17 Aug 2012 05:20:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7HCKVZp008601;
	Fri, 17 Aug 2012 13:20:31 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07637-08; Fri, 17 Aug 2012 13:20:27 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7HCKO2i008594
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 17 Aug 2012 13:20:25 +0100
Message-ID: <1345206024.27428.4.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 17 Aug 2012 13:20:24 +0100
In-Reply-To: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1345200925-3178-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky.conf: update distro ID string for Ubuntu 12.04.1 LTS
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
X-List-Received-Date: Fri, 17 Aug 2012 12:20:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-08-17 at 11:55 +0100, Paul Eggleton wrote:
> If you have 12.04 LTS it will now have been updated to 12.04.1.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index cc9fa6c..711087b 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -69,7 +69,7 @@ SANITY_TESTED_DISTROS ?= " \
>              Yocto (Built by Poky 7.0) 1.2 \n \
>              Ubuntu 10.04.4 LTS \n \
>              Ubuntu 11.10 \n \
> -            Ubuntu 12.04 LTS \n \
> +            Ubuntu 12.04.1 LTS \n \
>              Fedora release 15 (Lovelock) \n \
>              Fedora release 16 (Verne) \n \
>              Fedora release 17 (Beefy Miracle) \n \

Merged to meta-yocto master, thanks.

Richard


