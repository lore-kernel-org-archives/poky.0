Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web11.11043.1623770511311791325
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Jun 2021 08:21:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hsPVv3Xb;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id z7so10025040vso.3;
        Tue, 15 Jun 2021 08:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=szrJZnD23uTTXviQjS1vv0lHsBButDFElhiRhQu0FEw=;
        b=hsPVv3XbI1XO1Fd0YLUMcHedAPSYtUIjE9IoSTYxF/FHJ24wg13ZoakPgPth2Nc+1m
         mz4tjBpChaDwC70wPlVVzw4bIAZt6yM8Vyq+POxcMVuRxGc0uLmDqWyRjZqwb8JrX6/3
         AuPlpDm8PzLrxNESZyeZkQePd3MssX9+ZjeuxIlbA3+bRyIf0mXXagdUpC6iEfpyBlVD
         zpzLTC1rHb/EVHtMdpWYQeDWq8lrTLjQXukuC1xFyXtjrzDdAg7WgfPMD2kvcgt67oQr
         Kf7XIAD2x5tXTH50B489XvudeG7oS8l8C8MVA8prsGkf5CGLHkzfJLn4VmZ2LwEY0ok9
         94KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=szrJZnD23uTTXviQjS1vv0lHsBButDFElhiRhQu0FEw=;
        b=YSYIUO5JXEufHrnbpi1kAyCGEFMbarZOwHyerabEEPJYjZPYQ0msFV/KLDK0TTw0P+
         AU/uO0qOXqhtid/k9MwaE/TafI5jRu0aARUeiAJ/V8X8DGwg6E5fbbaH6w4a8BoB9lML
         tl2kDmqBlx3D07v9Pza/WHkp6ryXsHVjTltmWoa1ItmPH2TJ7xBayynO0Z/nSnlqTLqi
         GYVi8A0vyiNgwaDHb4R3t77FibvwjpNyySXRldYRW2C/pZX6fvnerAE+v+p1KK2rpqP5
         jVC4o/kvtMQQXOlWdkR8gAZT1ralrzn3cBkSzcGwolpxVVAI2I2q1cdVahnPsVR6YwLu
         aGIA==
X-Gm-Message-State: AOAM532WycxJ+/wLPLdgjlTyyKseBMRao8eNMZT76q+Y1q38Ek2lIAZo
	GFBsYr7BNEinYRhAL2Bk9Nx9dLyJpcK2dRDvAqs=
X-Google-Smtp-Source: ABdhPJyrTPjuaSq0UPUSU6nPawLnsZkoR+nURdix0i/swL71FgGdtfjm6b5T41Z+pVZy83oFI/Co0wXjma3W/a069L4=
X-Received: by 2002:a67:1005:: with SMTP id 5mr5443610vsq.51.1623770510527;
 Tue, 15 Jun 2021 08:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210615081225.1734033-1-alex.kanavin@gmail.com>
 <5ed9e1d2676d4d31289ebaf2ec3b492c1daa88a7.camel@linuxfoundation.org> <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
In-Reply-To: <CANNYZj84MXS57sG5CWLmS-Y_0-w8h1_9NLmtjFEo4pJ5snXvcA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 15 Jun 2021 17:21:39 +0200
Message-ID: <CANNYZj8S7V5owiS0p3B1fD7n_JpF-OPLApO=e9d+SiPuyFWHZw@mail.gmail.com>
Subject: Re: [poky] [PATCH] local.conf.sample: disable prelink
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Mark Hatle <mark.hatle@kernel.crashing.org>
Cc: poky@lists.yoctoproject.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007a108305c4cf88c3"

--0000000000007a108305c4cf88c3
Content-Type: text/plain; charset="UTF-8"

On Tue, 15 Jun 2021 at 10:55, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Tue, 15 Jun 2021 at 10:48, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
>
>> I appreciate the desire simply to delete/disable anything that causes
>> issues
>> but in this case I draw the line and my answer is no. It works fine in the
>> vast majority of usage.
>>
>
> But where are the benchmarks that show it's actually beneficial? And
> commitment from someone to maintain it and address open issues (there are
> more than just this one)?
>

