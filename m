Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40E48E00D31; Thu, 11 Apr 2019 07:20:01 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72BCE00CD5
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 07:20:00 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id i17so3529860pfo.6
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 07:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6DR3jTDQNGEuwF7CcMFbs1ETTBctUslbRmIN10EjNz8=;
	b=Dwk0OU0Yu7mdck6WFeo/SqfaJLbcfm3+zGrcNkl5rrisIF78f+8kiBioeNFndDRtt/
	L6/eyJJf3KtgaOrzpL7t29k4ReY5FU0GN7hSJ4nLBLnXTQeNSLBZTq7AIPHUK4AUu20c
	awuDICsP6HKKacedZpVueLmbhCwP+k1PLO6H93yz/lm8oUvXanz+Rm79mafdPpRSM9G+
	oXas4foeXy7Sn6mkPHG1pKNnCHYWNlo3Uv3bw2Jj8w15KZEg14jyMMJR2d5kTmtB3jck
	ZGg4xpQxI4znub16E7MfNPvR4iuSyoBVuozzO7zP0Wyos5OTAOK/jWdpK6plJWMZCn29
	G44g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=6DR3jTDQNGEuwF7CcMFbs1ETTBctUslbRmIN10EjNz8=;
	b=AEoi5ERkncFX3n5ZdvMmlfN7q3KNPh+wLBF4Btv2Up4NxtOfO/wL536S0CC6Yg93dE
	08AQAIjNOjcwexl3+Hb1A8NBrdU5x9msktoPO4vhTUdQc0k7XFRv5zPvlhzP30Yz2Xnh
	pKq3THEe1nvrFEWyEe7Iwaph6cpBB2rMxzzd27OQN6KGiHcK1ekohLXAhztY2z36KsbS
	wqz6PyI30OWoda/zvAUGzHgc00UnDEg24I9gGf9XhIe+bHINsVBsCtAggr4iSNbBGzhs
	85TPuxtQi45jv1bF+5gEupzyWlnmY3SiTcNvUU8MRQ2nGVvA2z/aXmelFqNUigDXUj96
	rWaQ==
X-Gm-Message-State: APjAAAWKHxCb0uYDfJEc1UenVmOwEzFEj+B3JUjLln5+4LyJLHxPRBQI
	/YQjiiVQ5srycIM3Okjw7VG5ciUP
X-Google-Smtp-Source: APXvYqwf2Q3fLYo8j/k3sHR7mHnNavtTN3IXaCpzSevpyLUWFNRVKDpKhbDZ3QvIqz4AxpW1ApNwBQ==
X-Received: by 2002:aa7:8208:: with SMTP id k8mr50926614pfi.69.1554992399600; 
	Thu, 11 Apr 2019 07:19:59 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:918d:ab6e:51fb:1d66?
	([2601:202:4180:c33:918d:ab6e:51fb:1d66])
	by smtp.gmail.com with ESMTPSA id
	e1sm47316233pfn.187.2019.04.11.07.19.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Apr 2019 07:19:58 -0700 (PDT)
To: Jean-Francois Dagenais <jeff.dagenais@gmail.com>,
	Alexander Kanavin <alex.kanavin@gmail.com>
References: <20190410152319.3323-1-jeff.dagenais@gmail.com>
	<CANNYZj-Ttrgut1EpF4R-pzMD5jsdMFtyq7kEU9LzcQF9FGOHHg@mail.gmail.com>
	<DAE001AB-BCB8-46FF-9863-B90C01A360D2@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <79182f90-28ca-8b0c-6f63-c4103b6128bf@gmail.com>
Date: Thu, 11 Apr 2019 07:19:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <DAE001AB-BCB8-46FF-9863-B90C01A360D2@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH v1] weston: introduce meson build on v5.0.94
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
X-List-Received-Date: Thu, 11 Apr 2019 14:20:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 4/11/19 5:51 PM, Jean-Francois Dagenais wrote:
> Thanks for the come back.
>
>> On Apr 11, 2019, at 07:12, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> This is a pre-release, which we generally do not accept.
> I understand. I needed the latest weston and spent a lot of time working on the
> conversion of the recipe to meson, so I mainly wanted to have the patch out
> there so people can pick up from where I left off.
Maybe push it to a contrib repo and send out an "RFT" ( Request for Test)?

You can save off your work and get folks looking at it too.

-armin
>
>> Also, the
>> patch should go to oe-core list.
>
> I had checked https://www.yoctoproject.org/community/mailing-lists/ but couldn't
> figure it out correctly. While grepping "oe-core" I found
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/plain/meta-poky/README.poky
> which perhaps should be referred to by the "mailing lists" yoctoproject.org
> page?
>
> I assume "oe-core" is openembedded-core@lists.openembedded.org ...
>
> Will send there then.


