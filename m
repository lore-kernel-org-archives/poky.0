Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E9EFE0071E; Mon, 15 Feb 2016 16:00:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85AB4E00444
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 16:00:10 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id o6so61089504qkc.2
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 16:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SOx4gY++2yBRplJ5klLMxqjkyJ7y5OpbxOWbC890z18=;
	b=RUnuTY3S6RTj8A+P3jaz/D+7ihvHiBNsjqjAqCMXfDcpPGYhZLpQOZr3czvYkkf8Er
	8Cgx7qIs57jR/jQpieNXkmazG2bE3HrhS63QH2s4Qq/tK5Vm84I/YhTZ44lG16gQa8Ph
	B4gHOsV6huANMKeZ7c3VS0oLQKUxDXoA3LPSQfE15G2fqm7ABt5uvQu+Enex82QzfL6O
	HS+LuqDSo4NxFosYy3DgmyMGnRz2+zISeJ/rzOgI9vPxTn3VHS597BPyPgg7IkGBV1y2
	I8l1yi79a6a7MSau/98B1fVcGRFLyiIJctb0c5aeKVdd7exW9liZrutDUh00snjgLs19
	r3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SOx4gY++2yBRplJ5klLMxqjkyJ7y5OpbxOWbC890z18=;
	b=ZwiMe5mCuVsUc8bvKW9gG7PW4pcYXK0VNEg6cSZWsRxZvy2UMCoVGU6dt6N5wWmujZ
	ck4f82E0r8mDo7SY9AjlUacQVdHaDT524HPDgox7e3uKoLix6bpz33bpex16/NpIltko
	upGWBcCmCMJdNcpcpAmY/9C2Cqcf+9FDfrxk7xbVGqNGKExmWBPT0nD6osLK61dhjcp1
	8uC+5U70UT59Z7mt05BS61HEdvUp9Ibt5T1Zen09zs8qMkHOZ/hbR+UoluLQeKxTlpG7
	JONyAfAmldvVFOmjEWN0BgzenqNNn8RnVZB5AYaZ2mGUBnVXcj6JKuKt+MSV50Ob6e89
	BWFg==
X-Gm-Message-State: AG10YOQUbgIiTWKtNl3u50uqTTWTqgm3ZxkEIHqQx0y+BLUMO6LhJNAstbOwns9U0wHf10cf2eW4WT10ooix0Q==
X-Received: by 10.55.75.203 with SMTP id y194mr24194145qka.2.1455580809471;
	Mon, 15 Feb 2016 16:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 15 Feb 2016 15:59:40 -0800 (PST)
In-Reply-To: <CAA2DH4ujkrDqo3RYsm7RCQQsV_Nb6LmvT=1Xns4zaXO0t-PE8w@mail.gmail.com>
References: <CAA2DH4ujkrDqo3RYsm7RCQQsV_Nb6LmvT=1Xns4zaXO0t-PE8w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 Feb 2016 15:59:40 -0800
Message-ID: <CAMKF1sqqLBFg-YsG49WWTAmNUcpqYz8tQNaQqEL8rrUAzeE1tg@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can I force a particular recipe to rebuild every time?
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
X-List-Received-Date: Tue, 16 Feb 2016 00:00:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 15, 2016 at 4:38 AM, Prasant J <pj0585@gmail.com> wrote:
> Hi,
>
>
> I'm writing my own layer for the Intel Atom Board.
>
>
> - Is there a way to force a recipe to be rebuild every time
> core-image-minimal-initramfs is built?

you can use
do_<taskname>[nostamp] = "1"
in recipe. However, its a bad idea to have such code
in production builds, it may be ok during early development.

>
> - Is there a ROOTFS_POSTPROCESS equivalent for
> core-image-minimal-initramfs image?
>
>
>
> Regards, Pj
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

