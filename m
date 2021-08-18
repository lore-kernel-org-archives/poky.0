Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.138])
 by mx.groups.io with SMTP id smtpd.web10.50806.1629267259976737237
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 23:14:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=EFFze5jb;
 spf=pass (domain: servotronix.com, ip: 40.107.6.138, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZ9YCQ5HE92ZJnXDDWul/vznZ8UEsjI6ae8L42K3/cCaZUNpUbC3Uruli/MFPC8yRcN6L69JatTXV9gJQt071G/IiVGlTZVzsa6ttYA1CX5JFknsRdv6vjlI1yBlXi6iJjupCc180Aijiz9sv3QntKi+vj8R2Gc8fcMyPeXyaw2ljjuVbMrRifS26HzJ6SqClrHXjECqbuJt1H8Q3gFSUeJeUNxAoWo3tCK7RJHPb+eem6FHZ6t/g2trPBVXIWEdI8W0EeEdFdMPfSFlO27/F5G2dysUEi8rt0RUF6zJ3X3Z0pMoNoVk/iMQKCgBhBI6keIojBHt69X76ir6AsV+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmQ8eIjAB4NKTg5iUen3J2U1kdeN8VcJx0zbewBlibI=;
 b=UI8O4K1tlpF0bSRGvzdx28nHnRW/lJ19iM7fKWi6WhAAJLEPzUT97bh9rrVrobDhuYJfN4BV6uUemwlHCvdEqA2gPgcmp69Pa3et7vU7PEH1pbbRebXSxXdb1s2a+zbrijIifThOfAx4ZUYFC/codc8Tq3v1M1dvA3AQ6j27qghmhcC/MCJ07VdDy8dUACwb29EUyjVzavT5kpvYtsnjcEPDbCNJmP2TwKrg4hTMkgXvtpvYDbfjvurpacH5po2G3UtQTrLfoYhijqfsGyYqVVii0lLD8cqZG7mf3BzA6CppP9rHJcR/kYEimzN9ExcinGsSedtaJmOlu0uVEmFxIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rmQ8eIjAB4NKTg5iUen3J2U1kdeN8VcJx0zbewBlibI=;
 b=EFFze5jbRMKrS6RK4jUrSDzt4lLHeUtKv641E2LV0Zo1UCYDiHyVMt6274ki2xp5beLt2MNa/0ADCBcKCzMJlv+XmlGRhEtdm0QFKTT+nOxctTCO9oN9MRUTnewlpdfnldShZ/MTpCLjNqCsCB07rZp93grua/U9metm3mX11Zg=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR0701MB6829.eurprd07.prod.outlook.com (2603:10a6:800:194::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.9; Wed, 18 Aug
 2021 06:14:16 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4436.018; Wed, 18 Aug 2021
 06:14:16 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeSnFb85JxRO9vjScGsM34xzsPM/QBW+XMg
Date: Wed, 18 Aug 2021 06:14:16 +0000
Message-ID: 
 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
In-Reply-To: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4ac3740-5069-4893-29ff-08d9620f686c
x-ms-traffictypediagnostic: VI1PR0701MB6829:
x-microsoft-antispam-prvs: 
 <VI1PR0701MB68296F3505B6EB5A37DEEB2F90FF9@VI1PR0701MB6829.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 e9ONr3A58m83oYRw2ofj2FMPw/k9TIm4f/9s6xBigTIuBjd+MD9dOf7L4DotVapfgDclOFq5INwTXpC0l/HMRnQoLytA94qbiflGD6yaxjkClN1ib9vvc2CBecGBiD5ohCws3qEbHuot9AqxYyolSEhYbo/kQ365NkufzLbo9qZ7H6LCGdonDyTy92Gjw63V3DoatT3N6aK4qIPpu7YMlbX/58PIvydjQ7KqHcumgx7HdEt4Q2pVePtizyCxx/TtyMegA0MG6l1dChe/svvFQGXdbEOthAj4kF9MhTOx3UwsI5uDIawHH34zgNdSYbdxKyH2wQuar4G+fSkbwXR/B43KFppL5cZckj1gDUU6Jmbexw77PUFqIQodMPObonadjFNUQl88gB5luqnQf/ZvSRWRxH5AM3DfddQLswcphiBnXwk3vF4Ytr70iUC6GSXK2lGZgqfGg05T+1pz0WuTxGpeIPsxoAf4wUkk9B3OzYsh3qfwcwsVVKI6ooOyBDULt3n0h9B/EbH5g+S88I1P7fXuC7OAeOk2bRs51wzsuVTyK1MVBu7i5pygvyL3xCcmETLv5jjoVujdT3IwbHy7IrlbsX0X7p8WnX3Gaa6NmDLEIebGFU0K3XcMmTsj1h0zTWwfzbQyFoTC8+If9FJXlYDlTq019Zc0QkW4YWgoJViyccVSTKCl3hcaz180s/w8Mn6rxtD2knWLtAt/EJbmD0+rgGaqrPMQ3Mg8gCY8ozhggkdsY/I7fSOU7Vw1vyTWY9X3W+fEy6gVy68QHbymnMkHQa+ilNEKx9iC7sFOqh+FreO+36XMUcIOUzENy3aW
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(136003)(396003)(366004)(39830400003)(316002)(55016002)(38070700005)(86362001)(8676002)(33656002)(7696005)(186003)(8936002)(6506007)(53546011)(9686003)(2906002)(478600001)(26005)(71200400001)(5660300002)(966005)(66556008)(64756008)(66946007)(66446008)(66476007)(21615005)(6916009)(38100700002)(52536014)(9326002)(122000001)(76116006)(83380400001)(166002)(2004002)(579004)(559001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?0RA1P6rw1nATxO+3x/l5viV8wvxPJjQkcSIqv0ZrtESAF2WoEkvSICmKHAiH?=
 =?us-ascii?Q?0AdF6RSkE4vdneIQfmiojp9hSzNIVretutLN66c87jMXHMwLb/ne493LsMnx?=
 =?us-ascii?Q?ck7Uz3bZTGwNLPgA9+rNroZfg07ZSlEPsl01WuWX3RIcn0u714tA2TE2L4QI?=
 =?us-ascii?Q?iK0Vc1IdMqTiBe1qBPj5Pr7DUg021ZZoeb7uH+omcVZuNYRyrVOI3T5PX125?=
 =?us-ascii?Q?bwA5I/pi2IgaLi+Xo30Jd2elp/3mBQIGuaW7MJJzhFl65xIa5ixvSQZALH3W?=
 =?us-ascii?Q?fNyczcGhE6wx/IkedENrsJ8KoJrudXVFk0XZae6tlq3VLMZh1LVegx13Ck5w?=
 =?us-ascii?Q?McWwWyTi/FEkrX2sj+uWXADslCrVYf7rrZcGfKxOYnszmDoVmdoUnvPF8hCV?=
 =?us-ascii?Q?GIBZrJDgrIWuWecgRqB501/L0wPqmvhUj5l3uhtUs3FIgfZfxqVoY40VTCId?=
 =?us-ascii?Q?MpxVFi91k1ne1M5DI3IqEkWzuA8EDkDjpa3q+cs6Q/MXacHx1bAG81hVO1dC?=
 =?us-ascii?Q?7h74ciG+d/nUi5Pzmuy2+a7Z3AlchKFcpfGvzYokCJ/QnGyjTIynwUJfGzEy?=
 =?us-ascii?Q?pgzB0p7Tp/8cFKXTk1YUINooIi3+9UpgugUG3DyeZbBwZtYuv5Y72DCxquXA?=
 =?us-ascii?Q?sGiT5eB/FHdTC9X50kAgBS2RiwfBX1K8Hu5wn57qR06Rp7FLFvS8LWh/IaV3?=
 =?us-ascii?Q?4Y5oywMprmkKiEOK49L+bsYHzq3l04eaUKxUKLBnHTukMurXQEAjNr14xIVf?=
 =?us-ascii?Q?034uEh8mRXFz4zNZoBm//85Qhu5XeV3XNSrearmqvmSAcTm5RxyHLDRvum7b?=
 =?us-ascii?Q?/OLUCk7x82L51Nk7hLFSDNjUEowWi3Y8Vc1XYIFYyQGRVQHMdYtQxfr7v3K6?=
 =?us-ascii?Q?/6gsJGd3ObNTm1B49L69M/QY4jcm0EeurP56TtUDFbfO/R3dgD0pa69VJwO9?=
 =?us-ascii?Q?jmkUzMTuqWO0f6CtasE3X8WvL3RKotEXGGyjpZRdZ3wyb7gAQAO+pQ9xWy0O?=
 =?us-ascii?Q?hg5rBzeJGN3JK4PKvsFlGzU+3NTbgg42sn5jvIyXW1ui0BplsH6CQuiDFnLL?=
 =?us-ascii?Q?X7TOlinlsn7sB8uKH/kK/uHpYLKfeaCyia2N9+5nXYaveT1ReKrdhCGSKuLW?=
 =?us-ascii?Q?8AmHRrCRZQa0Vn8C92RDCNgXEpBZHLAasJUFOE9JfQ3xU7Ylb00IMBBgSuOQ?=
 =?us-ascii?Q?EZhTIqyhW3LX0swbUMPKtDk6qr6KMRhaX6FOs5BgcH7AtVoiCATpSRuE/BHi?=
 =?us-ascii?Q?ipzwBykR29grmQ++Dxzw7rL65BIXwhMZawUZ7Zsjz+5yWlKsYzO513eRJGLX?=
 =?us-ascii?Q?kPvjM31kOm44+ab0DtX8cusd?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ac3740-5069-4893-29ff-08d9620f686c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 06:14:16.4906
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aA88dJf5TUiThpduvcoy9t6xAp/6S7KxKhPJo3s7WieFW5ZLLOeu2CgC7QfwbZNel5lw80PJz22op9WmOpgJk6RKdmraMv2xswyYU8ZbniY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB6829
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB3695095B3B3F5644E1CED65C90FF9VI1PR0702MB3695_"

--_000_VI1PR0702MB3695095B3B3F5644E1CED65C90FF9VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Any help on this topic would be much appreciated.

Thanks,

Nir.


From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf O=
f Geller, Nir
Sent: Monday, August 16, 2021 3:49 PM
To: poky@lists.yoctoproject.org
Subject: [poky] multilib32: libtool-cross_2.4.6.bb configure failure

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


--_000_VI1PR0702MB3695095B3B3F5644E1CED65C90FF9VI1PR0702MB3695_
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any help on this topic would be much appreciated.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> poky@lists.yoctoproject.org &lt;poky@li=
sts.yoctoproject.org&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Monday, August 16, 2021 3:49 PM<br>
<b>To:</b> poky@lists.yoctoproject.org<br>
<b>Subject:</b> [poky] multilib32: libtool-cross_2.4.6.bb configure failure=
<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_VI1PR0702MB3695095B3B3F5644E1CED65C90FF9VI1PR0702MB3695_--
