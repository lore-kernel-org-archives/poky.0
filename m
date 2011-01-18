Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f65.google.com (mail-bw0-f65.google.com
	[209.85.214.65])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCD2C4C80039
	for <poky@pokylinux.org>; Mon, 17 Jan 2011 18:59:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz4 with SMTP id 4so1004344bwz.8
	for <poky@pokylinux.org>; Mon, 17 Jan 2011 16:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=6koxvTInjUiScWZj474xTSwVUDhX32yHvbVpBpx0UbQ=;
	b=c7Ih50ccDTW00IsGjOjgG6kcr4oy4fh4xTQgnvr00CixCELwNX4rfPUmLGXpjVvYjv
	iq/u8MUyx9ObOca/xUBfdGoJ1T+eua0juK9XMK40AbZsdMDjdT0Ht5fM1kZH9xoHsh79
	VKYeQhBHL7JtKbGxltbqXgHVX/fqtLaZxC5uc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=fayQY5ntl5AWaNk45owl1AbU2n1b6GvsvoLcAKW4JnDBCheFZCv7VCVWM85gewx5mA
	rEmrGXiVyqD98jeSof0Ztcy9QohdgMLg9MtujeS5lmfwUlYaYBSvIi2yT3iTzmrEKkz/
	yQUnu/4dp+n2NQDpKSzzjUJ0UIjQvZ7XZ/daA=
MIME-Version: 1.0
Received: by 10.204.59.140 with SMTP id l12mr2724084bkh.2.1295312345588; Mon,
	17 Jan 2011 16:59:05 -0800 (PST)
Received: by 10.204.16.134 with HTTP; Mon, 17 Jan 2011 16:59:05 -0800 (PST)
In-Reply-To: <loom.20110118T004536-689@post.gmane.org>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
	<1295296178-18590-3-git-send-email-aalonso@secretlab.ca>
	<loom.20110118T004536-689@post.gmane.org>
Date: Mon, 17 Jan 2011 18:59:05 -0600
Message-ID: <AANLkTimNTDXpOG74pw6SotCqmB=N4nxwLZ+2Y+hjbsCX@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Ilya Yanok <yanok@emcraft.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 03/25] gcc: crosssdk unset TARGET_FPU
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Jan 2011 00:59:10 -0000
Content-Type: multipart/alternative; boundary=001636ed6d013b650d049a14681a

--001636ed6d013b650d049a14681a
Content-Type: text/plain; charset=ISO-8859-1

Hi Ilya,

I will also look for the proper solution,
However un-setting TARGET_FPU only affects the target machines
in meta-xilinx layer bsp, so other Powerpc targets are not been affected
with this patch.

Regards

On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <yanok@emcraft.com> wrote:

> Hi Adrian,
>
> Adrian Alonso <aalonso@...> writes:
>
> >
> > * Configure fails due that --with-float=soft
> >   flag isn't supportted by powerpc arch
>
> That's not true. PowerPC support soft-float (and we actually need this for
> MPC8308 which has e300c3 core without FPU).
>
> For me, configure fails with the same message but that's not because
> PowerPC
> lacks support for soft-float but cause gcc-crosssdk recipe passes wrong
> --target= option to the configure script (for me it's x86_86-pokysdk-linux,
> I'm
> building on the x86_64 host).
>
> > * Unsetting TARGET_FPU this flag to not try to use
> >   this flag
>
> So please do NOT unset TARGET_FPU, some targets really need it. I'm looking
> forward to see a correct solution for this issue.
>
> Regards, Ilya.
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--001636ed6d013b650d049a14681a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Ilya,<div><br></div><div>I will also look for the proper solution,</div>=
<div>However un-setting TARGET_FPU only affects the target machines</div><d=
iv>in meta-xilinx layer bsp, so other Powerpc targets are not been affected=
</div>
<div>with this patch.</div><div><br></div><div>Regards<br><br><div class=3D=
"gmail_quote">On Mon, Jan 17, 2011 at 5:55 PM, Ilya Yanok <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:yanok@emcraft.com">yanok@emcraft.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Hi Adrian,<br>
<div class=3D"im"><br>
Adrian Alonso &lt;aalonso@...&gt; writes:<br>
<br>
&gt;<br>
&gt; * Configure fails due that --with-float=3Dsoft<br>
&gt; =A0 flag isn&#39;t supportted by powerpc arch<br>
<br>
</div>That&#39;s not true. PowerPC support soft-float (and we actually need=
 this for<br>
MPC8308 which has e300c3 core without FPU).<br>
<br>
For me, configure fails with the same message but that&#39;s not because Po=
werPC<br>
lacks support for soft-float but cause gcc-crosssdk recipe passes wrong<br>
--target=3D option to the configure script (for me it&#39;s x86_86-pokysdk-=
linux, I&#39;m<br>
building on the x86_64 host).<br>
<div class=3D"im"><br>
&gt; * Unsetting TARGET_FPU this flag to not try to use<br>
&gt; =A0 this flag<br>
<br>
</div>So please do NOT unset TARGET_FPU, some targets really need it. I&#39=
;m looking<br>
forward to see a correct solution for this issue.<br>
<br>
Regards, Ilya.<br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><br>-- <br>Saludos<br>Adrian Alons=
o<br><a href=3D"http://aalonso.wordpress.com">http://aalonso.wordpress.com<=
/a><br><br>
</div>

--001636ed6d013b650d049a14681a--
