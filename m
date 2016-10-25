Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93A19E00C25; Mon, 24 Oct 2016 17:29:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61995E00B63
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 17:29:53 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id y123so3299815vka.3
	for <poky@yoctoproject.org>; Mon, 24 Oct 2016 17:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Ccv3uEbNrvNn5xSY6aHvVXCYaMjHrggHQQcpqSmAdbY=;
	b=hBtnfmh0ppZVXIz78WINiBBldhnMw0KTYGlUTM52FVFKZTE/Xfedf9ck3knEukbduo
	fhlgsfFjQowpk704HLB1FFQCCBPc1vuFolMBkQ0+U8Io+g9qsKgmt7+I7ituXPrk83Hg
	ue8S2hMjBmRDAUstShIAprYZU/oyxuj3Bj3J9SjVJN55QbhnsDXzlExTp10tAKpO266R
	0EuOx7LPgWFRJA7bDOfCJJidT0CghuuHK31/O7awtwehIsHUmRk+JzwgsrwyLwVCgbJV
	LTvARgakAS7MDUjzuBz/mtRnzYt7Dd2XGZmpXTtWBet/bQd4rPMR7Ec+TavF/1zM4YS5
	Dt1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Ccv3uEbNrvNn5xSY6aHvVXCYaMjHrggHQQcpqSmAdbY=;
	b=Y+7Px22Q/RM7QZWybxSUG6+mi2GEa/nZ6mWpL7sYavclZ2CafpPyUmN6QYM0uFysKa
	iS764XoH4NdzLQYxOR/EODVtLRRjxnexGXnJi5u9417ivHP2zuksQj9h19FSh6uUpiEW
	iNJFzE5z/ASHi3M/qTQzKMntBlw4k5Mf9fyTmRoeYM7CZ0zQVInzaM2sPojN6D4IqR7x
	yzNRwTuyF1xHGh568GeMAC+NAClYl1uYcH8uyQg877X4GfDYSRAxqb0E69D4m7CwnOnu
	v8x014eNyuF5LZhGXIysrIqnRr9Wq8A6nju/IHvrqNrVhd6Gun2XNG3eaUK6+29N5lyC
	t3DA==
X-Gm-Message-State: ABUngveDWRSfG36rYtr5PDd0N+4cORQEe5UFKz8DE3ZpGr0/fHVVOtFDNYDszx1kI6+WjnP6xR3gwQoBbyIDYA==
X-Received: by 10.31.217.196 with SMTP id q187mr8438020vkg.84.1477355393250;
	Mon, 24 Oct 2016 17:29:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Mon, 24 Oct 2016 17:29:22 -0700 (PDT)
In-Reply-To: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
References: <CAA0Zw-yG86gejw2TT0Ly8AJ5MMcFV-NP7Q6S=BkbtyjeVqQ_hQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 24 Oct 2016 17:29:22 -0700
Message-ID: <CAMKF1soZfAUoXz0_0dh7j=H8dfQO2EpF2XUvWqJaX63QF0zY1g@mail.gmail.com>
To: Steven Osborn <osborn.steven@gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Poky issues
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
X-List-Received-Date: Tue, 25 Oct 2016 00:29:57 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 24, 2016 at 4:39 PM, Steven Osborn <osborn.steven@gmail.com> wrote:
> I'm trying to get a beaglebone build going and running into this issue.
> I've tried on Ubuntu 16.04 and 14.04LTS with no luck, any pointers would be
> really appreciated.  I'm pretty new to Yocto & bitbake.
>
> https://gist.github.com/lolsborn/b431513dbf8819850f26fb78c7753201

it has
/bin/bash: line 1: 43546 Killed build/genautomata
../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/common.md
../../../../../../../work-shared/gcc-5.3.0-r0/gcc-5.3.0/gcc/config/arm/arm.md
insn-conditions.md > tmp-automata.c
make[1]: *** [s-automata] Error 137

how much ram do you have on your build machine ?
>
> --
> Steven Osborn
> http://lolsborn.com
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

