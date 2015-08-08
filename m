Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF06E0049F; Sat,  8 Aug 2015 12:19:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB82E0034B
	for <poky@yoctoproject.org>; Sat,  8 Aug 2015 12:19:21 -0700 (PDT)
Received: by pdco4 with SMTP id o4so56705647pdc.3
	for <poky@yoctoproject.org>; Sat, 08 Aug 2015 12:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=NTucATKyPI2eG8TfNnA6ykICyqmaJDDjLLcL+Ia0cys=;
	b=B/0/RFtd+p2H82sxXtLxsAfIRBZ66T1yJ/MgfK+dDe8prv6XFRkEGUD/lh8N+d3+Qn
	/54qbac1DwIg5t9cV0xE6wKVQjAtbiteV09utVvQQCVOotyLiDDJkY5Hhplj4UMK0ear
	0/6h4L3lx2zrUi5GI8xz61CTIoM4NBE+MjvNgYUUFueSPqRAjE2X+Any64hH9rorTQRi
	4oeRHldh8tpwrZc2sPb4YGHcfwz++Ux2nmvyf6yfmFcEfLDRaQQhqe/cKz2q1eenm7oG
	LjACl3xKV78SaSZMDe3gHbuFy+CiulM3krcofuQT90qBD4s/QIF2o0itsfaOHvqp1P71
	xVnw==
X-Received: by 10.70.20.5 with SMTP id j5mr28702965pde.40.1439061561104;
	Sat, 08 Aug 2015 12:19:21 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:61b5:b56b:3665:2b08?
	([2601:646:8601:4580:61b5:b56b:3665:2b08])
	by smtp.gmail.com with ESMTPSA id
	mw3sm6869757pdb.76.2015.08.08.12.19.20
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Aug 2015 12:19:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1439051443.30467.56.camel@linuxfoundation.org>
Date: Sat, 8 Aug 2015 12:19:15 -0700
Message-Id: <778E969C-DC7F-48B7-864D-6F0D6152B513@gmail.com>
References: <5331BB7A-0C6A-42AE-BA46-4E7A9D970FB4@freyther.de>
	<1439051443.30467.56.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.2104)
Cc: poky@yoctoproject.org
Subject: Re: Odd log messages for apps using autotools and __FILE__
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
X-List-Received-Date: Sat, 08 Aug 2015 19:19:30 -0000
X-Groupsio-MsgNum: 10093
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8A70FB2F-195B-4EA9-8627-F742D8C3F343";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8A70FB2F-195B-4EA9-8627-F742D8C3F343
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 8, 2015, at 9:30 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Fri, 2015-08-07 at 20:26 +0200, Holger Freyther wrote:
>> Hi,
>>=20
>> in the Osmocom software and rauc and probably many applications that =
use __FILE__ in a
>> log statement the log output is now:
>>=20
>> 	=
/home/hfreyther/images/poky/build/tmp/work/sysmobts_v2-poky-linux-gnueabi/=
rauc/0+gitAUTOINC+d44adb0079-r4/git/src/install.c:811 I will unmount =
/mnt/rauc/rootfs.0
>>=20
>> where it used to be:
>>=20
>> 	install.c:811 I will unmount /mnt/rauc/rootfs.0
>>=20
>>=20
>> I know I can use __BASE_FILE__ in gcc to get back to install.c

__BASE_FILE__ is a gnu extension, just be aware of that if you target =
portability

>> but I wonder where this is
>> coming from? Is this a side-effect of using B!=3DS? Is there another =
config that was made to
>> pass the full path to the compiler?
>=20
> I can confirm that this is from the B !=3D S change.
>=20
> We've kept meaning to go and look at how gcc generates these paths to
> maybe try and add the option to remove a prefix for example. The =
.debug
> src paths have a rewrite mechanism and we could use this for other =
paths
> too?

__FILE__ is one of standard pre-processing macros that are computed by =
cpp and its supposed to contain the path and name by which cpp opens the =
current input file and naturally when B !=3D S then you are referring to =
source file more commonly with absolute path, one could use relative =
paths  w.r.t build dir but thats up to components build system and may =
not be even possible in all cases. I don=E2=80=99t think there is any =
thing to fix there in compiler unless we want to violate the standard. =
.debug rewrite might be a different thing someone tried a stab at it see
https://sourceware.org/ml/gdb-patches/2011-06/msg00385.html but didn=E2=80=
=99t move very far since there were alternative ways.


>=20
> Cheers,
>=20
> Richard
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_8A70FB2F-195B-4EA9-8627-F742D8C3F343
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXGVjcACgkQuwUzVZGdMxQK0gCgg1mYpxcHN3N96oI99PR3NKhI
ve0An1BR/5CXN/3R7Z34TBAH+KOr+VxE
=+aUR
-----END PGP SIGNATURE-----

--Apple-Mail=_8A70FB2F-195B-4EA9-8627-F742D8C3F343--
