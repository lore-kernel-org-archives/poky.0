Return-Path: <malu@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02931E00C54; Tue,  1 May 2018 06:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0110.outbound.protection.outlook.com [104.47.2.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD3D8E00C40
	for <poky@yoctoproject.org>; Tue,  1 May 2018 06:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=5Bi/z2oxvMkdMkl8fMms6f5kSeMTP4c6o+3DxpPh8WI=;
	b=hl3rHgIDhiY6ULy3hXWcn7ZLVCTjmuaMrcSPKMpttQ08txD6fcZOG+bmI8eH3vKxubycai5DD1ffZWqnDJ0O8HFIrM/IqWBmsgVm4u4tdJ6RIjzhj//ESqp+e4KMh4LA+OKdMCTbz9ID4koXFnhxGyt76/uS3NntlHdF4jD3+zc=
Received: from AM6PR0402MB3686.eurprd04.prod.outlook.com (52.133.28.153) by
	AM6PR0402MB3381.eurprd04.prod.outlook.com (52.133.19.10) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.715.18; Tue, 1 May 2018 10:29:00 +0000
Received: from AM6PR0402MB3686.eurprd04.prod.outlook.com
	([fe80::48ea:91a8:f9dc:58db]) by
	AM6PR0402MB3686.eurprd04.prod.outlook.com
	([fe80::48ea:91a8:f9dc:58db%13]) with mapi id 15.20.0715.023;
	Tue, 1 May 2018 10:29:00 +0000
From: Martin Lund <malu@gomspace.com>
To: Poky Project <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
Thread-Index: AQHT3UPG3wXIVPGR9EmKCE8NfoncP6QWnMKAgAApGACAA+zBNQ==
Date: Tue, 1 May 2018 10:29:00 +0000
Message-ID: <AM6PR0402MB3686F986E094743607E4EB04A1810@AM6PR0402MB3686.eurprd04.prod.outlook.com>
References: <cover.1524580981.git.malu@gomspace.com>
	<10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
	<CAMKF1srdhfFn0rqC7W8gC00DcBjGdhW_hKBuqgJTUkHFc-dfjg@mail.gmail.com>,
	<CAJTo0LZ=8hWG+Q37Nxw1fsOzSAWqNcyu+ZONOV3UF9xJrCEo9A@mail.gmail.com>
In-Reply-To: <CAJTo0LZ=8hWG+Q37Nxw1fsOzSAWqNcyu+ZONOV3UF9xJrCEo9A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=malu@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR0402MB3381;
	7:dBODZY88s+oZJlV4aut5cfcsse6lz7/O3FKtFbowIkYVX7fI7j/rwtdWdw4laIfTSPmiAReBzaMcDkLp0FqfsZmcFOlW7Il7vrXiVdkghfzKMxncC1M8yRVaFxrAoBd4AVSpkcIp7yI27RUdKL12p1KZnTM1KXufr4VldWqPmbn6HIgAE6DiJ8BNMm1+mKm89gB3aDJorJGWZkAE7blZ5FjUa1QCDeWCuiRV9voQUUxW+0aKsTLmkiKn8/g/qboc
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0402MB3381; 
x-ms-traffictypediagnostic: AM6PR0402MB3381:
x-microsoft-antispam-prvs: <AM6PR0402MB338180CBFA2112CC759F61BAA1810@AM6PR0402MB3381.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3231254)(944501410)(52105095)(3002001)(93006095)(93001095)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:AM6PR0402MB3381; BCL:0; PCL:0; RULEID:;
	SRVR:AM6PR0402MB3381; 
