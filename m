Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.136])
 by mx.groups.io with SMTP id smtpd.web12.37711.1644860597211575360
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 09:43:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=IKY9dz1K;
 spf=pass (domain: arri.de, ip: 40.107.6.136, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oXNVwZKyaczWDGItM748VEHVqwDnWzPLzhmDnJSNaZYQcoHfpxQKMaEchA1ZhOqkOAAn4mZFO4EAA953Lgos3ybexvPN3Bjhh9YHyniasFYQFxqrEyAKV8EWLsgq1Ae6qB5EBNfvgW7N5+e0dWWfmPO1KcniVoxGqK7N/jnl4+KytjX4lVrQO+tI69Gqqfl9eaAU7FnygRGxTO/XWueVB7vSdcEV4qOxVFSmqRaVFe23NxH5pKBdNoS93ResmKtMivdE5CFxxTUt6V9Lik2wD3zDmpkqUUpOYpr6jpD7x0E6Y8CT77bIhEguYXIxG6rFVXIPajWzdPzUySNVl8Q1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/BmTvopHXlVGk6nxi8vHQ3OoGToEUGfnF9BLABgSuFs=;
 b=AVE+cySsC1BaadVULpXGBJhZpC3bfh9kwgRUJ9nVIjEg221r8SeUz0aBQKjI2yQv4iGoYJZ60PT/X+BuXQARGSbyVUX1CVazidpU7cmuAPKygUg4TMs5k8dh0PJ4jO2Be2zNcCi9hgzOeNFXGObz30DXKra9D2moSr74Zt5zVf6mxjBTPAMMXBpeE5MGPMhw4oH0nlqYGwr9C+ZUMwpo9W/dBCTs2Vfjtg/RMuK0y8rrOGbk0Bo7l82W57kF4E5iWQcHrgXd3nCNU7Rb7E/TlyBqs5rL0ItMzIiu+fnArdTDpp3CuAu+/FkM////W8aU7XvrAhBrEmN4VYvkBRCBXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=arri.de; dmarc=none action=none header.from=arri.de; dkim=none
 (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/BmTvopHXlVGk6nxi8vHQ3OoGToEUGfnF9BLABgSuFs=;
 b=IKY9dz1KdsidvqucUdUMu/A8cqkqGAt1z+nj25v7WOGu+68jxc/LQ8sPhj6fH7hO/4uPsrWbu3UxGkG2whi/lcuBRhWIf9B/LzlQPU35BSBAlqH7HQ+kb95rTtRw3czOkgPRHH7s8avgmZRgAzq/69lcndPrmh2Jwv1jN1XKqUo=
Received: from AS8P250CA0005.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:330::10)
 by AM7PR07MB6818.eurprd07.prod.outlook.com (2603:10a6:20b:1c1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.13; Mon, 14 Feb
 2022 17:43:13 +0000
Received: from AM5EUR02FT062.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:330:cafe::86) by AS8P250CA0005.outlook.office365.com
 (2603:10a6:20b:330::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.18 via Frontend
 Transport; Mon, 14 Feb 2022 17:43:13 +0000
X-MS-Exchange-Authentication-Results: spf=temperror (sender IP is
 217.111.95.7) smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arri.de: DNS Timeout)
Received: from mta.arri.de (217.111.95.7) by
 AM5EUR02FT062.mail.protection.outlook.com (10.152.9.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Mon, 14 Feb 2022 17:43:11 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Mon, 14 Feb
 2022 18:43:11 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Mon, 14 Feb 2022 18:43:11 +0100
Received: from dhcp-192-168-0-28.wgnetz.xx (192.168.54.144) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Mon, 14 Feb
 2022 18:43:10 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: Khem Raj <raj.khem@gmail.com>
CC: poky <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Mon, 14 Feb 2022 18:43:10 +0100
Message-ID: <7360758.EvYhyI6sBW@dhcp-192-168-0-28.wgnetz.xx>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <CAMKF1sqQuKTh36TrtRXwaQv7XJm9ONa8ScC0R9Ro697SvrsruQ@mail.gmail.com>
References: <20220214075859.8593-1-ceggers@arri.de> <CAMKF1sqQuKTh36TrtRXwaQv7XJm9ONa8ScC0R9Ro697SvrsruQ@mail.gmail.com>
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.54.144]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b00ca7fa-dec4-4137-de71-08d9efe17869
X-MS-TrafficTypeDiagnostic: AM7PR07MB6818:EE_
X-Microsoft-Antispam-PRVS: 
	<AM7PR07MB68188D1D41C0705AB4FE9237BF339@AM7PR07MB6818.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aEQIZyQaX2Ch1cP520l73AIsoBgPzInAubEJI1E/HLxUWJ53ozDL9iXfr1cUvgDXquhumN3KRUSelDGLXVD5HBADiJMUu08n/iJvt5NGN6q9RoLG5sbWhWUUuTWRru68q7W7IevvX1HKM8WJhnaLqnHOxRWwHPqs6YFZw0ccJmo6KAlzJHK1q/jgswZq42+kajdABa44tqKZkB0qTbquvSFz2GIhhbhRjMqIEM3AvPA5FzrOJ+YvNdApbVswGA0gkhAgSs+Vhc7nFAmkEu2erp5b2ltHCOutFhibFlZYzquS7SfJTQLM9N8xr73O3b/1j4cNcfVB0iscCh73Hw2UipI00UwUs2u54s2UnS8EPgDePe6WJOHvHHUXg7zWligFGsZjqmDGIA9dDSju//CIj3CKI5EiW5UttIlPzvMe/bNZ9iKXbPsi5XRvcJJg1wE/LBdpxHbpvpfE0R4qCvEibd7yJkcF6IDlv8Nc8oql33vaadsAHOq50x0wWFo6qgIrbkgdeqH43XJyReZXd2+SiuC0kAhYJTCURTAxBg+BfYr3bWzx3UCPPu12G+DTqvYfK6XdygcuNTy432ieq6h0ZMcIZslAXX/0kC88j/7WQoYJ0g9XjYcFsXG3Hl8UPwMUdD+NYTQcJQ+Uvc8ewF2ARMqA16aj+aOysTOSEAeAY42kbh36ywYT17GjBRwz8N1I+wSy6pgZJuTzIxf6hEJqChj6sseec0WWSc02mSDn11ObevYxA3reYOmuxiVgXnaHHMYSq7UwsF/awBEK7yM7ug==
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(46966006)(36840700001)(40470700004)(8936002)(70586007)(70206006)(316002)(6916009)(8676002)(4326008)(2906002)(508600001)(966005)(36916002)(86362001)(55016003)(40460700003)(7696005)(53546011)(5660300002)(9686003)(426003)(47076005)(336012)(36860700001)(82310400004)(83380400001)(16526019)(63350400001)(81166007)(356005)(186003)(26005)(39026012)(102196002)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2022 17:43:11.6105
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b00ca7fa-dec4-4137-de71-08d9efe17869
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR02FT062.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR07MB6818
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Monday, 14 February 2022, 18:16:57 CET, Khem Raj wrote:
> On Mon, Feb 14, 2022 at 12:04 AM Christian Eggers <ceggers@arri.de> wrote:
> >
> > configure fails with the following error if gcsections is active during
> > build of nativesdk-cairo:
> >
> > | checking whether float word ordering is bigendian... unknown
> > | configure: error:
> > |
> > | Unknown float word ordering. You need to manually preset
> > | ax_cv_c_float_words_bigendian=3Dno (or yes) according to your system.
> >
>=20
> hmm, this perhaps is a bug in the native toolchain you have
I thought that nativesdk packages are built by the nativesdk toolchain,
aren't they?

config.log (created without linker GC):
=2D------------------------8<--------------------------
configure:20976: checking whether float word ordering is bigendian
configure:21005: x86_64-pokysdk-linux-gcc  --sysroot=3D/home/eggers/Projekt=
e/jupiter/yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-poky=
sdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot -o conftest  -O2 -g -fel=
iminate-unused-debug-types -pipe -fmacro-prefix-map=3D/home/eggers/Projekte=
/jupiter/yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-pokys=
dk-linux/nativesdk-cairo/1.16.0-r0=3D/usr/src/debug/nativesdk-cairo/1.16.0-=
r0                      -fdebug-prefix-map=3D/home/eggers/Projekte/jupiter/=
yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-pokysdk-linux/=
nativesdk-cairo/1.16.0-r0=3D/usr/src/debug/nativesdk-cairo/1.16.0-r0       =
               -fdebug-prefix-map=3D/home/eggers/Projekte/jupiter/yocto-war=
rior/build/devel-honister/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk=
=2Dcairo/1.16.0-r0/recipe-sysroot=3D                      -fdebug-prefix-ma=
p=3D/home/eggers/Projekte/jupiter/yocto-warrior/build/devel-honister/tmp/wo=
rk/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot-=
native=3D    -Wl,-O1  conftest.c  >&5
configure:21005: $? =3D 0
configure:21025: result: no
=2D------------------------8<--------------------------

> whichever compiler toolchain is being used to compile nativesdk-cairo
> see if you can compile and find the string in resulting binary
>=20
> % cat a.c
> double d __attribute__((used)) =3D
> 9090423496703681033747047890550501147621169273561563201479712084405348886=
581669527372346909785805625751702019124748742951693213050356065000232756451=
757077848023672452514052012137173920149654013264010997777942056577656894259=
2.0;
> int main() { return 0; }
>=20
> % gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall
> -Werror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2
> -Wp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64
> -mtune=3Dgeneric -fasynchronous-unwind-tables -fstack-clash-protection
> -fcf-protection -fdata-sections -ffunction-sections -flto=3Dauto
> -flto-partition=3Dnone | strings a.out | grep seesnoon
>=20
> if it prints out
> seesnoonGCC: (GNU) ....
>=20
> then the test is fine. If it does not then there is something wrong there.
I use openSUSE 15.3 with an ancient GCC 7.5.0. It doesn't recognize '-fcf-p=
rotection'.

gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall \
=2DWerror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 \
=2DWp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64 \
=2Dmtune=3Dgeneric -fasynchronous-unwind-tables -fstack-clash-protection \
=2Dfdata-sections -ffunction-sections -flto=3Dauto \
=2Dflto-partition=3Dnone | strings a.out | grep seesnoon

seesnoon
(without GCC: ...)

>=20
> I have done this test on gcc 11.1.0 and clang 13.0.1 on my archlinux
> host and it worked all ok.
>=20

See also:
https://gitlab.freedesktop.org/cairo/cairo/-/issues/459




