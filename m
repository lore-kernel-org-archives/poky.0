Return-Path: <Edson.Seabra@zpesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F98E00DED; Fri, 29 Jul 2016 15:29:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 12764 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Jul 2016 15:29:46 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0137.outbound.protection.outlook.com [104.47.33.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93346E00DD3
	for <poky@yoctoproject.org>; Fri, 29 Jul 2016 15:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ZPESystems.onmicrosoft.com; s=selector1-zpesystems-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2esBzaPsRbrjJvGSVuk4E00XwjnEZEsTGeYbqGJEO8M=;
	b=gwllPomBom/EqW1inRA/kx/CUd9kkFoyTm8btT6unX+TA4YuH3sbuEGDZZ0yM0qWqT73U2siXoFFuQP8qwhHC+282pAlA3dwtUN/ZYARV+kadeDbPojMtTzbziRaVrpjw5DyfhvVDQB6/C5nBK+bqQPf7lqwa+loGINAjct9qnM=
Received: from BLUPR0201MB1553.namprd02.prod.outlook.com (10.163.119.28) by
	BLUPR0201MB1554.namprd02.prod.outlook.com (10.163.119.29) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Fri, 29 Jul 2016 18:57:00 +0000
Received: from BLUPR0201MB1553.namprd02.prod.outlook.com ([10.163.119.28]) by
	BLUPR0201MB1553.namprd02.prod.outlook.com ([10.163.119.28]) with
	mapi id 15.01.0549.016; Fri, 29 Jul 2016 18:56:59 +0000
From: Edson Seabra <Edson.Seabra@zpesystems.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: metadata_scm - get branch/revision from svn repository 
Thread-Index: AQHR6cr8yuQQH3VVs0Gb8/0xJ2TvcA==
Date: Fri, 29 Jul 2016 18:56:59 +0000
Message-ID: <BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010@BLUPR0201MB1553.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edson.Seabra@zpesystems.com; 
x-originating-ip: [177.45.69.62]
x-ms-office365-filtering-correlation-id: 6a3fef72-156d-4c23-453b-08d3b7e21eef
x-microsoft-exchange-diagnostics: 1; BLUPR0201MB1554;
	6:bVueMqm9U57AHv/U5EP/Y/Y+DjVgts8i/rAVQnRZok6sKzOj5yuuLf1AoXwpmJN+WNM/2/heNv3BYeX2iINF4Atlk3YhsisH4z3CaA9ejpXTSKd9ja5NPOA1A+GyqTJTQ4XTrlwl4B85AlYWW00siaZv9SzNeeuyh5qms1RzEP2kIDRUhS5qkLSr7emxKBVvygAnPfRHachOhgS2GW5uDfpsjhMX5pMyMoM3ivyuyHu5bVGAyO4esjRBCJqFoOV4GjYGPbUlciH5Qqw+uVRUSlmaWI/WxT9CbnR28sKntyNEOdP1wJ72yXqXvlYVTAYi;
	5:aUgAIYoxsg5wDhOzErqn99axaUSoqxgcvNKpCkAyv9zt7P7AkcU1TWU0uIrMDu4iorfAdlkV3o2dH4hGn1BVGpY993vatYyzmPOvxXPSoYR0plVI0wPGxzfV3OkYhQNYsVgQX4y5lLg0qj3LkDpVjw==;
	24:Jm1ixwqQ2N+Oqrf4UpysBkf6RYNPUTwpex/FBX8WOhCSy7Mvm9aKFlLoBZ8QafzGLk3O9Tcvw8AFmNemAP3vaVdM5Zoo5IMNi+kS0ZFN9j4=;
	7:mEN9/EoGcI9bmb2Okk8Juze4B6+uZWGksKIaZH4T5OM9Tdn/fc6s49TWLtCxCo3Jln9VjmnIwFABL4SKpU4DSQ/e8N6qHHv/daXnmLvIOjsUbG2Lwn8J9P99rZB0cV1rKzu6O68dEsdRq+FBE7IQperttC6aAwqj1Ma6HHMkYroqc9B/0NBNTtybpgh5w2cMfoiD14IeDr81YjX9oziMBVEjSjhZ2wsKBvm6nbqskNcDOHhV3zSmvMWLj25VCo0r
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0201MB1554;
x-microsoft-antispam-prvs: <BLUPR0201MB155416A13AEECB5B96E42439F7010@BLUPR0201MB1554.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040130)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041072)(6043046);
	SRVR:BLUPR0201MB1554; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0201MB1554; 
