Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A56AE00796; Tue, 12 Aug 2014 04:22:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0F2EE00786
	for <poky@yoctoproject.org>; Tue, 12 Aug 2014 04:21:53 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id n3so5596008wiv.13
	for <poky@yoctoproject.org>; Tue, 12 Aug 2014 04:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=xGx+a2dBhE5aTZxgwYfkhk9hxFBvLA8fFuGAMobU++o=;
	b=EZVEjBddcWxrhw2AFqpk2x2rjPAEtxjMB6hUQFhnxy8wQxBA5vxumeEZ/6ZKbLGNq1
	4+2nuWfiQ8Y5YgpT2bpMgZsrb9MtUd+tInU+0baLJiTEwgCFqf6go7CLpED6ythCMUy2
	bqDf6meR3N0fTwPQdxvscdt/2Nn3XWefusssm5gLSyFMMFiuwWv79E8k94hquNagcjKf
	VwyLhj+faKaK6oMy0bQWSsHHCGgs1SxlpGiqTJknYLRprpncb6dPpJ+omLw3MayYRiqj
	+bBIktSFXDMVn61ld5+i+HDVQareqEXoPk+Q6gDagySzMNuOvelXwHkCer3DJQHPLRrn
	cUGQ==
X-Received: by 10.194.237.194 with SMTP id ve2mr4533626wjc.89.1407842512950;
	Tue, 12 Aug 2014 04:21:52 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id e3sm8652186wjp.4.2014.08.12.04.21.51
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Aug 2014 04:21:52 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 12 Aug 2014 13:22:28 +0200
To: Bryan Evenson <bevenson@melinkcorp.com>
Message-ID: <20140812112228.GD14848@jama>
References: <1407775650-27646-1-git-send-email-bevenson@melinkcorp.com>
MIME-Version: 1.0
In-Reply-To: <1407775650-27646-1-git-send-email-bevenson@melinkcorp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] scripts/contrib/make_ipk_repo.sh: Add new image-specific package feed generator
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Aug 2014 11:22:02 -0000
X-Groupsio-MsgNum: 9746
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="vQ3nNXu39BMSLhj/"
Content-Disposition: inline

--vQ3nNXu39BMSLhj/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 11, 2014 at 12:47:30PM -0400, Bryan Evenson wrote:
> Adding a new script which generates a reduced package feed
> directory.  The script uses the list of installed packages for a
> specific build image and creates a new package feed directory
> with only the packages relevant to that image.  This is useful
> for distributing firmware upgrades.
>=20
> At this time the script only works for opkg repositories.  Further
> modifications are needed for the script to work with other package
> management systems.

This belongs to oe-core ML

