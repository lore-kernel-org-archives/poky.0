Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5AA9E00B5C; Sat, 26 Jan 2019 12:59:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E4FE006C7
	for <poky@yoctoproject.org>; Sat, 26 Jan 2019 12:59:31 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id u47so14453463qtj.6
	for <poky@yoctoproject.org>; Sat, 26 Jan 2019 12:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+CDtwiziF+jtqU13WSH2kGdMrzoJ9qjeIR95hmLkewU=;
	b=R+veOmkAuInEDeJqDwj91oa/r3duUfRBuNQCCrHMB51vrHIJpDgCCQ1scMZ7kRWKfb
	SZ/p2LaFfwmDDXtLmP+KbE3+2y5a8ma2SGp69o0BnsvwAmQqr9yaEnorGnlRUgJglLDz
	YzmeKpp+8luTPkUsXw8Cw4BAfof5FJnfERoiMHEHqFhHl6GRfF2NfST12WU5hRncQbps
	/ChPtmLahVimw35S+M0hlq5ijjsNukkBJBHtBUEWp0jOJCsKwk9LyMQlFiaBrrH66z8w
	KJTmFETuuj/9ibKptQPL+4D55iRduLt/JQhLjNH1WUsqyckghANQRg48k36AUO1Y/X7U
	CsEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+CDtwiziF+jtqU13WSH2kGdMrzoJ9qjeIR95hmLkewU=;
	b=gzkzIsgyfxyTu6CBcaTy9HWhgGP4ma7ks2RB7KfIIIWewAoH1aMlTgm0qSMSTa3uID
	/ZUZNPafxerpQt9hwRqCoArHX+6Io6fpDOJ5IoMlMek9cnbqCdE23G6FkXsmx5vZNEQf
	BWNFMmW0C85E3/IJAKZqhZSzRH66KPEoKNM23G9rjqMcnki825LnQOevNGOEFnKUAyRI
	82X9w5YYCdsBcUh45rUT6pLpKq5mc3QmoQASt1j2X6EnUmOsRUtnfEL08dZnaDEnuXC/
	HS+QOvU8P8Unuy7VnOm54orUgM1lGrGWK+r1uAnvZTLAxISKmDLhnC3sNSzvG64k1GxN
	ZPGg==
X-Gm-Message-State: AJcUukc8cKDuIHbmmcQT8+lawsOnypwZqBwq0FTyILs9vKi2jhP1NLQ6
	92g2P/3p27GXZTksf6vdyXeDFz0jy4X2Y84SPB0=
X-Google-Smtp-Source: ALg8bN42N17DAXZLAYCByjSn5J34ImvB8OhQaPe+1SRvCUZv9iqDJFQPR4SzKW1+Q3fZkRpo0U1BGiuTAvuIcOxYVBw=
X-Received: by 2002:a0c:a144:: with SMTP id d62mr15331728qva.50.1548536370902; 
	Sat, 26 Jan 2019 12:59:30 -0800 (PST)
MIME-Version: 1.0
References: <4b42693.320.1688bd5449f.Coremail.zzs213@126.com>
In-Reply-To: <4b42693.320.1688bd5449f.Coremail.zzs213@126.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 26 Jan 2019 12:59:05 -0800
Message-ID: <CAMKF1sod+k=UWA35pNbJwTQCJW8mFj0ORqS44OSytwsnDrbv_w@mail.gmail.com>
To: zzs <zzs213@126.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: howto select the version of meta-openembedded
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
X-List-Received-Date: Sat, 26 Jan 2019 20:59:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Jan 26, 2019 at 12:55 PM zzs <zzs213@126.com> wrote:
>
>
> I wan't to use poky at version yocto-2.6. which version of
> meta-openembedded.git should be the best matched version?

2.6 = thud branch in git so use thud branch

for version to codename mapping see
https://wiki.yoctoproject.org/wiki/Releases

> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

