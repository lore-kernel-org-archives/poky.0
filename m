Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9CCE00502
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 07:35:59 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyc15 with SMTP id 15so4175909gyc.35
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 07:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=IqIDkGSA5tYSuowFXLh43HUCWRXAnKz0+liVgTgO1MA=;
	b=dL11y0SLvszzkQ66VF4fEO4fGPWEKNb3jjAR7G+0mkqbbE4Tt47vFWHg5XxszKLC8I
	E8kPBDLdOTIkaTUJ5xCkndvcr4CpMLejDPHUMIABEWGfQRDErLCc2BcAMeQLjRQVAKdt
	78oVCWNUTNKrCth6A4GKR+UGCdM2OPwtuvBio=
MIME-Version: 1.0
Received: by 10.68.50.8 with SMTP id y8mr1290524pbn.32.1316183757353; Fri, 16
	Sep 2011 07:35:57 -0700 (PDT)
Received: by 10.142.173.16 with HTTP; Fri, 16 Sep 2011 07:35:57 -0700 (PDT)
In-Reply-To: <CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<CADkTA4PVKxWW1f1CmfXD3sKd+W0+Vn3JGOV6TeL9PVS+VrWu5A@mail.gmail.com>
Date: Fri, 16 Sep 2011 10:35:57 -0400
Message-ID: <CADkTA4PXcrk=b92UEPS72Byd5ine_ZRKJs7bzohfZfKBUbzVmw@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Sep 2011 14:36:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 16, 2011 at 10:24 AM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:
> On Fri, Sep 16, 2011 at 8:38 AM, chinmaya hoshing <cahoshing@gmail.com> w=
rote:
>> Hi ,
>> I am building poky-build minimal live image for fishriver machine on 64 =
bit
>> host machine.
>> As I am having limited internet band-width, so I have identified all the
>> dependent packages and setup a Apache server on my local system so that =
I
>> can redirect the SRC_URI of all the packages to my local server.
>> I have changed the related recipes to build =A0minimal live image, and m=
odify
>> bitbake.conf to add LOCAL_MIRROR=3D"xxx.xxx.xxx.xxx/packages" , in side
>> packages I have tars which =A0was present "build/download" folder.
>> While building linux-yocto, fetch and unpack was done but during kernel
>> checkout whatever git commits I have done previously in poky source were
>> flashed out (lost), =A0also the only recipe remains in =A0meta/recipe-ke=
rnel/ is
>> linux .
>>
>> Following are the changes made in
>> meta/recipes-kernel/linux/linux-yocto_git.bb
>> #SRCREV_FORMAT =3D "meta_machine"
>> SRC_URI =3D "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
>> =A0// This tar file I took from
>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux=
-yocto-3.0-3.0.tar.bz2
>> PV =3D "${LINUX_VERSION}"
>> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified
>> PREFERRED_VERSION_linux-yocto =3D "3.0" =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(=
which =A0was
>> PREFERRED_VERSION_linux-yocto =3D "3.0+git%" )
>>
>> Can any one help me to find the solution that if I had to pull linux ker=
nel
>> source from tar file or such and not from git repository. What things I =
have
>> to do.
>
> The linux-yocto recipes are designed from the ground up to work on a git
> based repository, and there's really no way to get around that fact (and =
no
> plans to make any changes in this area).

Thinking further about this, if the tgz actually was just a tarball of the =
git
repositories (including the git blobs), it could work. But I'm not familiar=
 with
the fetcher/bitbake internals in this area enough to know if this is possib=
le.

Bruce

>
> So why not setup a git server, or put a local git repository on your buil=
d
> machine and reference that ?
>
> Bruce
>
>> Regards
>> C Hoshing
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