x-forefront-prvs: 06592CCE58
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(39840400004)(346002)(376002)(396003)(39380400002)(189003)(199004)(54094003)(606006)(55016002)(5250100002)(6506007)(6306002)(14454004)(9686003)(99286004)(53936002)(5660300001)(3660700001)(19627405001)(59450400001)(66066001)(6246003)(81156014)(6436002)(236005)(26005)(54896002)(76176011)(33656002)(102836004)(7696005)(966005)(74316002)(7736002)(18265965003)(8676002)(53546011)(229853002)(25786009)(8936002)(97736004)(81166006)(478600001)(2906002)(68736007)(3280700002)(186003)(446003)(6916009)(6606003)(105586002)(86362001)(93886005)(11346002)(476003)(2900100001)(106356001)(316002)(6116002)(3846002)(486006)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR0402MB3381;
	H:AM6PR0402MB3686.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: bebmcWZYrVgq+jZQfR1AFgHWwSHZbqMV6kVMq4XajvEV2+uY/DmuSvQMLf4esVC+3025jf5zDMvo9UhOEwcQQPtGDonka2egBMRouvEd9UcfCq95aHY+FA5iTI1r4sAnB/Tka90M3bfAp6+pcb0vAC4GuA7s7DRVpJscSFOFxoB7Ls3Gr+H8tru9+309VWYy
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: fe2f69d0-d690-4c7e-2d40-08d5af4e5ac8
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe2f69d0-d690-4c7e-2d40-08d5af4e5ac8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2018 10:29:00.6765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3381
Subject: Re: [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Tue, 01 May 2018 13:00:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR0402MB3686F986E094743607E4EB04A1810AM6PR0402MB3686_"

--_000_AM6PR0402MB3686F986E094743607E4EB04A1810AM6PR0402MB3686_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I hope you guys will accept the patch - the tools are quite useful for thos=
e of us creating and testing BSPs with NAND/NOR features. It would be nice =
to have it available to build directly from poky.

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Sunday, April 29, 2018 12:28:12 AM
To: Khem Raj
Cc: Martin Lund; Poky Project
Subject: Re: [poky] [PATCH 1/1] mtd-utils: Add mtd-utils-tests package

No, as they're not a test suite, just tools to test with.

Ross

On 28 April 2018 at 21:01, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Thu, Apr 26, 2018 at 2:49 AM Martin Lund <malu@gomspace.com> wrote:
>>
>> Add mtd-utils-tests package which includes the test suites mtd-tests,
>> ubi-tests, fs-tests, etc.
>>
>> These test suites are useful for verifying flash features or stress
>> testing.
>
>
> I wonder if this should be enabled when ptest is in distro features
>>
>>
>>
>> Signed-off-by: Martin Lund <malu@gomspace.com>
>> ---
>>  meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> index d09d6330228..b8f2dd15c19 100644
>> --- a/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> +++ b/meta/recipes-devtools/mtd/mtd-utils_git.bb
>> @@ -8,6 +8,7 @@ LIC_FILES_CHKSUM =3D
>> "file://COPYING;md5=3D0636e73ff0215e8d672dc4c32c317bb3 \
>>  inherit autotools pkgconfig update-alternatives
>>
>>  DEPENDS =3D "zlib lzo e2fsprogs util-linux"
>> +RDEPENDS_mtd-utils-tests +=3D "bash"
>>
>>  PV =3D "2.0.1+${SRCPV}"
>>
>> @@ -18,6 +19,8 @@ SRC_URI =3D "git://git.infradead.org/mtd-utils.git \
>>
>>  S =3D "${WORKDIR}/git/"
>>
>> +EXTRA_OECONF +=3D "--enable-install-tests"
>> +
>>  # xattr support creates an additional compile-time dependency on acl
>> because
>>  # the sys/acl.h header is needed. libacl is not needed and thus enablin=
g
>> xattr
>>  # regardless whether acl is enabled or disabled in the distro should be
>> okay.
>> @@ -37,11 +40,12 @@ do_install () {
>>         oe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir}
>> MANDIR=3D${mandir} INCLUDEDIR=3D${includedir}
>>  }
>>
>> -PACKAGES =3D+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
>> +PACKAGES =3D+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc
>> mtd-utils-tests"
>>
>>  FILES_mtd-utils-jffs2 =3D "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump
>> ${sbindir}/jffs2reader ${sbindir}/sumtool"
>>  FILES_mtd-utils-ubifs =3D "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
>>  FILES_mtd-utils-misc =3D "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/r=
fd*
>> ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
>> +FILES_mtd-utils-tests =3D "${libexecdir}/mtd-utils/*"
>>
>>  BBCLASSEXTEND =3D "native nativesdk"
>>
>> --
>> 2.14.1
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--_000_AM6PR0402MB3686F986E094743607E4EB04A1810AM6PR0402MB3686_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I hope you guys will accept the p=
atch - the tools are quite useful for those of us creating and testing BSPs=
 with NAND/NOR features. It would be nice to have it available to build dir=
