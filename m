Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9989FE00DAB; Tue, 11 Oct 2016 09:08:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B4FFE007E8;
	Tue, 11 Oct 2016 09:08:15 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id n189so1766493qke.1;
	Tue, 11 Oct 2016 09:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=W0ricjKl4M9Vz7S/L3Xr+BuwgQrFC/KGSj9PeMetInc=;
	b=eaXuGqpPROYiJzcvc/hUmcPYB2cGWKtQygEj5/8MKkCI1cLJXmRpu7+qCyvkSZh6Sm
	OZsTkdQJNVk4E5uMCK3J9Ns8N+ci8vFcwujh9fOZ+aWAjc5osf0gKT+gSu4U7Hy8IKyc
	+lLVftpoiqp/Gm+NbONoyYA2Br4sCWHpnHV+LerFC8lt57mFx+8i+ch+jy817fsDVq5L
	9TZuPcmaaEkh6gu3YHoRyKT5FUAtqoIXeUsNCMGZyQSze9ZX0xVQVlop1nkI17Gp7rx0
	Vjmu4FUvrMwLuRLDDFSLOJxzfvSouNcVSzO+cxxUIrYNt6VC3Z9S70wW4joKHoXJhiLi
	6+xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=W0ricjKl4M9Vz7S/L3Xr+BuwgQrFC/KGSj9PeMetInc=;
	b=fm0EuSSumqCkGw/7nAaoSMSKSimfBP/9nncme5IC5bwqrxdrRRaLUcm8lwFZCdLCXi
	1/q/37PEZaFmdNB2be1nKjzoac7ouBnODYtw44JCVmRvtqJz8EvvUZ+JKjAi7gIs+b+B
	yFvgytzJHFgxk0rOmHMTRS6tvlfIbNN4H9F959SHbJleqhOg1fKzD5biJrj50y0lS9aR
	d4bGLSoXfyCJlbJ9V90FQPPT/VFka/MIHg4B+vfGbmYoa0CpyyDuxjhxqGb4chN2qMkh
	poCWzpZsw1zcWUisv8XcdQz9/2tuBEwzWAbXS0coSckpMvz0GgboK3ePHgZ0bBCMXwah
	nVbQ==
X-Gm-Message-State: AA6/9RkOs3Rs1LyHaSqiUlKjISuNskSM9fpDEuqGl2vzsakrQGJ90mTZzhhps3IYS3VbcM1QMx3YGa22HtuDhw==
X-Received: by 10.55.138.66 with SMTP id m63mr4372072qkd.159.1476202094961;
	Tue, 11 Oct 2016 09:08:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.45.203 with HTTP; Tue, 11 Oct 2016 09:08:14 -0700 (PDT)
In-Reply-To: <20161008073757.GB19124@pek-khao-d1>
References: <20160920120025.159211-1-kexin.hao@windriver.com>
	<20160920120025.159211-2-kexin.hao@windriver.com>
	<20161008073634.GA19124@pek-khao-d1>
	<20161008073757.GB19124@pek-khao-d1>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 11 Oct 2016 12:08:14 -0400
Message-ID: <CADkTA4MUmbL1hyVTjiXH5nGC1URd5LXArsernsjK_+az9ECApg@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [kernel-meta] meta-yocto-bsp: beaglebone: remove the stale kernel options
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
X-List-Received-Date: Tue, 11 Oct 2016 16:08:16 -0000
Content-Type: multipart/alternative; boundary=94eb2c060f227cc711053e991566

--94eb2c060f227cc711053e991566
Content-Type: text/plain; charset=UTF-8

I'm about to get onto a plane, but when I land in Berlin, I can have a look
and
locate the missing change!

Cheers,

Bruce

On Sat, Oct 8, 2016 at 3:37 AM, Kevin Hao <kexin.hao@windriver.com> wrote:

> On Sat, Oct 08, 2016 at 03:36:34PM +0800, Kevin Hao wrote:
> > On Tue, Sep 20, 2016 at 08:00:25PM +0800, Kevin Hao wrote:
> > > The kernel_configcheck complains about these unnecessary kernel
> options.
> > > The final .config is the same with or without them.
> >
> > Hi Bruce,
> >
> > It seems that you missed this patch for the linux 4.1 kernel-meta.
>
> Sorry for the typo. Should be linux 4.4.
>
> Thanks,
> Kevin
>
> --
> _______________________________________________
> linux-yocto mailing list
> linux-yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/linux-yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c060f227cc711053e991566
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m about to get onto a plane, but when I land in Berl=
in, I can have a look and<div>locate the missing change!</div><div><br></di=
v><div>Cheers,</div><div><br></div><div>Bruce</div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Sat, Oct 8, 2016 at 3:37 AM, Kev=
in Hao <span dir=3D"ltr">&lt;<a href=3D"mailto:kexin.hao@windriver.com" tar=
get=3D"_blank">kexin.hao@windriver.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><span class=3D"">On Sat, Oct 08, 2016 at 03:36:34PM +08=
00, Kevin Hao wrote:<br>
&gt; On Tue, Sep 20, 2016 at 08:00:25PM +0800, Kevin Hao wrote:<br>
&gt; &gt; The kernel_configcheck complains about these unnecessary kernel o=
ptions.<br>
&gt; &gt; The final .config is the same with or without them.<br>
&gt;<br>
&gt; Hi Bruce,<br>
&gt;<br>
&gt; It seems that you missed this patch for the linux 4.1 kernel-meta.<br>
<br>
</span>Sorry for the typo. Should be linux 4.4.<br>
<br>
Thanks,<br>
Kevin<br>
<br>--<br>
______________________________<wbr>_________________<br>
linux-yocto mailing list<br>
<a href=3D"mailto:linux-yocto@yoctoproject.org">linux-yocto@yoctoproject.or=
g</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/linux-yocto" rel=3D"nore=
ferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/linu=
x-yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt =
not follow the NULL pointer, for chaos and madness await thee at its end&qu=
ot;</div>
</div>

--94eb2c060f227cc711053e991566--
