Return-Path: <aalonso00@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 003EE4C810A8
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 10:20:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so9049966bwz.35
	for <poky@yoctoproject.org>; Mon, 27 Dec 2010 08:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=8JyHbnHNn0tBfeFvkwnNU6X0TEl4TjObrKb58vjuisQ=;
	b=gsb0og41iL2jWW1GrrdD3bQVG7HnjvyiBMP01SmPbjzrpdhC63/fVMnprN+j3cy51H
	qX6BQgKhTMV3SGP5pI44BKpRFh5njqSvVTkRDaaysDGytHpvhVNFpo0Cx10NBQ8IC7Ff
	8XuxUYKltycdetl5lBPvjVO5anezdjKhHMZ0Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=qE7Z/YlzfKJazTw3Exli9r1xZkzQ/mx1Dy+Ro0XdbktjFYBQXaJUNl28f9V2sFnt7O
	XEML6sQmfqDSYzdK7ga4rWu5aww4sA9yA37nKQATAUPR10Do9j5epa3E7vyQ8dR6R24u
	mlwNyCmaf75Cd4n6omFhvdLYjPhCqhAt04g0Y=
MIME-Version: 1.0
Received: by 10.204.67.140 with SMTP id r12mr10589488bki.147.1293466835727;
	Mon, 27 Dec 2010 08:20:35 -0800 (PST)
Received: by 10.204.3.210 with HTTP; Mon, 27 Dec 2010 08:20:35 -0800 (PST)
In-Reply-To: <4D13CF3B.3030501@windriver.com>
References: <AANLkTim9iax+7aW3tmBUtmCdjtgAr0nT5U0nhwi+j2Ay@mail.gmail.com>
	<1293130788.17519.217.camel@rex> <4D13CF3B.3030501@windriver.com>
Date: Mon, 27 Dec 2010 10:20:35 -0600
Message-ID: <AANLkTi=BDuDsCk9+98xShS+LATbsFeDqUJ+DbxPza8QC@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: pseudo native build fails on Fedora 14
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
X-List-Received-Date: Mon, 27 Dec 2010 16:20:40 -0000
Content-Type: multipart/alternative; boundary=001636c5b2bb45b6f3049866b7d7

--001636c5b2bb45b6f3049866b7d7
Content-Type: text/plain; charset=ISO-8859-1

Thanks Mark, Richard

Installing libgcc.i686 corrected the error.

My build system is a mixture of 32/64 due that some of the
build tools that I use (FPGA dev tools) are 32bit based;

Regards and happy new year!


On Thu, Dec 23, 2010 at 4:37 PM, Mark Hatle <mark.hatle@windriver.com>wrote:

> Form the pastebin, it appears to have been building the 32-bit portions.
>  If
> this is a 64-bit Fedora.. it looks like you have a partial 32-bit run-time
> environment installed.  The system detected this and attempted to build a
> 32-bit
> wrapper (as well as the 64-bit version).  Likely you are missing the 32-bit
> gcc
> or libgcc package.  (Sorry I don't know the actual name of the package.)
>
> (We have to build both a 64-bit and 32-bit version of pseudo, if we detect
> 32-bit on the system, because we have no way of knowing what applications
> will
> be loaded.  The apps executed MAY be either 32-bit or 64-bit, so we need a
> wrapper library for each available... even if the system's primary
> applications
> and libraries are 64-bit.)
>
> --Mark
>
> On 12/23/10 12:59 PM, Richard Purdie wrote:
> > On Thu, 2010-12-23 at 12:27 -0600, Adrian Alonso wrote:
> >> I start a build from scratch and pseudo-native fails to build
> >> at link stage:
> >>
> >>
> >> ...
> >> /usr/bin/ld: skipping
> >> incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so when
> >> searching for -lgcc_s
> >> | /usr/bin/ld: cannot find -lgcc_s
> >> | collect2: ld returned 1 exit status
> >> ....
> >
> > What kind of machine is this? Mixed 32 bit and 64 bit userspace? 64 or
> > 32 bit kernel?
> >
> > To me, this looks like you have half a 32 or 64 bit toolchain alongside
> > the "correct" one and its preferring that for some reason.
> >
> > Cheers,
> >
> > Richard
> >
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
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

--001636c5b2bb45b6f3049866b7d7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Mark, Richard<div><br></div><div>Installing libgcc.i686 corrected th=
e error.</div><div><br></div><div>My build system is a mixture of 32/64 due=
 that some of the</div><div>build tools that I use (FPGA dev tools) are 32b=
it based;</div>
<div><br></div><div>Regards and happy new year!</div><div><br></div><div><b=
r><div class=3D"gmail_quote">On Thu, Dec 23, 2010 at 4:37 PM, Mark Hatle <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@=
windriver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Form the pastebin, it appears to have been =
building the 32-bit portions. =A0If<br>
this is a 64-bit Fedora.. it looks like you have a partial 32-bit run-time<=
br>
environment installed. =A0The system detected this and attempted to build a=
 32-bit<br>
wrapper (as well as the 64-bit version). =A0Likely you are missing the 32-b=
it gcc<br>
or libgcc package. =A0(Sorry I don&#39;t know the actual name of the packag=
e.)<br>
<br>
(We have to build both a 64-bit and 32-bit version of pseudo, if we detect<=
br>
32-bit on the system, because we have no way of knowing what applications w=
ill<br>
be loaded. =A0The apps executed MAY be either 32-bit or 64-bit, so we need =
a<br>
wrapper library for each available... even if the system&#39;s primary appl=
ications<br>
and libraries are 64-bit.)<br>
<br>
--Mark<br>
<div><div></div><div class=3D"h5"><br>
On 12/23/10 12:59 PM, Richard Purdie wrote:<br>
&gt; On Thu, 2010-12-23 at 12:27 -0600, Adrian Alonso wrote:<br>
&gt;&gt; I start a build from scratch and pseudo-native fails to build<br>
&gt;&gt; at link stage:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ...<br>
&gt;&gt; /usr/bin/ld: skipping<br>
&gt;&gt; incompatible /usr/lib/gcc/x86_64-redhat-linux/4.5.1/libgcc_s.so wh=
en<br>
&gt;&gt; searching for -lgcc_s<br>
&gt;&gt; | /usr/bin/ld: cannot find -lgcc_s<br>
&gt;&gt; | collect2: ld returned 1 exit status<br>
&gt;&gt; ....<br>
&gt;<br>
&gt; What kind of machine is this? Mixed 32 bit and 64 bit userspace? 64 or=
<br>
&gt; 32 bit kernel?<br>
&gt;<br>
&gt; To me, this looks like you have half a 32 or 64 bit toolchain alongsid=
e<br>
&gt; the &quot;correct&quot; one and its preferring that for some reason.<b=
r>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
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

--001636c5b2bb45b6f3049866b7d7--
