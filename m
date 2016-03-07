Return-Path: <tarcuri@androcs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36EFEE00833; Mon,  7 Mar 2016 08:27:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9163 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Mar 2016 08:27:46 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0104.outbound.protection.outlook.com [65.55.169.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8B8E0073D
	for <poky@yoctoproject.org>; Mon,  7 Mar 2016 08:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=androcs.onmicrosoft.com; s=selector1-androcs-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=OBHYKlwooIsEz/wQjB8A9XBJc3l5ClDWutzAP6aq5uo=;
	b=FGDYhV6cXNz2/PErsvxy2jCwt11LlPn1hiVw9vAo+2mdd4QXcbPE7q4NH2v2WLJaN9OchmlEEVnP5hwA0LWNTWVLbmzqeoskeWglQMXL8iMwBB/BmunIoFKJ8uWtX5fC8OsNwJ9cWbokWZN/BCJseHSLO8Y3FfW0tP3Ao2fl250=
Received: from BLUPR20MB0020.namprd20.prod.outlook.com (10.160.186.142) by
	BLUPR20MB0019.namprd20.prod.outlook.com (10.160.186.141) with Microsoft
	SMTP Server (TLS) id 15.1.415.20; Mon, 7 Mar 2016 13:55:00 +0000
Received: from BLUPR20MB0020.namprd20.prod.outlook.com ([10.160.186.142]) by
	BLUPR20MB0020.namprd20.prod.outlook.com ([10.160.186.142]) with mapi id
	15.01.0415.024; Mon, 7 Mar 2016 13:55:01 +0000
From: Thomas Arcuri <tarcuri@androcs.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: fresh poky clone build fails when recipe chown's files during
	do_install (tzdata_2016a.bb)
Thread-Index: AQHReHgAV5fWRC1q7k6BgRUHx84Dug==
Date: Mon, 7 Mar 2016 13:55:00 +0000
Message-ID: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=androcs.com;
x-originating-ip: [50.75.127.202]
x-microsoft-exchange-diagnostics: 1; BLUPR20MB0019;
	5:jsrCaaDz94Y8ZAEsDa5GACbUby4FaMoqd18C4ispluka9vj7M/rro/slnIFzMosmZjX+LjaPTsDWRoyT9t/X/FwCO9Y18zAe9atjSvOJExWHo49EDI6F4wjoaXg+Tm9zx1fYSDSLqJn8LeBGbzQDKA==;
	24:PWZizKNbbCVwR/uX4ZmigZCpmW28FH69RPqixwQZpMsc4V3g6dkPioW6q3fiNx8yHzU6Op1zjtgmRzd57K+EqR4oeZJDyjTX5m1vfhMmL7Q=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR20MB0019;
x-ms-office365-filtering-correlation-id: a1170cf2-a886-450a-f1ed-08d3469013ed
x-microsoft-antispam-prvs: <BLUPR20MB00190CD321DFE4DEB64ED398B9B10@BLUPR20MB0019.namprd20.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BLUPR20MB0019; BCL:0; PCL:0; RULEID:; SRVR:BLUPR20MB0019; 
x-forefront-prvs: 087474FBFA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(189998001)(107886002)(92566002)(76576001)(110136002)(86362001)(19580395003)(19625215002)(74316001)(54356999)(50986999)(19627405001)(5003600100002)(5002640100001)(77096005)(66066001)(106116001)(1730700002)(1096002)(33656002)(2900100001)(5004730100002)(450100001)(16236675004)(87936001)(1220700001)(40100003)(3846002)(586003)(6116002)(102836003)(3660700001)(3280700002)(2906002)(5008740100001)(10400500002)(2501003)(229853001)(81166005)(2351001)(99286002)(122556002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR20MB0019;
	H:BLUPR20MB0020.namprd20.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: androcs.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2016 13:55:00.9217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4c39a0d3-7bcb-44c4-80ca-b25159279de7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR20MB0019
Subject: fresh poky clone build fails when recipe chown's files during do_install (tzdata_2016a.bb)
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
X-List-Received-Date: Mon, 07 Mar 2016 16:27:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10BLUPR20MB0020namp_"

--_000_BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10BLUPR20MB0020namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

After cloning a fresh copy of poky on the jethro branch I ran the following=
 to start the build:


source oe-init-build-env

bitbake core-image-minimal


A task under the meta/recipes-extended/tzdata directory failed during the d=
o_install step when it apparently attempted to chown the files to root.


ERROR: Task 1303 (/storage/home/tarcuri/src/stmp/zynq/jethro/poky/meta/reci=
pes-extended/tzdata/tzdata_2016a.bb, do_install) failed with exit code '1'


As I understand it is supposed to use pseudo to do this - I was running the=
 commands as a normal un-privileged user. This was a fresh clone of poky an=
d did not include any other configurations or added layers. Below is an exc=
erpt from the log file.


DEBUG: Executing shell function do_install
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/localtime': Oper=
ation not permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/timezone': Opera=
tion not permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc': Operation not =
permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/J=
apan': Operation not permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/N=
Z-CHAT': Operation not permitted


...


chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo':=
 Operation not permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share': Operatio=
n not permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr': Operation not =
permitted
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image': Operation not perm=
itted
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_install (log file is located at /storage/home/ta=
rcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-=
r0/temp/log.do_install.9588)


--_000_BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10BLUPR20MB0020namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>After cloning a fresh copy of poky on the jethro branch I ran the follow=
ing to start the build:</p>
<p><br>
</p>
<p>source oe-init-build-env</p>
<p>bitbake core-image-minimal</p>
<p><br>
</p>
<p>A task under the meta/recipes-extended/tzdata directory failed during th=
e do_install step when it apparently attempted to chown the files to root.<=
/p>
<p><br>
</p>
<p>ERROR: Task 1303 (/storage/home/tarcuri/src/stmp/zynq/jethro/poky/meta/r=
ecipes-extended/tzdata/tzdata_2016a.bb, do_install) failed with exit code '=
1'<br>
</p>
<p><br>
</p>
<p>As I understand it is supposed to use pseudo to do this - I was running =
the commands as a normal un-privileged user. This was a fresh clone of poky=
 and did not include any other configurations or added layers. Below is an =
excerpt from the log file.</p>
<p><br>
</p>
<p>DEBUG: Executing shell function do_install<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/localtime': Oper=
ation not permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/timezone': Opera=
tion not permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc': Operation not =
permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/J=
apan': Operation not permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/N=
Z-CHAT': Operation not permitted<br>
</p>
<p><br>
</p>
<p>...</p>
<p><br>
</p>
<p>chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro=
/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinf=
o': Operation not permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share': Operatio=
n not permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr': Operation not =
permitted<br>
chown: changing ownership of '/storage/home/tarcuri/src/stmp/zynq/jethro/po=
ky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image': Operation not perm=
itted<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_install (log file is located at /storage/home/ta=
rcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-=
r0/temp/log.do_install.9588)<br>
<br>
</p>
</div>
</body>
</html>

--_000_BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10BLUPR20MB0020namp_--
