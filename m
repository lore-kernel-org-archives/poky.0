Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82EADE004CF
	for <poky@yoctoproject.org>; Thu, 29 Sep 2011 04:58:32 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk6 with SMTP id 6so1563785pzk.7
	for <poky@yoctoproject.org>; Thu, 29 Sep 2011 04:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=O+XjD9Zm5CjV92ENZtBbMrRjYkrBJp8G4iAbqEEK2FI=;
	b=NDmgPIUnmvuThJNV7vs2IoC4m51upViFxXJjj2oYkkDIudyYiaG1ZMAX9sdQ+YPG6y
	pG+Rs6ojGzWpOorkCcYaLRQXA35S+VTJyvcbzi1TxVMA91zhh2WdiVLytQNTT4hr7xaf
	ob2z9zt25XN7NnOJKmyvzXMNx64BpBpWEVS/A=
MIME-Version: 1.0
Received: by 10.68.15.70 with SMTP id v6mr32805261pbc.85.1317297510294; Thu,
	29 Sep 2011 04:58:30 -0700 (PDT)
Received: by 10.142.229.6 with HTTP; Thu, 29 Sep 2011 04:58:30 -0700 (PDT)
In-Reply-To: <1317218908.2327.10.camel@elmorro>
References: <CAFt-coxvnV=WbYBAyRTBXeeXZ0Zc1ascqCXPC3V_WmWAWTspyQ@mail.gmail.com>
	<1317218908.2327.10.camel@elmorro>
Date: Thu, 29 Sep 2011 17:28:30 +0530
Message-ID: <CAFt-cozQ=Tp5gfn4HvC_pLgmO8WW49++FCyp-sOFErvOzjiWPQ@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>, poky@yoctoproject.org
Subject: Re: How to pull grub2
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
X-List-Received-Date: Thu, 29 Sep 2011 11:58:32 -0000
Content-Type: multipart/alternative; boundary=bcaec520f7c52a237504ae133a15

--bcaec520f7c52a237504ae133a15
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I just pulled the grub_1.99.bb in poky and built it for "*fishriver"*machine.
I am trying to install the image on* "Gigabyte"* machine, but it is promting
an error while installing.

*ERROR:*
*
*
*/usr/sbin/grub-setup: warn: This msdos-style partition label hal no
post-MBR gap; embedding won't be possible!*
*/usr/sbin/grub-setup:warn: Embedding is not possible. GRUB can only be
installed in this setup by using blocklists. However, blockclists area
UNRELIABLE and their use is discouraged..*
*/usr/sbin/grub-setup: error:will not proceed with blocklilsts.*
*Installtion image failed.*
sh: can't access tty; job control truned off


Please tell me is there anything I need to modify the bb file ?
Does grub2 work fine with fishriver machine?



-- 
Thanks & Regards,
SAI


On Wed, Sep 28, 2011 at 7:38 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

>
> On Wed, 2011-09-28 at 06:21 -0700, v sailaja wrote:
> > Hi,
> >
> >
> > I  have built the poky source with grub-0.97 but Now i want to pull
> > grub2.
> > I have grub2 recipe i.e, grub_1.98.bb.
> > If grub_0.97.bb file is there, then it is building for grub-0.97 only,
> > so I deleted the grub_0.97.bb file from meta/recipes-bsp/ and
> > I just changed the preferred version of grub from 0.97 to 1.98
> > in  fishriver.conf.
> >
> >
> > -REFERRED_VERSION_grub ?= "0.97"
> > +REFERRED_VERSION_grub ?= "1.98"
> >
> >
> > But i am facing an error "ERROR: Nothing PROVIDES 'grub'".
> > Can anyone tell me how to resolve this error and why i  am facing this
> > error though the grub recipe is there in meta/recipes-bsp/.
> >
>
> Hi,
>
> It's because the grub 1.98 recipe is restricted to only x86.64 and the
> grub 0.97 recipe to only i.86, so fishriver will only use .97 and won't
> see 1.98.
>
> There's now a grub 1.99 recipe in poky/master that does both, so I'd
> recommend you upgrade to edison or master of both poky and meta-intel to
> take advantage of it.
>
> Tom
>
> >
> >
> >
> >
> >
> >
> >
> >
> >
> > --
> > Thanks & Regards,
> > SAI
> >
> >
>
>
>


