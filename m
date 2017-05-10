Return-Path: <tamtamis@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAB5E00B3E; Wed, 10 May 2017 02:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tamtamis[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B654E00B31
	for <poky@yoctoproject.org>; Wed, 10 May 2017 02:05:56 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id g49so27962932uaa.1
	for <poky@yoctoproject.org>; Wed, 10 May 2017 02:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ivP0ATJF4G+cszyeWuGTf+LCTAHHKwJ2PDkbFdM4C2s=;
	b=OlrDVRjMSCNqyU++skJzqApuBr1yf184L2vsxVbXbHF8oxOpmd+gp3jbONrsuv2NSG
	zJmzxk0UCXutqwy5HCXlwhcvHNg+N2+x+rDdG2ijkRE9JcFpeAIi6tIm6yM4rGWWSTsM
	54xOzmo/0bn8OouKlNfwZG+rHvsLQ+E1vQ6hqbWLYF6AhFd4X3Io905hiIKAdE8a/vvH
	6OsyKMKX+Qr+AumRjahLQrQywMpGLijb2p9L7ybCiNyO7HJ8aCmONVDMEGuDDH/HOVN+
	kg483jb98gGfFQcIIyxZFHt1c0D+qOsF0iVsRygLz3LFo7xVWcvgDMpPvn54aLvT2OFI
	wKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ivP0ATJF4G+cszyeWuGTf+LCTAHHKwJ2PDkbFdM4C2s=;
	b=jInQc6jUO/x53wewjdZ6/XIV3R4MsT/EKhJO0zoLJ7ej4X4/jydl1oAb9J46PXQVyF
	0eRef+p0p9Bx3kF7HL6UBwgOcgr0IBBMnLNCIcxEM12psrbA2fBTcmYvL4V/1uRIMpni
	o/m3/+96t8Z5QSFjI8SDL/eY/ZnXw2BwrkENtRB/G9EvjH4H0AfuVYqBxr/BDeCEI/DW
	3IM55VS+Y7MAl1yANsQ6rdcwBoWkIC+fzpkGNzdLpec2QhpHXvBIti7Jmd5u82Bh5ctr
	8RB681Qc3N5QVRIaliAFsQtOK1wY23c7oUSOp5BDlbi3noXJo+t5ehGyj3mwOAwYqVXG
	OgXA==
X-Gm-Message-State: AODbwcCufkqah8i5SvdVaV8PTN/d7w3CEfB54jxF89E0qIBicBeiHm/U
	qvslk1W9iUNMBVuaTJWgV9HKg4oXGnOygeY=
X-Received: by 10.31.96.8 with SMTP id u8mr1992180vkb.124.1494407156368; Wed,
	10 May 2017 02:05:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.90.217 with HTTP; Wed, 10 May 2017 02:05:55 -0700 (PDT)
In-Reply-To: <f9f3112c-9b77-df97-f5a3-17e46c3e3eb7@visionweeding.com>
References: <f9f3112c-9b77-df97-f5a3-17e46c3e3eb7@visionweeding.com>
From: Panagiotis Tamtamis <tamtamis@gmail.com>
Date: Wed, 10 May 2017 12:05:55 +0300
Message-ID: <CAJq++8SXm87uMu2YcCBfDANXn7mdT311TFtmuHnvBJoVqvU3ZA@mail.gmail.com>
To: Lars Larsen <lars@visionweeding.com>
Cc: poky@yoctoproject.org
Subject: Re: external kernel module - hash mismatch
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
X-List-Received-Date: Wed, 10 May 2017 09:06:04 -0000
Content-Type: multipart/alternative; boundary=001a114e61b8b4879b054f27c700

--001a114e61b8b4879b054f27c700
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Did you use SRCPV in recipe in order the recipe version to be updated?
I guess this might resolve the problem.

See:
http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-AUTOR=
EV
http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-SRCPV


Best regards,
Tamis


2017-05-08 15:07 GMT+03:00 Lars Larsen <lars@visionweeding.com>:

> Hi
>
> I have a recipe where I build an external kernel module (a driver).
>
> I followed the model in the hello_mod.bb example, except that the SRC_URI
> is a git repository and  SRCREV=3D "${AUTOREV}"
> I added
> PACKAGE_INSTALL_append() =3D "kernel-module-camdriverV20"
>
> and it works fine. just as expected.
>
> *But*  If I push changes to the git  repository, bitbake fails hard with
> error messages like this:
>
> *ERROR: When reparsing
> /home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.d=
o_compile,
> the basehash value changed from cc51ed245a373392856ed0fcd4309081 to
> 77f012fc7c9ef8b6a34a0c751e3aaa5f. The metadata is not deterministic and
> this needs to be fixed.*
> *ERROR: When reparsing
> /home/lars/poky/meta-fpe/recipes-core/drivers/camdriver/camdriverV20.bb.d=
o_install,
> the basehash value changed from c3a246124e6a97131cdb34bc26db47a7 to
> 2713df6e7f9e94aee601d6f654758959. The metadata is not deterministic and
> this needs to be fixed.*
>
> the only way i can get it to build is to
>
> *rm -rf /tmp *what am I doing wrong
>
> * ? -Lars*
>
> --
>
> Best Regards
> Lars Larsen
>
> F.Poulsen Engineering Aps
> Tj=C3=B8rnager 16
> 4330 Hvals=C3=B8
> Denmark+45 29802784 <+45%2029%2080%2027%2084>www.visionweeding.com
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


--=20
Think simple!

--001a114e61b8b4879b054f27c700
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Did you use=C2=A0SRCPV in recipe in=
 order the recipe version to be updated?</div><div>I guess this might resol=
ve the problem.</div><div><br></div><div>See:</div><div><a href=3D"http://w=
ww.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-AUTOREV">http=
://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html#var-AUTOREV</=
a><br></div><div><a href=3D"http://www.yoctoproject.org/docs/1.8/mega-manua=
l/mega-manual.html#var-SRCPV">http://www.yoctoproject.org/docs/1.8/mega-man=
ual/mega-manual.html#var-SRCPV</a><br></div><div><br></div><div><br></div><=
div>Best regards,</div><div>Tamis</div><div><br></div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">2017-05-08 15:07 GMT+03:00 Lars =
Larsen <span dir=3D"ltr">&lt;<a href=3D"mailto:lars@visionweeding.com" targ=
et=3D"_blank">lars@visionweeding.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <p>
    </p>
    <div class=3D"m_-45405172793940582moz-text-html" lang=3D"x-unicode">
      <p>Hi</p>
      <p>I have a recipe where I build an external kernel module (a
        driver).</p>
      <p>I followed the model in the <a href=3D"http://hello_mod.bb" target=
=3D"_blank">hello_mod.bb</a> example, except that
        the SRC_URI is a git repository and=C2=A0 SRCREV=3D &quot;${AUTOREV=
}&quot;</p>
      I added<br>
      PACKAGE_INSTALL_append() =3D &quot;kernel-module-camdriverV20&quot;<b=
r>
      <br>
      and it works fine. just as expected. <br>
      <br>
      <b>But</b>=C2=A0 If I push changes to the git=C2=A0 repository, bitba=
ke
      fails hard with error messages like this:<br>
      <br>
      <font size=3D"-1"><i>ERROR: When reparsing
/home/lars/poky/meta-fpe/<wbr>recipes-core/drivers/<wbr>camdriver/camdriver=
V20.bb.do_<wbr>compile,
          the basehash value changed from
          cc51ed245a373392856ed0fcd43090<wbr>81 to
          77f012fc7c9ef8b6a34a0c751e3aaa<wbr>5f. The metadata is not
          deterministic and this needs to be fixed.</i><i><br>
        </i><i>ERROR: When reparsing
/home/lars/poky/meta-fpe/<wbr>recipes-core/drivers/<wbr>camdriver/camdriver=
V20.bb.do_<wbr>install,
          the basehash value changed from
          c3a246124e6a97131cdb34bc26db47<wbr>a7 to
          2713df6e7f9e94aee601d6f6547589<wbr>59. The metadata is not
          deterministic and this needs to be fixed.</i><i><br>
        </i></font><br>
      the only way i can get it to build is to=C2=A0 <i>rm -rf /tmp<br>
        <br>
      </i>what am I doing wrong<i> ?<br>
        <br>
        -Lars</i><br>
    </div>
    <br>
    --
    <pre class=3D"m_-45405172793940582moz-signature" cols=3D"72">Best Regar=
ds
Lars Larsen=20

F.Poulsen Engineering Aps
Tj=C3=B8rnager 16
4330 Hvals=C3=B8
Denmark
<a href=3D"tel:+45%2029%2080%2027%2084" value=3D"+4529802784" target=3D"_bl=
ank">+45 29802784</a>
<a class=3D"m_-45405172793940582moz-txt-link-abbreviated" href=3D"http://ww=
w.visionweeding.com" target=3D"_blank">www.visionweeding.com</a>

</pre>
  </div>

<br>--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Think simple!</di=
v>
</div>

--001a114e61b8b4879b054f27c700--
