Return-Path: <sujith.h@gmail.com>
Received: from mail-ie0-f176.google.com (unknown [209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DE1E01453
	for <poky@yoctoproject.org>; Sun, 30 Sep 2012 22:37:24 -0700 (PDT)
Received: by ieak11 with SMTP id k11so13622370iea.35
	for <poky@yoctoproject.org>; Sun, 30 Sep 2012 22:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZAOSTf6GYLXmr0SryvD9maeS0wmM/RNbPvAWzI+xxxs=;
	b=NrmnEwceP+U78VEKsZA0Yl7QIVrSYvEjc/172YzQb5d5aXA+jrJDBtf+8Kqi95AXwR
	JJOtBwQZn5D6wvEWG2ZDJEu//4ENeSo48jmrb11fmQg3jj6x9VT72LE1ZTB97AuiJGYC
	J8tXXsC9mmaOLTKjfaCO8/900keEwbN0vsc9T1wKWJdfa8yt845VSQDcQr2TLKde6Csq
	bcTesyczxtlr7DV6TRODfYockZ5d/OBWoEn7PDTQyJTcjrPpjGi3ez5KdSJJc2H4VYER
	5GIqOCZh/18L/Bx/1JbeQRIFgaNgzxYHhm1Up5FBgtwxeZuURYkr5B+Ib5CDUuB+wvSx
	0AYQ==
Received: by 10.50.190.230 with SMTP id gt6mr4612045igc.49.1349069815619; Sun,
	30 Sep 2012 22:36:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.47.104 with HTTP; Sun, 30 Sep 2012 22:36:35 -0700 (PDT)
In-Reply-To: <506852AA.4050302@windriver.com>
References: <CADyYWL=24p+Te_AM2c5Y3BPmRiDfwXwiFxH0VPwhbMsbDohdeA@mail.gmail.com>
	<CADyYWL=vKyQxBTQG3XV3FKPVES42rCEjoNDTmbx-AnycTAYadQ@mail.gmail.com>
	<506852AA.4050302@windriver.com>
From: sujith h <sujith.h@gmail.com>
Date: Mon, 1 Oct 2012 11:06:35 +0530
Message-ID: <CADyYWLmQgHO9pC=X1x79uEZPyC9RJjPObwmsGttq601fee=L+w@mail.gmail.com>
To: Florin Sarbu <florin.sarbu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Patch for DLT-viewer
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
X-List-Received-Date: Mon, 01 Oct 2012 05:37:24 -0000
Content-Type: multipart/alternative; boundary=14dae93406bb231f7904caf8cb73

--14dae93406bb231f7904caf8cb73
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 30, 2012 at 7:39 PM, Florin Sarbu <florin.sarbu@windriver.com>w=
rote:

>  ERROR: Nothing PROVIDES 'virtual/qt4' (but
> /home/florin/proiecte/genivi_bit/meta-ivi/recipes-extended/DLT-viewer/
> DLT-viewer_2.7.0.bb DEPENDS on or otherwise requires it)
> ERROR: Required build target 'DLT-viewer' has no buildable providers.
> Missing or unbuildable dependency chain was: ['DLT-viewer', 'virtual/qt4'=
]
>
> Can you recheck your patch on latets master?
>

Sure, I will recheck it. Thanks for pointing it out.

Thanks,
> Florin
>
>
> On 09/11/2012 11:25 AM, sujith h wrote:
>
>
>
> On Tue, Sep 11, 2012 at 12:37 PM, sujith h <sujith.h@gmail.com> wrote:
>
>> Hi,
>>
>>  I had created the patch for DLT-viewer 2.6 version. It was created in
>> the
>> meta-ivi repo. I saw that DLT-daemo recipe is there. Hence thought of
>> creating DLT-viewer patch. Please let me know if this is not the mailing
>> list for
>> posting the patch for meta-ivi.
>>
>
>  Adding florin.sarbu@windriver.com in the cc list.
>
>  Thanks,
>
>  Sujith H
>
>
>  --
> =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
> Bangalore
> <Project>Contributor to KDE project
> http://fci.wikia.com/wiki/Anti-DRM-Campaign
> <Blog> http://sujithh.info
>
>
>


--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--14dae93406bb231f7904caf8cb73
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Sun, Sep 30, 2012 at 7:39 PM, Florin =
Sarbu <span dir=3D"ltr">&lt;<a href=3D"mailto:florin.sarbu@windriver.com" t=
arget=3D"_blank">florin.sarbu@windriver.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">


 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div>ERROR: Nothing PROVIDES &#39;virtual/qt4&#39;
      (but
      /home/florin/proiecte/genivi_bit/meta-ivi/recipes-extended/DLT-viewer=
/<a href=3D"http://DLT-viewer_2.7.0.bb" target=3D"_blank">DLT-viewer_2.7.0.=
bb</a>
      DEPENDS on or otherwise requires it)<br>
      ERROR: Required build target &#39;DLT-viewer&#39; has no buildable
      providers.<br>
      Missing or unbuildable dependency chain was: [&#39;DLT-viewer&#39;,
      &#39;virtual/qt4&#39;]<br>
      <br>
      Can you recheck your patch on latets master?<br></div></div></blockqu=
ote><div><br></div><div>Sure, I will recheck it. Thanks for pointing it out=
.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div text=3D"#000000" bgcolor=3D"#FFFFFF"><div>Thanks,<br>
      Florin<div><div class=3D"h5"><br>
      <br>
      On 09/11/2012 11:25 AM, sujith h wrote:<br>
    </div></div></div><div><div class=3D"h5">
    <blockquote type=3D"cite">
     =20
      <br>
      <br>
      <div class=3D"gmail_quote">On Tue, Sep 11, 2012 at 12:37 PM, sujith
        h <span dir=3D"ltr">&lt;<a href=3D"mailto:sujith.h@gmail.com" targe=
t=3D"_blank">sujith.h@gmail.com</a>&gt;</span>
        wrote:<br>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">
          Hi,
          <div><br>
          </div>
          <div>I had created the patch for DLT-viewer 2.6 version. It
            was created in the</div>
          <div>meta-ivi repo. I saw that DLT-daemo recipe is there.
            Hence thought of</div>
          <div>creating DLT-viewer patch. Please let me know if this is
            not the mailing list for</div>
          <div>posting the patch for meta-ivi.=C2=A0</div>
        </blockquote>
        <div><br>
        </div>
        <div>Adding <a href=3D"mailto:florin.sarbu@windriver.com" target=3D=
"_blank">florin.sarbu@windriver.com</a>
          in the cc list.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div><br>
        </div>
        <div>Sujith H</div>
        <div><br>
        </div>
      </div>
      <div><br>
      </div>
      -- <br>
      =E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=
=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>
      Bangalore<br>
      &lt;Project&gt;Contributor to KDE project<br>
      <a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_bl=
ank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>
      &lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http:/=
/sujithh.info</a><br>
      <br>
    </blockquote>
    <br>
  </div></div></div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=E0=B4=B8=E0=
=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=
=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;C=
ontributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-DRM-=
Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a>=
<br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br><br>

--14dae93406bb231f7904caf8cb73--
