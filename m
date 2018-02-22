Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1451E00D91; Wed, 21 Feb 2018 20:20:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 576ECE00D91
	for <poky@yoctoproject.org>; Wed, 21 Feb 2018 20:20:57 -0800 (PST)
Received: by mail-pl0-f51.google.com with SMTP id k8so2247261pli.8
	for <poky@yoctoproject.org>; Wed, 21 Feb 2018 20:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=NmMoGNjRu6b1Y3TaRVSf2yBvXg1HFKHB926sRn5SVZw=;
	b=krEgUut0/IjNK085i9pcZZp4wVYydhqs+fDPF147QNLCREZ2SZK33jDaQzXCXEl74T
	ITYWPyUn3rU8bn0Gphb2xFafP78dEuHGrlTByXJdozjlLbTQZnUww71GPq7IAABdgaYk
	2dea0MmPw0i1aEWfQGxHeeJv5wdOGuhb/E5kc+oUSU53ekL7CdZUf2cHICUShfuYVnYo
	dmCpYxUeydh1ERAJ8ZJzFUbE/AqGUAV5QZ2uoP9C6btsVN2eKvShPFQSvncUilrongZW
	ylEiHcdrVRq28RVYHrFL75b/kSyKHrmVWnbj3+7SD4ORTJOuTRy8uXym7FBKlukGVkSZ
	hKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=NmMoGNjRu6b1Y3TaRVSf2yBvXg1HFKHB926sRn5SVZw=;
	b=JUN3NgRpE9ZGNjLiKSGajWsHD0G2KUevmgkc9TtjZM71XjzZm/2M+hi1NWQC+WB5qi
	2t27Q8mSK6pxCIsnawRLkZhuBe7fOw8hAg+CIeLPNyPFLcrUlO10vKOC1xjXlYd1kxQh
	zjLwzpmeXhjaQllWUcbG8M3Facw/CCWRJEbeuiI3Gnq4nA9Yi8ksbovctFdwyG7ia8Im
	QMorV3DiXmxhs80OqJU7hl4HEb4nowhQ1klNS5BhBcZhDDPxJmp337cBwNulmmuwuYoA
	GmpoWzkpHnc92oQ9H8d0KvTCbQB0B6k6OZCWvQty78XrjP+Tbf01OBW+7iBCP6UxRsqh
	IZWQ==
X-Gm-Message-State: APf1xPARqdNvdSfAMpP+UkcaZyX4vWjjPl0YW2uc2ftyX1e2K5CIS9rU
	2t6IBxyotdR8UFNZBcYjn4zOH4QX
X-Google-Smtp-Source: AH8x226l9bd191WTmGBSyxK6/ghu3lsCilX5t/GuzjWGzmdCp49wgYHQkyDLNoifE9SxJ8/jxoiSGQ==
X-Received: by 2002:a17:902:42a3:: with SMTP id
	h32-v6mr5387540pld.231.1519273257349; 
	Wed, 21 Feb 2018 20:20:57 -0800 (PST)
Received: from hermes.local ([2601:646:8880:466c:60b3:478a:4890:2196])
	by smtp.gmail.com with ESMTPSA id
	b5sm10444769pgu.88.2018.02.21.20.20.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Feb 2018 20:20:56 -0800 (PST)
To: Jaymin D <jaymin.linux@gmail.com>, poky@yoctoproject.org
References: <CAL02zyvH0bZ8bXBycqt-+eg3MhceHu1fLsavnuTKyXh1__7Nhw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <76793901-d73b-7caa-24b6-b306181eb4ab@gmail.com>
Date: Wed, 21 Feb 2018 20:20:55 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <CAL02zyvH0bZ8bXBycqt-+eg3MhceHu1fLsavnuTKyXh1__7Nhw@mail.gmail.com>
Subject: Re: Macro defined in .bb file: How use/add toolchain or target system macro in .bb file?
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
X-List-Received-Date: Thu, 22 Feb 2018 04:20:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 2/20/18 10:47 PM, Jaymin D wrote:
> I want to use/add my target system "aarch64-oe-linux" into .bb file, so 
> can assign or can use the target system name dynamically in .bb file.
> 
> E.g.:
> Currently in .bb file its as below:
> 
> ./aconfigure --host=aarch64-oe-linux
> 
> Requirement is as below:
> 
> ./aconfigure --host=${macro_defined_for_target_sys}
> 
> Below is the output of my build configuration:
> 
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "LinuxMint-18.3"
> *TARGET_SYS        = "aarch64-oe-linux"*
> 
> What is the macro defined for "TARGET_SYS"?
> 

you really want HOST_SYS which denotes the host on which the binary is 
supposed to run after compiling something like

./aconfigure --host=${HOST_SYS}

> 
> -- 
> Regards
> - JAYMIN DABHI
> 
> 

