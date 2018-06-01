Return-Path: <anand.build1985@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0728E00CA4; Fri,  1 Jun 2018 03:51:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anand.build1985[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1033E00843
	for <poky@yoctoproject.org>; Fri,  1 Jun 2018 03:51:09 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id 36-v6so12230997lfr.11
	for <poky@yoctoproject.org>; Fri, 01 Jun 2018 03:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=T3I65aurd0VLj/s6S3GEZ+Z36f/8KTNUFJofSifGGPU=;
	b=Abzdj0mb7hC9q57wEYr9u3OAOX5p+fMdLUU5YJ/PPs6UQ0LhrFFCwAidCvbdxCpVha
	VXIPUDuSIa0tshUeXiuGMNN8UEdOpWWpkbecF0x/SIu3TRAYNAOliK6bvuML8uClbH2Y
	A7mHWQORZQSs3OPOjY/+znmVTtxeXGoAQVY/LLdtRr3xp0aqlOsoMQM6DOOH7R1m8Vt9
	L7fka7XieFs8X9f1Q5xiQxSC9CkRgpzHD2BU1mD+kQNXGko8eNEXCRrjghixadpkvIlx
	Djt3i/8QaVZgJddg2GnI4psQYT3QbxgGmrHSWC/GoY6FJsm2AmNeSM2TUz00yTOI0weg
	3fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T3I65aurd0VLj/s6S3GEZ+Z36f/8KTNUFJofSifGGPU=;
	b=erCe/vcjw/B8B/2qxxB68Z+1rBBu2fgrESEGJJkX1n6OFVIAEKebc/LqAV1vRqY6R8
	zlClv9hnqHBlfaHwJfwZ2Mo4Cz2zi6mMhJHU7e6a6ubR/wr09HKlRYm9tFgnZBYBVMiT
	MzbIuJqyQgup8HzB6AaCdrC8cncXlUe/qMfDZ0YqfXjvKNGGj6yCDM49Rulcgxc9stK7
	9nIuCfwg7ve/+h0Xg17XaYfkPAUhVGXdPuwmoofkq7Dz8RP8eLJiK1qKb+H0tIrujdwi
	eFAmrw80fELKeb5Cdm86HH1I8/Tp6c9/LIBM0FKhgjjwpT12T5D+o9t/MnwprTODlh6q
	Pusw==
X-Gm-Message-State: ALKqPwf46+psM+wgF6a6F4w0aVQoHep5Arkk1+9xJISf3/W6TPhmhRd5
	KRtWRsv5ImM1zPLdSZ5LGDClXtfpFUyUEoz56kk=
X-Google-Smtp-Source: ADUXVKJlBDGzAKtjRTzM1x2YrydfwPd0N1NjcZcsB4y63ZgOIQhFJFsnP9tt6KmqN2oZUaSdcg0v2rpJGdOlELY3JTA=
X-Received: by 2002:a19:964b:: with SMTP id
	y72-v6mr6669120lfd.96.1527850268736; 
	Fri, 01 Jun 2018 03:51:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE5D7@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV5Sx_p_0xa77b5FFb=swc68k49MzOj5ugHEthVNmY=bxA@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE689@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV6bQSXr8XcmvgTg5gUTmy8qESwKumNUNpm8cksh4QA8kQ@mail.gmail.com>
	<CA+=TBV57imMQ+NjwfC6k53Dp3CWYhwAJNyZhZ_gCLFv8F69N_g@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EFEC7@PGSMSX104.gar.corp.intel.com>
In-Reply-To: <D4F5B5CFEF9DBB4A9DDB70CFEF737641029EFEC7@PGSMSX104.gar.corp.intel.com>
From: Anand Ingale <anand.build1985@gmail.com>
Date: Fri, 1 Jun 2018 16:20:57 +0530
Message-ID: <CA+=TBV6HQ06e7OQyYjqQDTJ=22asH7wU4mXSUq9oGvs6DcZQWg@mail.gmail.com>
To: apoorv.sangal@intel.com
Cc: poky@yoctoproject.org
Subject: Re: testimage feature ( automated tests for qemu images ) not working for qemuarm virt machine
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
X-List-Received-Date: Fri, 01 Jun 2018 10:51:10 -0000
Content-Type: multipart/alternative; boundary="00000000000089c1c8056d925c1a"

--00000000000089c1c8056d925c1a
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 1, 2018 at 2:55 PM Sangal, Apoorv <apoorv.sangal@intel.com>
wrote:

> > -----Original Message-----
> > From: Anand Ingale [mailto:anand.build1985@gmail.com]
> > Sent: Thursday, May 31, 2018 5:42 PM
> > To: Sangal, Apoorv <apoorv.sangal@intel.com>; poky@yoctoproject.org
> > Subject: Re: [poky] testimage feature ( automated tests for qemu images
> ) not
> > working for qemuarm virt machine
> >
> > Attaching  log.do_testimage
> >
> > On Thu, May 31, 2018 at 2:33 PM Anand Ingale <anand.build1985@gmail.com
> > <mailto:anand.build1985@gmail.com> > wrote:
> >
> >
> >       AIngale@swpfintbld03:~/Poky-1/poky-virt/build-2$ bitbake
> core-image-
> > minimal -c testimage
> >       WARNING: Host distribution "ubuntu-14.04" has not been validated
> with
> > this version of the build system; you may possibly experience unexpected
> > failures. It is recommended that you use a tested distribution.
> Image was build on host distribution Ubuntu 14.04, there was a warning
> message indicate this during bitbake.
> The highest Kernel Supported version for Ubuntu 14.04 Distribution is up
> to v4.4 (Ubuntu 14.04.5).
> This can be source from https://wiki.ubuntu.com/Kernel/Support.
> The kernel image recipe add as core-image-minimal was Kernel version
> 4.17.0-rc5 which was 3 weeks ago releases by kernel.org. Even the latest
> Distribution for 18.04 supports kernel up to v4.15 only.
>
>     root@qemuarm:~# uname -a
> >  Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 2018
> armv7lGNU/Linux
> My recommendation would be to use Kernel Yocto supported and rebuild the
> core-image-minimal a version up (16.04) on Host Distribution
>
> -Apoorv
>

Hi ,
     i want to achieve this task on internal kernel 4.1.15 used by my
organization , on host distribution 14.04 . so i cant change kernel and
cant change host distribution .
  Poky's (rocko branch )  default  versatilepb Kernel  4.12.20  works on
host distribution 14.04 without any issues . So i am confused what i need
to change in internal kernel  4.1.15 used by my organization for testimage
feature to work ??  . Only thing i am changing is kernel .. i  am stuck :(

Anand

--00000000000089c1c8056d925c1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri=
, Jun 1, 2018 at 2:55 PM Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sangal=
@intel.com">apoorv.sangal@intel.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">&gt; -----Original Message-----<br>
&gt; From: Anand Ingale [mailto:<a href=3D"mailto:anand.build1985@gmail.com=
" target=3D"_blank">anand.build1985@gmail.com</a>]<br>
&gt; Sent: Thursday, May 31, 2018 5:42 PM<br>
&gt; To: Sangal, Apoorv &lt;<a href=3D"mailto:apoorv.sangal@intel.com" targ=
et=3D"_blank">apoorv.sangal@intel.com</a>&gt;; <a href=3D"mailto:poky@yocto=
project.org" target=3D"_blank">poky@yoctoproject.org</a><br>
&gt; Subject: Re: [poky] testimage feature ( automated tests for qemu image=
s ) not<br>
&gt; working for qemuarm virt machine<br>
&gt; <br>
&gt; Attaching=C2=A0 log.do_testimage<br>
&gt; <br>
&gt; On Thu, May 31, 2018 at 2:33 PM Anand Ingale &lt;<a href=3D"mailto:ana=
nd.build1985@gmail.com" target=3D"_blank">anand.build1985@gmail.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:anand.build1985@gmail.com" target=3D"_bla=
nk">anand.build1985@gmail.com</a>&gt; &gt; wrote:<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0AIngale@swpfintbld03:~/Poky-1/poky-virt/buil=
d-2$ bitbake core-image-<br>
&gt; minimal -c testimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0WARNING: Host distribution &quot;ubuntu-14.0=
4&quot; has not been validated with<br>
&gt; this version of the build system; you may possibly experience unexpect=
ed<br>
&gt; failures. It is recommended that you use a tested distribution.<br>
Image was build on host distribution Ubuntu 14.04, there was a warning mess=
age indicate this during bitbake.<br>
The highest Kernel Supported version for Ubuntu 14.04 Distribution is up to=
 v4.4 (Ubuntu 14.04.5).<br>
This can be source from <a href=3D"https://wiki.ubuntu.com/Kernel/Support" =
rel=3D"noreferrer" target=3D"_blank">https://wiki.ubuntu.com/Kernel/Support=
</a>.<br>
The kernel image recipe add as core-image-minimal was Kernel version 4.17.0=
-rc5 which was 3 weeks ago releases by <a href=3D"http://kernel.org" rel=3D=
"noreferrer" target=3D"_blank">kernel.org</a>. Even the latest Distribution=
 for 18.04 supports kernel up to v4.15 only.<br>
<br>
=C2=A0 =C2=A0 root@qemuarm:~# uname -a<br>
&gt;=C2=A0 Linux qemuarm 4.17.0-rc5-myker #1 SMP Sat May 19 17:25:41 UTC 20=
18 armv7lGNU/Linux<br>
My recommendation would be to use Kernel Yocto supported and rebuild the co=
re-image-minimal a version up (16.04) on Host Distribution<br>
<br>
-Apoorv<br></blockquote><div><br></div><div>Hi ,</div><div>=C2=A0 =C2=A0 =
=C2=A0i want to achieve this task on internal kernel 4.1.15 used by my orga=
nization , on host distribution 14.04 . so i cant change kernel and cant ch=
ange host distribution .</div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline"><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">=C2=A0 Poky&#39;s (rocko branch )=C2=A0 default=C2=A0 versatile=
pb=C2=A0</span></span>Kernel=C2=A0 4.12.20=C2=A0=C2=A0works on host distrib=
ution 14.04 without any issues . So i am confused what i need to change in =
internal kernel=C2=A0

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">4.1.15 used by my organization for testimage feat=
ure to work ??=C2=A0 . Only thing i am changing is kernel .. i=C2=A0 am stu=
ck :(=C2=A0</span></div><div><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline"><br></span></div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">Anand=C2=A0</span></div><div>=C2=A0</div></div>=
</div>

--00000000000089c1c8056d925c1a--