x-forefront-prvs: 0018A2705B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(199003)(189002)(7736002)(6116002)(9686002)(66066001)(102836003)(189998001)(77096005)(92566002)(586003)(3846002)(107886002)(575784001)(2900100001)(10400500002)(2351001)(110136002)(86362001)(3660700001)(229853001)(122556002)(7696003)(8676002)(106116001)(76576001)(19627405001)(74316002)(1730700003)(7846002)(81166006)(106356001)(8936002)(99936001)(19625215002)(19580395003)(50986999)(81156014)(101416001)(5640700001)(97736004)(68736007)(54356999)(16236675004)(2501003)(2906002)(87936001)(33656002)(3280700002)(450100001)(5002640100001)(99286002)(19580405001)(105586002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR0201MB1554;
	H:BLUPR0201MB1553.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: zpesystems.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: zpesystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2016 18:56:59.7850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 09cd24a9-c206-4d0b-8a25-3e9a321f0e90
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0201MB1554
Subject: metadata_scm - get branch/revision from svn repository
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
X-List-Received-Date: Fri, 29 Jul 2016 22:29:48 -0000
X-Groupsio-MsgNum: 10533
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_"

--_004_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_
Content-Type: multipart/alternative;
	boundary="_000_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_"

--_000_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


With this patch bitbake commands can display the branch/revision of layers =
under svn control.


meta-java         =3D "trunk:4360-4037"

meta

meta-yocto

meta-yocto-bsp    =3D "jethro:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f"



Regards.


Edson Seabra | Principal Engineer | M +1 510 590 0074


ZPE Systems, Inc. | 39420 Liberty Street,  #252B | Fremont, CA 94538

edson.seabra@zpesystems.com<mailto:arnaldo.zimmermann@zpesystems.com> | [ww=
w.zpesystems.com]www.zpesystems.com




--_000_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi, </p>
<p><br>
</p>
<p></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 16px; margin-top: 0px; margin-bottom: 0px;">
With this patch bitbake commands can display the branch/revision of layers =
under svn control.</div>
<div><br>
</div>
<p class=3D"p1"><span class=3D"s1" style=3D"font-family: &quot;Courier New&=
quot;, monospace;">meta-java &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;trunk:43=
60-4037&quot;</span></p>
<span style=3D"font-family: &quot;Courier New&quot;, monospace;"></span>
<p class=3D"p1"><span class=3D"s1" style=3D"font-family: &quot;Courier New&=
quot;, monospace;">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</s=
pan></p>
<span style=3D"font-family: &quot;Courier New&quot;, monospace;"></span>
<p class=3D"p1"><span class=3D"s1" style=3D"font-family: &quot;Courier New&=
quot;, monospace;">meta-yocto &nbsp; &nbsp; &nbsp; &nbsp;</span></p>
<span style=3D"font-family: &quot;Courier New&quot;, monospace;"></span>
<p class=3D"p1"><span class=3D"s1" style=3D"font-family: &quot;Courier New&=
quot;, monospace;">meta-yocto-bsp&nbsp; &nbsp; =3D &quot;jethro:dd0ba9ea4a1=
1ab15348d4fe3574e4b28784db82f&quot;</span></p>
<br>
<p></p>
<p><br>
</p>
<p>Regards.</p>
<p><br>
</p>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">Edson Seabra | Princip=
al Engineer&nbsp;| M &#43;1 510 590 0074</span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<br>
</p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)">ZPE Systems, Inc. |&nb=
sp;</span><span style=3D"font-size:10pt; color:rgb(31,78,121)"><span class=
=3D"contextualExtensionHighlight ms-font-color-themePrimary ms-border-color=
-themePrimary ident_670_718" tabindex=3D"0">39420
 Liberty Street,&nbsp; #252B | Fremont, CA 94538</span></span><span style=
