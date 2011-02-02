Return-Path: <akshat.saha@spectracoretech.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C9DE4C800A8
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 04:34:24 -0600 (CST)
Received: by ewy20 with SMTP id 20so3595632ewy.35
	for <poky@yoctoproject.org>; Wed, 02 Feb 2011 02:34:23 -0800 (PST)
Received: by 10.14.47.71 with SMTP id s47mr504171eeb.45.1296642863283; Wed, 02
	Feb 2011 02:34:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.14.22.79 with HTTP; Wed, 2 Feb 2011 02:33:53 -0800 (PST)
X-Originating-IP: [115.111.25.162]
In-Reply-To: <1296641867.2862.5.camel@scimitar>
References: <AANLkTi=rooisMrYS=N6GmL38siorVezxkE23g5OU697b@mail.gmail.com>
	<1296641867.2862.5.camel@scimitar>
From: Akshat Saha <akshat.saha@spectracoretech.com>
Date: Wed, 2 Feb 2011 16:03:53 +0530
Message-ID: <AANLkTi=9ioF4mmS_1c3yVNQ3kRLWTgcpuLgABBW27Xs6@mail.gmail.com>
To: Joshua Lock <josh@openedhand.com>
Cc: poky@yoctoproject.org
Subject: Re: Error Compiling Poky-Green-3.3
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
X-List-Received-Date: Wed, 02 Feb 2011 10:34:24 -0000
Content-Type: multipart/alternative; boundary=90e6ba5bb8d34440be049b4a31b9

--90e6ba5bb8d34440be049b4a31b9
Content-Type: text/plain; charset=ISO-8859-1

Hi Joshua,
Thanx for your prompt response, initially i had used laverne only, but it
gave me the same error.  Then, i used green, but the problem persists.
I am using Ubountu 10.04, 64 bit.

On Wed, Feb 2, 2011 at 3:47 PM, Joshua Lock <josh@openedhand.com> wrote:

> Hi there,
>
> On Wed, 2011-02-02 at 14:46 +0530, Akshat Saha wrote:
>
> > I have downloaded the stable poky-green-3.3.1 and trying to compile it
> > for MACHINE ?= "netbook". Any help/suggestion/advice is truly
> > appreciated.
>
> The current stable is actually Laverne 4.0: http://pokylinux.org/getit/
> >
> >
> > Commands used:
> >      1. $ source poky-init-build-env.... (Working Directory changes to
> >         build)
> >      2. then commented MACHINE ?= "qemux86" in local.conf and
> >         uncommented MACHINE ?= "netbook"
> >      3. $ bitbake -DDD poky-image-minimal-live
> > Error faced:
> >
> >
> > gconvert.c:55:2: error: #error GNU libiconv not in use but included
> > iconv.h is from libiconv
> >
> >
> I'd be curious to hear if you still see this with Laverne? If so could
> you let us know what operating system/distro you are using to build
> with.
>
> Cheers,
> Joshua
> --
> Joshua Lock
>        Intel Open Source Technology Centre
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Thanks and Regards,

Akshat Saha

--90e6ba5bb8d34440be049b4a31b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Joshua,=A0<div>Thanx for your prompt response, initially i had used lave=
rne only, but it gave me the same error. =A0Then, i used green, but the pro=
blem persists.</div><div>I am using Ubountu 10.04, 64 bit.<br><br><div clas=
s=3D"gmail_quote">

On Wed, Feb 2, 2011 at 3:47 PM, Joshua Lock <span dir=3D"ltr">&lt;<a href=
=3D"mailto:josh@openedhand.com">josh@openedhand.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex;">

Hi there,<br>
<div class=3D"im"><br>
On Wed, 2011-02-02 at 14:46 +0530, Akshat Saha wrote:<br>
<br>
&gt; I have downloaded the stable poky-green-3.3.1 and trying to compile it=
<br>
&gt; for MACHINE ?=3D &quot;netbook&quot;. Any help/suggestion/advice is tr=
uly<br>
&gt; appreciated.<br>
<br>
</div>The current stable is actually Laverne 4.0: <a href=3D"http://pokylin=
ux.org/getit/" target=3D"_blank">http://pokylinux.org/getit/</a><br>
&gt;<br>
&gt;<br>
&gt; Commands used:<br>
&gt; =A0 =A0 =A01. $ source poky-init-build-env.... (Working Directory chan=
ges to<br>
&gt; =A0 =A0 =A0 =A0 build)<br>
&gt; =A0 =A0 =A02. then commented MACHINE ?=3D &quot;qemux86&quot; in local=
.conf and<br>
&gt; =A0 =A0 =A0 =A0 uncommented MACHINE ?=3D &quot;netbook&quot;<br>
&gt; =A0 =A0 =A03. $ bitbake -DDD poky-image-minimal-live<br>
<div class=3D"im">&gt; Error faced:<br>
&gt;<br>
&gt;<br>
&gt; gconvert.c:55:2: error: #error GNU libiconv not in use but included<br=
>
&gt; iconv.h is from libiconv<br>
&gt;<br>
&gt;<br>
</div>I&#39;d be curious to hear if you still see this with Laverne? If so =
could<br>
you let us know what operating system/distro you are using to build<br>
with.<br>
<br>
Cheers,<br>
Joshua<br>
<font color=3D"#888888">--<br>
Joshua Lock<br>
 =A0 =A0 =A0 =A0Intel Open Source Technology Centre<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></blockquote></div><br><br clear=3D"all"><br>-- <br><font color=3D"#=
333333">Thanks and Regards,=A0</font><div><font color=3D"#333333"><br></fon=
t></div><div><font color=3D"#333333">Akshat Saha</font></div><br>
</div>

--90e6ba5bb8d34440be049b4a31b9--
