Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 477E6E00CBA; Mon,  9 May 2016 20:37:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 153DFE00CB4
	for <poky@yoctoproject.org>; Mon,  9 May 2016 20:37:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u4A3bbN8028217
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 9 May 2016 20:37:37 -0700
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 9 May 2016 20:37:36 -0700
Date: Tue, 10 May 2016 11:37:33 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Ruslan Babayev <ruslan@babayev.com>
Message-ID: <20160510033733.GB5960@pek-khao-d1.corp.ad.wrs.com>
References: <1462839281-6229-1-git-send-email-ruslan@babayev.com>
	<1462839281-6229-3-git-send-email-ruslan@babayev.com>
MIME-Version: 1.0
In-Reply-To: <1462839281-6229-3-git-send-email-ruslan@babayev.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] edgerouter: libffi: fix build with soft-float tune
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
X-List-Received-Date: Tue, 10 May 2016 03:37:46 -0000
X-Groupsio-MsgNum: 10418
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KFztAG8eRSV9hGtP"
Content-Disposition: inline

--KFztAG8eRSV9hGtP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 09, 2016 at 05:14:41PM -0700, Ruslan Babayev wrote:
> Signed-off-by: Ruslan Babayev <ruslan@babayev.com>
> ---
>  .../recipes-support/libffi/libffi/mips-n32-soft-float.patch | 13 +++++++=
++++++
>  meta/recipes-support/libffi/libffi_3.2.1.bb                 |  1 +
>  2 files changed, 14 insertions(+)
>  create mode 100644 meta/recipes-support/libffi/libffi/mips-n32-soft-floa=
t.patch

I am still getting the following build errors with or without musl after
applying this patch. Did I miss something?
   /buildarea/raid0/khao/build-yocto-musl/tmp/sysroots/edgerouter/usr/lib/l=
ibffi.so: undefined reference to `ffi_closure_N32'
   /buildarea/raid0/khao/build-yocto-musl/tmp/sysroots/edgerouter/usr/lib/l=
ibffi.so: undefined reference to `ffi_call_N32'

Thanks,
Kevin

>=20
> diff --git a/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch=
 b/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch
> new file mode 100644
> index 0000000..c901614
> --- /dev/null
> +++ b/meta/recipes-support/libffi/libffi/mips-n32-soft-float.patch
> @@ -0,0 +1,13 @@
> +Index: libffi-3.2.1/src/mips/n32.S
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- libffi-3.2.1.orig/src/mips/n32.S
> ++++ libffi-3.2.1/src/mips/n32.S
> +@@ -30,7 +30,7 @@
> +=20
> + /* Only build this code if we are compiling for n32 */=09
> +=20
> +-#if defined(FFI_MIPS_N32)
> ++#if defined(FFI_MIPS_N32) && !defined(__mips_soft_float)
> +=20
> + #define callback a0
> + #define bytes	 a2
> diff --git a/meta/recipes-support/libffi/libffi_3.2.1.bb b/meta/recipes-s=
upport/libffi/libffi_3.2.1.bb
> index 72e25fb..5b57e79 100644
> --- a/meta/recipes-support/libffi/libffi_3.2.1.bb
> +++ b/meta/recipes-support/libffi/libffi_3.2.1.bb
> @@ -12,6 +12,7 @@ LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3610bb17683a=
0089ed64055416b2ae1b"
>  SRC_URI =3D "ftp://sourceware.org/pub/libffi/${BP}.tar.gz \
>             file://not-win32.patch \
>  	   file://0001-mips-Use-compiler-internal-define-for-linux.patch \
> +           file://mips-n32-soft-float.patch \
>  	   "
> =20
>  SRC_URI[md5sum] =3D "83b89587607e3eb65c70d361f13bab43"
> --=20
> 2.7.4
>=20

--KFztAG8eRSV9hGtP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXMVd7AAoJEJNY7TDerrFxDWcH/jxbz9+LW2T3NyC015klaqT+
K/RSzs3KtjtMM4o59dNPpCm02pmvUORdq9HVfQZAE/IXy5N1xQOfuOPDlfD7VWAG
VJ+/OPi+ez+vTCfEf20MoyuH2DFb0ovXKUiiUYbmx/It0+NJO7kVNNruaGHcaPZC
TRXha2JxrSZy0DsIgB5akcLegzfZHmb/M2uClMuBzbtRjienmy1eoRRBJERWViEh
C3afPmujTPoUz1e9dXMrlCs+m/lNzxHtxPZJdQ8q9CbkXHcldjNWqr5Yu/sUlEtY
fc+Dg0ZJ1666l043WXTn6NcmFQImNucUJ931m5JmubTFJsQWwLaKsWbSDJM9A2Y=
=upqL
-----END PGP SIGNATURE-----

--KFztAG8eRSV9hGtP--