=3D"font-size:10pt; color:rgb(68,84,106)"></span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
<span style=3D"font-size:10pt; color:rgb(31,73,125)"><span style=3D"color:r=
gb(5,99,193)">edson.seabra<a href=3D"mailto:arnaldo.zimmermann@zpesystems.c=
om" target=3D"_blank" id=3D"LPNoLP">@zpesystems.com</a></span>&nbsp;| [www.=
zpesystems.com]<span style=3D"color:rgb(5,99,193)">www.zpesystems.com</span=
></span></p>
<p class=3D"x_MsoNormal" style=3D"margin:0in 0in 0.0001pt; font-size:11pt; =
font-family:Calibri,sans-serif; color:rgb(33,33,33)">
&nbsp;</p>
<br>
<p></p>
</div>
</div>
</div>
</body>
</html>

--_000_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_--

--_004_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_
Content-Type: application/octet-stream;
	name="metadata_scm-svn_get_revision.patch"
Content-Description: metadata_scm-svn_get_revision.patch
Content-Disposition: attachment;
	filename="metadata_scm-svn_get_revision.patch"; size=3371;
	creation-date="Fri, 29 Jul 2016 18:52:03 GMT";
	modification-date="Fri, 29 Jul 2016 18:52:03 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nlcy9iYXNlLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMvYmFz
