Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F84AE00D13; Tue,  5 Mar 2019 02:39:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from m15-112.126.com (m15-112.126.com [220.181.15.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 087EDE006B3
	for <poky@yoctoproject.org>; Tue,  5 Mar 2019 02:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=l1BnN
	UNdI3brF3SDf0rd8XYaPnmSV7EDqDWHAcUk9UI=; b=fiwNKROnP1UkEM117Xoq4
	wHuofdByWk0qPcGlIyvi3scA/P5FPVyL6dkJmWeTvRviu7EizEoe40q7uPJalnmI
	z39uooJ2o46tBuGP14dFbLO2nAnErAsBEW7N46ZjB4DsbjF6AeIkXSEC6kARiq3z
	tG1VlxLcUEa/w/6lGVj+yM=
Received: from [192.168.0.12] (unknown [218.89.233.124])
	by smtp2 (Coremail) with SMTP id DMmowAD3HifoUX5co7x6EA--.63451S2;
	Tue, 05 Mar 2019 18:39:37 +0800 (CST)
To: poky@yoctoproject.org
References: <75032b5a-7681-a5a7-40a8-53663832c288@126.com>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <1876c829-f607-ddeb-5ec7-af8cc4b604a5@126.com>
Date: Tue, 5 Mar 2019 18:39:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <75032b5a-7681-a5a7-40a8-53663832c288@126.com>
X-CM-TRANSID: DMmowAD3HifoUX5co7x6EA--.63451S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrAF4fWF18tr4UAryfAF1xuFg_yoWxGFc_Xr
	yDta1fGFn7JFn7tay8G398ArZIya4DGwnay34jqw1aka43Kw48CFWft3WfJw1xuFZ8Grs2
	kF9I9ryxu34fWjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnxMaUUUUUU==
X-Originating-IP: [218.89.233.124]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiTwluGVpD70XfbQAAsw
Subject: Re: how to tune s5pv210
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
X-List-Received-Date: Tue, 05 Mar 2019 10:39:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

> My cpu is s5pv210
> 
> When using yocto-2.5.2 with musl libc my cpu tune is:
> 
>      DEFAULTTUNE_s5pv210 ?= "cortexa8hf-neon"
> 
> It works OK
> 
> Now I am using yocto-2.6.0 with newlib. With the same cpu tune. When 
> compile a file, gcc said:
> 
>      cc1: error: -mfloat-abi=hard: selected processor lacks an FPU
> 
> The commandline like this:
> 
>      arm-poky-eabi-gcc  --sysroot=... -march=armv7-a  -mhard-float ... \
>        -c -o scripts/mod/empty.o scripts/mod/empty.c
> 
> It seems the cpu tune should change in the new version.
> 
> How to do it, what feather tune should be used?
> 
Oh!! sorry, I'm forgot "-mfpu=neon".

-- 
Best Regards,
zzs


