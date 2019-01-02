Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03F22E00CFB; Wed,  2 Jan 2019 14:19:10 -0800 (PST)
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
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C76EE00CEC
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 14:19:09 -0800 (PST)
Received: by mail-qk1-f169.google.com with SMTP id w204so18728168qka.2
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 14:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1zHd4mYGKImaoqmnHWzE/T7NuvqHJKTfZ33DjsgnPw8=;
	b=KuxZ62AJRKnUjDN9SFGI6DzFmTC080iTqQ3nxE19pRUldy4u2mHPiMipoeQaKN0Gqu
	hqip7VRRykBZAe0HBTg29v83w9YIhvnDJuf0B/kVEGv36OqssqJQUsGEc7pzU4wh+4UW
	ZrHkm2zVfBE4+I6mlxeqseUsg2BcBsjl1C1TKtjQUNp5ZbSTlbHqhT8SyOw6zDZBW+qa
	RsgvDTZk8Nb9vf/WHzChSzYDhTHvgWqO8FU4Zy/d8HWU54Vh+GRjBLYhAF+eZiAEokNg
	wnaG/g3LCK7JCzMwnZfLfjt2aEle9IYNHXpf1esDbJcpC2e9gPqBCA/R31WzYHp2PtDe
	bP1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1zHd4mYGKImaoqmnHWzE/T7NuvqHJKTfZ33DjsgnPw8=;
	b=ofDzAxsd6VFpaVW7lyE+/zSJtVCRcJw6mcfl7ZmLHbXuyyPO6erMMJ7gNnUfdLctjT
	ZHEFOp+oSUBzrGAsKuEYmg/j64/tTor4In4sRbA7vfr1s0UqQ5whY5vTvlOYHNtJH95X
	mqVZ0CW25a6v0qeenHjw6WkzILsDXvQj+zN6e86dOGBtzoBluYqW+gqlF9cPYGa890B6
	a537tr7atncvxARgLxpOKr1GK1Xg3t8Z72tYUTF1922HN4FKX5py4/QFGhV16sOirDbf
	XATQr6ucaYDPC5UvD7qoEJoDjhQAQxpVeYiE13lnM+f0GyddvaamcAmmc/Ab49IgfqML
	CQpw==
X-Gm-Message-State: AJcUukeYEX8ana8JLJufzr9gKsKshSokT3C0vnUNqMqKOox5jsw5NNwt
	7kQS2KQgHealbC2TwS9t/m/OWt2GkmttfkcPHDI=
X-Google-Smtp-Source: ALg8bN7tMNuHXoL/mGx533PBjfFvCAXgcgB/BcmDNYWaMPUrr5hQ7e7/t7oRVtzfLEkFb23OSfZtkL9PAedRlt+ioDs=
X-Received: by 2002:ae9:dc43:: with SMTP id q64mr41079383qkf.223.1546467548624;
	Wed, 02 Jan 2019 14:19:08 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
In-Reply-To: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Jan 2019 14:18:42 -0800
Message-ID: <CAMKF1sqogmNy0uRuiShQUP7ONpJjwgrpaTKFAAd378sQ7YWYwQ@mail.gmail.com>
To: Matthew Stanger <matthew_stanger@trimble.com>
Cc: poky@yoctoproject.org
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
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
X-List-Received-Date: Wed, 02 Jan 2019 22:19:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jan 2, 2019 at 12:37 PM Matthew Stanger
<matthew_stanger@trimble.com> wrote:
>
> Hi,
>
> I'm getting a build failure under Thud when trying to use the
> following tune in my machine.conf:
> #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
> require conf/machine/include/at91sam9.inc
> DEFAULTTUNE = "arm926ejs"
>
>
> When doing a fresh build 'glibc-initial' config stage fail's with:
> | checking for broken __attribute__((alias()))... yes
> | configure: error: working alias attribute support required
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)
> ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-initial_2.28.bb:do_configure)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-initial_2.28.bb:do_configure
>
> Can give follow on config.log's and such as required.

yes that would be helpful. Since gcc has become stricter with option
checks, its possibly ending in some combination which either is invalid
or is wrongly computed by gcc from -mcpu

>
> If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
> change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc builds
> fine. GCC tuning is totally outside my expertise so I'm hoping someone
> can confirm if '-mcpu' is really desired over '-mtune'? And also if
> this look like a Poky issue or something else?
>
> Cheers,
> Matt
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

