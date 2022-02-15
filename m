Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.128])
 by mx.groups.io with SMTP id smtpd.web12.7182.1644913512550116197
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 00:25:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arrigroup.onmicrosoft.com header.s=selector1-arrigroup-onmicrosoft-com header.b=INywO2UT;
 spf=pass (domain: arri.de, ip: 40.107.7.128, mailfrom: ceggers@arri.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WpE6EPsx+SWrcRA5nM34asflyLgRljESCf0M2B8sMEw6gUgwDSV7a7ltRt81jgwBvk9Z6yryOWBoYD/u48/w+CVzCgyp/6v+fBJcst0G95kqKDZIzk8ShGCjk3pK/FpzsXafEJfsZT5A6B0+cZVANNUwvcSujSus+s9wmX2wqX+yPDvcCVkhbXetEWk/5LQYpLgA88jF9LG2mUVV9uYCgZK+ok9GuwgeE9kVRzaLJlBN20AyoXis2lKC4KJDTfUwu4DZz36NS0oPQX1NwOdz3oJuD5gHTlmL9wZMx63ln2IFh9KDBuxRm5XI+FbewVj0NKml/ZHzmJ4gMDD6jeMvqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DxM/yYdUdNep005MvVfN2k1Cga09d4OVQNISew9+EtY=;
 b=lN6D8nnKsAD+MqagxeyTU/AF35yQW1k7WTUzoR7iGZtNLST0oZUXM4I198XCxccCUJ7SRwfgvCVYPS290ldWCu/5npZRRdyJcHK/5BmWn0wf8+6tbKFV4r40nf/yhm2Vfni6LhAkg6Cov8c3LXqmwolvJurTs91wHLFpFZmc75oSDvd4JK9jEZjaNh58KTxT1mJ0eZA0hqKyL+b0aLlQ2HOKD0haPTHvAW303OFOGHJwE5jBNYvD5lYdYyGaoRJ0c+LD5ZXd1nB5iHBGOnZ8w3wJoBYH0g/vC/W00kBqZp6eUZ2kOLQxCXmlptzJ34xbQZOxKWGGWnLdG6EVx7XfSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 217.111.95.7) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arri.de;
 dmarc=none action=none header.from=arri.de; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arrigroup.onmicrosoft.com; s=selector1-arrigroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DxM/yYdUdNep005MvVfN2k1Cga09d4OVQNISew9+EtY=;
 b=INywO2UTb1wDLiPc+xoss2cnYRqcoRLUNM+IXxnT46xYMxrhAGB3z9dfU0CqNifhIGZvDx7bcEro2vXgYC81k7Phk9yhvEeiOy7I9a0ObVBpOSWRwas4kuNTkUplcHLs5EgEhNtS2HUpDRkDcJBHxMlQFp2jkAaK0G/0+p9qMmQ=
Received: from SV0P279CA0051.NORP279.PROD.OUTLOOK.COM (2603:10a6:f10:13::20)
 by VI1PR0701MB6991.eurprd07.prod.outlook.com (2603:10a6:800:17d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.13; Tue, 15 Feb
 2022 08:25:08 +0000
Received: from HE1EUR02FT040.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:f10:13:cafe::8e) by SV0P279CA0051.outlook.office365.com
 (2603:10a6:f10:13::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.14 via Frontend
 Transport; Tue, 15 Feb 2022 08:25:08 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 217.111.95.7)
 smtp.mailfrom=arri.de; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arri.de;
