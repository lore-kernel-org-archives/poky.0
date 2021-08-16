Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.115])
 by mx.groups.io with SMTP id smtpd.web11.23539.1629118158098315771
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 05:49:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=VGXwN62q;
 spf=pass (domain: servotronix.com, ip: 40.107.20.115, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DcIk9CfO7TcX/b+Pfl+1C+lwVjhRa6OaBUDC4M+63Z0V4AMvt3FXZV6QMeXXHw/EoeA4tP9H+PSrUYSphc5Uz89aQNMMK7MlrtlLZ7BrPvrjtMHeKNFu6pB75Y5IwMSD6C2OrnUE+4CtLtYcmQ/jPn0WWRzLnFXm8JIqF4apSeEeAIWhCRc9Z0EqVChPt2KRQosa809PNWKEF4/Ddb0r+OC8CsnKkito7YE1+uQUzlBUAzR7fdp+UgPgtkDR+Vli96/Qj+ktyIyzQ+q0INULxRf1S8iOmfhYeuUiFSDpgyEDHxRqMMf/EDAQ4FTIeUsKMOyBq7fz3M6AYOIpjAG3Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFrKoNBBICMJ7Y7jTgqqyIwSOani3jtZceGuHg426Uw=;
 b=eb8jQ8lrNkTCGKhFydT3WQ1uBdwa9FC1wguSWMasgd0r/XPZ2qH3mAAmt1O5gkwA2u4d+6PCv72HLElhCwXxhRMFNCQCfePrZBkEew8wjq60IfmXvIaeJPEvgAoDIl3HWvKcH8bDajUonh2SWhz6higqz9+bKmaspyklTVOKwL3NC/QS8U+x5Dof5eo1bpKoMY3vMcK/kRz1vMVjKMF1FLuIxrI0sxGqhQW5ScJMx2dPeXjcNh70a8cvd3YwXdFzgKD4NL/Q9vx3JQac8zmnUuL6X7jmDBgblCSTJv0mRFhoHCOxvYPwYfZG8XVZlrT2jzRKV2dkLSKawUkqcj2uCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IFrKoNBBICMJ7Y7jTgqqyIwSOani3jtZceGuHg426Uw=;
 b=VGXwN62qQUBW5fYuHKfCBLl/fiWVoGVbUPuIhvKkbsSCl8VJJLiAwTL3ZmGC6dGxXAfe6UO/LwIYOy3wpSXZ1NSLFAfJApyg3STPcOpbEcSQYJJ/LW/fZ58Fv1hk29+ohaMjPc4XRe8cD2qoMAN/KO8ar8hYab+49dHhc66VNY4=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR07MB4256.eurprd07.prod.outlook.com (2603:10a6:802:5c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.14; Mon, 16 Aug
 2021 12:49:13 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4436.017; Mon, 16 Aug 2021
 12:49:13 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeSnFb85JxRO9vjScGsM34xzsPM/Q==
Date: Mon, 16 Aug 2021 12:49:12 +0000
Message-ID: 
 <VI1PR0702MB36954A10E632B38D954EF73390FD9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3acb5ade-03a9-48c7-39ed-08d960b43fde
x-ms-traffictypediagnostic: VI1PR07MB4256:
x-microsoft-antispam-prvs: 
 <VI1PR07MB4256C64D95CC63CFDFFFAA2690FD9@VI1PR07MB4256.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 FxHkb10qu9wg07p1Fk91X/MiNRJWLisw82c5TyJeXzIgDuey4jeZR3Vx121vpzr2peJBM4oKQ6CAyUDzpEVorKeKDtRu+V5/6ApfN9IsK4UaGKoCXOgyeotFjRkCW4h8xwsyJVR7+U3kmPPjRa5dAmOWI1ZM8DQ4hTyXCO8jIKbOVAiC2PF/hFWCrkffWLWfQa+rVgts9BGPwVuRhBMKM4dkLLoKPKitIJZWOM0R5Qq2NMg54uzH6zRUd6V8u3F0QrtfbBxaogknLJNt6MtWZGEFWG/5vfYYAjaxDk0H4eIlttvD8t0c5HCCfNbqN9qJV8MMvZ856wWpK72m3HMu/giYstGFmCcy34R6pVD864nkNgZDSI3++RP2RS75cVG0XEsD+r3QAbSOgKFzPSlaIJknm4Wa+3S38XEdIP3Oi328m/AJh5MeUDy8nEkdIr8fGFLQriIda9lYR0QH3UstZhAjAOSnKGRvRbAjyzGCU+sSQ7tNGj9bolQcFnkLgRwCJLaYPoFe+XjhKeZpcC/aqXYWHRn5bDenW5PgKI0jNM8GnvMr3KHg3KbC4JzgjUqwjRy/HIGFYIN/BQBG30B3acJy0kls/gbC+aYZa95Iw40gGAslD6V0OiKjQ4FxG61K3jDNdRwDnSWu4ft0RSmIZrFAWaX1kNtZS2OpOqJl4dohCZnRKtOd2fL9PzXTuNqlkOXk9hHIzUF/FFOU3ctoI2ruHgslNWlC0JBrdCKJ884Q5iQ5uaxRd9+wVp6qudZ+8TuDcFLFY+Fg9yXDOCEry8v61rFs8fgWcS4UTHZkfQgd0nrFzTv36Y2lju7jZ/rH
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(136003)(346002)(396003)(39840400004)(9686003)(55016002)(122000001)(71200400001)(33656002)(316002)(38100700002)(7696005)(5660300002)(86362001)(2906002)(52536014)(8676002)(6916009)(186003)(26005)(38070700005)(83380400001)(66476007)(21615005)(9326002)(508600001)(6506007)(66446008)(8936002)(64756008)(966005)(166002)(66556008)(76116006)(66946007)(2004002)(559001)(579004);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Iqj6mm9EmsytTQxXZ+ZkyIf3dCNh3hyZsn1naoWJJNUycA9sd3phJmrS67hw?=
 =?us-ascii?Q?XQfUiIZHaizSF/LEE49L6p3eTeyfweCHUHcS7opxp+4YQtYaaTSVa7D+Ztzk?=
 =?us-ascii?Q?i3Ja3BHqadZe0Msj2KkhZikSSsuKWbvr3MEkYLp6ekF+IFpOaEn41ru1Fk5F?=
 =?us-ascii?Q?ZiXj1CqvrmZqWQ44jsBqmsisBM160GWuFTyFOSoS55Rv1t68oCRE1Uqhy8bl?=
 =?us-ascii?Q?hhxU16Hh1KvRyEcTapipKteBLHNwo1TCqSPKlsNUJj3xrdvOlKcm1jjj3fEF?=
 =?us-ascii?Q?CQOZqIpxmkHzoWEQsdNRI5JB6SNR7sSh9vfrk+4LseKQcqb1ztA4ZPjEAXJf?=
 =?us-ascii?Q?ofthiUloXq7ocEMRAJHj/OVqb3Iw6v6MdoBYMZosEvMZE+TsaMbyzE/AwhH8?=
 =?us-ascii?Q?mim70cTcZU3EXRFC7DEg5C4kxlTP5LzlY37y9zhYcuoolWb1xBSyJLyEBGGh?=
 =?us-ascii?Q?xiDCbplmkcKs6E6T7WgT3rae3J68Q5wV/MCqwVNuidX4j/hOmGXMGuUVtlLX?=
 =?us-ascii?Q?HkziEwe+TjZmPjOmUtCEg9q5hyC0DbdUxplgOXHPFX6hoywHAI9xRIragCJv?=
 =?us-ascii?Q?BzRLrnivmF18In4j7lAD9eBUSlWOSaUSkP6B9rlqs6yE+92s/qCoAxGIQAvN?=
 =?us-ascii?Q?/iCeaZVYPJFiHwxIdQiRbX0SSO4mwYxjgxPmRchTVJB0FUygJ2FBG07wuvQI?=
 =?us-ascii?Q?gs5msP/zQOOorBYq8SNpcHt4s7zV8xv1ex9X9oIe59gef1/plP2mXhqVGqiA?=
 =?us-ascii?Q?azNAOSKB9RyZJatvIj5ka7J9YKcyoHIIFGu6+PaUNAwDqMOaSOapS2iq/eb6?=
 =?us-ascii?Q?ehcIhrHcGpO1BfydMJedZqCxoQQ5s+lZUfL/1Dhsx8kyJxemwGMimdgp5D70?=
 =?us-ascii?Q?KDssIxn+gIdTHE3T2ZuvC+JmMg417Qr2Nsr7Jieu40Y7LKrwVX1bC1MZ0cwL?=
 =?us-ascii?Q?U7sgfAVJfkmQzH1ZhdoinKY/G//sDNpg0e4e4F0+d9Abxyr6V+Pjt5xV0vti?=
 =?us-ascii?Q?RACXrvegkVrsjY/ExFn4XkMqc6H43oEktWi0r/U0o+KoZLMp+ls51ZwArVwQ?=
 =?us-ascii?Q?Kf1gfmoDFKG3IWeaKv0XRZLAv1oh0S5pVu9FsU0ZYzbBKWuK3QTY21T+lN92?=
 =?us-ascii?Q?sy/XVjXT4UlY+NfxAFc9d85FosYFlKjLyvtyu3SVEJVnLLOt2pnY3ePNJJxW?=
 =?us-ascii?Q?FlSW0gG1nWvNqJtwWpRZUQe4To3EkZx5cVnmMbY9y0qnCQCcajYOYrAC7/fb?=
 =?us-ascii?Q?XqBag/2fWb7Y/KbwPoTR2rc6K3YCn1NqqkXfWAsDD+x7FLVVqlvl43T7Rn3v?=
 =?us-ascii?Q?4co=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3acb5ade-03a9-48c7-39ed-08d960b43fde
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2021 12:49:12.9745
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZpMH1zytFamLFdudCAnkUFi4B517WF28G0aslNMoQ+YIcwpU32w25n5Viuv0gtsKESJSZHmX2NBrdA+YyUq9TzgzXc5EABEODoR5JtfyWmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4256
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB36954A10E632B38D954EF73390FD9VI1PR0702MB3695_"

--_000_VI1PR0702MB36954A10E632B38D954EF73390FD9VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi There,

Following the instruction from TI

https://software-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/exports/=
docs/linux/Overview_Building_the_SDK.html

I've successfully set up a yocto project for the AM64x.

Toolchain used is 9.2-2019.12

Now I need to add support for multilib32 because I have some software that =
can be compiled only 32 bit.

I added the following lines to conf/local.conf

# Define multilib target
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7athf-neon"

And I am able to build a few packages with lib32- successfully, however, li=
b32-libtool-cross fails at the configure stage:

--host is set to the value armmllib32-linux-gnueabi

ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: configure failed
ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Execution of '/home/build=
/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux=
-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_configure.29261' failed w=
ith exit code 1:
automake (GNU automake) 1.16.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-2.=
0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@...<mailto:tromey@...>>
       and Alexandre Duret-Lutz <adl@...<mailto:adl@...>>.
AUTOV is 1.16
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --system-acdir=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/tisdk/build/arago-tmp-e=
xternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-c=
ross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/h=
ome/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmlli=
b32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/sh=
are/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtoo=
l-2.4.6/m4/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/ar=
mv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4=
.6/tests/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force --warnings=3Dcross -I m4
aclocal: warning: unknown warning category 'cross'
autoreconf: configure.ac: tracing
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoconf --include=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build/a=
rago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32=
-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisdk/=
build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueab=
i/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ --f=
orce --warnings=3Dcross
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoheader --include=3D/home/build/tisdk/build/ara=
go-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-l=
ibtool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build=
/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib=
32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisd=
k/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnue=
abi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ -=
-force --warnings=3Dcross
autoreconf: running: automake --add-missing --copy --force-missing --warnin=
gs=3Dcross
automake: warning: unknown warning category 'cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
| NOTE: Running ../libtool-2.4.6/configure  --build=3Dx86_64-linux         =
                        --host=3Darmmllib32-linux-gnueabi                  =
 --target=3Darmmllib32-linux-gnueabi                         --prefix=3D/us=
r           --exec_prefix=3D/usr                          --bindir=3D/usr/b=
in                             --sbindir=3D/usr/sbin                       =
       --libexecdir=3D/usr/libexec                             --datadir=3D=
/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonml=
lib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/s=
hare                      --sysconfdir=3D/etc                            --=
sharedstatedir=3D/com                                 --localstatedir=3D/va=
r                             --libdir=3D/usr/lib                          =
     --includedir=3D/usr/include                                 --oldinclu=
dedir=3D/usr/include                      --infodir=3D/home/build/tisdk/bui=
ld/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/l=
ib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/info            =
                     --mandir=3D/home/build/tisdk/build/arago-tmp-external-=
arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4=
.6-r0/lib32-recipe-sysroot/usr/share/man                   --disable-silent=
-rules                      --disable-dependency-tracking                  =
              --with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cr=
oss/2.4.6-r0/lib32-recipe-sysroot
configure: loading site script /home/build/tisdk/sources/meta-openembedded/=
meta-networking/site/endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-common
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-32
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-glibc
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common
## ------------------------- ##
## Configuring libtool 2.4.6 ##
## ------------------------- ##

checking for GNU M4 that supports accurate traces... /home/build/tisdk/buil=
d/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/li=
b32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/m4
checking whether /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/=
armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sy=
sroot-native/usr/bin/m4 accepts --gnu... yes
checking how m4 supports trace files... --debugfile
checking for a BSD-compatible install... /home/build/tisdk/build/arago-tmp-=
external-arm-glibc/hosttools/install -c
checking whether build environment is sane... yes
checking for armmllib32-linux-gnueabi-strip... arm-none-linux-gnueabihf-str=
ip
checking for a thread-safe mkdir -p... /home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/hosttools/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports nested variables... (cached) yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... Invalid configuration `armmllib32-linux-gnueab=
i': machine `armmllib32-unknown' not recognized
configure: error: /bin/bash ../libtool-2.4.6/build-aux/config.sub armmllib3=
2-linux-gnueabi failed
WARNING: /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2=
hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_confi=
gure.29261:1 exit 1 from 'exit 1'

ERROR: Logfile of failure stored in: /home/build/tisdk/build/arago-tmp-exte=
rnal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cros=
s/2.4.6-r0/temp/log.do_configure.29261





Investigating run.do_configure suggests that in the configure stage oe_runc=
onf() is set with what seems to be wrong -host and -target values:
 --host=3Darmmllib32-linux-gnueabi   --target=3Darmmllib32-linux-gnueabi


Executing
bitbake lib32-libtool-cross -e
Yields, among many others,

18513 # $TARGET_VENDOR [3 operations]
18514 #   set /home/build/tisdk/sources/oe-core/meta/conf/bitbake.conf:132
18515 #     "-oe"
18516 #   set /home/build/tisdk/sources/meta-arago/meta-arago-distro/conf/d=
istro/include/toolchain-arm.inc:15
18517 #     ""
18518 #   override[virtclass-multilib-lib32]:set multilib_global.bbclass:15=
9 [multilib_virtclass_handler_vendor]
18519 #     "mllib32"
18520 # pre-expansion value:
18521 #   "mllib32"
18522 TARGET_VENDOR=3D"mllib32"

Later, HOST_VENDOR  =3D "${TARGET_VENDOR}",
And HOST_SYS =3D "${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}"

So the variable SYS_HOST is expanded to armmllib32-linux-gnueabi which seem=
s to be wrong for lib32-libtool-cross.

Manually running the configure command with -host=3Darm-none-linux-gnueabih=
f is working properly.

Can you please suggest how to fix this issue?
I suspect it will come up in other packages as well.


Thanks a lot,

Nir.


--_000_VI1PR0702MB36954A10E632B38D954EF73390FD9VI1PR0702MB3695_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Hi There=
,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Following the instruction from TI<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"><a href=3D"https://software-dl.ti.com/processor-sdk-linux-=
rt/esd/AM64X/latest/exports/docs/linux/Overview_Building_the_SDK.html" targ=
et=3D"_blank"><span style=3D"color:#337AB7;text-decoration:none">https://so=
ftware-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/exports/docs/linux=
/Overview_Building_the_SDK.html</span></a><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I&#8217;ve successfully set up a yocto project for the AM6=
4x.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Toolchain used is 9.2-2019.12<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Now I need to add support for multilib32 because I have so=
me software that can be compiled only 32 bit.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">I added the following lines to conf/local.conf<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"># Define multilib target<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">require conf/multilib.conf<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7athf-n=
eon&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">And I am able to build a few packages with lib32- successf=
ully, however, lib32-libtool-cross fails at the configure stage:<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">--host is set to the value armmllib32-linux-gnueabi<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: configur=
e failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Executio=
n of '/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-=
neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_configur=
e.29261'
 failed with exit code 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">automake (GNU automake) 1.16.1<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Copyright (C) 2018 Free Software Foundation, Inc.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">License GPLv2+: GNU GPL version 2 or later &lt;<a href=3D"=
https://gnu.org/licenses/gpl-2.0.html" target=3D"_blank"><span style=3D"col=
or:#337AB7;text-decoration:none">https://gnu.org/licenses/gpl-2.0.html</spa=
n></a>&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">This is free software: you are free to change and redistri=
bute it.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">There is NO WARRANTY, to the extent permitted by law.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Written by Tom Tromey &lt;<a href=3D"mailto:tromey@..." ta=
rget=3D"_blank"><span style=3D"color:#337AB7;text-decoration:none">tromey@.=
..</span></a>&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and Alexandre Duret-L=
utz &lt;<a href=3D"mailto:adl@..." target=3D"_blank"><span style=3D"color:#=
337AB7;text-decoration:none">adl@...</span></a>&gt;.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">AUTOV is 1.16<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: Entering directory `.'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: configure.ac: not using Gettext<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: running: aclocal --system-acdir=3D/home/build/=
tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-=
gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/tisdk/=
build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueab=
i/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal/
 --automake-acdir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp=
-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool=
-cross/2.4.6-r0/libtool-2.4.6/m4/
 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-ne=
onmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ -=
I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neon=
mllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/us=
r/share/aclocal/
 --force --warnings=3Dcross -I m4<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">aclocal: warning: unknown warning category 'cross'<o:p></o=
:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: configure.ac: tracing<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: running: /home/build/tisdk/build/arago-tmp-ext=
ernal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cro=
ss/2.4.6-r0/recipe-sysroot-native/usr/bin/autoconf
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/m4/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/=
armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2=
.4.6/tests/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force --warnings=3Dcross<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: running: /home/build/tisdk/build/arago-tmp-ext=
ernal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cro=
ss/2.4.6-r0/recipe-sysroot-native/usr/bin/autoheader
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/m4/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/=
armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2=
.4.6/tests/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force --warnings=3Dcross<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: running: automake --add-missing --copy --force=
-missing --warnings=3Dcross<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">automake: warning: unknown warning category 'cross'<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: running: gnu-configize<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">autoreconf: Leaving directory `.'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">| NOTE: Running ../libtool-2.4.6/configure&nbsp; --build=
=3Dx86_64-linux &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--host=3Darmmllib32-li=
nux-gnueabi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--target=3Darmmllib32-linux-gnueabi
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--prefix=
=3D/usr &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--exec_prefi=
x=3D/usr &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&n=
bsp;--bindir=3D/usr/bin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--sbindir=3D/usr/sbin &nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nb=
sp;--libexecdir=3D/usr/libexec &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--datadir=3D/home/build/tisdk/b=
uild/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi=
/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--sysconfdir=3D/etc &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--shar=
edstatedir=3D/com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--localstatedir=3D/v=
ar &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;--libdir=3D/usr/lib &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--includedir=
=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;--oldincludedir=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;--infodir=3D/home/build/tisdk/build/arago-tmp-external-arm-g=
libc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0=
/lib32-recipe-sysroot/usr/share/info &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;-=
-mandir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at=
2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sys=
root/usr/share/man
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-silent-rules &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;&nbsp;--disable-dependency-tracking &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;--with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-externa=
l-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2=
.4.6-r0/lib32-recipe-sysroot<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/m=
eta-openembedded/meta-networking/site/endian-little<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/endian-little<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/arm-common<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/arm-32<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/common-linux<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/common-glibc<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/arm-linux<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: loading site script /home/build/tisdk/sources/o=
e-core/meta/site/common<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">## ------------------------- ##<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">## Configuring libtool 2.4.6 ##<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">## ------------------------- ##<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking for GNU M4 that supports accurate traces... /home=
/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32=
-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/m=
4<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking whether /home/build/tisdk/build/arago-tmp-externa=
l-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2=
.4.6-r0/recipe-sysroot-native/usr/bin/m4 accepts
 --gnu... yes<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking how m4 supports trace files... --debugfile<o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking for a BSD-compatible install... /home/build/tisdk=
/build/arago-tmp-external-arm-glibc/hosttools/install -c<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking whether build environment is sane... yes<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking for armmllib32-linux-gnueabi-strip... arm-none-li=
nux-gnueabihf-strip<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking for a thread-safe mkdir -p... /home/build/tisdk/b=
uild/arago-tmp-external-arm-glibc/hosttools/mkdir -p<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking for gawk... gawk<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking whether make sets $(MAKE)... yes<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking whether make supports nested variables... yes<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking whether make supports nested variables... (cached=
) yes<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking build system type... x86_64-pc-linux-gnu<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">checking host system type... Invalid configuration `armmll=
ib32-linux-gnueabi': machine `armmllib32-unknown' not recognized<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">configure: error: /bin/bash ../libtool-2.4.6/build-aux/con=
fig.sub armmllib32-linux-gnueabi failed<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">WARNING: /home/build/tisdk/build/arago-tmp-external-arm-gl=
ibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/=
temp/run.do_configure.29261:1 exit 1 from 'exit
 1'<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">ERROR: Logfile of failure stored in: /home/build/tisdk/bui=
ld/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/l=
ib32-libtool-cross/2.4.6-r0/temp/log.do_configure.29261<o:p></o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Investig=
ating run.do_configure suggests that in the configure stage oe_runconf() is=
 set with what seems to be wrong &#8211;host and &#8211;target
 values:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">&nbsp;--=
host=3Darmmllib32-linux-gnueabi &nbsp;&nbsp;--target=3Darmmllib32-linux-gnu=
eabi<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Executin=
g<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">bitbake =
lib32-libtool-cross -e<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Yields, =
among many others,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">&nbsp;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18513 # =
$TARGET_VENDOR [3 operations]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18514 #&=
nbsp;&nbsp; set /home/build/tisdk/sources/oe-core/meta/conf/bitbake.conf:13=
2<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18515 #&=
nbsp;&nbsp;&nbsp;&nbsp; &quot;-oe&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18516 #&=
nbsp;&nbsp; set /home/build/tisdk/sources/meta-arago/meta-arago-distro/conf=
/distro/include/toolchain-arm.inc:15<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18517 #&=
nbsp; &nbsp;&nbsp;&nbsp;&quot;&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18518 #&=
nbsp;&nbsp; override[virtclass-multilib-lib32]:set multilib_global.bbclass:=
159 [multilib_virtclass_handler_vendor]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18519 #&=
nbsp;&nbsp;&nbsp;&nbsp; &quot;mllib32&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18520 # =
pre-expansion value:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18521 #&=
nbsp;&nbsp; &quot;mllib32&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">18522 TA=
RGET_VENDOR=3D&quot;mllib32&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">&nbsp;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Later, H=
OST_VENDOR &nbsp;=3D &quot;${TARGET_VENDOR}&quot;,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">And HOST=
_SYS =3D &quot;${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}&quot;<o:p></o:p></span=
></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">So t<spa=
n style=3D"background:white">he variable SYS_HOST is expanded to armmllib32=
-linux-gnueabi which seems to be wrong for lib32-libtool-cross.</span><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Manually running the configure command with &#8211;host=3D=
arm-none-linux-gnueabihf is working properly.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">Can you =
please suggest how to fix this issue?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">I suspec=
t it will come up in other packages as well.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span style=3D"font-size:=
10.5pt;font-family:&quot;Helvetica&quot;,sans-serif;color:#333333">&nbsp;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Thanks a lot,<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;box-sizing: border-box;fon=
t-variant-ligatures: normal;font-variant-caps: normal;orphans: 2;text-align=
:start;widows: 2;-webkit-text-stroke-width: 0px;text-decoration-thickness: =
initial;text-decoration-style: initial;text-decoration-color: initial;word-=
spacing:0px">
<span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;,sans-seri=
f;color:#333333">Nir.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0702MB36954A10E632B38D954EF73390FD9VI1PR0702MB3695_--
