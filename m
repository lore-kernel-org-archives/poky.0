Return-Path: <d.moussaud@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44815E00309
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 11:57:56 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwo28 with SMTP id 28so1569433wwo.5
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 11:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8gIqkjVreR/ci6Wfb88IuBQ+8IwbUrsFrb5vBGA+90k=;
	b=WKpyl2oSth45oW9zDXAQZky6SZMOr7QjqKaZH17CBuA0pgGGpAbda0kOfi/y0B9u3V
	8s0kqdQxRV+7DurwoxoVWPO2Zt0LLBY1xSVFLsENVvOFTrFzwMal/sVIWH1Du6actSAw
	gpXZXLLFANfHogFrsrFwVn137kmGZKYkgDPKM=
Received: by 10.227.57.66 with SMTP id b2mr16268343wbh.6.1322078275102; Wed,
	23 Nov 2011 11:57:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.103.39 with HTTP; Wed, 23 Nov 2011 11:57:34 -0800 (PST)
In-Reply-To: <A40556E3-F32D-4120-9FF6-5614730A7ADC@dominion.thruhere.net>
References: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
	<A40556E3-F32D-4120-9FF6-5614730A7ADC@dominion.thruhere.net>
From: David MOUSSAUD <d.moussaud@gmail.com>
Date: Wed, 23 Nov 2011 20:57:34 +0100
Message-ID: <CAEx4gge6nMhU_gHDjGgqu0zXPVyrh58ViB5JPVcRPRf5tYALkw@mail.gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: poky@yoctoproject.org
Subject: Re: "ONLINE" package-management
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
X-List-Received-Date: Wed, 23 Nov 2011 19:57:56 -0000
Content-Type: multipart/alternative; boundary=0015174bdb92f3e8f804b26c55b4

--0015174bdb92f3e8f804b26c55b4
Content-Type: text/plain; charset=ISO-8859-1

thanks, it works :)

On 23 November 2011 10:32, Koen Kooi <koen@dominion.thruhere.net> wrote:

>
> Op 23 nov. 2011, om 10:22 heeft David MOUSSAUD het volgende geschreven:
>
> > Hi,
> >
> > I'm migrating my projects from old OE to poky.
> > I used to set the variable ONLINE_PACKAGE_MANAGEMENT = "full" in my
> image file.
> > The impact was that some scripts were executed at the first start of my
> rootfs (create user for openssh, dbus, ....)
>
> Note that with the recent addition of useradd.bbclass to OE-core that type
> of scripts (user creation) now run at do_rootfs time and not during first
> boot.
>
> regards,
>
> Koen
> -----BEGIN PGP SIGNATURE-----
>
> iEYEARECAAYFAk7MvbcACgkQMkyGM64RGpE7wQCeNZCWNVqxK6helER3onYgWe6y
> 42kAnj4HLTSgoF4shgx4vTzLS/lXx4s9
> =WbJG
> -----END PGP SIGNATURE-----
>
>

--0015174bdb92f3e8f804b26c55b4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

thanks, it works :)<br><br><div class=3D"gmail_quote">On 23 November 2011 1=
0:32, Koen Kooi <span dir=3D"ltr">&lt;<a href=3D"mailto:koen@dominion.thruh=
ere.net">koen@dominion.thruhere.net</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex;">

<br>
Op 23 nov. 2011, om 10:22 heeft David MOUSSAUD het volgende geschreven:<br>
<div class=3D"im"><br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m migrating my projects from old OE to poky.<br>
&gt; I used to set the variable ONLINE_PACKAGE_MANAGEMENT =3D &quot;full&qu=
ot; in my image file.<br>
&gt; The impact was that some scripts were executed at the first start of m=
y rootfs (create user for openssh, dbus, ....)<br>
<br>
</div>Note that with the recent addition of useradd.bbclass to OE-core that=
 type of scripts (user creation) now run at do_rootfs time and not during f=
irst boot.<br>
<br>
regards,<br>
<br>
Koen<br>-----BEGIN PGP SIGNATURE-----<br>
<br>
iEYEARECAAYFAk7MvbcACgkQMkyGM64RGpE7wQCeNZCWNVqxK6helER3onYgWe6y<br>
42kAnj4HLTSgoF4shgx4vTzLS/lXx4s9<br>
=3DWbJG<br>
-----END PGP SIGNATURE-----<br>
<br></blockquote></div><br>

--0015174bdb92f3e8f804b26c55b4--
