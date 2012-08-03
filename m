Return-Path: <ratheendran.s@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB3CBE0141D
	for <poky@yoctoproject.org>; Thu,  2 Aug 2012 21:50:24 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so439586ghb.35
	for <poky@yoctoproject.org>; Thu, 02 Aug 2012 21:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=eO7c32P021lcN6UVuQDl7P94wVjWSoGFUj4STtSw+NE=;
	b=yr1bdi+d0Vlv/KH/iLWi4ROtk10nFWmZ4E8rndo49IS3ll5fDt0Hd1CAiwniAiZC3L
	uTSqsQcGt3QqHRdJoldOCM5ScfHd/wdnW06wGyMtzE5l1DwcWlZGPMOu/EiQ76UY1NBC
	7OIqbbANLklNiOBoss9TubzgrKl30qQtzFmRj/XMbl/FBNl430xwzxNoi8e64KgrUkuv
	kYV56f+pLYCDU6UckVYAPSpzLck3x4sGN7fWb40w9UkrpRUlYLJhK+SmWNONoZ919ZUG
	lqKDJ0/MJKYtgwWalLaIThyRKeKMVADmvZ/fah9nCLO7H5o0Am9Ajm/ADq4SN4z+qECE
	ngAA==
MIME-Version: 1.0
Received: by 10.50.190.230 with SMTP id gt6mr843162igc.48.1343969423554; Thu,
	02 Aug 2012 21:50:23 -0700 (PDT)
Received: by 10.50.135.10 with HTTP; Thu, 2 Aug 2012 21:50:23 -0700 (PDT)
In-Reply-To: <4002576.7rubR7mxtc@helios>
References: <CALM_QrXnC+y7S2EFq1bJhJxr5YVfgMvRuVx0BoTJ0+1TaGjUYQ@mail.gmail.com>
	<4002576.7rubR7mxtc@helios>
Date: Fri, 3 Aug 2012 10:20:23 +0530
Message-ID: <CALM_QrV+zNu2NfbBM5sGTtuVhrcF3MjExAbRDSzWBHSaJumhBg@mail.gmail.com>
From: Ratheendran R <ratheendran.s@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Qt embedded in
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
X-List-Received-Date: Fri, 03 Aug 2012 04:50:24 -0000
Content-Type: multipart/alternative; boundary=14dae93406bb1476d104c65544b7

--14dae93406bb1476d104c65544b7
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul for clarifying this.

We are working on the arm9 board which is using kernel 2.6.21,the latest
file-system has issues with touch screen.we are currently working on Qt
4.6.2 which is satisfying our needs.

Currently I am trying my luck with yockto-1.0 release which includes
Qt4.6.3.

With Regards,
Ratheendran

On Thu, Aug 2, 2012 at 1:46 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Wednesday 01 August 2012 23:31:05 Ratheendran R wrote:
> > I am new to yocto linux distribution, I am trying out yocto 0.9 release
> > which is of my interest
> >
> > Yocto Project 0.9 Release Notes for Poky
> > 4.0<
> http://www.yoctoproject.org/download/yocto/yocto-project-0.9-release-not
> > es-poky-4.0> Version: 4.0.1 "Laverne"
> >  Release date: 11 Mar 2011
> >  Type: Yocto
> >
> > I am not able to find the recipe for Qt embedded 4.6.3,kindly let me know
> > if that is missing from my observation,please let me the work around for
> > this.
>
> There was no Qt/Embedded recipe in 0.9, that is correct; that was not added
> until the release after that.
>
> Is there any particular reason why you want to use such an old (and by now
> unsupported) release? If not I suggest you use the latest stable release
> (denzil / 1.2.1).
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--14dae93406bb1476d104c65544b7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Paul for clarifying this.<br><br>We are working on the arm9 board wh=
ich is using kernel 2.6.21,the latest file-system has issues with touch scr=
een.we are currently working on Qt 4.6.2 which is satisfying our needs.<br>
<br>Currently I am trying my luck with yockto-1.0 release which includes Qt=
4.6.3.<br><br>With Regards,<br>Ratheendran <br><br><div class=3D"gmail_quot=
e">On Thu, Aug 2, 2012 at 1:46 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleto=
n@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wednesday 01 August 201=
2 23:31:05 Ratheendran R wrote:<br>
&gt; I am new to yocto linux distribution, I am trying out yocto 0.9 releas=
e<br>
&gt; which is of my interest<br>
&gt;<br>
&gt; Yocto Project 0.9 Release Notes for Poky<br>
</div>&gt; 4.0&lt;<a href=3D"http://www.yoctoproject.org/download/yocto/yoc=
to-project-0.9-release-not" target=3D"_blank">http://www.yoctoproject.org/d=
ownload/yocto/yocto-project-0.9-release-not</a><br>
&gt; es-poky-4.0&gt; Version: 4.0.1 &quot;Laverne&quot;<br>
<div class=3D"im">&gt; =A0Release date: 11 Mar 2011<br>
&gt; =A0Type: Yocto<br>
&gt;<br>
&gt; I am not able to find the recipe for Qt embedded 4.6.3,kindly let me k=
now<br>
&gt; if that is missing from my observation,please let me the work around f=
or<br>
&gt; this.<br>
<br>
</div>There was no Qt/Embedded recipe in 0.9, that is correct; that was not=
 added<br>
until the release after that.<br>
<br>
Is there any particular reason why you want to use such an old (and by now<=
br>
unsupported) release? If not I suggest you use the latest stable release<br=
>
(denzil / 1.2.1).<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br>

--14dae93406bb1476d104c65544b7--
