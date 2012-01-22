Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CE4AE0030B
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:57:50 -0800 (PST)
Received: by lahl5 with SMTP id l5so1718893lah.35
	for <poky@yoctoproject.org>; Sun, 22 Jan 2012 10:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=D57XzN0fOhYR3CcyMpEo/6gg+MAby9oSIzHHFXA84HU=;
	b=eE9Rab6ykPOKRPkKhK29khlMUnYm2TFtLA1aafLMrG7oMO/WVteHfCIU/qA2XgN9tc
	pU2nW3tk7TxmueN9uf8dcZKNYyNo1gFRckFIVZa4JxV5K/mzoRS37QGYq0YTz4W23BRS
	1zq6hXTmNzZVmlT4CKz8DfUqYEvZf9JqLbxb4=
Received: by 10.152.131.40 with SMTP id oj8mr2927312lab.24.1327258669289; Sun,
	22 Jan 2012 10:57:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.22.233 with HTTP; Sun, 22 Jan 2012 10:57:18 -0800 (PST)
In-Reply-To: <1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1327257682-1324-1-git-send-email-derek.buitenhuis@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 22 Jan 2012 10:57:18 -0800
Message-ID: <CAMKF1sq0K_uTNLbACaUO=-dQVj8JPkWbjbDxubTZFm6cxRRJPw@mail.gmail.com>
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2 v2] binutils: Always enable plugins
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
X-List-Received-Date: Sun, 22 Jan 2012 18:57:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 22, 2012 at 10:41 AM, Derek Buitenhuis
<derek.buitenhuis@gmail.com> wrote:
> Since oe-core now uses binutils 2.22+, plugins should be
> well supported. Enable them by default.
>
> Signed-off-by: Derek Buitenhuis <derek.buitenhuis@gmail.com>
> ---
> =C2=A0.../binutils/binutils-cross-canadian.inc =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A01 +
> =C2=A0meta/recipes-devtools/binutils/binutils-cross.inc =C2=A0| =C2=A0 =
=C2=A01 +
> =C2=A0meta/recipes-devtools/binutils/binutils.inc =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A0 =C2=A01 +
> =C2=A03 files changed, 3 insertions(+), 0 deletions(-)
>
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b=
/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> index 15b9abb..c902c51 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> @@ -8,6 +8,7 @@ DEPENDS =3D "flex-native bison-native virtual/${HOST_PREF=
IX}gcc-crosssdk virtual/l
> =C2=A0EXTRA_OECONF =3D "--with-sysroot=3D${SDKPATH}/sysroots/${TUNE_PKGAR=
CH}${TARGET_VENDOR}-${TARGET_OS} \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --program-prefix=
=3D${TARGET_PREFIX} \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-werror =
\
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--enable-plugins=
 \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@base_contains(=
'DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=3Ddefault', '', d)}"
>
> =C2=A0do_install () {
> diff --git a/meta/recipes-devtools/binutils/binutils-cross.inc b/meta/rec=
ipes-devtools/binutils/binutils-cross.inc
> index 80152a9..38457e8 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross.inc
> @@ -9,6 +9,7 @@ EXTRA_OECONF =3D "--with-sysroot=3D${STAGING_DIR_TARGET} =
\
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-install=
-libbfd \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --disable-werror =
\
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-poison-s=
ystem-directories \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--enable-plugins=
 \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@base_contains(=
'DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=3Ddefault', '', d)} \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@base_contains(=
'DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
>
> diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-d=
evtools/binutils/binutils.inc
> index 30a0416..5449e1a 100644
> --- a/meta/recipes-devtools/binutils/binutils.inc
> +++ b/meta/recipes-devtools/binutils/binutils.inc
> @@ -52,6 +52,7 @@ B =3D "${S}/build.${HOST_SYS}.${TARGET_SYS}"
> =C2=A0EXTRA_OECONF =3D "--program-prefix=3D${TARGET_PREFIX} \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-install-=
libbfd \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 --enable-shared \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--enable-plugins=
 \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@base_contains(=
'DISTRO_FEATURES', 'multiarch', '--enable-64-bit-bfd', '', d)}"
>
> =C2=A0EXTRA_OECONF_virtclass-native =3D "--enable-target=3Dall --enable-6=
4-bit-bfd --enable-install-libbfd"
> --
> 1.7.8.3



while this patch is ok. It occurs to me that we might have to find an
easier way to specify common options once for all binutils recipes
>

