Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAF60E00BE1; Tue, 29 Sep 2015 18:44:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A98D1E009BA;
	Tue, 29 Sep 2015 18:44:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t8U1isTE029986
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 Sep 2015 18:44:54 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (147.11.178.22) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Tue, 29 Sep 2015 18:44:54 -0700
Date: Wed, 30 Sep 2015 09:44:49 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150930014449.GA2568@pek-khao-d1.corp.ad.wrs.com>
References: <1443519723-30931-1-git-send-email-kexin.hao@windriver.com>
	<CAJTo0LaV3Bp_PPKcxNmooADC8XPza5A2Pt8rFpY5GZw5sgUEEg@mail.gmail.com>
	<4867265E-255E-4F6A-9657-BD390A127625@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4867265E-255E-4F6A-9657-BD390A127625@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Poky Project <poky@yoctoproject.org>, "Development
	list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH] meta-yocto-bsp: bump to linux-yocto 4.1 for the non-x86 BSPs
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
X-List-Received-Date: Wed, 30 Sep 2015 01:44:59 -0000
X-Groupsio-MsgNum: 10128
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline

--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 29, 2015 at 10:18:00AM -0700, Khem Raj wrote:
>=20
>     On Sep 29, 2015, at 3:01 AM, Burton, Ross <ross.burton@intel.com> wro=
te:
>=20
>=20
>     On 29 September 2015 at 10:42, Kevin Hao <kexin.hao@windriver.com> wr=
ote:
>=20
>         Boot test for all these boards.
>=20
>=20
>     If I build the edgerouter kernel I get this warning:
>=20
>     WARNING: Section not found: .comment
>=20
>     I've no idea if this is bad or not=E2=80=A6
>=20
>=20
> functionally no harm since its the strip code which is complaining about =
it so
> this section was going to go away from kernel image anyway
> it seems we must have included .comment in KERNEL_IMAGE_STRIP
>=20
> Now the more curious case would be if its being stripped by kernel build,=
 we
> explicitly disabled kernel build stripping the kernel image
> and here it might be thats not happening with new kernel. That aspect cou=
ld be
> investigated.

Actually the warning is a bug in the do_strip() of kernel build. The vmlinux
image does have the .comment section, but the code that checking if the
=2Ecomment section is existed is wrong. Please see the following codes in
do_strip():

		for str in ${KERNEL_IMAGE_STRIP_EXTRA_SECTIONS}; do {
			if [ "$headers" !=3D *"$str"* ]; then
				bbwarn "Section not found: $str";
			fi

			"$CROSS_COMPILE"strip -s -R $str ${KERNEL_OUTPUT}
		}; done


The "*" doesn't have special meaning in the if string test. So it will retu=
rn
true even the $str is a substring of $headers. How about change the test to:

			if ! (echo "$headers" | grep -q "^$str$"); then

Thanks,
Kevin

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWCz6MAAoJEJNY7TDerrFxfpoIAKeLqMl4IhNjCMBiu3aa6oZU
bS1gKciHG16chkgIYB1QdRw5saSBJ9K0ze+oXvMy3ZVXLDMVahy6OXfW9Lo3Kbgv
yqIdzoE9jsAkvr41tiAAwZHyvlc1aUhPW55bHe/sA4dkx5k8I8O9Q/dZcCDbTJCh
eAt86IY4BG3YJfYv89s8WFhseoO9o/37mZUou7XNlx3OkptdlpNRcR/vvg//mXm8
JH3+hl72+5EYwS8Fh9OaZiiCM/GB39saFHYGP9kmPTG/XyQDYeh04eGS0rNz6/31
Q80I31+k6ipCBpdJXICGl8Yc8I+9WudqAyybq+yA4V3zOA3KPbtLOdNcu0oPuQA=
=NdUM
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--
