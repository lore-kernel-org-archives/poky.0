Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3822CE00E97; Tue,  6 Feb 2018 05:16:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9992EE00E05
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 05:16:17 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs24.server.lan (via HTTP); Tue, 6 Feb 2018 14:15:25 +0100
MIME-Version: 1.0
Message-ID: <trinity-1246f5e9-868e-404f-95dd-358cc7330745-1517922925393@3c-app-gmx-bs24>
From: "Arno Steffens" <star@gmx.li>
To: "Anuj Mittal" <anuj.mittal@intel.com>
Date: Tue, 6 Feb 2018 14:15:25 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
	<84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
	<trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
	<98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:GtX95TNjwUiQa4tDEcNm74xXeeAPA47MZv6sLQk/1IF
	+yHHC2zwyeVKeNlmuHSb+MEDGRSon0LrLJkotJ0U9eC/5tSYXp
	Z97g0lyPae5F0KDpiSQP4Xw0zGTVA7ynj/ph89mcTUgZhXWfgY
	HldX6+T3PBncua/j4xeY/6bgqUfS9juQSaPTLLmtW+Z9WJ8JEX
	B8jGYDD8muZ07VXs8TQn71WgVZNXe7QX/OW13CS/zV/YDXn5v5
	/3ZtFTeLkqYZINU68md6FTZtHludQFmdi3a4BqWwEOQpb//PBr 6pHJNA=
X-UI-Out-Filterresults: notjunk:1;V01:K0:HGy7dG7T4Rk=:aGFBZ94ZbPWVeLafVm4Y6o
	GVr3OIjR7avNX8sKGR96dZEcnGw4ojhxc3UTslMci/ytF3/VcKve7cgPnk4ItdxFStXklVV0z
	3KOH6DwLV0SkTj9FT5V0ffPBwLfp1KO1/Z6onNZxaoJxuPHxMs2/muPOU0c6QeIoATVt4EBs8
	OJXSdRtVGwonXMqjagxotVDAobI+YK92OhSWxVFv5//0fZ01j+U7sofdckUVQjyMVEy6mVm/w
	6KRJYlkLCF81LF5Zp6scgtO3tCXSt9lGqjuSt2/rhD5CMObYLy/RbaY3pvua0zzUDe2mPMPZY
	AsANOK9dTgnxJP5HehEO301m873B4J8SL2Mv+CoknGXSxupJQQy3SZACmBIwW+boX574xFAqr
	+UjoZeaQnji6Ri3LZQ415fy5erGC6LVg8SS//ghH8ADW4/TlQf8on9/TAueAkbsdGtz33MYvJ
	bCnPfM6iIQJ+vlUve9btjlXm38JQyNOzco1XANdVunApwdGqmTkI
Cc: poky@yoctoproject.org
Subject: Re: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Tue, 06 Feb 2018 13:16:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

You are right, curlpp-dev includes the wanted libcurlpp=2Eso=2E Thanks for =
this hint to packages-split=2E
Ok - no bug, it's just my fault=2E
Probably I haven't really understand the concept, but adding " curlpp-dev"=
 to IMAGE_INSTALL won't work, which confuses me,
as curlpp was also added ?!?

Solver encountered 1 problem(s):
Problem 1/1:
  - nothing provides curlpp =3D 0=2E8=2E1-r0 needed by curlpp-dev-0=2E8=2E=
1-r0=2Ecortexa9hf-neon

Solution 1:
  - do not ask to install a package providing curlpp-dev

Oh!
Arno



> Gesendet: Montag, 05=2E Februar 2018 um 15:20 Uhr
> Von: "Anuj Mittal" <anuj=2Emittal@intel=2Ecom>
> An: star@gmx=2Eli
> Cc: poky@yoctoproject=2Eorg
> Betreff: Re: Aw: Re: [poky] libs / so without a link to xxx=2Eso=2E1
>
> On 02/05/2018 09:05 PM, star@gmx=2Eli wrote:
> >=20
> >=20
> >> Gesendet: Montag, 05=2E Februar 2018 um 11:21 Uhr
> >> Von: "Anuj Mittal" <anuj=2Emittal@intel=2Ecom>
> >> An: poky@yoctoproject=2Eorg
> >> Betreff: Re: [poky] libs / so without a link to xxx=2Eso=2E1
> >>
> > Thanks Anuj,  but I don't think so=2E The libs itself are not in the d=
ev package, but in the libcurlpp1
> > And I include them like this:
> >=20
> > IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL} =
=2E=2E=2E=2E=2E curl libcurlpp"
> >=20
> > TOOLCHAIN_TARGET_TASK_append =3D " zlib-dev curl-dev libcurlpp-dev net=
-snmp-dev libidn-dev"
>=20
> In general, in addition to looking at the recipe, you can check
> packages-split in recipe $WORKDIR to see what's where=2E In this case, t=
he
> package you're probably looking for is "curlpp-dev" not libcurlpp-dev:
>=20
> $ tree packages-split/curlpp-dev/
> packages-split/curlpp-dev/
> =E2=94=94=E2=94=80=E2=94=80 usr
>     =E2=94=94=E2=94=80=E2=94=80 lib
>         =E2=94=94=E2=94=80=E2=94=80 libcurlpp=2Eso -> libcurlpp=2Eso=2E1
>=20
> 2 directories, 1 file
>=20
> https://www=2Eyoctoproject=2Eorg/docs/latest/ref-manual/ref-manual=2Ehtm=
l#structure-build-tmp-work-tunearch-recipename-version
>=20
> Thanks,
>=20
> Anuj
>=20
> >=20
> > And I use the rootfs that is created with -c populate_sdk=2E
> > So it is a bug in the package? Or am I doing wrong?
> >=20
> >=20
> >> On 02/05/2018 05:55 PM, Arno Steffens wrote:
> >>> Using in my project libcurlpp=2E It is created with yocto (2=2E3=2E3=
), but in my filesystem I just see:
> >>>
> >>> "/usr/lib/libcurlpp=2Eso=2E1" which is a link to libcurlpp=2Eso=2E1=
=2E0=2E0
> >>>
> >>> What I miss is "libvcurlpp=2Eso" (without version number), as my pro=
ject includes  "-lcurlpp"=2E
> >>
> >> You're probably missing the -dev package in your image=2E
> >>
> >> Thanks,
> >> Anuj
> >>
> >>>
> >>> My question: is there a reason for that? Is this a bug in the script=
s or did I handle it wrong?
> >>>
> >>> I can do "-l:libcurlpp=2Eso=2E1" but this looks only like a second b=
est solution to me=2E
> >>> Thanks and best regards
> >>> Arno
> >>>
> >>
> >> --=20
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject=2Eorg
> >> https://lists=2Eyoctoproject=2Eorg/listinfo/poky
> >>
>=20
>

