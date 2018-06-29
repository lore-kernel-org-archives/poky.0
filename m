Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9526EE00E5E; Thu, 28 Jun 2018 23:05:54 -0700 (PDT)
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
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D663DE00E39
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 23:05:53 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id n4-v6so5076397uad.6
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 23:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IsiFixZMDKVGWc5xZKqfhQ1q08XM9TkMn2i/alG67Wo=;
	b=fAEmzC22XJRvFTR4SJH1mZtKZFc4QIu404q3Zuqips+i3eL/bhjLcbqmueSIC+jJsz
	uYEsW6gNbttSEVCLwAsT5c+oEwMVJXd/l5c3ibQax1corux11svvoD5nhA7aL8gv9eHE
	pPP4GlVRQiQTaxRjXKOuB9tFElcLKNvYQeoFAUxI/FylmTegTbjuu368oZZXA3KbDIO7
	ArqS+TOeFzbBgZJlYlqeaxjdOt+nbx+eFZ7WqVaVwA4uvav6zp21rJCLnA/9BdjI6cwt
	+XBml9nO0S5n6n2Lu1MB1iVfUqAG6vu8wTBxJ3rqVuQLwOV9KdeeMZh9NiDRGMcqgVQJ
	RkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IsiFixZMDKVGWc5xZKqfhQ1q08XM9TkMn2i/alG67Wo=;
	b=Y4iwNTINud2VBGTPUc/iq9LPat1NVNvZaxHWmdZCBuUG3Hd3eh3lmuz47Pn3LFvTvC
	tBebdq4gwGkoaMlaeukFB0BCzZ7bwT4k+prgbupW5BzwvOx8rQKSxVBraOFNSaFJOrFU
	W0oA+yLLkts+ieZ1Pc/YqohIyEEEKy6YC2EB/SnrSuP2JzNL3lX30WnlN5MqvIrYILcc
	kXJjHupNyEILS+pZNXdXZbQ5M8tst7S/Pu/4WIr+zImL8iszWZTee2cI01UuCI5TVHzn
	fkmnEAu4IRhOqJFFkQf9UszarsnRFPT3qEUPlZ3up8WIgJ+8X14rnLADTpC9n1msKOAX
	Utdw==
X-Gm-Message-State: APt69E2k8YY2f19mzuX/0wCB9BwZNX15dRLN2XS+wnpcDeHJ9ilHQczd
	/OfqNixMZaWyAW3zlgwI4T/qRIcbY8+YPLedlW0=
X-Google-Smtp-Source: AAOMgpch4hrzEY8WlgdpukCruqOmufURimoyiSPxkppBqO6r8bG6G2i7gP7U0VsRyqYhBkyz3rUgNl7oZSKqFnw5wbE=
X-Received: by 2002:a9f:3613:: with SMTP id
	r19-v6mr8565471uad.49.1530252352778; 
	Thu, 28 Jun 2018 23:05:52 -0700 (PDT)
MIME-Version: 1.0
References: <CACW=nhQwW3KKyhzPK2SFqy+z+jzCa+guBq4so4QYgj=y7p34xw@mail.gmail.com>
In-Reply-To: <CACW=nhQwW3KKyhzPK2SFqy+z+jzCa+guBq4so4QYgj=y7p34xw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Jun 2018 23:05:12 -0700
Message-ID: <CAMKF1sofQ=94YU=djgAhUGsoOE-Dt=Jk0J+aVXPr=+taguUO1g@mail.gmail.com>
To: HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE <evd16i006@iiitdm.ac.in>
Cc: poky@yoctoproject.org
Subject: Re: Building poky kernel with pre-compiled toolchain
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
X-List-Received-Date: Fri, 29 Jun 2018 06:05:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 28, 2018 at 3:17 AM HRISHIKESH HEMANT BORATE HRISHIKESH
HEMANT BORATE <evd16i006@iiitdm.ac.in> wrote:
>
> Hello,
>
> I have build the riscv-gnu-toolchain from here
> https://github.com/riscv/riscv-gnu-toolchain
>
> with march="rv64imafd" and mabi="lp64d"
>
> But, I am unable to use it to build the poky kernel. I tried changing TCMODE
> with this link as reference but it didn't work.
> https://www.yoctoproject.org/docs/1.8.1/ref-manual/ref-manual.html#var-TARGET_ARCH
>
> I also tried referring to section 3.1.3 of this manual
> https://www.yoctoproject.org/docs/1.8.1/adt-manual/adt-manual.html#extracting-the-root-filesystem
>
> but this is giving the following error
> ERROR: Task (/home/hrishikesh/cr/riscv-poky/build/../meta/recipes-devtools/gdb/gdb-cross_8.0.bb:do_compile) failed with exit code '1'
>
> Please help me to build the kernel with my pre-compiled toolchain.
>

it seems you want to hook up an external toolchain. you might have to
look through https://github.com/MentorEmbedded/meta-sourcery as an
example on how you can hook in prebuilt toolchains.

Regarding gdb issue, note that gdb support for riscv was not fully
upstream in 8.0 release so the gdb in OE-Core wont build out of
box, however if you use meta-riscv then it provides gdb-riscv recipe
which builds the gdb from riscv fork.

In anycase, I would advise that any patches needed to enable rv64imafd
in toolchain should be submitted either to oe-core or
to meta-riscv and then use the internal toolchain to get to what you
want, that might be fastest route.

> Thanks and Regards,
> Hrishikesh Borate
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

