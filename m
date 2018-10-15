Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5DB3E00A0C; Mon, 15 Oct 2018 07:38:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30FB0E009CF
	for <poky@yoctoproject.org>; Mon, 15 Oct 2018 07:38:25 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id f18-v6so9421615plr.1
	for <poky@yoctoproject.org>; Mon, 15 Oct 2018 07:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=LBiC8ZlJ3E4L8EeD5YOtUlq0zn97hMa7mDhwzM6wAHo=;
	b=qGIl2ua/rpQK6ICAW/eyLnejolbdnLoBJKq6oJxlGiAkcin6EMZP7IwOJXy0DGLnbT
	GjBqu8Fkbka6NjXOBaVRJxEk8N9hpzAD9T58cMgD/leKpuTaedZgLfUq7GOuthZAMHk8
	KPwzP8fNTrLgQ6ODXGNtpwpJuAZxClDZPd4fM48PDjuMbqhnwlsVMJOwXuUZheR8jgre
	UoG6sdRRkY2gjpqgo0WvqmqDkYeFYi/aKQ+7Us46jeR1+GjdsRc3mpLSTKhPGQoTWZc+
	huMhxeBEr34Ih575X9DJ0atJ70/5+TjyrihbLLJ3Amu8g19+9fPuXO0FOxf8qET1RFOG
	yUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=LBiC8ZlJ3E4L8EeD5YOtUlq0zn97hMa7mDhwzM6wAHo=;
	b=bKEXYaDIzHbas9VZASp3rzc0tfA+VoWoGS+Xz7/dG9R4N6HB1agae0HWc42uhFk1tD
	1Y1ix0kertqia3PlcV/wUYo85NpoXgjV9NdU32hB9rhasiSGf2GOxvqOLDcKAxr7/evn
	5FYNUBm4324/2cP0kD2hcHGN+u3J+YXtKClkYQtsW1by74O0rvaypKTWuOKqEhwR67Sb
	7KepqUYfmwgsoH+ycnVPCa3A7IEINndpqGm0V57YR/zXO+mKGn3rYoYngDmooOAAHdpK
	M9skihx/+27iFewES2hQz0Hf6LWdj2L5nMQ2d+HBKrToaN34bPQpsykdwLs8dPbcRKVt
	ZjFQ==
X-Gm-Message-State: ABuFfoh1vJsqGG1l2TGrpMClNFPqYCMjmDGhwjLhFMSUPu6vUt3gagx4
	hcdXN98tzlplbeCbAhZ2cgJXSU03
X-Google-Smtp-Source: ACcGV63hKpuWODd/aBWXkfDZMQQexyCsN3R9wjsDtrElu+QiFgON2Vtmnl0aIv+Qgzp9/ES2YppU+Q==
X-Received: by 2002:a17:902:9a98:: with SMTP id
	w24-v6mr17654961plp.109.1539614304485; 
	Mon, 15 Oct 2018 07:38:24 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:b4ef:f35a:90e:ac9d?
	([2601:202:4180:c33:b4ef:f35a:90e:ac9d])
	by smtp.gmail.com with ESMTPSA id
	l129-v6sm16042391pfc.155.2018.10.15.07.38.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Oct 2018 07:38:22 -0700 (PDT)
To: Anuj Mittal <anuj.mittal@intel.com>, poky@yoctoproject.org
References: <20181012042250.14882-1-anuj.mittal@intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <6253f5a3-ade8-952b-e36c-943dc06876e2@gmail.com>
Date: Mon, 15 Oct 2018 07:38:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181012042250.14882-1-anuj.mittal@intel.com>
Subject: Re: [sumo][meta-yocto][PATCH] linux-yocto: update genericx86* SRCREV for 4.14
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
X-List-Received-Date: Mon, 15 Oct 2018 14:38:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 10/11/2018 09:22 PM, Anuj Mittal wrote:
> Bump to kernel release v4.14.67.
>
> Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>

merged to stable/sumo-next

- armin
> ---
>  .../recipes-kernel/linux/linux-yocto_4.14.bbappend        | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> index a8313e7eea..feb8d2e49c 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> @@ -8,8 +8,8 @@ KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>  
> -SRCREV_machine_genericx86    ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
> -SRCREV_machine_genericx86-64 ?= "2bf00ed1aee9c26b48c26b10c731c2f8970d50c2"
> +SRCREV_machine_genericx86    ?= "084af9624d268ddf4fd65b2f9e8e50ca2f22e62b"
> +SRCREV_machine_genericx86-64 ?= "084af9624d268ddf4fd65b2f9e8e50ca2f22e62b"
>  SRCREV_machine_edgerouter ?= "65d1c849534179bbfa494f77947f8be615e9871a"
>  SRCREV_machine_beaglebone-yocto ?= "d62ddfa26a59c83f6128790b7aa2baadc04d2960"
>  SRCREV_machine_mpc8315e-rdb ?= "80a106ecf737b69864e07b955eccb62f809cf120"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  
> -LINUX_VERSION_genericx86 = "4.14.48"
> -LINUX_VERSION_genericx86-64 = "4.14.48"
> +LINUX_VERSION_genericx86 = "4.14.67"
> +LINUX_VERSION_genericx86-64 = "4.14.67"
>  LINUX_VERSION_edgerouter = "4.14.48"
>  LINUX_VERSION_beaglebone-yocto = "4.14.48"
>  LINUX_VERSION_mpc8315e-rdb = "4.14.48"