I went ahead and ran some quick benchmarks myself. Specifically:

1. Running 'free' after things have settled down at boot:

a) without prelink
core-image-sato-sdk
               total        used        free      shared  buff/cache
available
Mem:          489352      152104      236284         472      100964
 323824
core-image-ptest-fast
              total        used        free      shared  buff/cache
available
Mem:        1004680       43456      927688         256       33536
 941156

b) with prelink
core-image-sato-sdk
               total        used        free      shared  buff/cache
available
Mem:          489352      153048      235544         468      100760
 322900
core-image-ptest-fast
              total        used        free      shared  buff/cache
available
Mem:        1004680       44444      928128         256       32108
 940168

2. Running -c testimage

a) without prelink
core-image-sato-sdk () - Ran 66 tests in 96.693s
core-image-sato-sdk () - Ran 66 tests in 96.469s
core-image-sato-sdk () - Ran 66 tests in 94.994s
core-image-ptest-fast () - Ran 66 tests in 583.767s
core-image-ptest-fast () - Ran 66 tests in 576.564s
core-image-ptest-fast () - Ran 66 tests in 576.797s

b) with prelink
core-image-sato-sdk () - Ran 66 tests in 96.390s
core-image-sato-sdk () - Ran 66 tests in 96.615s
core-image-sato-sdk () - Ran 66 tests in 95.596s
core-image-ptest-fast () - Ran 66 tests in 576.248s
core-image-ptest-fast () - Ran 66 tests in 574.618s
core-image-ptest-fast () - Ran 66 tests in 576.760s

So the memory usage is actually *better* without prelink. And any timing
benefits are lost in statistical noise, in these tests at least.

So I do not think it is wrong to question the usefulness of this feature.
I'd like to hear Mark's take on this, as prelink-cross is primarily his
work, he's put a lot of effort into it, and I would want to know where the
benefits are. Note that Red Hat abandoned prelink in 2013, and
prelink-cross likewise hasn't seen any commits for two years.

Alex

