Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DBDAE00A9B; Mon, 24 Apr 2017 09:45:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF15FE00AB9
	for <poky@yoctoproject.org>; Mon, 24 Apr 2017 09:45:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Apr 2017 09:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,245,1488873600"; 
	d="asc'?scan'208";a="1139525025"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.137])
	([10.219.128.137])
	by fmsmga001.fm.intel.com with ESMTP; 24 Apr 2017 09:45:48 -0700
To: Martin Kelly <mkelly@xevo.com>, poky@yoctoproject.org
References: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <58FE2CC1.8030405@linux.intel.com>
Date: Mon, 24 Apr 2017 11:50:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>,
	Patrick Ohly <patrick.ohly@intel.com>
Subject: Re: [PATCH] qemuboot.conf: make cpus match built artifacts
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
X-List-Received-Date: Mon, 24 Apr 2017 16:45:58 -0000
X-Groupsio-MsgNum: 10856
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="S26ewoS9cSs3XItpRUKEAWH6H9Ifg8Iws"

--S26ewoS9cSs3XItpRUKEAWH6H9Ifg8Iws
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Martin,

It looks that we need to improve the alignment between compiler flags
and runqemu configurations. I don't know if is the right way to change
the cpu's to pentium and core2due may be could cause side-effects.

I think will be better to review the qemuboot profiles and to provide a
mechanism to modify it.

I want to know, what was your build settings?

Finally this patch needs to be send to oe-core mailing list.

Best regards,
Anibal

On 04/21/2017 07:21 PM, Martin Kelly wrote:
> Currently, the qemu CPUs for are specified as generic, but the built
> artifacts are not. For example, we build x86-64 artifacts targeting
> core2duo but run them in qemu with generic qemu/kvm CPUs. This causes
> some packages that take advantage of the host architecture to crash
> because they try to use CPU features not advertised by qemu. As an
> example, Qt uses ssse3. When artifacts linked against Qt and built
> targeting core2duo attempt to run on a generic qemu/kvm CPU, we get
> the following crash:
>=20
> Incompatible processor. This Qt build requires the following features:
>      ssse3
>=20
> We could fix this by making packages like Qt not take advantage of CPU
> features. However, we will probably keep facing similar issues over
> time, so it's better to resolve them in a more enduring way.
>=20
> Fix this by making the qemu -cpu arguments match the built artifacts.
>=20
> Signed-off-by: Martin Kelly <mkelly@xevo.com>
> ---
>  meta/conf/machine/include/qemuboot-x86.inc | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta/conf/machine/include/qemuboot-x86.inc b/meta/conf/mac=
hine/include/qemuboot-x86.inc
> index 06ac983..acd03a1 100644
> --- a/meta/conf/machine/include/qemuboot-x86.inc
> +++ b/meta/conf/machine/include/qemuboot-x86.inc
> @@ -1,12 +1,12 @@
>  # For runqemu
>  IMAGE_CLASSES +=3D "qemuboot"
>  QB_SYSTEM_NAME_x86 =3D "qemu-system-i386"
> -QB_CPU_x86 =3D "-cpu qemu32"
> -QB_CPU_KVM_x86 =3D "-cpu kvm32"
> +QB_CPU_x86 =3D "-cpu pentium2"
> +QB_CPU_KVM_x86 =3D "-cpu pentium2"
> =20
>  QB_SYSTEM_NAME_x86-64 =3D "qemu-system-x86_64"
>  QB_CPU_x86-64 =3D "-cpu core2duo"
> -QB_CPU_KVM_x86-64 =3D "-cpu kvm64"
> +QB_CPU_KVM_x86-64 =3D "-cpu core2duo"
> =20
>  QB_AUDIO_DRV =3D "alsa"
>  QB_AUDIO_OPT =3D "-soundhw ac97,es1370"
>=20


--S26ewoS9cSs3XItpRUKEAWH6H9Ifg8Iws
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJY/izLAAoJEGJqcE9h3glgwT4P/02pZIWnArPRnNZRRUODFBwT
E8bEIWiN+wqEMs8ywM1XJDsUxDmFxqFYZTMxv7lY8nmNsDpZgci/452UU0SSvLak
bCF1+AxQdG1Jav0dd5qZk1LYnwqV7E4l+ifdT8xo8Luq42nmqMXsLAk7cqdjmkhC
mCIyVHK4G7F6u+FL0BjVXlzxesopA816PsU/SG3hP3QDIS7rFDmMaMRdMRodOlt/
CYr05TSsy6psOrAm+aIh5tufJi+QOYx46YScscN+HKFRG/Mbsnjz6222g0CZZWlf
HBvZcDdzJs5Iuy+xxHhwdzTrSHIgeh9Lm5VAq67wLVmsZf89rGi1t2P7XY+C33pj
3v5Y68ASkxaAL8tNG+282EoTKVQNXVVipmz9yPO0w/AI23nAMeJiEMBNysr34De1
z+6xDXWeaTiVRv4S9K8Uiq1SApm1lv4EIIY6sh1TOdEK8qtOkHKdFvozH0roHz4o
8bR2F2vEI7vToYikGnMSkD2pceJJGpiFgDXrsowr+4k99BFRxAmoiKxziKuqRomh
O3IdpU67pqkVZi1p3uWWIKN2jtmbs6WRJl1HQnirwiCKGIfLl+qlODA6Gfv1IiOW
QYKlhfRL7RYdvzFZzkpol63LNkqH9SHLqjN2vcdIsGjyxT5fFFst4KFOwoouuTvk
9MjeQNymRV5GwY0Tb9ew
=AQbU
-----END PGP SIGNATURE-----

--S26ewoS9cSs3XItpRUKEAWH6H9Ifg8Iws--
