Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A34E00509
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 07:24:46 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywb3 with SMTP id 3so4159686ywb.35
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 07:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=cvMVIlVGsbtp66X1foTvrrHZjWyuB0sLAq2YBGNZgs0=;
	b=gvywsVBr8StWPQOJ8o0963BA5+UE0S1ZVK24IB9D3uDFsFQzayTqbFVTVstoSKNWWG
	qWYlR7i/csUiWDjSWyhsalZclWLnNnIRELqWyOy35rMbkp/E8sNinLLKu1wZ+vFtLBVU
	NT2z0D/+XmU0Jqi+tcAtsMl0lVB4LM60YEBpY=
MIME-Version: 1.0
Received: by 10.68.9.231 with SMTP id d7mr1528542pbb.300.1316183084214; Fri,
	16 Sep 2011 07:24:44 -0700 (PDT)
Received: by 10.142.173.16 with HTTP; Fri, 16 Sep 2011 07:24:44 -0700 (PDT)
In-Reply-To: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
Date: Fri, 16 Sep 2011 10:24:44 -0400
Message-ID: <CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: chinmaya hoshing <cahoshing@gmail.com>
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
X-List-Received-Date: Fri, 16 Sep 2011 14:24:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing <cahoshing@gmail.com> wro=
te:
> Hi ,
> I am building poky-build minimal live image for fishriver machine on 64 b=
it
> host machine.
> As I am having limited internet band-width, so I have identified all the
> dependent packages and setup a Apache server on my local system so that I
> can redirect the SRC_URI of all the packages to my local server.
> I have changed the related recipes to build =A0minimal live image, and mo=
dify
> bitbake.conf to add LOCAL_MIRROR=3D"xxx.xxx.xxx.xxx/packages" , in side
> packages I have tars which =A0was present "build/download" folder.
> While building linux-yocto, fetch and unpack was done but during kernel
> checkout whatever git commits I have done previously in poky source were
> flashed out (lost), =A0also the only recipe remains in =A0meta/recipe-ker=
nel/ is
> linux .
>
> Following are the changes made in
> meta/recipes-kernel/linux/linux-yocto_git.bb
> #SRCREV_FORMAT =3D "meta_machine"
> SRC_URI =3D "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
> =A0// This tar file I took from
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-=
yocto-3.0-3.0.tar.bz2
> PV =3D "${LINUX_VERSION}"
> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
> PREFERRED_VERSION_linux-yocto =3D "3.0" =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(w=
hich =A0was
> PREFERRED_VERSION_linux-yocto =3D "3.0+git%" )
>
> Can any one help me to find the solution that if I had to pull linux kern=
el
> source from tar file or such and not from git repository. What things I h=
ave
> to do.

The linux-yocto recipes are designed from the ground up to work on a git
based repository, and there's really no way to get around that fact (and no
plans to make any changes in this area).

So why not setup a git server, or put a local git repository on your build
machine and reference that ?

Bruce

> Regards
> C Hoshing
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

