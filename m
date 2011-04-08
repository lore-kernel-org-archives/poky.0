Return-Path: <salvatore.fassi@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B8354C80050
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 10:53:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so5116617iym.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 08:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=eBbCmAjUc/X41jjuoa6WH34sl7puFKc6+hL84eE8Q5k=;
	b=gOLQ9S6CYRWmcNMSm99TgJJGKVSW6eLbul2xwDKQac5nPBwzbFf4r2/P2mGH9F1VzK
	cQjamaJNnKbGubvOeBl+YYoa74/XY/KSyQYSIJDh9UdTmuun8IpiYdVz0SVy7EiTBNCS
	lPflQJb+HltAjVtgtz+1m9ILxTeiuaPKpWDb0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=TV2smNk1+xEblamSSBpCnGJg9U1O1mM3NDRAIQVG9VJg9ktre4YRnOyxgJPIIQGi3D
	2oFkqzQv4vETd25SQFXGk//FQq61r5BKk9EdSfcRYcTiT1VabVAZdTxX6v9drllb7uWU
	AvXCNXu0E127sPEjaKsWu9qR4q8Bo2Nn5iU7o=
MIME-Version: 1.0
Received: by 10.42.71.84 with SMTP id i20mr3540512icj.488.1302278018206; Fri,
	08 Apr 2011 08:53:38 -0700 (PDT)
Received: by 10.42.219.202 with HTTP; Fri, 8 Apr 2011 08:53:37 -0700 (PDT)
In-Reply-To: <201104081053.36361.paul.eggleton@linux.intel.com>
References: <BANLkTikROqhGtMmbFA4ZJs+dwDaVpzaKxw@mail.gmail.com>
	<4D9E1645.4050500@linux.intel.com>
	<201104081053.36361.paul.eggleton@linux.intel.com>
Date: Fri, 8 Apr 2011 17:53:37 +0200
Message-ID: <BANLkTimX2j5YVoWVrwYO0USyf+yOifijBA@mail.gmail.com>
From: Salvatore Fassi <salvatore.fassi@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Poky issues with tune-cortexa8 and a custom machine
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
X-List-Received-Date: Fri, 08 Apr 2011 15:53:39 -0000
Content-Type: multipart/alternative; boundary=001517576c80ac8e6e04a06a3ab5

--001517576c80ac8e6e04a06a3ab5
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I finally fixed this issue by adding:

PACKAGE_ARCHS += "armv7a"

to tune-cortexa8.inc

In fact the armv7a arch was missing from the PACKAGE_ARCHS variable so it
was not "seen" when composing the final image.
Do you think it could be a valid patch?
For me...it works!

Salvo


On Fri, Apr 8, 2011 at 11:53 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Thursday 07 April 2011 20:53:41 Darren Hart wrote:
> > On 04/06/2011 08:53 AM, Salvatore Fassi wrote:
> > > I've created a custom machine to match my hardware.
> > > This hw is arm based with cortexa8 architecture, so my machine file
> > > (myarm.conf) uses:
> > >
> > > require conf/machine/include/tune-cortexa8.inc
> > >
> > > For the image I use:
> > >
> > > bitbake poky-image-minimal
> > >
> > > This compiles everything fine but when it starts composing the rootfs
> by
> > > installing ipk's I get errors about some missing packages.
> >
> > Does this also happen if you use rpms instead of ipks? (Set in
> > local.conf).
>
> I think there was a patch from Joshua post-1.0 to fix a bug that sounds
> like
> this one (rev e235357841311a4681c747cebcc5e51940aec606).
>
> We should probably consider this for a point release.
>
> Cheers,
> Paul
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001517576c80ac8e6e04a06a3ab5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<br><br>I finally fixed this issue by adding:<br><br>PACKAGE_ARCHS +=
=3D &quot;armv7a&quot;<br><br>to tune-cortexa8.inc<br><br>In fact the armv7=
a arch was missing from the PACKAGE_ARCHS variable so it was not &quot;seen=
&quot; when composing the final image.<br>
Do you think it could be a valid patch?<br>For me...it works!<br><br>Salvo<=
br><br><br><div class=3D"gmail_quote">On Fri, Apr 8, 2011 at 11:53 AM, Paul=
 Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel=
.com">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div class=3D"im"=
>On Thursday 07 April 2011 20:53:41 Darren Hart wrote:<br>
&gt; On 04/06/2011 08:53 AM, Salvatore Fassi wrote:<br>
</div><div class=3D"im">&gt; &gt; I&#39;ve created a custom machine to matc=
h my hardware.<br>
&gt; &gt; This hw is arm based with cortexa8 architecture, so my machine fi=
le<br>
&gt; &gt; (myarm.conf) uses:<br>
&gt; &gt;<br>
&gt; &gt; require conf/machine/include/tune-cortexa8.inc<br>
&gt; &gt;<br>
&gt; &gt; For the image I use:<br>
&gt; &gt;<br>
&gt; &gt; bitbake poky-image-minimal<br>
&gt; &gt;<br>
&gt; &gt; This compiles everything fine but when it starts composing the ro=
otfs by<br>
&gt; &gt; installing ipk&#39;s I get errors about some missing packages.<br=
>
&gt;<br>
&gt; Does this also happen if you use rpms instead of ipks? (Set in<br>
&gt; local.conf).<br>
<br>
</div>I think there was a patch from Joshua post-1.0 to fix a bug that soun=
ds like<br>
this one (rev e235357841311a4681c747cebcc5e51940aec606).<br>
<br>
We should probably consider this for a point release.<br>
<br>
Cheers,<br>
<font color=3D"#888888">Paul<br>
</font><div><div></div><div class=3D"h5">__________________________________=
_____________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br>

--001517576c80ac8e6e04a06a3ab5--
