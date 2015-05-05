Return-Path: <tupea@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BE27E009B4; Tue,  5 May 2015 11:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 May 2015 11:09:11 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E75E008DC
	for <poky@yoctoproject.org>; Tue,  5 May 2015 11:09:11 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgsFALAFSVXGmAcV/2dsb2JhbABcgkUhJoE0zWECgTxMAQEBAQEBgQuEIgEBAxIbXgEVFVYmAQQbGogKAaE3hQieOgwgkA2DT4EWBYsghn2LeoZAiniDUyODdIIzgQEBAQE
X-IronPort-AV: E=Sophos;i="5.13,373,1427774400"; 
	d="scan'208,217";a="101342482"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	05 May 2015 14:08:06 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	05 May 2015 14:08:06 -0400
Received: from AZ-US1EXMB04.global.avaya.com ([fe80::11c8:bc05:83cb:13d8]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Tue, 5 May 2015 14:08:05 -0400
From: "Tupe, Amol (Amol)" <tupea@avaya.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Yocto-Poky: bbclass file for SPDX1.2 data generation
Thread-Index: AdCHW77afCysDjYeQva2id/2B1BuCQ==
Date: Tue, 5 May 2015 18:08:05 +0000
Message-ID: <CD551047A838BB45A959E537E0B25AB56A7A6D5A@AZ-US1EXMB04.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Yocto-Poky: bbclass file for SPDX1.2 data generation
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
X-List-Received-Date: Tue, 05 May 2015 18:09:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CD551047A838BB45A959E537E0B25AB56A7A6D5AAZUS1EXMB04glob_"

--_000_CD551047A838BB45A959E537E0B25AB56A7A6D5AAZUS1EXMB04glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,
I am using Daisy version of Poky (1.6.1).
I want to generate a SPDX (Software Package Data Exchange) data for the pac=
kages that I am building under my project source tree.

I found following .bbclass file in the path, poky/meta/classes/spdx.bbclass
Some configurations for this .bbclass file are coming from path, poky/meta/=
conf/licenses.conf
It looks like this generates SPDX data/report but, in SPDX ver 1.1 format. =
Also values for many fields in generated spdx file are not populated and re=
main at default value, "NOASSERTION".

I would like to seek your help for following:
1. Does anyone have latest/modified spdx.bbclass file that will generate th=
e data/report in SPDX 1.2 format (instead of SPDX 1.1 format)?
2. Does anyone have spdx.bbclass file that will populate all fields in the =
generated SPDX data/report?
3. Is there any way to generate a single/combined *.spdx data/report, inste=
ad of generating individual *.spdx files for every package?

Following is the sniff of SPDX data/report generated from my poky build, wh=
en configured for the dhcp package:-

Regards,

Amol T

File name: dhcp.spdx
/////////////////////////////////
SPDXVersion: SPDX-1.1
DataLicense: CC0-1.0
DocumentComment: <text>SPDX for dhcp version 4.0.0</text>

## Creation Information
Creator: fossology-spdx
Created: 2015-04-29T15:29:20
CreatorComment: <text>UNO</text>

## Package Information
PackageName: dhcp
PackageVersion: 4.0.0
PackageDownloadLocation: NOASSERTION
PackageSummary: <text></text>
PackageFileName: dhcp.tar.gz
PackageSupplier: Person:NOASSERTION
PackageOriginator: Person:NOASSERTION
PackageChecksum: SHA1: 1b77244ee10f7c3fe80483c4e66d372d26b54d25
PackageVerificationCode: c453b7e09358c9408e36586f3f232b13d0e81572
PackageDescription: <text>dhcp version 4.0.0</text>

PackageCopyrightText: <text>NOASSERTION</text>

PackageLicenseDeclared: NOASSERTION
PackageLicenseConcluded: NOASSERTION
PackageLicenseInfoFromFiles: NOASSERTION

## File Information

FileName: minires/ns_samedomain.o

FileName: common/upf.c

FileName: includes/omapip/buffer.h
.....
Around 600 lines for files in the dhcp package
......
FileName: .pc/.quilt_series

FileName: patches/dhcp-3.0.6-memory.patch
/////////////////////////////////



--_000_CD551047A838BB45A959E537E0B25AB56A7A6D5AAZUS1EXMB04glob_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Hello All,</div>
<div>I am using <i>Daisy</i> version of Poky (1.6.1).</div>
<div>I want to generate a SPDX (Software Package Data Exchange) data for th=
e packages that I am building under my project source tree.</div>
<div>&nbsp;</div>
<div>I found following .bbclass file in the path, poky/meta/classes/<b>spdx=
.bbclass</b></div>
<div>Some configurations for this .bbclass file are coming from path, poky/=
meta/conf/<b>licenses.conf</b></div>
<div>It looks like this generates SPDX data/report but, in SPDX ver 1.1 for=
mat. Also values for many fields in generated spdx file are not populated a=
nd remain at default value, &#8220;NOASSERTION&#8221;. </div>
<div>&nbsp;</div>
<div>I would like to seek your help for following:</div>
<div>1. Does anyone have latest/modified <b>spdx.bbclass</b><b> </b>file th=
at will generate the data/report in SPDX 1.2 format (instead of SPDX 1.1 fo=
rmat)?</div>
<div>2. Does anyone have <b>spdx.bbclass</b><b> </b>file that will populate=
 all fields in the generated SPDX data/report?</div>
<div>3. Is there any way to generate a single/combined *.spdx data/report, =
instead of generating individual *.spdx files for every package?</div>
<div>&nbsp;</div>
<div>Following is the sniff of SPDX data/report generated from my poky buil=
d, when configured for the dhcp package:-</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>&nbsp;</div>
<div>Amol T</div>
<div>&nbsp;</div>
<div>File name: dhcp.spdx</div>
<div>/////////////////////////////////</div>
<div>SPDXVersion: SPDX-1.1</div>
<div>DataLicense: CC0-1.0</div>
<div>DocumentComment: &lt;text&gt;SPDX for dhcp version 4.0.0&lt;/text&gt;<=
/div>
<div>&nbsp;</div>
<div>## Creation Information</div>
<div>Creator: fossology-spdx</div>
<div>Created: 2015-04-29T15:29:20</div>
<div>CreatorComment: &lt;text&gt;UNO&lt;/text&gt;</div>
<div>&nbsp;</div>
<div>## Package Information</div>
<div>PackageName: dhcp</div>
<div>PackageVersion: 4.0.0</div>
<div>PackageDownloadLocation: NOASSERTION</div>
<div>PackageSummary: &lt;text&gt;&lt;/text&gt;</div>
<div>PackageFileName: dhcp.tar.gz</div>
<div>PackageSupplier: Person:NOASSERTION</div>
<div>PackageOriginator: Person:NOASSERTION</div>
<div>PackageChecksum: SHA1: 1b77244ee10f7c3fe80483c4e66d372d26b54d25</div>
<div>PackageVerificationCode: c453b7e09358c9408e36586f3f232b13d0e81572</div=
>
<div>PackageDescription: &lt;text&gt;dhcp version 4.0.0&lt;/text&gt;</div>
<div>&nbsp;</div>
<div>PackageCopyrightText: &lt;text&gt;NOASSERTION&lt;/text&gt;</div>
<div>&nbsp;</div>
<div>PackageLicenseDeclared: NOASSERTION</div>
<div>PackageLicenseConcluded: NOASSERTION</div>
<div>PackageLicenseInfoFromFiles: NOASSERTION</div>
<div>&nbsp;</div>
<div>## File Information</div>
<div>&nbsp;</div>
<div>FileName: minires/ns_samedomain.o</div>
<div>&nbsp;</div>
<div>FileName: common/upf.c</div>
<div>&nbsp;</div>
<div>FileName: includes/omapip/buffer.h</div>
<div>&#8230;..</div>
<div>Around 600 lines for files in the dhcp package</div>
<div>&#8230;&#8230;</div>
<div>FileName: .pc/.quilt_series</div>
<div>&nbsp;</div>
<div>FileName: patches/dhcp-3.0.6-memory.patch</div>
<div>/////////////////////////////////</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_CD551047A838BB45A959E537E0B25AB56A7A6D5AAZUS1EXMB04glob_--
