Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87A53E00D03; Wed, 12 Oct 2016 15:32:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 162B0E00C60
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 15:32:12 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id x23so3600734lfi.1
	for <poky@yoctoproject.org>; Wed, 12 Oct 2016 15:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wuT9aM1NvVSMZ6RsFhm48uTkt6CiJIXH+4uXqqL0c10=;
	b=Z7QywJkmbaJb5zCujfwQESH1tnJYlshPc62fyHhhGkjZ/za4N2vlJVIxBQe+1Bz912
	7CqQmPqkukWFBjE0pqEcga5/HeQKyGLVTDpDFZLqxInFLGNXtKnkp7HpkAt0X2v5u838
	qd9p6s6qXNur+Arty/vP0jRSCJIbBrH19tQGlo1bVpYYJeCs4cp967cgBktwiRgiEh0p
	6zXeNBjTxiliwfdk8/cRabOrjirDIY0oK6zDG2B3rJ7+Wg5NS3oFfoc8q07SciQDAU1E
	Mn6dGNtluMoQcIrNgM2JDxq/Zjf/6U3DO+2jyw/hTpl5kUQ6h5DRC3f0GDdQr39QU5gu
	7Mng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wuT9aM1NvVSMZ6RsFhm48uTkt6CiJIXH+4uXqqL0c10=;
	b=gjvwrPhVpXekGOTbscHheKuPF3BMmglrwqCLx9ebwsB6NRd+XuFimOI6JCW1H5Z/ch
	7FX/awpZLIAEu+cAB//uOaiWEpCMx0Hgz6HLjuZGJer23HE+nodDDzcOhIjMItIYfoLo
	NP2IrqypBHMG1Uf8wzmhDVtwe1/lXCV4S68ZIDlA04NOwB50ndwJbon2vUY8JC7xTQPQ
	YArl0QpWM1WZSeJlvdhWXUlsRxcwmobFY0A4B5eWXa/nIE7tZcU5zL7w+EdaipexIEMw
	RGI6AhPjr5Us0MfBTVAN690sU8C+z/0d7q7xe2YqgZgNCXJu+Ue8YqCnKOuqpCg9RrfV
	LXKA==
X-Gm-Message-State: AA6/9RmSGvQ9gghycEJ0MGwYpmzzLMklrmfD/xUG+s8B4xeyPIyt5p+jEIOhgoBy4hyLePHKDeA0envOyphYpA==
X-Received: by 10.194.243.104 with SMTP id wx8mr4567399wjc.229.1476311530871; 
	Wed, 12 Oct 2016 15:32:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.33.68 with HTTP; Wed, 12 Oct 2016 15:31:30 -0700 (PDT)
X-Originating-IP: [83.236.242.106]
In-Reply-To: <1476305279-11158-1-git-send-email-joshua.g.lock@intel.com>
References: <1476305279-11158-1-git-send-email-joshua.g.lock@intel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 12 Oct 2016 23:31:30 +0100
Message-ID: <CAK18fxHGB8FEzUrXUjryZ=mgZECW0kCNTYXf=GC0eOvosQT1Jg@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] local.conf.sample.extended: remove RM_OLD_IMAGE
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
X-List-Received-Date: Wed, 12 Oct 2016 22:32:16 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 12, 2016 at 9:47 PM, Joshua Lock <joshua.g.lock@intel.com> wrote:
> RM_OLD_IMAGE has been removed so don't include this variable in
> sample local.conf
>

Can we have a reference where was this removed?


> Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
> ---
>  meta-poky/conf/local.conf.sample.extended | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
> index 118ed62..d407ffb 100644
> --- a/meta-poky/conf/local.conf.sample.extended
> +++ b/meta-poky/conf/local.conf.sample.extended
> @@ -265,9 +265,6 @@
>  #COPYLEFT_RECIPE_TYPES = 'target'
>  #
>
> -# Remove the old image before the new one generated to save disk space
> -#RM_OLD_IMAGE = "1"
> -
>  #
>  # GCC/LD FLAGS to enable more secure code generation
>  #
> --
> 2.7.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--
Andrei Gherzan

