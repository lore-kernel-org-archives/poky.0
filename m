Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193B9E009AC; Thu, 16 Aug 2018 07:11:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C3A8E006D2
	for <poky@yoctoproject.org>; Thu, 16 Aug 2018 07:11:11 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id t79-v6so3800302qke.4
	for <poky@yoctoproject.org>; Thu, 16 Aug 2018 07:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=gqzjQgexZ7WGR7pUaCcBoUYb1UtO+AsoGVMHGu7nKWg=;
	b=LtOn3EBEV/UdJ+zZT6eVpnPTD+yT5+rp2hy+tSJP1h5ARsYnJRmyVcwKHwtW6Zmnv/
	Ssy/l0lB30fBd3CCrL+TmEv+bJTmXssFty+VA4DLbCmWSyufAop8EJ2YtX32xtLnbm+C
	3BC0wkxhnLXxERHk4jVpz+vPF8ppn8PIoadog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=gqzjQgexZ7WGR7pUaCcBoUYb1UtO+AsoGVMHGu7nKWg=;
	b=pTuSLJdn25qYr4W2QJFFao5SIaNIJrOKRuqSf0z9f6DPQ6sW/B6W9vXYTD2q1xsC1q
	uesw+abywBDmql4AzyFNfilbzbx8ChD9HHbXOaFsWRO3aByLqnAi3DZ1km4COB1IN3Pm
	mb/t8PX4Sy3EYBz/PH6YBMbyhTl6n0WncUAbeTPdMffY0ZsA9aEYcl1OmSnVYOjO1IgS
	coYsTaHAActvXElCGBG3ydOGcty57hZ/lRz2+ceAlE6oXytrr+LUBhitKMBfOuFyiwwD
	D79/Um0RLZ0st6PGV6YxFhMBYoZ1f96U72et18IBzFdBdR8GeEoCziFhaN1RUBrQpJRD
	oq+w==
X-Gm-Message-State: AOUpUlHZCgmnM8BYXtyfJhmJg6LcGRyqmPfPERVwfFcxGNOzZQ8IzxQp
	31EwhjupaZw+ddtgmFmhhtztVVtqMsU=
X-Google-Smtp-Source: AA+uWPyflW44tVzz6+Z+3bxPLcA0Em1PTKPN+3T+/cTgICYkTAAfj0+IfNsFDI7PEX9cHuRBOVQdbQ==
X-Received: by 2002:ae9:e318:: with SMTP id
	v24-v6mr11186065qkf.299.1534428670775; 
	Thu, 16 Aug 2018 07:11:10 -0700 (PDT)
Received: from bill-the-cat (cpe-65-184-142-68.ec.res.rr.com. [65.184.142.68])
	by smtp.gmail.com with ESMTPSA id
	62-v6sm882347qkx.66.2018.08.16.07.11.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Aug 2018 07:11:09 -0700 (PDT)
Date: Thu, 16 Aug 2018 10:11:08 -0400
From: Tom Rini <trini@konsulko.com>
To: Kevin Hao <kexin.hao@windriver.com>
Message-ID: <20180816141108.GU30947@bill-the-cat>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
	<20180814013126.191534-7-kexin.hao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20180814013126.191534-7-kexin.hao@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 6/6] meta-yocto-bsp: beaglebone: Use the uuid for the block device naming in wic image
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
X-List-Received-Date: Thu, 16 Aug 2018 14:11:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 14, 2018 at 09:31:26AM +0800, Kevin Hao wrote:
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  meta-yocto-bsp/wic/beaglebone-yocto.wks | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
> index 0b5d793b73ec..b75f238df937 100644
> --- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
> +++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
> @@ -2,5 +2,5 @@
>  # long-description: Creates a partitioned SD card image for Beaglebone.
>  # Boot files are located in the first vfat partition.
>  
> -part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot"
> -part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
> +part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
> +part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4 --use-uuid

You should drop the --ondisk part here entirely so that UUID is used.

-- 
Tom

