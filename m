Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89232E00D45; Mon,  2 Apr 2018 06:17:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0081.outbound.protection.outlook.com [104.47.101.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA66CE007D4
	for <poky@yoctoproject.org>; Mon,  2 Apr 2018 06:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpitc.onmicrosoft.com; 
	s=selector1-kpit-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Pxxrdzzdy5vRtYZghOPjxh+zJIlfPi7DCWxL+mQyAtM=;
	b=H+ZZsXXVSqoXHKUvOCkbG3ruAyLngtiEPusjYZ24rBEiB5ZQ0i1cCUluf1VZ8mnlcfDabBMF+jXMN30HcNVAD7fyU+Ong6xD3HGyR9WtONDV9xgL/vlJVVchjADOicD0HrzakUCTZp89gWsbqxutsv6XF+CNhRVnMMY1HoBP0/w=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0428.INDPRD01.PROD.OUTLOOK.COM (10.164.151.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.631.10; Mon, 2 Apr 2018 13:02:35 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197]) by MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::9933:6c3b:3ec:9197%13]) with mapi id 15.20.0631.013;
	Mon, 2 Apr 2018 13:02:34 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with
	dropbear provided by dropbear-2017.75-r0.i586
Thread-Index: AQHTymcJ2wYEhDAgqUC51MDYFOel6aPtcMh6
Date: Mon, 2 Apr 2018 13:02:34 +0000
Message-ID: <MAXPR01MB0348CE087E02E7FA2D8A799391A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0428;
	7:5rjQe+ZkZ3Z1POp4AQ+6vSHzD82kgAgIZnCdEbgX0NnKRE12vfB03cfrEw/wbUA0dl2MBHVqh0nPg77AyUdyuvPpVQwza0ql8gPpcC8+WejxJM6pWyGrP1hVkCOH7AzqCO3AmT2r0wbYyIu0lsm9pf0pa1lepN3El7Q0N7OrEitBAXwezuzRJwG10OCPUDQsvlVfAHY5HuchNvpFn7VUw8USZHDj0t6vBcCQXwvD0V1mTYKKb+i+poYS9Uev/MFv
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9e5257f4-3cb8-4727-6fa7-08d5989a00d1
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4604075)(3008032)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:MAXPR01MB0428; 
x-ms-traffictypediagnostic: MAXPR01MB0428:
x-microsoft-antispam-prvs: <MAXPR01MB04284D735C3F2144AAC368D891A60@MAXPR01MB0428.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231221)(944501327)(52105095)(6055026)(6041310)(20161123560045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:MAXPR01MB0428; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0428; 
x-forefront-prvs: 0630013541
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39860400002)(39380400002)(396003)(366004)(346002)(376002)(189003)(199004)(478600001)(8936002)(19627405001)(72206003)(81166006)(86362001)(2940100002)(105586002)(5660300001)(8676002)(14454004)(97736004)(476003)(7696005)(25786009)(66066001)(486005)(1730700003)(81156014)(2351001)(486005)(2900100001)(55016002)(446003)(3280700002)(54896002)(7736002)(5640700003)(74316002)(59450400001)(5890100001)(53936002)(186003)(6506007)(76176011)(5250100002)(2906002)(2501003)(55236004)(3846002)(6116002)(99286004)(68736007)(33656002)(26005)(6606003)(3660700001)(106356001)(99936001)(102836004)(9686003)(6916009)(11346002)(316002)(6436002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0428;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: RybsFwUNiaNP2wYeGmWkgPTeE4xo1sENBy1w8znzk2Mf+ka6tRumHKaGaLN/42BuD05m6uvsb41VDzGkm5rAFUWkZDO/Oh9ivVuqb0zad5XjYff9nCtjPHDt2TPwA/NR3r9/mbX7wJbfMO7hce4soyvu7AwtOWW4mJqMwp1DiXcxevsTTvtqp+eY6btiP0b1DIts4qo722hE7STobDvvIiy8H7Hu+EQvRzIi/o7k0elN4VGbYssEt4nvhIZ96+aVnEU9gXm2cTHk7bm1VC7N1FC7l6j3jZ+F/VVQdzh0gU68nvuXtxED22E3e+sYodt3j+ZEon91RUgHbBZdfwgFn4dceTcr2JEtiZn0Vsfy5N5uR1q8blvysSD5VwH//SpjhjmGXmEehn7KyVs6YBWSfEDQUIy9uz9GdJC+E6ZDUlU=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e5257f4-3cb8-4727-6fa7-08d5989a00d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2018 13:02:34.7810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0428
Subject: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with dropbear provided by dropbear-2017.75-r0.i586
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
X-List-Received-Date: Mon, 02 Apr 2018 13:17:37 -0000
X-Groupsio-MsgNum: 11190
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_"

--_004_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_"

--_000_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,


I trying to build core-image-sato using yocto 2.5 with new package openssh.


Added openssh entry in the local.conf file as follows:

IMAGE_INSTALL_append =3D "openssh"


But facing some conflicts error. Please refer attached log file for more in=
formation.


Could you please help to resolve the issue. I need to use use openssh for s=
sh rather than dropbear.



Regards,

Aditya Tayade

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
Hi,
<div style=3D"color: rgb(0, 0, 0);">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quo=
t;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,=
&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">I trying to build core-image-sat=
o using yocto 2.5 with new package openssh.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Added openssh entry in the local=
.conf file as follows:<br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span>IMAGE_INSTALL_append =3D &=
quot;</span>openssh&quot;</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">But facing some conflicts error.=
 Please refer attached log file for more information.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Could you please help to resolve=
 the issue. I need to use use openssh for ssh rather than
<span>dropbear</span>.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade<br>
</p>
</div>
</div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_--

--_004_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_
Content-Type: text/plain; name="package_conflicts.txt"
Content-Description: package_conflicts.txt
Content-Disposition: attachment; filename="package_conflicts.txt"; size=2792;
	creation-date="Mon, 02 Apr 2018 10:37:16 GMT";
	modification-date="Mon, 02 Apr 2018 10:38:13 GMT"
Content-Transfer-Encoding: base64

RVJST1I6IGNvcmUtaW1hZ2Utc2F0by0xLjAtcjAgZG9fcm9vdGZzOiBDb3VsZCBub3QgaW52b2tl
IGRuZi4gQ29tbWFuZCAnL2hvbWUvYWRpdHlhL215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93
b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3JlY2lwZS1zeXNy
b290LW5hdGl2ZS91c3IvYmluL2RuZiAteSAtYyAvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVp
bGQtaGVsbG8vdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAt
cjAvcm9vdGZzL2V0Yy9kbmYvZG5mLmNvbmYgLS1zZXRvcHQ9cmVwb3NkaXI9L2hvbWUvYWRpdHlh
L215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3Jl
LWltYWdlLXNhdG8vMS4wLXIwL3Jvb3Rmcy9ldGMveXVtLnJlcG9zLmQgLS1yZXBvZnJvbXBhdGg9
b2UtcmVwbywvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvb2Utcm9vdGZzLXJlcG8gLS1p
bnN0YWxscm9vdD0vaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsv
cWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvcm9vdGZzIC0tc2V0b3B0
PWxvZ2Rpcj0vaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvdGVtcCAtLW5vZ3BnY2hlY2sg
aW5zdGFsbCBsb2NhbGUtYmFzZS1lbi11cyBsb2NhbGUtYmFzZS1lbi1nYiBvcy1yZWxlYXNlIGF1
dG9tYWtlIG1vc3F1aXR0byBnZGIgbGlic2FtcGxlcmF0ZTAgbGliZnJpYmlkaTAgbGlidXJjdSBs
dHJhY2UgbGliYXRvbWljLW9wcyBjbWFrZSBkZXZtZW0yIGxpYmdpZjcga3JiNSBycG0gbGlidGlu
eXhtbDItNSBweXRob24tZGJ1cyBiaXNvbiBsaWJ0b29sIGtiZCBrZXJuZWwtZGV2c3JjIHRjcGR1
bXAgb3BrZy1hcmNoLWNvbmZpZyBsaWJzcWxpdGUwIHN0cm9uZ3N3YW4gYXNpbyBoZHBhcm0gYWNw
aWQgdmxhbiBweXRob24tcHlnb2JqZWN0IGNvcmV1dGlscyBtbWMtdXRpbHMgZWdsaW5mby1mYiBn
bnUtY29uZmlnIGxpYmRuZXQgcnVuLXBvc3RpbnN0cyBmYnNldC1tb2RlcyBsaWJhY3BpMCBrZXhl
Yy10b29scyBwb2xraXQgZWJ0YWJsZXMgZ3BlcmZ0b29scyBuZnRhYmxlcyBkbmYgbGliYWlvMSBs
aWJ5YW1sLTAtMiBtZXNhIGxpYmljYWwgc21hcnRtb250b29scyBvcGVuc3NoIGljdSBsejQgbGli
anNvbi1jMyBvcGtnLXV0aWxzIGdpdCBib29zdCBpMmMtdG9vbHMgYnJpZGdlLXV0aWxzIGNjYWNo
ZSBwYWNrYWdlZ3JvdXAtYmFzZS1leHRlbmRlZCBsc29mIGF1dG9mcyBtdG9vbHMgbGludXgtZmly
bXdhcmUgcGVyZiBscnpzeiBwYWNrYWdlZ3JvdXAtY29yZS1ib290IGxpYnByb3RvYnVmMTUgZmlu
ZHV0aWxzIGN1cmwgcGFja2FnZWdyb3VwLWNvcmUtc3NoLWRyb3BiZWFyIHBhY2thZ2Vncm91cC1j
b3JlLXgxMS1zYXRvIGdjYy1zYW5pdGl6ZXJzIHBwcCBsaWJmdXNlMiBjYW51dGlscyBnZXR0ZXh0
IGxpYm5ld3QwLjUyIG1vempzIGxpYmF0YXNtYXJ0NCB1ZGlza3MyIHBzcGxhc2ggbGlicXJlbmNv
ZGU0IHBhY2thZ2Vncm91cC1jb3JlLXgxMS1iYXNlIG9wa2cgbGlieHNsdCBsaWdodHRwZCBsaWJk
YnVzLWdsaWItMS0yIGxpYmd1ZGV2LTEuMC0wIGxpYm5mdG5sNyBkYnVzLTEgbGlidXNiLTAuMS00
IGx1YSBsdHRuZy11c3QgbGlic29ja2V0Y2FuMiBuYW5vIGxpYmNncm91cCBsaWJzc2gyLTEgbGli
Y2hlY2sgaXcgbWFpbHggcHNldWRvIGhlbGxvJyByZXR1cm5lZCAxOgpBZGRlZCBvZS1yZXBvIHJl
cG8gZnJvbSAvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvYnVpbGQtaGVsbG8vdG1wL3dvcmsvcWVt
dXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Utc2F0by8xLjAtcjAvb2Utcm9vdGZzLXJlcG8KTGFz
dCBtZXRhZGF0YSBleHBpcmF0aW9uIGNoZWNrOiAwOjAwOjAxIGFnbyBvbiBNb24gMDIgQXByIDIw
MTggMDk6MjA6MTIgQU0gVVRDLgpFcnJvcjogCiBQcm9ibGVtOiBwYWNrYWdlIHBhY2thZ2Vncm91
cC1jb3JlLXNzaC1kcm9wYmVhci0xLjAtcjEubm9hcmNoIHJlcXVpcmVzIGRyb3BiZWFyLCBidXQg
bm9uZSBvZiB0aGUgcHJvdmlkZXJzIGNhbiBiZSBpbnN0YWxsZWQKICAtIHBhY2thZ2Ugb3BlbnNz
aC03LjZwMS1yMC5pNTg2IGNvbmZsaWN0cyB3aXRoIGRyb3BiZWFyIHByb3ZpZGVkIGJ5IGRyb3Bi
ZWFyLTIwMTcuNzUtcjAuaTU4NgogIC0gY29uZmxpY3RpbmcgcmVxdWVzdHMKKHRyeSB0byBhZGQg
Jy0tYWxsb3dlcmFzaW5nJyB0byBjb21tYW5kIGxpbmUgdG8gcmVwbGFjZSBjb25mbGljdGluZyBw
YWNrYWdlcyBvciAnLS1za2lwLWJyb2tlbicgdG8gc2tpcCB1bmluc3RhbGxhYmxlIHBhY2thZ2Vz
KQoKRVJST1I6IGNvcmUtaW1hZ2Utc2F0by0xLjAtcjAgZG9fcm9vdGZzOiBGdW5jdGlvbiBmYWls
ZWQ6IGRvX3Jvb3RmcwpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUv
YWRpdHlhL215d29yay9wb2t5L2J1aWxkLWhlbGxvL3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51
eC9jb3JlLWltYWdlLXNhdG8vMS4wLXIwL3RlbXAvbG9nLmRvX3Jvb3Rmcy40MDUwCkVSUk9SOiBU
YXNrICgvaG9tZS9hZGl0eWEvbXl3b3JrL3Bva3kvbWV0YS9yZWNpcGVzLXNhdG8vaW1hZ2VzL2Nv
cmUtaW1hZ2Utc2F0by5iYjpkb19yb290ZnMpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScKCgo=

--_004_MAXPR01MB0348CE087E02E7FA2D8A799391A60MAXPR01MB0348INDP_--