Received-SPF: Fail (protection.outlook.com: domain of arri.de does not
 designate 217.111.95.7 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.111.95.7; helo=mta.arri.de;
Received: from mta.arri.de (217.111.95.7) by
 HE1EUR02FT040.mail.protection.outlook.com (10.152.11.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4975.11 via Frontend Transport; Tue, 15 Feb 2022 08:25:07 +0000
Received: from MucEx01.arri.de (10.10.18.25) by MucEx01.arri.de (10.10.18.25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.7; Tue, 15 Feb
 2022 09:25:06 +0100
Received: from CASHUB3.arri.de (192.168.100.104) by MucEx01.arri.de
 (10.10.18.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.2375.7 via Frontend
 Transport; Tue, 15 Feb 2022 09:25:06 +0100
Received: from localhost.localdomain (192.168.55.96) by mta.arri.de
 (192.168.100.104) with Microsoft SMTP Server (TLS) id 14.3.498.0; Tue, 15 Feb
 2022 09:25:06 +0100
From: "Christian Eggers" <ceggers@arri.de>
To: Khem Raj <raj.khem@gmail.com>
CC: poky <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
Date: Tue, 15 Feb 2022 09:25:05 +0100
Message-ID: <4415795.cEBGB3zze1@localhost.localdomain>
Organization: Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
In-Reply-To: <4181846.ejJDZkT8p0@localhost.localdomain>
References: <20220214075859.8593-1-ceggers@arri.de> <CAMKF1sookosR5xzWjeT0zBtDWV8RgW+Waq38dHxuArJ4UCd-GA@mail.gmail.com> <4181846.ejJDZkT8p0@localhost.localdomain>
MIME-Version: 1.0
Return-Path: CEggers@arri.de
X-Originating-IP: [192.168.55.96]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f90bbb8-46b9-4864-a15d-08d9f05cacb0
X-MS-TrafficTypeDiagnostic: VI1PR0701MB6991:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR0701MB6991E61E459AE9642173223FBF349@VI1PR0701MB6991.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pWHip+nPS440oAwCai6EE1NBCNMI/9UpSHLzR44fUSqnQ9bw4+7w7t9cqLrB68vvXYLSN86zKZMGu9xyoiblFREia+MWzqV5sMJC8K4MIGIVcQ7l0usCI6emq0GvWH3h1qvCIyyTx2k9qafObzhJ11b3LaD05bk89gZLKxTOxdUEEPzQJWvo/EgbKEgv81807zoGSks7BOMmHmManUJx993Yxl+s2ZVYAD+p77FCqgLhFNN0gHUlyA4HwblYE736XOhZ0ZAHz9lIkf2H4oMaaO5BLk1lb/UuBO1Ejks9LriZuiTdpSi2L9hh3sqaRcLLP3k0zuhXZjQ4SrXK1UVyNqhczO26W3akrRtcV/dvNS2mPT1UTkmW8Yj2aCQdmJvHUUZOA0I6yb7r4JG8nVw59Mv3jZS2egS9KtEYnZRb6r11eod5ASzql2O0BTjzIwjsreTteWFZJNIieFsKQ9c0b+V6aHLaE/BnPnSMBhWPhxIVyIKazX1qjre6M8Ppc/qkA1lhfTibtD7osmMt0gAGaESscD2v9NEoVG7SVLRKaxzmRRpX1Yi/E06wsIAWiNqQ6Q2N7cSuXjoferdFuhZSRRvWEljErLG1UT7vEynFY5srLWEYaIyhpUsRv+ijlt8tAvrSTEk97aXihV+PeHFvsABJdb3X2W43QTsyULOSjNjmK+C+hFJsZgmWi2OX/vhM1QM3wPIXGtb3m1tvYiHyHq1CLm3AfLOUlJGgU6AML3somwRfHfKOIfw5vsMCsNNcrU9VDxOt8MHxaaJN8Xa+tpdjoYLHmkrH+/xwysfnb3U=
X-Forefront-Antispam-Report: 
	CIP:217.111.95.7;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mta.arri.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(46966006)(47076005)(36860700001)(83380400001)(356005)(81166007)(55016003)(9686003)(6916009)(316002)(508600001)(7696005)(36916002)(966005)(2906002)(336012)(426003)(70206006)(70586007)(186003)(16526019)(4326008)(26005)(8676002)(5660300002)(8936002)(86362001)(82310400004)(39026012)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: arri.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2022 08:25:07.2987
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f90bbb8-46b9-4864-a15d-08d9f05cacb0
X-MS-Exchange-CrossTenant-Id: e6a73a5a-614d-4c51-b3e3-53b660a9433a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e6a73a5a-614d-4c51-b3e3-53b660a9433a;Ip=[217.111.95.7];Helo=[mta.arri.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR02FT040.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB6991
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Monday, 14 February 2022, 18:16:57 CET, Khem Raj wrote:
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
>=20
> I have done this test on gcc 11.1.0 and clang 13.0.1 on my archlinux
> host and it worked all ok.
You forgot to enable garbage collection on the linker (-Wl,--gc-sections).


On Monday, 14 February 2022, 19:59:35 CET, Christian Eggers wrote:
> Summary: Linker garbage collection seems to work fine :-)
>=20
> I have almost no knowledge about autoconf. Would it be possible
> to compile this test without linking ('-c') and to analyze the
> .o file instead?

This seems to cause other problems:
https://github.com/freedesktop/cairo/commit/7cfebce152

>  build: Fix float endian configure test when using clang -O4
>=20
> When using clang -O4, the compiled test object is output in bitcode
> format rather than as an ELF object, so when we grep the test value from
> the object it fails.  To work around this, go ahead and link the test
> object into an executable, and then grep against this native binary
> instead of the compiler's intermediary object.
>=20
> We need to add __attribute__((used)) to ensure the d variable doesn't
> get optimized out during linking, since it's not referenced in the
> test's main().

So how can the compiler ask the linker to keep a section instead of
garbage collecting it?

I had a short look in the possible ELF section flags and found SHF_GNU_RETA=
IN:

https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dblob;f=3Dinclude/elf/c=
ommon.h#l572
https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dblob;f=3Dgas/config/ob=
j-elf.c#l902

Compiling conftest.c with -save-temps showed that this flag is not set:

conftest.s
=2D------------------------------------8<----------------------------------=
=2D-----
        .globl  d
        .section        .data.d,"aw"  <-- "R" (SHF_GNU_RETAIN) is missing
        .align 8
        .type   d, @object
        .size   d, 8
d:
        .long   1936024947
        .long   1852796782
=2D------------------------------------>8----------------------------------=
=2D-----

Google found a quite dirty hack to set the section flag from C code:

https://stackoverflow.com/questions/6252812/what-does-the-aw-flag-in-the-se=
ction-attribute-mean

> unsigned int __attribute__((section(".myVarSection,\"aw\",@nobits#"))) my=
Var;
Note the '#' sign which is used to terminate the assembler command before
GCC inserts its own "aw" flag:
> .section    .myVarSection,"aw",@nobits#,"aw",@progbits

Regarding the float byte ordering test, the following works with
=2Dffunction-sections + -fdata-sections (for me):

=2D------------------------------------8<----------------------------------=
=2D-----
double d __attribute__((used,section(".data,\"awR\"#"))) =3D ...=20
int main() { return 0; }
=2D------------------------------------>8----------------------------------=
=2D-----

Looking for other ways to set the section flags from GCC showed that
a new "retain" attribute has recently been added to GCC (included in 11.2.0=
):

https://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dcommit;h=3D6347f4a0904fce17eedf5c0=
71be6f3c118680290

> @item retain
> @cindex @code{retain} variable attribute
> For ELF targets that support the GNU or FreeBSD OSABIs, this attribute
> will save the variable from linker garbage collection.  To support
> this behavior, variables that have not been placed in specific sections
> (e.g. by the @code{section} attribute, or the @code{-fdata-sections}
> option), 7515 will be placed in new, unique sections.

Interestingly this text was not added by the commit, it was only moved
from the "used" attribute to the new "retain" attribute. It looks like
that during development of GCC-11, at first the "used" attribute was
assigned for this and later they switched to the new "retain" attribute:

https://gcc.gnu.org/git/?p=3Dgcc.git;a=3Dcommit;f=3Dgcc/output.h;h=3D6fbec0=
38f7a7ddf29f074943611b53210d17c40c


What shall we do with this information now?

Option 1:
don't use linker garbage collection with cairo/nativesdk-cairo (current sta=
te)

Option 2:
Set ax_cv_c_float_words_bigendian manually (per platform).

Option 3:
Use the "section" attribute hack above. Would this work with clang?
Is the '#' comment character suitable for all architectures?

Option 4:
Use the new "retain" attribute. Could this be upstreamed? GCC < 11 emits
a warning:
conftest.c:2:1: warning: =E2=80=98retain=E2=80=99 attribute directive ignor=
ed [-Wattributes]
=46or hardknott (GCC 10.2.0), we still need another solution.