ectly from poky.<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Sunday, April 29, 2018 12:28:12 AM<br>
<b>To:</b> Khem Raj<br>
<b>Cc:</b> Martin Lund; Poky Project<br>
<b>Subject:</b> Re: [poky] [PATCH 1/1] mtd-utils: Add mtd-utils-tests packa=
ge</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">No, as they're not a test suite, just tools to tes=
t with.<br>
<br>
Ross<br>
<br>
On 28 April 2018 at 21:01, Khem Raj &lt;raj.khem@gmail.com&gt; wrote:<br>
&gt;<br>
&gt; On Thu, Apr 26, 2018 at 2:49 AM Martin Lund &lt;malu@gomspace.com&gt; =
wrote:<br>
&gt;&gt;<br>
&gt;&gt; Add mtd-utils-tests package which includes the test suites mtd-tes=
ts,<br>
&gt;&gt; ubi-tests, fs-tests, etc.<br>
&gt;&gt;<br>
&gt;&gt; These test suites are useful for verifying flash features or stres=
s<br>
&gt;&gt; testing.<br>
&gt;<br>
&gt;<br>
&gt; I wonder if this should be enabled when ptest is in distro features<br=
>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Martin Lund &lt;malu@gomspace.com&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;&nbsp; meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 &#43;&#43;&#4=
3;&#43;&#43;-<br>
&gt;&gt;&nbsp; 1 file changed, 5 insertions(&#43;), 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb<br>
&gt;&gt; b/meta/recipes-devtools/mtd/mtd-utils_git.bb<br>
&gt;&gt; index d09d6330228..b8f2dd15c19 100644<br>
&gt;&gt; --- a/meta/recipes-devtools/mtd/mtd-utils_git.bb<br>
&gt;&gt; &#43;&#43;&#43; b/meta/recipes-devtools/mtd/mtd-utils_git.bb<br>
&gt;&gt; @@ -8,6 &#43;8,7 @@ LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &quot;<a href=3D""></a>file://COPYING;md5=3D0636e73ff0215e8d672dc4=
c32c317bb3 \<br>
&gt;&gt;&nbsp; inherit autotools pkgconfig update-alternatives<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; DEPENDS =3D &quot;zlib lzo e2fsprogs util-linux&quot;<br>
&gt;&gt; &#43;RDEPENDS_mtd-utils-tests &#43;=3D &quot;bash&quot;<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; PV =3D &quot;2.0.1&#43;${SRCPV}&quot;<br>
&gt;&gt;<br>
&gt;&gt; @@ -18,6 &#43;19,8 @@ SRC_URI =3D &quot;git://git.infradead.org/mt=
d-utils.git \<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; S =3D &quot;${WORKDIR}/git/&quot;<br>
&gt;&gt;<br>
&gt;&gt; &#43;EXTRA_OECONF &#43;=3D &quot;--enable-install-tests&quot;<br>
&gt;&gt; &#43;<br>
&gt;&gt;&nbsp; # xattr support creates an additional compile-time dependenc=
y on acl<br>
&gt;&gt; because<br>
&gt;&gt;&nbsp; # the sys/acl.h header is needed. libacl is not needed and t=
hus enabling<br>
&gt;&gt; xattr<br>
&gt;&gt;&nbsp; # regardless whether acl is enabled or disabled in the distr=
o should be<br>
&gt;&gt; okay.<br>
&gt;&gt; @@ -37,11 &#43;40,12 @@ do_install () {<br>
&gt;&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake install=
 DESTDIR=3D${D} SBINDIR=3D${sbindir}<br>
&gt;&gt; MANDIR=3D${mandir} INCLUDEDIR=3D${includedir}<br>
&gt;&gt;&nbsp; }<br>
&gt;&gt;<br>
&gt;&gt; -PACKAGES =3D&#43; &quot;mtd-utils-jffs2 mtd-utils-ubifs mtd-utils=
-misc&quot;<br>
&gt;&gt; &#43;PACKAGES =3D&#43; &quot;mtd-utils-jffs2 mtd-utils-ubifs mtd-u=
tils-misc<br>
&gt;&gt; mtd-utils-tests&quot;<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; FILES_mtd-utils-jffs2 =3D &quot;${sbindir}/mkfs.jffs2 ${sbin=
dir}/jffs2dump<br>
&gt;&gt; ${sbindir}/jffs2reader ${sbindir}/sumtool&quot;<br>
&gt;&gt;&nbsp; FILES_mtd-utils-ubifs =3D &quot;${sbindir}/mkfs.ubifs ${sbin=
dir}/ubi*&quot;<br>
&gt;&gt;&nbsp; FILES_mtd-utils-misc =3D &quot;${sbindir}/nftl* ${sbindir}/f=
tl* ${sbindir}/rfd*<br>
&gt;&gt; ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image&quot;=
<br>
&gt;&gt; &#43;FILES_mtd-utils-tests =3D &quot;${libexecdir}/mtd-utils/*&quo=
t;<br>
&gt;&gt;<br>
&gt;&gt;&nbsp; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; 2.14.1<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; poky mailing list<br>
&gt;&gt; poky@yoctoproject.org<br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://l=
ists.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; poky@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists=
.yoctoproject.org/listinfo/poky</a><br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_AM6PR0402MB3686F986E094743607E4EB04A1810AM6PR0402MB3686_--
