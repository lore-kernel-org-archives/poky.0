Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52FFEE00D5D; Sun,  8 May 2016 06:06:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1A48E00D4D
	for <poky@yoctoproject.org>; Sun,  8 May 2016 06:06:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u48D6LcO003414
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 8 May 2016 06:06:21 -0700
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Sun, 8 May 2016 06:06:20 -0700
Date: Sun, 8 May 2016 21:06:17 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Ruslan Babayev <ruslan@babayev.com>
Message-ID: <20160508130617.GA14034@pek-khao-d1.corp.ad.wrs.com>
References: <877ff73zh2.fsf@babayev.com>
MIME-Version: 1.0
In-Reply-To: <877ff73zh2.fsf@babayev.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] edgerouter: fix machine tune
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
X-List-Received-Date: Sun, 08 May 2016 13:06:26 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Fri, May 06, 2016 at 09:47:43AM -0700, Ruslan Babayev wrote:
> 
> Octeon+ lacks FPU
> 
> Signed-off-by: Ruslan Babayev <ruslan@babayev.com>
> ---
>  meta-yocto-bsp/conf/machine/edgerouter.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index 6343dfc..062d896 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -2,6 +2,7 @@
>  #@NAME: Edgerouter
>  #@DESCRIPTION: Edgerouter
>  
> +DEFAULTTUNE ?= "mips64-nf"

The change looks fine to me. But unfortunately the libjpeg-turbo can't build
with the mips64-nf. I have filed a bug (9606) for it. I think we can merge
this once we fix the build failure.

Thanks,
Kevin

>  require conf/machine/include/tune-mips64.inc
>  
>  MACHINE_FEATURES = "pci ext2 ext3 serial"
> -- 
> 2.7.4

