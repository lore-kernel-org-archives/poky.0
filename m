Return-Path: <cahoshing@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1274EE004E4
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 05:38:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so4015098gxk.35
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 05:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=34AJir1FcGPYMeI9Bg2nJ35tQsyfWDgUI4pVEgtcv6Q=;
	b=U0VKmeJ2Z3FkU/Q1NxxNzkJCrUXonUPArr/QfLu7uzUuDn0/krLO+X+BL4zBBcP3dF
	5EqcqSWzpZ6O5Fo46XDPZFu0wwoxbRBBr6vKvT60+KY5u8tRvt9uV3foaFQ0dYLT7pwl
	FPMK8ls+1wIVlmbNBMi4ufIgegoNNrmaHe24A=
MIME-Version: 1.0
Received: by 10.43.48.133 with SMTP id uw5mr2095906icb.114.1316176713036; Fri,
	16 Sep 2011 05:38:33 -0700 (PDT)
Received: by 10.231.200.137 with HTTP; Fri, 16 Sep 2011 05:38:33 -0700 (PDT)
Date: Fri, 16 Sep 2011 18:08:33 +0530
Message-ID: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Fri, 16 Sep 2011 12:38:35 -0000
Content-Type: multipart/alternative; boundary=bcaec5299f5f7133c104ad0e458f

--bcaec5299f5f7133c104ad0e458f
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I am building poky-build minimal live image for fishriver machine on 64 bit
host machine.
As I am having limited internet band-width, so I have identified all the
dependent packages and setup a Apache server on my local system so that I
can redirect the SRC_URI of all the packages to my local server.
I have changed the related recipes to build  minimal live image, and modify
bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in side
packages I have tars which  was present "build/download" folder.

While building linux-yocto, fetch and unpack was done but during kernel
checkout whatever git commits I have done previously in poky source were
flashed out (lost),  also the only recipe remains in  meta/recipe-kernel/ is
linux .


Following are the changes made in meta/recipes-kernel/linux/
linux-yocto_git.bb
#SRCREV_FORMAT = "meta_machine"
SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
 // This tar file I took from
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2

PV = "${LINUX_VERSION}"

In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
PREFERRED_VERSION_linux-yocto = "3.0+git%" )


Can any one help me to find the solution that if I had to pull linux kernel
source from tar file or such and not from git repository. What things I have
to do.

Regards
C Hoshing

--bcaec5299f5f7133c104ad0e458f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi ,</div><div><div><br></div><div>I am building poky=
-build minimal live image for fishriver machine on 64 bit host machine.</di=
v><div>As I am having limited internet band-width, so I have identified all=
 the dependent packages and setup a Apache server on my local system so tha=
t I can redirect the SRC_URI of all the packages to my local server.</div>
<div>I have changed the related recipes to build =A0minimal live image, and=
 modify bitbake.conf to add LOCAL_MIRROR=3D&quot;xxx.xxx.xxx.xxx/packages&q=
uot; , in side packages I have tars which =A0was present &quot;build/downlo=
ad&quot; folder.=A0</div>
<div><br></div><div>While building linux-yocto, fetch and unpack was done b=
ut during kernel checkout whatever git commits I have done previously in po=
ky source were flashed out (lost), =A0also the only recipe remains in =A0me=
ta/recipe-kernel/ is linux .</div>
<div><br></div><div><br></div><div>Following are the changes made in meta/r=
ecipes-kernel/linux/<a href=3D"http://linux-yocto_git.bb">linux-yocto_git.b=
b</a></div><div>#SRCREV_FORMAT =3D &quot;meta_machine&quot; =A0</div><div>S=
RC_URI =3D &quot;${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2&quot; =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0// This tar file I took from <a href=3D"=
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yo=
cto-3.0-3.0.tar.bz2">http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-=
3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2</a>=A0</div>
<div>PV =3D &quot;${LINUX_VERSION}&quot;</div><div><br></div><div>In file m=
eta-intel/meta-fishriver/conf/machine/fishriver.conf I modified=A0</div><di=
v>PREFERRED_VERSION_linux-yocto =3D &quot;3.0&quot; =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0(which =A0was =A0 PREFERRED_VERSION_linux-yocto =3D &quot;3.0+git%&=
quot; )</div>
<div><br></div><div><br></div><div>Can any one help me to find the solution=
 that if I had to pull linux kernel source from tar file or such and not fr=
om git repository. What things I have to do.</div><div><br></div><div>Regar=
ds</div>
<div>C Hoshing</div><div><br></div></div></div>

--bcaec5299f5f7133c104ad0e458f--
