Return-Path: <hannandor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F0E6E00C43; Mon,  5 Dec 2016 23:05:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hannandor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC658E00C41
	for <poky@yoctoproject.org>; Mon,  5 Dec 2016 23:05:04 -0800 (PST)
Received: by mail-lf0-f52.google.com with SMTP id c13so238493270lfg.0
	for <poky@yoctoproject.org>; Mon, 05 Dec 2016 23:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=JaQvDMkLk9b6nOFr03VzdPrQGs01SsGMBqxerq9TqLA=;
	b=xJ/kGGP4xwQK592vJVsZfkebSCsFTZ+HkFc4axwdj59xfo10CXZwed1Xo/lJXtqkeR
	AaS6IfXFvpyTflLtRh9Lv2yChpukBVgJPdtoUcybaXFJS7+vOpZ0IKNi6SmToF/FZKZQ
	FJ2hur52ohCuZcUPv5R1bReATxtqjg8M0YV1PNZJ58WkhUepAd6uelD2Mnw/88hCKIj8
	SEvWGHbZPdMF53AWX5eNIcCNnU2VOUo9uQS7VL/9DQT1C0ZTq2yMzrhYRtr0FxbDclc+
	2PvaRvShA5VIRfYIhK27Np3pL0heE6ED+P8hV9Oj9p0MYz4IFTK63CfWMwfludAoR/sx
	vfqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=JaQvDMkLk9b6nOFr03VzdPrQGs01SsGMBqxerq9TqLA=;
	b=LCyHtkK/PhoAoRlh2qdwm2rTQ+xEzt9GKYW46rnh5fvUDhwIijDT35rpEDzyakoPJb
	OrQh8JruEhPY0PNYM0XMpS73XFtQtRME5hVvPxttm5adsUVHyUU8ssvWDGp8D+egO0Xa
	6obyq+EP+5MZQGuB0crait9p2nv0S93VBMuJTH0I4un97nreNeAsUrSgdRC2Hs99crgJ
	Cy0w3DEeOT5l8ET5e1yIQkQ57E//Qy8zprZqVqZDZ+jxSEA0IRV9URe7hxXKCEnJcd9q
	LZNton8jfX91ZSkgZeWiEfkL24vdorvNt33jVzvKg7/nEK2VehMflFJkTB4qvptg+3FW
	JVgQ==
X-Gm-Message-State: AKaTC03y7ZcFbQNyDCcaLn4/U8HZXVtB1aD7oyQUjCNQRs8G0D6/m3pumDm/3L6ugEtEuA==
X-Received: by 10.25.199.198 with SMTP id x189mr23602471lff.164.1481007902702; 
	Mon, 05 Dec 2016 23:05:02 -0800 (PST)
Received: from [192.168.1.103] (82-181-115-116.bb.dnainternet.fi.
	[82.181.115.116])
	by smtp.gmail.com with ESMTPSA id 196sm3620527lff.3.2016.12.05.23.05.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Dec 2016 23:05:01 -0800 (PST)
To: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>, null <poky@yoctoproject.org>
References: <20161115110836.GA9906@xn--80adja5bqm.su>
	<20161116190433.GC18607@xn--80adja5bqm.su>
From: Nandor Han <hannandor@gmail.com>
Message-ID: <9b718965-5bf5-5d87-bb0a-d25030d9bbfd@gmail.com>
Date: Tue, 6 Dec 2016 09:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161116190433.GC18607@xn--80adja5bqm.su>
Subject: Re: How to debug task hash mismatches?
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
X-List-Received-Date: Tue, 06 Dec 2016 07:05:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 11/16/2016 09:04 PM, Sergey 'Jin' Bostandzhyan wrote:
>
> On Tue, Nov 15, 2016 at 06:08:36AM -0500, Sergey 'Jin' Bostandzhyan wrote:
>> So, where do I find this 9981d86bd31215aa722d7b2dc283fd1c hash?
>> I tried to vardepsexclude some variables by trial and error, but did not get
>> anywhere...
>>
>> I also noticed that upon cleanall/rebuild the hash
>> fad0983c152e6b6b60fb1a5519bfeebb stays the same, while the other one changes.
>>
>> I'm really blocked by this issue, so any help would be greately appreciated.
>>
>
> I'll answer my own question, so that the solution is documented here:
>
> when the debug code is enabled, in order to get both hashes dumped one has to
> either wipe tmp/cache or modify the recipe to trigger new parsing.
> Thanks to Richard for the hint :)
>

Hi Sergey,

Just a suggestion, not sure if helps in your case but wouldn't be 
possible to use e.g. `bitbake recipe -C fetch` to invalidate the 
time-stamp of some particularly task? (In my example I just used 
`fetch`, however you can decide which one is better for your case)

Using this will trigger a new "execution" of invalidated task plus the 
ones depending on it.

Hope it helps :)

Regards,
Nandor

> Kind regards,
> Sergey
>

