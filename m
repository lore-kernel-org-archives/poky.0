Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 448F4E00529; Wed, 22 Aug 2018 11:39:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1D1E00460
	for <poky@yoctoproject.org>; Wed, 22 Aug 2018 11:39:43 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id s198-v6so4847694oih.11
	for <poky@yoctoproject.org>; Wed, 22 Aug 2018 11:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oibuiksYYxYGTidinrmMGrXJKTAU4MkAawy4kfcgu9Y=;
	b=fiy08n/QzN5X+Tjz2Yc3/pOHUlSqCHrpvrbiRA9qU5g6yVBpoiIB7ia6G9mj6rm7cU
	mYpLDcFRd/EnLPm76cRYxoDghvfpu9GoXk23mNRoKVqD/Mq6nB6Dq5FqrRVekLB1Vrky
	ptUJhGnSEUnO3N8m4wf/y8SzKpxDRcovZ+5IPKe2xa5ZrM5PRuL0Lf44jlLdDFVVIu/o
	g+qT86Rf5DR9uGSo2wZBP6J00rKnzY3HCwaXMW8ymuHMt/LN1YYDrKfiWT9SLZG8uUqk
	r+iCZ3AVbEx4pNtZVu4diHdAt+n0eAle5wAOWnnjxBSEaYuodvHZWT+mQgK9B7lcDUTi
	IPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oibuiksYYxYGTidinrmMGrXJKTAU4MkAawy4kfcgu9Y=;
	b=YT/kcfSQ5L46zim6QhP02SBvj2x5ko4XULdphfWYT93fQJunSRIW4IgcA2ro67SSzn
	x/aF0juKaw+Krp5jcyFQ+g6aqZxKcg5fUw62SwHYME9tGnWuefFIU0KdYcaQ7ygGfn15
	uXFYcdFpZtIaHX8K62rVFv5G5B0+2PKHkBuwJbxft/LW2J+YnNQ0dssyLTRxc5hZYQl2
	/N/K08EHt2Tq2CZLraoYA57dIdlX2ced4FCyd8ygsa3vkYzuBhhb8QDzMv8yL2JXLs08
	NIfuFtnnXg0kkV9XUQwiqWky8EZ1xWmhUbcwim8qg+Nup8qvAX4YNItAwXNzzLecEhrE
	EqyA==
X-Gm-Message-State: APzg51COM2Hx+A/ziFfrsYP8bNmtGAdStiYFZd82k4E4wbqAp2KmMZVA
	wjM0jVl9VHJ4Yo0iwQu6hIGnmFJx2UBL2+XIuQvLc1py
X-Google-Smtp-Source: ANB0VdYWNZVDWtR5FGzu7bxBPpwFnNEQwL7iL7GbrDY/DginEZRZ+0oBo/zuxrbnVaXz6UOpVmRL9EcZ0gL+t04o8l8=
X-Received: by 2002:aca:ba83:: with SMTP id
	k125-v6mr720761oif.226.1534963183477; 
	Wed, 22 Aug 2018 11:39:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 11:39:43
	-0700 (PDT)
In-Reply-To: <23b93cf4-bdf4-4d5e-7592-c3e9a5dcdd7a@pelagicore.com>
References: <23b93cf4-bdf4-4d5e-7592-c3e9a5dcdd7a@pelagicore.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 Aug 2018 20:39:43 +0200
Message-ID: <CANNYZj_7yojsaVawbutT8euM9xSaXRxDSSVnFgPHH_RTAfjYTw@mail.gmail.com>
To: Dominik Holland <dominik.holland@pelagicore.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: nativesdk-python3 support for mingw
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
X-List-Received-Date: Wed, 22 Aug 2018 18:39:45 -0000
Content-Type: text/plain; charset="UTF-8"

Out of curiosity, why are you pursuing this? Is someone refusing to
install Linux? :)

(also greetings from Luxoft/Berlin :)

Alex

2018-08-22 14:48 GMT+02:00 Dominik Holland <dominik.holland@pelagicore.com>:
> Hi,
>
> not sure whether my last mail on this actually got on the list (didn't found it on the archive, so sending it again...)
>
> i tried to create a mingw-based windows SDK using poky which also
> contains python3 (nativesdk-python3).
>
> It looked like nobody have tried to do this before (or support for it
> was removed again ?). So i fixed a few recipes (db, gdbm, ncurses,
> readline, openssl) to compile with mingw.
>
> Aftwards i also fixed python3 and got it working in a packaged SDK. To
> do that i applied the patches from the mingw package maintainers (~80
> patches).
>
> My question is whether all these fixes for the mentioned packages are
> wanted ? Is there an interest in supporting a full fledged mingw SDK ?
>
> And are you also interested in the mingw patches for mingw (I didn't
> check whether i need all of them, that's probably some python expert
> should check).
>
> Thx
>
>  Dominik
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

