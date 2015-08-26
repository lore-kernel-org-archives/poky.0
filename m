Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BE0E009D9; Wed, 26 Aug 2015 01:19:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2ECB9E00474
	for <poky@yoctoproject.org>; Wed, 26 Aug 2015 01:19:17 -0700 (PDT)
Received: by qgeb6 with SMTP id b6so121841094qge.3
	for <poky@yoctoproject.org>; Wed, 26 Aug 2015 01:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=49ce/7L8tMJglo4jAOpiC0QidsTg9ZCny1cHdKkxIj0=;
	b=kkSm5EgvEtT4X5WFT1nUj8qulhxWNd2/9G86jjnia3+Qj/PFzteCRVAfL8fS33PF7U
	aayVzFJqprffGbksxY1xsxvXgka3IvvWvCyUAYlAZMyJShyQz82Hdv0XJP2J4VFQ01FB
	k9pXVFgK4ePxp/6npBLFiOv0yVD8d8XH+QM0/mTZpiPB9omEyzw9hicBva8iP7eEUrZC
	PpRYPJuQx0ns6AVX0eTSdHQns/IccyaxupxmFuIZWklOvnjtTMVP5VRxlRKrfthJylym
	IgK1TdQ7qxxfC+mMltRfQs3izoHdc+u8vzyxEPppu2DniFn0PVm2gdTfI6sxDknReefC
	Wt8w==
MIME-Version: 1.0
X-Received: by 10.140.233.7 with SMTP id e7mr16802095qhc.79.1440577157022;
	Wed, 26 Aug 2015 01:19:17 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Wed, 26 Aug 2015 01:19:16 -0700 (PDT)
In-Reply-To: <1440511930.12105.425.camel@linuxfoundation.org>
References: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
	<1440511930.12105.425.camel@linuxfoundation.org>
Date: Wed, 26 Aug 2015 11:19:16 +0300
Message-ID: <CADnUhn1+4ApSCeizWScSXdPWdqnNDcuBapwscv0iZJoj7v8E+A@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [Errno 18] Invalid cross-device link warning coming from license file copy
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
X-List-Received-Date: Wed, 26 Aug 2015 08:19:21 -0000
Content-Type: multipart/alternative; boundary=001a11376d90b748c3051e32815c

--001a11376d90b748c3051e32815c
Content-Type: text/plain; charset=UTF-8

RIchard,


2015-08-25 17:12 GMT+03:00 Richard Purdie <
richard.purdie@linuxfoundation.org>:

> On Wed, 2015-08-19 at 15:48 +0300, matti kaasinen wrote:
> > Is there any way of getting rid of warnings of following type:
> >
> > WARNING: Could not copy license file /YOCTO/poky/LICENSE
> > to
> /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE:
> [Errno 18] Invalid cross-device link
> >
> >
> > Yes, sources and results are located on different logical drives, but
> > should it still be possible to copy files between them. Everything
> > else works fine in bitbaking.
>
> Can you be a little more clear about what you did please? I assume you
> changed TMPDIR to point to a different disk to the one where the poky
> checkout is located?
>

Yes, you are absolutely right.
I have a pretty small (120G) ssd disk I have installed my Ubuntu machine
(/dev/sdb2). I try not to pollute it with checkouts and in particular
builds. For that purpose I have reserved one partition from pretty moderate
(1TB) hdd. Both checkouts (I have played with some distros) and TMPDIR live
in there, but in different mount points. In fact, I do have also a mount
point called /TMPDIR there.

>
> I'm still a little puzzled about why the existing check doesn't catch
> the fact they're different disks...
>

Let's study how it works, first the mounts.
As I told before, both the TMPDIR and checkouts (/YOCTO) live in /dev/sdb2
that has been mounted in /mnt/sw. Let's see how they look in df and python
os.stat listings.

==== df shell command
## /mnt is in ssd disk
$ LANG=C df -H /mnt
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdb2       110G   24G   80G  23% /

