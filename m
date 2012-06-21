Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4109E013EB
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:14:19 -0700 (PDT)
Received: by weyr3 with SMTP id r3so909313wey.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 14:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=7mU/4cqVbGqXnEob0ChDQ1KlYoJtnZfWpwtpMTi7pcE=;
	b=fqKwz4MouarihI2rWjCe8J5lrZBH6cUDX5zz4mZFAaMAOeW5UijTYeqg/ZrZKwr0Rb
	Xp3JUB7Ud8S5m46utN9mpVazwLeOxXDFpWWDm/HSNDOOxXE/LWchygFaJjpjLTdsKIg4
	75Tff5IqRI9/G4C1ESmWZSEEt5QmaQmhIukeHZVgAeP+4hkEipkQ14bKsyOdypNZo/mx
	A7AbBCHfUVk3+HRt0wJad6vVkBIOuXjVCtaZ4HTDjJjqz+x3oiKTxDzcxFHT3fcIc+/j
	1doJ1rzkQQ8UUsBQhfr3uulJ6OPmBw3GqbgA1YFR5hOn6DtjJXRvMfo0BjTpKlpif/64
	qhrQ==
Received: by 10.180.79.166 with SMTP id k6mr23222695wix.8.1340313258399;
	Thu, 21 Jun 2012 14:14:18 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id t8sm13973306wiy.3.2012.06.21.14.14.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 14:14:17 -0700 (PDT)
Date: Thu, 21 Jun 2012 23:14:16 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20120621211416.GI9352@jama.jama.net>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
	<CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Thu, 21 Jun 2012 21:14:20 -0000
X-Groupsio-MsgNum: 7929
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MPkR1dXiUZqK+927"
Content-Disposition: inline

--MPkR1dXiUZqK+927
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2012 at 12:00:09AM +0300, Andrei Gherzan wrote:
> In a qemumips build with master poky:
>=20
> WARNING: BBPATH references the current directory, either through an empty
> entry, or a '.'.
>  This is unsafe and means your layer configuration is adding empty elemen=
ts
> to BBPATH.
>  Please check your layer.conf files and other BBPATH settings to remove t=
he
> current working directory references.
>=20
> And this is because BBPATH contains:
> /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agherza=
n/work/personal/yocto/poky-contrib/meta
>=20
> Well it's strange that:
> meta: BBPATH .=3D ":${LAYERDIR}"
> meta-yocto: BBPATH :=3D "${LAYERDIR}:${BBPATH}"
>=20
> This explains the way BBPATH above ended
> like: /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/a=
gherzan/work/personal/yocto/poky-contrib/meta
>=20
> Why don't we assign BBPATH as this in meta:
> BBPATH .=3D "${LAYERDIR}"
>=20
> And then in all other layers use: meta-yocto: BBPATH :=3D
> "${LAYERDIR}:${BBPATH}". In this way the variable would be correctly
> generated.

IMHO it's better to change meta-yocto/conf/layer to=20
BBPATH .=3D ":${LAYERDIR}"
so the BBPATH order is the same as order of layers in bblayers.conf

I've changed it lately in=20
meta-initramfs http://patchwork.openembedded.org/patch/28487/
meta-handheld  http://patchwork.openembedded.org/patch/28485/

so it would be more consistent to change it in meta-yocto too.

Cheers,

> On Thu, Jun 21, 2012 at 11:32 PM, Andrei Gherzan <andrei@gherzan.ro> wrot=
e:
>=20
> > On Thu, Jun 21, 2012 at 6:51 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> >> On Mon, Jun 18, 2012 at 12:56 PM, Scott Garman <scott.a.garman@intel.c=
om>
> >> wrote:
> >> > From: Laurentiu Palcu <laurentiu.palcu@intel.com>
> >> >
> >> > If BBPATH references the working directory, the user is warned and a=
sked
> >> > to fix the problem.
> >> >
> >> > [Yocto #1465]
> >> >
> >> > (From OE-Core rev: 73f10ae955ba217078fa2c5288b736ae8a30b184)
> >> >
> >> > Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
> >> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> >> >
> >> > Reworked commit to fix merge conflicts with denzil branch.
> >> >
> >> > Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> >> > ---
> >> >  meta/classes/sanity.bbclass |   13 ++++++++++++-
> >> >  1 file changed, 12 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbcla=
ss
> >> > index 9755694..298372b 100644
> >> > --- a/meta/classes/sanity.bbclass
> >> > +++ b/meta/classes/sanity.bbclass
> >> > @@ -310,7 +310,18 @@ def check_sanity(sanity_data):
> >> >     if "." in data.getVar('PATH', sanity_data, True).split(":"):
> >> >         messages =3D messages + "PATH contains '.' which will break =
the
> >> build, please remove this"
> >> >
> >> > -    if data.getVar('TARGET_ARCH', sanity_data, True) =3D=3D "arm":
> >> > +    bbpaths =3D sanity_data.getVar('BBPATH', True).split(":")
> >> > +    if "." in bbpaths or "" in bbpaths:
> >> > +        # TODO: change the following message to fatal when all BBPA=
TH
> >> issues
> >> > +        # are fixed
> >> > +        bb.warn("BBPATH references the current directory, either
> >> through "    \
> >> > +                "an empty entry, or a '.'.\n\t This is unsafe and
> >> means your "\
> >> > +                "layer configuration is adding empty elements to
> >> BBPATH.\n\t "\
> >> > +                "Please check your layer.conf files and other BBPAT=
H "
> >>        \
> >> > +                "settings to remove the current working directory "
> >>         \
> >> > +                "references.");
> >> > +
> >> > +    if sanity_data.getVar('TARGET_ARCH', True) =3D=3D "arm":
> >>
> >> No I get this warning when I use OE-Core standalone. The reason is for
> >> OE-Core
> >>
> >> BBPATH .=3D ":${LAYERDIR}"
> >>
> >> and there are no more entries prepended since its the only layer so
> >> leading : is causing
> >> this warning to show up.
> >>
> >>
> > I confirm this.
> >
> > @g
> >
> >

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--MPkR1dXiUZqK+927
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/jjqgACgkQN1Ujt2V2gByoSQCdFJdXHL9JmHwlFokQY4yT72k5
E8gAmgM63+Hq0hwDEwYYAVknyA5tJyur
=pHGZ
-----END PGP SIGNATURE-----

--MPkR1dXiUZqK+927--
