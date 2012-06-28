Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AAF6E01426
	for <poky@yoctoproject.org>; Thu, 28 Jun 2012 13:48:31 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1171738eek.35
	for <poky@yoctoproject.org>; Thu, 28 Jun 2012 13:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Sna+RhextdjT0GPR76LBgW5OzUcWHo1JBmmJOgReiVE=;
	b=ZISvm+m0PtK12WfvBkEmDG7sSGQhiBNn+CDRbPVDYZgEhdvugSgLnw8oBSIK8njcs7
	mNYt+qxl/G9NUB+zSMAEA+8ZMacisHPd8X7cWB3Vo99TmCr09/zZJnbPFtUGkwf4AwYl
	QN0Z4UiWXogni8MY6ZdWLoVaX1qIvkDxchytw6DalraLNHYIZAF9BELafVlZXN4gMyqM
	nd5G37LKmxAsx9iZUi6qm0Oqlgg4+16U6pygl1Vp9kQf9Mh5v3mkJguVRFVz/TEl1oqh
	yIs8QitV9xunE4dPeVTl1KFlrHZuVqrMqyPXM5f5hUs2wYT/ru+t4A3RMIDCelRY1+J7
	Sncg==
Received: by 10.14.97.16 with SMTP id s16mr778826eef.117.1340916510171; Thu,
	28 Jun 2012 13:48:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Thu, 28 Jun 2012 13:48:00 -0700 (PDT)
In-Reply-To: <1340916166-23948-1-git-send-email-raj.khem@gmail.com>
References: <1340916166-23948-1-git-send-email-raj.khem@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Jun 2012 13:48:00 -0700
Message-ID: <CAMKF1sqFJj8brGRCvhT+7vbuDPMcPpGcFqa8LhytS8=DsvzrMw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: [denzil][PATCH] bitbake: fetch2: Explicitly check for mirror tarballs in mirror handling code
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
X-List-Received-Date: Thu, 28 Jun 2012 20:48:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

ignore this was not meant to be sent

On Thu, Jun 28, 2012 at 1:42 PM, Khem Raj <raj.khem@gmail.com> wrote:
> From: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> With support for things like git:// -> git:// urls, we need to be
> more explicity about the mirrortarball check since we need to fall
> through to the following code in other cases.
>
> (From Poky rev: 28e858cd6f7509468ef3e527a86820b9e06044db)
>
> (Bitbake rev: a2459f5ca2f517964287f9a7c666a6856434e631)
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
> Conflicts:
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0bitbake/lib/bb/fetch2/__init__.py
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> =C2=A0bitbake/lib/bb/fetch2/__init__.py | =C2=A0 55 +++++++++++++++++++++=
++++++++++++++++
> =C2=A01 file changed, 55 insertions(+)
>
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__=
init__.py
> index 414cc2b..f70cb19 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -446,6 +446,61 @@ def check_network_access(d, info =3D "", url =3D Non=
e):
> =C2=A0 =C2=A0 else:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 logger.debug(1, "Fetcher accessed the network=
 with the command %s" % info)
>
> +def try_mirror_url(newuri, origud, ud, ld, check =3D False):
> + =C2=A0 =C2=A0# Return of None or a value means we're finished
> + =C2=A0 =C2=A0# False means try another url
> + =C2=A0 =C2=A0try:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if check:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0found =3D ud.method.checkstatu=
s(newuri, ud, ld)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if found:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return found
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return False
> +
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0os.chdir(ld.getVar("DL_DIR", True))
> +
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if not os.path.exists(ud.donestamp) or ud.me=
thod.need_update(newuri, ud, ld):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.method.download(newuri, ud,=
 ld)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if hasattr(ud.method,"build_mi=
rror_data"):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.method.build_=
mirror_data(newuri, ud, ld)
> +
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if not ud.localpath or not os.path.exists(ud=
.localpath):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return False
> +
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if ud.localpath =3D=3D origud.localpath:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ud.localpath
> +
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# We may be obtaining a mirror tarball which=
 needs further processing by the real fetcher
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# If that tarball is a local file:// we need=
 to provide a symlink to it
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0dldir =3D ld.getVar("DL_DIR", True)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if origud.mirrortarball and os.path.basename=
(ud.localpath) =3D=3D os.path.basename(origud.mirrortarball) \
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0and os.path.base=
name(ud.localpath) !=3D os.path.basename(origud.localpath):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0open(ud.donestamp, 'w').close(=
)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dest =3D os.path.join(dldir, o=
s.path.basename(ud.localpath))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not os.path.exists(dest):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.symlink(ud.lo=
calpath, dest)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return None
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0# Otherwise the result is a local file:// an=
d we symlink to it
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if not os.path.exists(origud.localpath):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 os.symlink(ud.localpath, orig=
ud.localpath)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0update_stamp(newuri, origud, ld)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0return ud.localpath
> +
> + =C2=A0 =C2=A0except bb.fetch2.NetworkAccess:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0raise
> +
> + =C2=A0 =C2=A0except bb.fetch2.BBFetchException as e:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0if isinstance(e, ChecksumError):
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger.warn("Mirror checksum f=
ailure for url %s (original url: %s)\nCleaning and trying again." % (newuri=
, origud.url))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger.warn(str(e))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0else:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger.debug(1, "Mirror fetch =
failure for url %s (original url: %s)" % (newuri, origud.url))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger.debug(1, str(e))
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0try:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ud.method.clean(ud, ld)
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0except UnboundLocalError:
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pass
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0return False
> +
> =C2=A0def try_mirrors(d, origud, mirrors, check =3D False):
> =C2=A0 =C2=A0 """
> =C2=A0 =C2=A0 Try to use a mirrored version of the sources.
> --
> 1.7.9.5
>