>=20
> Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
> ---
>  scripts/contrib/make_ipk_repo.sh |   93 ++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 93 insertions(+)
>  create mode 100755 scripts/contrib/make_ipk_repo.sh
>=20
> diff --git a/scripts/contrib/make_ipk_repo.sh b/scripts/contrib/make_ipk_=
repo.sh
> new file mode 100755
> index 0000000..b04535e
> --- /dev/null
> +++ b/scripts/contrib/make_ipk_repo.sh
> @@ -0,0 +1,93 @@
> +#!/bin/bash
> +
> +# Creates a package feed directory that only contains the packages that =
were
> +# installed with the referenced image.  This script depends on image bui=
ld
> +# history to properly operate.  In your conf/local.conf, add the followi=
ng two
> +# lines:
> +#   INHERIT +=3D "buildhistory"
> +#   BUILDHISTORY_COMMIT =3D "1"
> +#
> +# At this time this script is only setup to create opkg package feeds.
> +# Further script modification is needed if you use a different package
> +# managment system.
> +#
> +# This script assumes it is being run from your image build directory.  =
Some
> +# paths may need to be modified if it is run from a different directory.
> +#
> +# Assumes that the relevant image was recently built.  If you have done =
any
> +# package builds since the last image build, it is suggested that you re=
-build
> +# relevant image.
> +#
> +# Script input variables:
> +# $1 - The image name (i.e. "core-image-minimal")
> +# $2 - The target machine (i.e. "beaglebone")
> +# $3 - The target architecture (i.e. "arm926ejste")
> +# $4 - The target directory (i.e. "feed")
> +#
> +
> +# Validate the number of input variables
> +if [[ "$#" -ne 4 ]]; then
> +    echo "Unexpected number of arguments";
> +    echo "Usage: make_ipk_repo.sh IMAGE_NAME TARGET_MACHINE TARGET_ARCH =
TARGET_DIR";
> +    exit 1;
> +fi
> +
> +# Some packages inexplicably contain a "1:" in the package name that doe=
s not
> +# belong there.  Remove this text from these package names.
> +
> +sed -i 's/1://g' tmp/buildhistory/images/"$2"/eglibc/"$1"/installed-pack=
ages.txt
> +
> +# Read in the list of packages used by the image.  This includes the
> +# machine/architecture independent packages ("all"), the architecture sp=
ecific
> +# packages, and the machine specific packages.
> +ALL_PKG_LIST=3D$(grep '_all\.ipk' tmp/buildhistory/images/"$2"/eglibc/"$=
1"/installed-packages.txt)
> +ARCH_PKG_LIST=3D$(grep '_'"$3"'\.ipk' tmp/buildhistory/images/"$2"/eglib=
c/"$1"/installed-packages.txt)
> +MACHINE_PKG_LIST=3D$(grep '_'"$2"'\.ipk' tmp/buildhistory/images/"$2"/eg=
libc/"$1"/installed-packages.txt)
> +
> +echo "ALL_PKG_LIST is $ALL_PKG_LIST";
> +echo "ARCH_PKG_LIST is $ARCH_PKG_LIST";
> +echo "MACHINE_PKG_LIST is $MACHINE_PKG_LIST";
> +
> +# Create the new directory for the feeds, making sure there is no previo=
us copy
> +rm -r "$4"/
> +rm "$4".zip
> +mkdir -p "$4"/
> +
> +# Copy over the "all" packages
> +mkdir -p "$4"/all/
> +echo "Copying packages to 'all' directory"
> +for i in $ALL_PKG_LIST; do
> +    cp tmp/deploy/ipk/all/"$i" "$4"/all/
> +done
> +
> +# Copy over the architecture packages
> +mkdir -p "$4"/$3/
> +echo "Copying packages to '$3' directory"
> +for i in $ARCH_PKG_LIST; do
> +    cp tmp/deploy/ipk/"$3"/"$i" "$4"/"$3"/
> +done
> +
> +# Copy over the machine packages
> +mkdir -p "$4"/"$2"/
> +echo "Copying packages to '$2' directory"
> +for i in $MACHINE_PKG_LIST; do
> +    cp tmp/deploy/ipk/"$2"/"$i" "$4"/"$2"/
> +done
> +
> +# Build the package index files
> +echo "Building package index files"
> +touch "$4"/Packages
> +flock "$4"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-make-=
index -r $4/Packages -p $4/Packages -m $4/"
> +touch "$4"/all/Packages
> +flock "$4"/all/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-m=
ake-index -r $4/all/Packages -p $4/all/Packages -m $4/all/"
> +touch "$4"/"$3"/Packages
> +flock "$4"/"$3"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-=
make-index -r $4/$3/Packages -p $4/$3/Packages -m $4/$3/"
> +touch "$4"/"$2"/Packages
> +flock "$4"/"$2"/Packages.flock -c "tmp/sysroots/i686-linux/usr/bin/opkg-=
make-index -r $4/$2/Packages -p $4/$2/Packages -m $4/$2/"
> +
> +#Create a zip file of the directory for archive purposes
> +cd "$4"/
> +zip -r "$4" .
> +
> +echo "A reduced package repository has been created at $4"
> +
> --=20
> 1.7.9.5
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--vQ3nNXu39BMSLhj/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPp+PQACgkQN1Ujt2V2gBzIUACgt882GooWwbqmZyNJ7iQPq4kt
YaoAnjtaj5r48nrx9Qso0HcRkZTBe4vQ
=au0I
-----END PGP SIGNATURE-----

--vQ3nNXu39BMSLhj/--
