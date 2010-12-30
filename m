Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C89C4C80050
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 15:02:57 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so11934315iyb.35
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 13:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=G71DzbEFS0aMQ58yUtogDJC/UMubpzcFevXGN3Ouyw8=;
	b=e7GuDu0lTXol3j8v7vlCaITRIVeoiHjEtY1jVh1vchLbQFKzIb3f59XXwwmooFpIn/
	GMbrH7IW2q3kYdhv8ViOJhkmlDZgPlW+usU4C9PkGlQD6RhcOexB8o/EcmPsWm6zkcVc
	aoXOeonAn4ZpD2OieXLt86gqI9gEqvV1DXpok=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=hetKFaQOhBtOA2xN7Hb5p9uoLmgLQk9FxsJ6DT7SfpYuYT4AbBzQVj8CDqKBmuUsXh
	nzUhHe+FtRFWN0MlV4fJVsZThd9XRu5hXzTz81GTR8h17sFrowg42b/fJtGiibEY1W4P
	Tk7uq77Hh0nuEv9IETo7Z9J/9I8yLD8yCwpaw=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr16567471iba.37.1293742976418; Thu,
	30 Dec 2010 13:02:56 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 30 Dec 2010 13:02:56 -0800 (PST)
In-Reply-To: <a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1293731824.git.dvhart@linux.intel.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>
	<a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1293731824.git.dvhart@linux.intel.com>
Date: Thu, 30 Dec 2010 16:02:56 -0500
Message-ID: <AANLkTi=HVSpVxnx9QbU++mRMMW=csPz13PyT+vVX28b7@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] trace-cmd: fix cross-compilation
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
X-List-Received-Date: Thu, 30 Dec 2010 21:02:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 28, 2010 at 8:17 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> The trace-cmd Makefile forces certain variables, such as CC and AR.
> It was using the host gcc and loader, fix it to use the poky-built
> cross-compiler and linker.
>
> inherit pkgconfig to ensure we don't use the host pkg-config.
>
> Remove unecessary variables from the oemake commands, such as ARCH
> and LD which aren't used by the Makefile.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>

I actually hacked up the original of this one .. ;)


> ---
> =A0meta/recipes-kernel/trace-cmd/trace-cmd_git.bb | =A0 12 +++++-------
> =A01 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb b/meta/recipe=
s-kernel/trace-cmd/trace-cmd_git.bb
> index e375afc..a7eca5f 100644
> --- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
> +++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
> @@ -2,18 +2,16 @@ DESCRIPTION =3D "User interface to Ftrace"
> =A0LICENSE =3D "GPL"
> =A0LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954499f7abaabaa8=
82bbe"
>
> -PR =3D r1
> +PR =3D r2
> =A0PV =3D "1.0.4+git${SRCPV}"
>
> +inherit pkgconfig
> +
> =A0SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/tra=
ce-cmd.git;protocol=3Dgit"
> =A0S =3D "${WORKDIR}/git"
>
> -
> -do_compile() {
> - =A0 =A0 =A0 oe_runmake ARCH=3D"${ARCH}" CC=3D"${CC}" LD=3D"${LD}" prefi=
x=3D${prefix}
> -}
> +EXTRA_OEMAKE =3D "'CC=3D${CC}' 'AR=3D${AR}' 'prefix=3D${prefix}'"

So we've determined that we don't need ARCH anymore ? At one point
this did. Or is it coming from the pkgconfig inheritance now ?

Bruce

>
> =A0do_install() {
> - =A0 =A0 =A0 oe_runmake ARCH=3D"${ARCH}" CC=3D"${CC}" LD=3D"${LD}" \
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 prefix=3D${prefix} DESTDIR=3D${D} i=
nstall
> + =A0 =A0 =A0 oe_runmake CC=3D"${CC}" AR=3D"${AR}" prefix=3D"${prefix}" D=
ESTDIR=3D"${D}" install
> =A0}
> --
> 1.7.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

