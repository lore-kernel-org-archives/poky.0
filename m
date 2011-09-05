Return-Path: <akshat.embedded@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4FAE0122A
	for <poky@yoctoproject.org>; Mon,  5 Sep 2011 07:51:39 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so9793512pzk.16
	for <poky@yoctoproject.org>; Mon, 05 Sep 2011 07:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FCLbCAuqRBR60ibXV40VCSdhBeKWb1tRtizEiKUG7mw=;
	b=F2EEiR6snqM6xhOHKjuC8bC/AGTsgmYWSDsu4zG995D474DtYLghXDE9fiMcvcsr3M
	9eG94ZdM5NNPmw2ObotuM4XwJAL94eP5Qww5tv+Ro5rmr99htJpTwJKWes6Z9PDfebKD
	u1GXNhDuB9QRONwcmzUdQ/e5xVnhg+mP9xhHk=
MIME-Version: 1.0
Received: by 10.68.34.42 with SMTP id w10mr7058614pbi.313.1315234298050; Mon,
	05 Sep 2011 07:51:38 -0700 (PDT)
Received: by 10.142.127.6 with HTTP; Mon, 5 Sep 2011 07:51:37 -0700 (PDT)
In-Reply-To: <1314818486.5939.486.camel@rex>
References: <CAFt-cowyXXMup_j-i36Ws8zXz4xgBeUBSo-eOGDBxd7hymdDUg@mail.gmail.com>
	<1314818486.5939.486.camel@rex>
Date: Mon, 5 Sep 2011 20:21:37 +0530
Message-ID: <CAJrrM576Ep=mpUizw+zn_HH-yRS=UVAqXEQjvPBj+GOw+YCqSw@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@yoctoproject.org
Subject: Re: Can we build sugarbay for 32bit
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
X-List-Received-Date: Mon, 05 Sep 2011 14:51:40 -0000
Content-Type: multipart/alternative; boundary=bcaec520f47921b9aa04ac32d970

--bcaec520f47921b9aa04ac32d970
Content-Type: text/plain; charset=ISO-8859-1

Hi Richard,

I want to make *core-image-minimal *for* 32-bit*

I have tried

   - conf/machine/include/tune-core2.inc

I also tried

   - conf/machine/include/tune-1586.inc

But I got error in kernel compilation, as the kernel was still building for
64-bit mode and hence the mismatch.
I solved it by doing *make ARCH=i386 menuconfig, *and build again from
there.

Now, the live image seems to work fine, but after installing the image on
SSD and booting it from GRUB, it prompts: *bad file descriptor.*
*
*

Also, after changing the include file in machine conf as mentioned above,
grub 0.97 is made instead of grub2(1.98).

So, I modified conf/machine/include/tune-x86_64.inc

#DEFAULTTUNE = "x86_64"  to,

DEFAULTTUNE = "x86"

But the problem still persists.

Can you guide in finding :

   1. How can we make the kernel for 32-bit?
   2. Why is the grub legacy is built instead of grub2?
   3. And foremost, how to solve *"bad file descriptor" error in grub, *even
   though live image works.





On Thu, Sep 1, 2011 at 12:51 AM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2011-08-31 at 11:06 +0530, v sailaja wrote:
> > Can anyone please tell me how to build the "sugarbay" for 32bit. By
> > default sugarbay supports 64bit but is there anyway to change it to
> > 32bit.
> > My host machine is ubuntu 11.04 and 64bit.
>
> Change meta-intel/meta-sugarbay/conf/machine/sugarbay.conf
>
> to say
>
> conf/machine/include/tune-core2.inc
>
> instead of x86-64 and then it will build for 32 bit since that is the
> default for core2.
>
> Cheers,
>
> Richard
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Akshat

--bcaec520f47921b9aa04ac32d970
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Richard,<div><br></div><div>I want to make=A0<b>core-image-minimal </b>f=
or<b> 32-bit</b><br><div><br></div><div>I have tried=A0</div><div><ul><li>c=
onf/machine/include/tune-core2.inc<br></li></ul><div>I also tried</div><div=
>
<ul><li>conf/machine/include/tune-1586.inc</li></ul><div>But I got error in=
 kernel compilation, as the kernel was still building for 64-bit mode and h=
ence the mismatch.</div></div></div><div>I solved it by doing <b>make ARCH=
=3Di386 menuconfig, </b>and build again from there.</div>
<div><br></div><div>Now, the live image seems to work fine, but after insta=
lling the image on SSD and booting it from GRUB, it prompts:=A0<b><i>bad fi=
le descriptor.</i></b></div><div><b><i><br></i></b></div><div><br></div><di=
v>
Also, after changing the include file in machine conf as mentioned above, g=
rub 0.97 is made instead of grub2(1.98).</div><div><br></div><div>So, I mod=
ified conf/machine/include/tune-x86_64.inc</div><div><br></div><div>#DEFAUL=
TTUNE =3D &quot;x86_64&quot; =A0to,</div>
<div><br></div><div>DEFAULTTUNE =3D &quot;x86&quot;</div><div><br></div><di=
v>But the problem still persists.</div><div><br></div><div>Can you guide in=
 finding :</div><div><ol><li>How can we make the kernel for 32-bit?</li><li=
>
Why is the grub legacy is built instead of grub2?</li><li>And foremost, how=
 to solve <b>&quot;bad file descriptor&quot; error in grub, </b>even though=
 live image works.</li></ol><div><br></div></div><div><br></div><div><br>
</div><div><br><div class=3D"gmail_quote">On Thu, Sep 1, 2011 at 12:51 AM, =
Richard Purdie <span dir=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linux=
foundation.org">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex;">
<div class=3D"im">On Wed, 2011-08-31 at 11:06 +0530, v sailaja wrote:<br>
&gt; Can anyone please tell me how to build the &quot;sugarbay&quot; for 32=
bit. By<br>
&gt; default sugarbay supports 64bit but is there anyway to change it to<br=
>
&gt; 32bit.<br>
&gt; My host machine is ubuntu 11.04 and 64bit.<br>
<br>
</div>Change meta-intel/meta-sugarbay/conf/machine/sugarbay.conf<br>
<br>
to say<br>
<br>
conf/machine/include/tune-core2.inc<br>
<br>
instead of x86-64 and then it will build for 32 bit since that is the<br>
default for core2.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div><span s=
tyle=3D"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat=A0</span><=
/div><div><br></div><br>
</div></div>

--bcaec520f47921b9aa04ac32d970--
