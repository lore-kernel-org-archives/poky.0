Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F021E02286; Mon, 11 Jun 2018 15:52:30 -0700 (PDT)
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
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2464DE02263
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 15:52:29 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id c23-v6so13164539plz.12
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 15:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=yQZNYoyazYGZYqrEeHCXsKF+6Ri5I3IeSIKt4oor5YU=;
	b=gV7A27cLkyi4TszUCstzEL/Pf6b0H7dGGfYlZAJp80AzoSZ0yzenQaoZtueAY6WkzK
	iov7HRWwsJC88fKStF302xftC0oFScuir19C9nZ5N84RLucOwCzlUFPsBEmIFQw+bXvO
	OE6qk+fSsjlT93verlAmpbJJF4QQA1Egq2YI/0MT6ATXxh45ys2WnHY040ObyalobLUv
	vHLaJHcHGw3WZFPTRImqiuTO64qgeixe+fT2ppQBW8JQxGhh8EC6cGpN0bsz3Y+K/MSH
	qXC8khYXFMxprHnXWNBMaw0LjYV2KWJ3awzL1YMOL+yAfygspRpeMVK1B9H4amsO4g//
	VGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=yQZNYoyazYGZYqrEeHCXsKF+6Ri5I3IeSIKt4oor5YU=;
	b=Mrat9Ulgv2AcddPNqEytqyZXv9zoPeaVR9jldUzQqswwdlElwjqjBZADgMq3qEXCF+
	z3pBhfy/9/Zsyjo+vjvduJ8r85Dzoyf0sOb65bnpRK6FL9ONGVGz3oQiiiTxOq6zVYyl
	qhr4+9if8AD7MU5Z6/0IABNnzDX0CE0ys84wGwGReU/mf6tpkX93QL+Nxkh2o7xkxny7
	OaL1kKmXSQmTsdICOO8IpERdEQo5CvZmq57BvFke1KZWBUa00CdVB+Luakkp54fu+kqG
	5lmcTPB/sNiIkneQVIYRQFrdMg9a7v5pNPCKjBEdH6fPl/ViIwMB47Xc5bbwWW5O8e5W
	LWYg==
X-Gm-Message-State: APt69E0PWiKhJJR+NebXETH6z4BsnlbFp18vt95Fk8NJSL4kr4KhjcWN
	qPcZV35I8BetlJFxZJm6MgI=
X-Google-Smtp-Source: ADUXVKLCoa3/MuNqtgsWAsEM09WrBrJ0qlupPtuTX7TdZZYRyIOnhO7RjT6G4x6jXCTSqRyULIUgoA==
X-Received: by 2002:a17:902:b494:: with SMTP id
	y20-v6mr1126196plr.136.1528757549535; 
	Mon, 11 Jun 2018 15:52:29 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:8876:e80:c7fd:8b89])
	by smtp.gmail.com with ESMTPSA id
	c67-v6sm39745141pfj.173.2018.06.11.15.52.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Jun 2018 15:52:29 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Kevin Hao <kexin.hao@windriver.com>, poky@yoctoproject.org,
	bruce.ashfield@windriver.com
References: <20180610070626.84093-1-kexin.hao@windriver.com>
	<ff42bd76317a54117d93f5375007c1019eb2bd8b.camel@linuxfoundation.org>
	<de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <205a5f0d-6d3d-a945-ce27-b28f4890e397@gmail.com>
Date: Mon, 11 Jun 2018 15:52:08 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <de4969f9ba3f5bfa7d15b367ce88949587b5481f.camel@linuxfoundation.org>
Subject: Re: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Mon, 11 Jun 2018 22:52:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 6/11/18 12:35 AM, Richard Purdie wrote:
> On Mon, 2018-06-11 at 08:08 +0100, Richard Purdie wrote:
>> On Sun, 2018-06-10 at 15:06 +0800, Kevin Hao wrote:
>>> Bump to the latest stable kernel for 4.12, 4.14 and 4.15.
>>>
>>> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
>>
>> Thanks for this. This addresses some of the failures we saw but not
>> for
>> edgerouter:
>>
>> https://autobuilder.yocto.io/builders/nightly-mips-lsb/builds/1046/st
>> eps/BuildImages_1/logs/stdio
>> https://autobuilder.yocto.io/builders/nightly-mips/builds/1050/steps/
>> BuildImages_1/logs/stdio
>>
>> Any idea why that is contiuing to fail on 4.14 and 4.15? Were the
>> patches for gcc8 not merged into that branch?
> 
> Perhaps we need https://git.kernel.org/pub/scm/linux/kernel/git/torvald
> s/linux.git/commit/?id=2479bfc9bc600dcce7f932d52dcfa8d677c41f93
> converted for mips?
> 

Actually, I posted the mips patches to lkml few weeks back, there was 
inclination to include another patch which implements a infra change 
across kernel but that hasn't made it in. So my patches are alternative 
in meantime but the issue you are seeing is actually new, probably 
specific to edgeeouter since it is a different SOC then qemu. It might 
be exercising different code which is not yet fixed for gcc8 or otherwise.

> Also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> /commit/?id=415520373975d2eba565c256d2cad875ed4e9243
> 
> This looks like the upstream version of Khem's ppc fix.
> 
> Cheers,
> 
> Richard
> 