--0000000000007a108305c4cf88c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, 15 Jun 2021 at 10:55, Alexand=
er Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, 15 Jun 2021 at 10:48, Richard Purdie &lt;<a href=3D"mail=
to:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@lin=
uxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">I appreciate the desire simply to delete/disable anything t=
hat causes issues<br>
but in this case I draw the line and my answer is no. It works fine in the<=
br>
vast majority of usage.<br></blockquote><div><br></div>But where are the be=
nchmarks that show it&#39;s actually beneficial? And commitment from someon=
e to maintain it and address open issues (there are more than just this one=
)?</div></div></blockquote><div><br></div>I went ahead and ran some quick b=
enchmarks myself. Specifically:</div><div class=3D"gmail_quote"><br></div><=
div class=3D"gmail_quote">1. Running &#39;free&#39; after things have settl=
ed down at boot:</div><div class=3D"gmail_quote"><br></div><div class=3D"gm=
ail_quote">a) without prelink<br></div><div class=3D"gmail_quote">core-imag=
e-sato-sdk<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0total =
=C2=A0 =C2=A0 =C2=A0 =C2=A0used =C2=A0 =C2=A0 =C2=A0 =C2=A0free =C2=A0 =C2=
=A0 =C2=A0shared =C2=A0buff/cache =C2=A0 available<br>Mem: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0489352 =C2=A0 =C2=A0 =C2=A0152104 =C2=A0 =C2=A0 =C2=A02=
36284 =C2=A0 =C2=A0 =C2=A0 =C2=A0 472 =C2=A0 =C2=A0 =C2=A0100964 =C2=A0 =C2=
=A0 =C2=A0323824<br></div><div class=3D"gmail_quote">core-image-ptest-fast<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 total =C2=A0 =C2=A0 =C2=
=A0 =C2=A0used =C2=A0 =C2=A0 =C2=A0 =C2=A0free =C2=A0 =C2=A0 =C2=A0shared =
=C2=A0buff/cache =C2=A0 available<br>Mem: =C2=A0 =C2=A0 =C2=A0 =C2=A0100468=
0 =C2=A0 =C2=A0 =C2=A0 43456 =C2=A0 =C2=A0 =C2=A0927688 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 256 =C2=A0 =C2=A0 =C2=A0 33536 =C2=A0 =C2=A0 =C2=A0941156</div><=
div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">b) with prel=
ink <br></div><div class=3D"gmail_quote">core-image-sato-sdk<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0total =C2=A0 =C2=A0 =C2=A0 =C2=
=A0used =C2=A0 =C2=A0 =C2=A0 =C2=A0free =C2=A0 =C2=A0 =C2=A0shared =C2=A0bu=
ff/cache =C2=A0 available<br>Mem: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0489352 =
=C2=A0 =C2=A0 =C2=A0153048 =C2=A0 =C2=A0 =C2=A0235544 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 468 =C2=A0 =C2=A0 =C2=A0100760 =C2=A0 =C2=A0 =C2=A0322900</div><div =
class=3D"gmail_quote">core-image-ptest-fast<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 total =C2=A0 =C2=A0 =C2=A0 =C2=A0used =C2=A0 =C2=A0 =
=C2=A0 =C2=A0free =C2=A0 =C2=A0 =C2=A0shared =C2=A0buff/cache =C2=A0 availa=
ble<br>Mem: =C2=A0 =C2=A0 =C2=A0 =C2=A01004680 =C2=A0 =C2=A0 =C2=A0 44444 =
=C2=A0 =C2=A0 =C2=A0928128 =C2=A0 =C2=A0 =C2=A0 =C2=A0 256 =C2=A0 =C2=A0 =
=C2=A0 32108 =C2=A0 =C2=A0 =C2=A0940168</div><div class=3D"gmail_quote"><br=
></div><div class=3D"gmail_quote">2. Running -c testimage<br></div><div cla=
ss=3D"gmail_quote"><br></div><div class=3D"gmail_quote">a) without prelink<=
/div><div class=3D"gmail_quote">core-image-sato-sdk () - Ran 66 tests in 96=
.693s<br>core-image-sato-sdk () - Ran 66 tests in 96.469s<br>core-image-sat=
o-sdk () - Ran 66 tests in 94.994s</div><div class=3D"gmail_quote">core-ima=
ge-ptest-fast () - Ran 66 tests in 583.767s<br>core-image-ptest-fast () - R=
an 66 tests in 576.564s<br>core-image-ptest-fast () - Ran 66 tests in 576.7=
97s</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">b)=
 with prelink</div><div class=3D"gmail_quote">core-image-sato-sdk () - Ran =
66 tests in 96.390s<br>core-image-sato-sdk () - Ran 66 tests in 96.615s<br>=
core-image-sato-sdk () - Ran 66 tests in 95.596s</div><div class=3D"gmail_q=
uote">core-image-ptest-fast () - Ran 66 tests in 576.248s<br>core-image-pte=
st-fast () - Ran 66 tests in 574.618s<br>core-image-ptest-fast () - Ran 66 =
tests in 576.760s</div><div class=3D"gmail_quote"><br></div><div class=3D"g=
mail_quote">So the memory usage is actually *better* without prelink. And a=
ny timing benefits are lost in statistical noise, in these tests at least. =
<br></div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">S=
o I do not think it is wrong to question the usefulness of this feature. I&=
#39;d like to hear Mark&#39;s take on this, as prelink-cross is primarily h=
is work, he&#39;s put a lot of effort into it, and I would want to know whe=
re the benefits are. Note that Red Hat abandoned prelink in 2013, and preli=
nk-cross likewise hasn&#39;t seen any commits for two years.<br></div><div =
class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex<br></div></=
div>

--0000000000007a108305c4cf88c3--