ZS5iYmNsYXNzCmluZGV4IGMzYzI2NjkuLjU0MTY3MjggMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nl
cy9iYXNlLmJiY2xhc3MKKysrIGIvbWV0YS9jbGFzc2VzL2Jhc2UuYmJjbGFzcwpAQCAtMTY2LDgg
KzE2Niw4IEBAIGRlZiBwa2dhcmNoX21hcHBpbmcoZCk6CiBkZWYgZ2V0X2xheWVyc19icmFuY2hf
cmV2KGQpOgogICAgIGxheWVycyA9IChkLmdldFZhcigiQkJMQVlFUlMiLCBUcnVlKSBvciAiIiku
c3BsaXQoKQogICAgIGxheWVyc19icmFuY2hfcmV2ID0gWyIlLTE3cyA9IFwiJXM6JXNcIiIgJSAo
b3MucGF0aC5iYXNlbmFtZShpKSwgXAotICAgICAgICBiYXNlX2dldF9tZXRhZGF0YV9naXRfYnJh
bmNoKGksIE5vbmUpLnN0cmlwKCksIFwKLSAgICAgICAgYmFzZV9nZXRfbWV0YWRhdGFfZ2l0X3Jl
dmlzaW9uKGksIE5vbmUpKSBcCisgICAgICAgIGJhc2VfZ2V0X21ldGFkYXRhX2JyYW5jaChpLCBO
b25lKSwgXAorICAgICAgICBiYXNlX2dldF9tZXRhZGF0YV9yZXZpc2lvbihpLCBOb25lKSkgXAog
ICAgICAgICAgICAgZm9yIGkgaW4gbGF5ZXJzXQogICAgIGkgPSBsZW4obGF5ZXJzX2JyYW5jaF9y
ZXYpLTEKICAgICBwMSA9IGxheWVyc19icmFuY2hfcmV2W2ldLmZpbmQoIj0iKQpkaWZmIC0tZ2l0
IGEvbWV0YS9jbGFzc2VzL21ldGFkYXRhX3NjbS5iYmNsYXNzIGIvbWV0YS9jbGFzc2VzL21ldGFk
YXRhX3NjbS5iYmNsYXNzCmluZGV4IDJlNmZhYzIuLjMyZmFkY2YgMTAwNjQ0Ci0tLSBhL21ldGEv
Y2xhc3Nlcy9tZXRhZGF0YV9zY20uYmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvbWV0YWRhdGFf
c2NtLmJiY2xhc3MKQEAgLTE2LDcgKzE2LDggQEAgZGVmIGJhc2VfZGV0ZWN0X3JldmlzaW9uKGQp
OgogZGVmIGJhc2VfZGV0ZWN0X2JyYW5jaChkKToKICAgICBwYXRoID0gYmFzZV9nZXRfc2NtYmFz
ZXBhdGgoZCkKIAotICAgIHNjbXMgPSBbYmFzZV9nZXRfbWV0YWRhdGFfZ2l0X2JyYW5jaF0KKyAg
ICBzY21zID0gW2Jhc2VfZ2V0X21ldGFkYXRhX2dpdF9icmFuY2gsIFwKKyAgICAgICAgICAgIGJh
c2VfZ2V0X21ldGFkYXRhX3N2bl9icmFuY2hdCiAKICAgICBmb3Igc2NtIGluIHNjbXM6CiAgICAg
ICAgIHJldiA9IHNjbShwYXRoLCBkKQpAQCAtMjgsNiArMjksMzAgQEAgZGVmIGJhc2VfZGV0ZWN0
X2JyYW5jaChkKToKIGRlZiBiYXNlX2dldF9zY21iYXNlcGF0aChkKToKICAgICByZXR1cm4gb3Mu
cGF0aC5qb2luKGQuZ2V0VmFyKCdDT1JFQkFTRScsIFRydWUpLCAnbWV0YScpCiAKK2RlZiBiYXNl
X2dldF9tZXRhZGF0YV9icmFuY2gocGF0aCwgZCk6CisKKyAgICBzY21zID0gW2Jhc2VfZ2V0X21l
dGFkYXRhX2dpdF9icmFuY2gsIFwKKyAgICAgICAgICAgIGJhc2VfZ2V0X21ldGFkYXRhX3N2bl9i
cmFuY2hdCisKKyAgICBmb3Igc2NtIGluIHNjbXM6CisgICAgICAgIHJldiA9IHNjbShwYXRoLCBk
KQorICAgICAgICBpZiByZXYgIT0gIjx1bmtub3duPiI6CisgICAgICAgICAgICByZXR1cm4gcmV2
LnN0cmlwKCkKKworICAgIHJldHVybiAiPHVua25vd24+IgorCitkZWYgYmFzZV9nZXRfbWV0YWRh
dGFfcmV2aXNpb24ocGF0aCwgZCk6CisKKyAgICBzY21zID0gW2Jhc2VfZ2V0X21ldGFkYXRhX2dp
dF9yZXZpc2lvbiwgXAorICAgICAgICAgICAgYmFzZV9nZXRfbWV0YWRhdGFfc3ZuX3JldmlzaW9u
XQorCisgICAgZm9yIHNjbSBpbiBzY21zOgorICAgICAgICByZXYgPSBzY20ocGF0aCwgZCkKKyAg
ICAgICAgaWYgcmV2ICE9ICI8dW5rbm93bj4iOgorICAgICAgICAgICAgcmV0dXJuIHJldgorCisg
ICAgcmV0dXJuICI8dW5rbm93bj4iCisKIGRlZiBiYXNlX2dldF9tZXRhZGF0YV9tb25vdG9uZV9i
cmFuY2gocGF0aCwgZCk6CiAgICAgbW9ub3RvbmVfYnJhbmNoID0gIjx1bmtub3duPiIKICAgICB0
cnk6CkBAIC01MiwxNiArNzcsMzkgQEAgZGVmIGJhc2VfZ2V0X21ldGFkYXRhX21vbm90b25lX3Jl
dmlzaW9uKHBhdGgsIGQpOgogICAgICAgICBwYXNzCiAgICAgcmV0dXJuIG1vbm90b25lX3Jldmlz
aW9uCiAKLWRlZiBiYXNlX2dldF9tZXRhZGF0YV9zdm5fcmV2aXNpb24ocGF0aCwgZCk6Ci0gICAg
IyBUaGlzIG9ubHkgd29ya3Mgd2l0aCBvbGRlciBzdWJ2ZXJzaW9uLiBGb3IgbmV3ZXIgdmVyc2lv
bnMgCi0gICAgIyB0aGlzIGZ1bmN0aW9uIHdpbGwgbmVlZCB0byBiZSBmaXhlZCBieSBzb21lb25l
IGludGVyZXN0ZWQKLSAgICByZXZpc2lvbiA9ICI8dW5rbm93bj4iCitkZWYgYmFzZV9nZXRfbWV0
YWRhdGFfc3ZuX2JyYW5jaChwYXRoLCBkKToKKyAgICBsaW5lID0gb3MucG9wZW4oJ2NkICVzOyBz
dm4gaW5mbyAyPiYxIHwgZ3JlcCAiXlVSTDoiIHwgdHIgLWQgIlxuIiB8IHRyIC1zICIvIicgJSBw
YXRoKS5yZWFkKCkKKworICAgIGlmIG5vdCBsaW5lOgorICAgICAgICByZXR1cm4gIjx1bmtub3du
PiIKKyAgICB3b3JkcyA9IGxpbmUuc3BsaXQoIi8iKQorCisgICAgdHJ5OgorICAgICAgICBpZiB3
b3Jkcy5pbmRleCgidHJ1bmsiKSA+PSAwOgorICAgICAgICAgICAgcmV0dXJuICd0cnVuaycKKyAg
ICBleGNlcHQ6CisgICAgICAgIHBhc3MKKyAKICAgICB0cnk6Ci0gICAgICAgIHdpdGggb3Blbigi
JXMvLnN2bi9lbnRyaWVzIiAlIHBhdGgpIGFzIGY6Ci0gICAgICAgICAgICByZXZpc2lvbiA9IGYu
cmVhZGxpbmVzKClbM10uc3RyaXAoKQotICAgIGV4Y2VwdCAoSU9FcnJvciwgSW5kZXhFcnJvcik6
CisgICAgICAgIGlmIHdvcmRzLmluZGV4KCJicmFuY2hlcyIpID49IDA6CisgICAgICAgICAgICBy
ZXR1cm4gd29yZHNbd29yZHMuaW5kZXgoImJyYW5jaGVzIikrMV0KKyAgICBleGNlcHQ6CiAgICAg
ICAgIHBhc3MKLSAgICByZXR1cm4gcmV2aXNpb24KKworICAgIHRyeToKKyAgICAgICAgaWYgd29y
ZHMuaW5kZXgoInRhZ3MiKSA+PSAwOgorICAgICAgICAgICAgcmV0dXJuIHdvcmRzW3dvcmRzLmlu
ZGV4KCJ0YWdzIikrMV0KKyAgICBleGNlcHQ6CisgICAgICAgICBwYXNzCisgICAgcmV0dXJuICI8
dW5rbm93bj4iCisKK2RlZiBiYXNlX2dldF9tZXRhZGF0YV9zdm5fcmV2aXNpb24ocGF0aCwgZCk6
CisgICAgY21kPSJjZCAiK3BhdGgrIjsgc3ZuIGluZm98YXdrICcvXlJldmlzaW9uOi97cjE9JDJ9
Oy9eTGFzdCBDaGFuZ2VkIFJldjove3IyPSQ0fTtFTkR7cHJpbnRmIFwiJXMtJXNcIixyMSxyMjt9
JyIKKyAgICByZXZpc2lvbiA9IG9zLnBvcGVuKGNtZCkucmVhZCgpCisgICAgaWYgcmV2aXNpb246
CisgICAgICAgIHJldHVybiByZXZpc2lvbgorICAgIHJldHVybiAiPHVua25vd24+IgorIAogCiBk
ZWYgYmFzZV9nZXRfbWV0YWRhdGFfZ2l0X2JyYW5jaChwYXRoLCBkKToKICAgICBpbXBvcnQgYmIu
cHJvY2Vzcwo=

--_004_BLUPR0201MB1553A0AEA355EAAC33EABD5CF7010BLUPR0201MB1553_--
