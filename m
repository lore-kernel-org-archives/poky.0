Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78F97E006AC
	for <poky@yoctoproject.org>; Sun,  2 Oct 2011 21:54:04 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iabz7 with SMTP id z7so6971660iab.35
	for <poky@yoctoproject.org>; Sun, 02 Oct 2011 21:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BIGgKMtROP40wIkufsLsUAdc+VLD2JDuiIgMxhoLy6o=;
	b=e7OJy47XISEfKBOs7ApNXv0wlh+qPcdb0Pk5ouninOQkXnp6rZoSHxTTR9qX1lDRAl
	qw7j7bePJZmA/7TfPs/TS2zqT/xW5r8vUZPn5kQipuQCUBH/J5qbqA6sjjtMaYkYAmur
	HSnvRkNroX1S16RM47OEQWkjJcwV2ZAAjpqok=
MIME-Version: 1.0
Received: by 10.231.48.142 with SMTP id r14mr13483200ibf.5.1317617642659; Sun,
	02 Oct 2011 21:54:02 -0700 (PDT)
Received: by 10.231.207.65 with HTTP; Sun, 2 Oct 2011 21:54:02 -0700 (PDT)
In-Reply-To: <4E8150E4.2040200@linux.intel.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<4E8150E4.2040200@linux.intel.com>
Date: Mon, 3 Oct 2011 10:24:02 +0530
Message-ID: <CAMTw45Aercppi1zWi1FFeV1Pr_ypu-eXzevBF2zhfts+AXk3BA@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Mon, 03 Oct 2011 04:54:05 -0000
Content-Type: multipart/alternative; boundary=0015176f0ac08a5fe004ae5dc36f

--0015176f0ac08a5fe004ae5dc36f
Content-Type: text/plain; charset=ISO-8859-1

Hi,

In Downloads directory whatever were the entries for linux kernel
I have kept them in downloads folder while building.
After this I disconnected the network and started the build ,But it throws
error for Unable to fetch source for linux-libc-headers, whereas building my
kernel  i.e linux-yocto_git.bb with this downloads does not create any
problem.

On Tue, Sep 27, 2011 at 9:58 AM, Darren Hart <dvhart@linux.intel.com> wrote:

>
>
> On 09/16/2011 05:38 AM, chinmaya hoshing wrote:
> > Hi ,
> >
> > I am building poky-build minimal live image for fishriver machine on 64
> > bit host machine.
> > As I am having limited internet band-width, so I have identified all the
> > dependent packages and setup a Apache server on my local system so that
> > I can redirect the SRC_URI of all the packages to my local server.
> > I have changed the related recipes to build  minimal live image, and
> > modify bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in
> > side packages I have tars which  was present "build/download" folder.
>
> OK... why not just use a common download directory? From what you've
> described your just trying to speed up the build on a single build system.
>
> --
> Darren
>
> >
> > While building linux-yocto, fetch and unpack was done but during kernel
> > checkout whatever git commits I have done previously in poky source were
> > flashed out (lost),  also the only recipe remains in
> >  meta/recipe-kernel/ is linux .
> >
> >
> > Following are the changes made in
> > meta/recipes-kernel/linux/linux-yocto_git.bb <http://linux-yocto_git.bb>
> > #SRCREV_FORMAT = "meta_machine"
> > SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
> >      // This tar file I took from
> >
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2
> > PV = "${LINUX_VERSION}"
> >
> > In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
> > PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
> > PREFERRED_VERSION_linux-yocto = "3.0+git%" )
> >
> >
> > Can any one help me to find the solution that if I had to pull linux
> > kernel source from tar file or such and not from git repository. What
> > things I have to do.
> >
> > Regards
> > C Hoshing
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

--0015176f0ac08a5fe004ae5dc36f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div><div>In Downloads directory whatever were=
 the entries for linux kernel=A0</div><div>I have kept them in downloads fo=
lder while building.<br></div><div><div>After this I disconnected the netwo=
rk and started the build ,But it throws error for Unable to fetch source fo=
r linux-libc-headers, whereas building my kernel =A0i.e <a href=3D"http://l=
inux-yocto_git.bb">linux-yocto_git.bb</a> with this downloads does not crea=
te any problem.</div>


<div><br></div><div class=3D"gmail_quote">On Tue, Sep 27, 2011 at 9:58 AM, =
Darren Hart <span dir=3D"ltr">&lt;<a href=3D"mailto:dvhart@linux.intel.com"=
 target=3D"_blank">dvhart@linux.intel.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">


<div><br>
<br>
On 09/16/2011 05:38 AM, chinmaya hoshing wrote:<br>
&gt; Hi ,<br>
&gt;<br>
&gt; I am building poky-build minimal live image for fishriver machine on 6=
4<br>
&gt; bit host machine.<br>
&gt; As I am having limited internet band-width, so I have identified all t=
he<br>
&gt; dependent packages and setup a Apache server on my local system so tha=
t<br>
&gt; I can redirect the SRC_URI of all the packages to my local server.<br>
&gt; I have changed the related recipes to build =A0minimal live image, and=
<br>
&gt; modify bitbake.conf to add LOCAL_MIRROR=3D&quot;xxx.xxx.xxx.xxx/packag=
es&quot; , in<br>
&gt; side packages I have tars which =A0was present &quot;build/download&qu=
ot; folder.<br>
<br>
</div>OK... why not just use a common download directory? From what you&#39=
;ve<br>
described your just trying to speed up the build on a single build system.<=
br>
<br>
--<br>
Darren<br>
<div><br>
&gt;<br>
&gt; While building linux-yocto, fetch and unpack was done but during kerne=
l<br>
&gt; checkout whatever git commits I have done previously in poky source we=
re<br>
&gt; flashed out (lost), =A0also the only recipe remains in<br>
&gt; =A0meta/recipe-kernel/ is linux .<br>
&gt;<br>
&gt;<br>
&gt; Following are the changes made in<br>
</div>&gt; meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb" =
target=3D"_blank">linux-yocto_git.bb</a> &lt;<a href=3D"http://linux-yocto_=
git.bb" target=3D"_blank">http://linux-yocto_git.bb</a>&gt;<br>
<div>&gt; #SRCREV_FORMAT =3D &quot;meta_machine&quot;<br>
&gt; SRC_URI =3D &quot;${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2&quot;<br=
>
&gt; =A0 =A0 =A0// This tar file I took from<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/s=
napshot/linux-yocto-3.0-3.0.tar.bz2" target=3D"_blank">http://git.yoctoproj=
ect.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2<=
/a><br>



&gt; PV =3D &quot;${LINUX_VERSION}&quot;<br>
&gt;<br>
&gt; In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modifi=
ed<br>
&gt; PREFERRED_VERSION_linux-yocto =3D &quot;3.0&quot; =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0(which =A0was<br>
&gt; PREFERRED_VERSION_linux-yocto =3D &quot;3.0+git%&quot; )<br>
&gt;<br>
&gt;<br>
&gt; Can any one help me to find the solution that if I had to pull linux<b=
r>
&gt; kernel source from tar file or such and not from git repository. What<=
br>
&gt; things I have to do.<br>
&gt;<br>
&gt; Regards<br>
&gt; C Hoshing<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div><div><div></div><div>&gt; ___________________________________________=
____<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
</div></div><font color=3D"#888888">--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
</font></blockquote></div><br></div></div></div></div>

--0015176f0ac08a5fe004ae5dc36f--