## sda2 partition of hdd disk mounted to /mnt/sw
$ LANG=C df -H /mnt/sw
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       572G  148G  395G  28% /mnt/sw

## same results by using /mnt/sw path
$ LANG=C df -H /mnt/sw/TMPDIR
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       572G  148G  395G  28% /mnt/sw

## same results again - in fact as path used same mountpoint /mnt/sw
$ LANG=C df -H /mnt/sw/YOCTO
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       572G  148G  395G  28% /mnt/sw

## let's test mountpoints /TMPDIR and /YOCTO - this is what
copy_license_file tests:

$ LANG=C df -H /TMPDIR
Filesystem      Size  Used Avail Use% Mounted on
/mnt/sw/TMPDIR  572G  148G  395G  28% /TMPDIR

$ LANG=C df -H /YOCTO
Filesystem      Size  Used Avail Use% Mounted on
/mnt/sw/YOCTO   572G  148G  395G  28% /YOCTO

## It made difference both in "Filesystem" and "Mounted on" columns
## Let's make the test more close what copy_license_files function tests:

$ LANG=C df -H /YOCTO/poky /TMPDIR/work
Filesystem      Size  Used Avail Use% Mounted on
/mnt/sw/YOCTO   572G  148G  395G  28% /YOCTO
/mnt/sw/TMPDIR  572G  148G  395G  28% /TMPDIR

==== stat test using ipython
In [9]: os.stat('/mnt').st_dev
Out[9]: 2066L

In [10]: os.stat('/mnt/sw').st_dev
Out[10]: 2050L

In [11]: os.stat('/mnt/sw/TMPDIR/work').st_dev
Out[11]: 2050L

In [12]: os.stat('/mnt/sw/YOCTO/poky').st_dev
Out[12]: 2050L

In [13]: os.stat('/YOCTO/poky').st_dev
Out[13]: 2050L

In [14]: os.stat('/TMPDIR/work').st_dev
Out[14]: 2050L

## Above python tests show that all the tests except os.stat('/mnt').st_dev
return /dev/sda2 mount point number (I guess).

I hope you can get more clear picture of my mounts and how different kind
of tests work.
Cheers,
Matti

--001a11376d90b748c3051e32815c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">RIchard,<br><br><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-08-25 17:12 GMT+03:00 Richard Purdie <span dir=3D"ltr=
">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blan=
k">richard.purdie@linuxfoundation.org</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><span class=3D"">On Wed, 2015-08-19 at 15:=
48 +0300, matti kaasinen wrote:<br>
&gt; Is there any way of getting rid of warnings of following type:<br>
&gt;<br>
&gt; WARNING: Could not copy license file /YOCTO/poky/LICENSE<br>
&gt; to /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-d=
estdir/xxx-image/LICENSE: [Errno 18] Invalid cross-device link<br>
&gt;<br>
&gt;<br>
&gt; Yes, sources and results are located on different logical drives, but<=
br>
&gt; should it still be possible to copy files between them. Everything<br>
&gt; else works fine in bitbaking.<br>
<br>
</span>Can you be a little more clear about what you did please? I assume y=
ou<br>
changed TMPDIR to point to a different disk to the one where the poky<br>
checkout is located?<br></blockquote><div><br>Yes, you are absolutely right=
. <br></div><div>I have a pretty small (120G) ssd disk I have installed my =
Ubuntu machine  (/dev/sdb2). I try not to pollute it with checkouts and in =
particular builds. For that purpose I have reserved one partition from pret=
ty moderate (1TB) hdd. Both checkouts (I have played with some distros) and=
 TMPDIR live in there, but in different mount points. In fact, I do have al=