-- 
Thanks & Regards,
SAI

--bcaec520f7c52a237504ae133a15
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>I just pulled the <a href=3D"http://grub_=
1.99.bb">grub_1.99.bb</a> in poky and built it for &quot;<i>fishriver&quot;=
</i> machine.</div><div>I am trying to install the image on<i> &quot;Gigaby=
te&quot;</i> machine, but it is promting an error while installing.</div>
<div><br></div><div><u>ERROR:</u></div><div><u><br></u></div><div><div><i><=
b>/usr/sbin/grub-setup: warn: This msdos-style partition label hal no post-=
MBR gap; embedding won&#39;t be possible!</b></i></div><div><i><b>/usr/sbin=
/grub-setup:warn: Embedding is not possible. GRUB can only be installed in =
this setup by using blocklists. However, blockclists area UNRELIABLE and th=
eir use is discouraged..</b></i></div>
<div><i><b>/usr/sbin/grub-setup: error:will not proceed with blocklilsts.</=
b></i></div><div><i><b>Installtion image failed.</b></i></div><div>sh: can&=
#39;t access tty; job control truned off</div></div><div><br></div><div>
<br></div><div>Please tell me is there anything I need to modify the bb fil=
e ?</div><div>Does grub2 work fine with fishriver machine?</div><div><br></=
div><div><br></div><div><br></div><div>--=A0<br>Thanks &amp; Regards,<br>
SAI</div><div><br></div><div><br></div><div class=3D"gmail_quote">On Wed, S=
ep 28, 2011 at 7:38 PM, Tom Zanussi <span dir=3D"ltr">&lt;<a href=3D"mailto=
:tom.zanussi@intel.com">tom.zanussi@intel.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex;">
<div><div></div><div class=3D"h5"><br>
On Wed, 2011-09-28 at 06:21 -0700, v sailaja wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; I =A0have built the poky source with grub-0.97 but Now i want to pull<=
br>
&gt; grub2.<br>
&gt; I have grub2 recipe i.e, <a href=3D"http://grub_1.98.bb" target=3D"_bl=
ank">grub_1.98.bb</a>.<br>
&gt; If <a href=3D"http://grub_0.97.bb" target=3D"_blank">grub_0.97.bb</a> =
file is there, then it is building for grub-0.97 only,<br>
&gt; so I deleted the <a href=3D"http://grub_0.97.bb" target=3D"_blank">gru=
b_0.97.bb</a> file from meta/recipes-bsp/ and<br>
&gt; I just changed the preferred version of grub from 0.97 to 1.98<br>
&gt; in =A0fishriver.conf.<br>
&gt;<br>
&gt;<br>
&gt; -REFERRED_VERSION_grub ?=3D &quot;0.97&quot;<br>
&gt; +REFERRED_VERSION_grub ?=3D &quot;1.98&quot;<br>
&gt;<br>
&gt;<br>
&gt; But i am facing an error &quot;ERROR: Nothing PROVIDES &#39;grub&#39;&=
quot;.<br>
&gt; Can anyone tell me how to resolve this error and why i =A0am facing th=
is<br>
&gt; error though the grub recipe is there in meta/recipes-bsp/.<br>
&gt;<br>
<br>
</div></div>Hi,<br>
<br>
It&#39;s because the grub 1.98 recipe is restricted to only x86.64 and the<=
br>
grub 0.97 recipe to only i.86, so fishriver will only use .97 and won&#39;t=
<br>
see 1.98.<br>
<br>
There&#39;s now a grub 1.99 recipe in poky/master that does both, so I&#39;=
d<br>
recommend you upgrade to edison or master of both poky and meta-intel to<br=
>
take advantage of it.<br>
<br>
Tom<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Thanks &amp; Regards,<br>
&gt; SAI<br>
&gt;<br>
&gt;<br>
<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Thanks &amp;=
 Regards,<br>SAI<br><br>

--bcaec520f7c52a237504ae133a15--