so a mount point called /TMPDIR there.<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<br>
I&#39;m still a little puzzled about why the existing check doesn&#39;t cat=
ch<br>
the fact they&#39;re different disks...<br></blockquote><div><br></div><div=
>Let&#39;s study how it works, first the mounts. <br></div><div>As I told b=
efore, both the TMPDIR and checkouts (/YOCTO) live in /dev/sdb2 that has be=
en mounted in /mnt/sw. Let&#39;s see how they look in df and python os.stat=
 listings.<br><br></div><div>=3D=3D=3D=3D df shell command<br></div><div>##=
 /mnt is in ssd disk<br></div><div>$ LANG=3DC df -H /mnt<br>Filesystem=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail Use% Mounted on<br>/dev/s=
db2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 110G=C2=A0=C2=A0 24G=C2=A0=C2=A0 80=
G=C2=A0 23% /<br><br></div><div>## sda2 partition of hdd disk mounted to /m=
nt/sw<br></div><div>$ LANG=3DC df -H /mnt/sw<br>Filesystem=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail Use% Mounted on<br>/dev/sda2=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /mnt/sw<br=
><br></div><div>## same results by using /mnt/sw path<br></div><div>$ LANG=
=3DC df -H /mnt/sw/TMPDIR<br>Filesystem=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Size=
=C2=A0 Used Avail Use% Mounted on<br>/dev/sda2=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /mnt/sw<br><br></div><div>##=
 same results again - in fact as path used same mountpoint /mnt/sw<br></div=
><div>$ LANG=3DC df -H /mnt/sw/YOCTO<br>Filesystem=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Size=C2=A0 Used Avail Use% Mounted on<br>/dev/sda2=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /mnt/sw<br><br></di=
v><div>## let&#39;s test mountpoints /TMPDIR and /YOCTO - this is what copy=
_license_file tests:<br><br>$ LANG=3DC df -H /TMPDIR<br>Filesystem=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail Use% Mounted on<br>/mnt/sw/TMPD=
IR=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /TMPDIR<br><br>$ LANG=3DC df =
-H /YOCTO<br>Filesystem=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail=
 Use% Mounted on<br>/mnt/sw/YOCTO=C2=A0=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=
=A0 28% /YOCTO<br></div><div><br></div><div>## It made difference both in &=
quot;Filesystem&quot; and &quot;Mounted on&quot; columns<br></div><div>## L=
et&#39;s make the test more close what copy_license_files function tests:<b=
r><br>$ LANG=3DC df -H /YOCTO/poky /TMPDIR/work<br>Filesystem=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Size=C2=A0 Used Avail Use% Mounted on<br>/mnt/sw/YOCTO=
=C2=A0=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /YOCTO<br>/mnt/sw/TMPDIR=
=C2=A0 572G=C2=A0 148G=C2=A0 395G=C2=A0 28% /TMPDIR<br><br><div>=3D=3D=3D=
=3D stat test using ipython<br>In [9]: os.stat(&#39;/mnt&#39;).st_dev<br>Ou=
t[9]: 2066L<br><br>In [10]: os.stat(&#39;/mnt/sw&#39;).st_dev<br>Out[10]: 2=
050L<br><br>In [11]: os.stat(&#39;/mnt/sw/TMPDIR/work&#39;).st_dev<br>Out[1=
1]: 2050L<br><br>In [12]: os.stat(&#39;/mnt/sw/YOCTO/poky&#39;).st_dev<br>O=
ut[12]: 2050L<br><br>In [13]: os.stat(&#39;/YOCTO/poky&#39;).st_dev<br>Out[=
13]: 2050L<br><br>In [14]: os.stat(&#39;/TMPDIR/work&#39;).st_dev<br>Out[14=
]: 2050L<br><br></div><div>## Above python tests show that all the tests ex=
cept os.stat(&#39;/mnt&#39;).st_dev return /dev/sda2 mount point number (I =
guess).<br><br></div><div>I hope you can get more clear picture of my mount=
s and how different kind of tests work.<br></div><div>Cheers,<br></div><div=
>Matti<br></div><br></div></div></div></div>

--001a11376d90b748c3051e32815c--
