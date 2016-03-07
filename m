Return-Path: <tarcuri@androcs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26D5E0083D; Mon,  7 Mar 2016 14:02:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0141.outbound.protection.outlook.com [207.46.100.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA9E1E0077F
	for <poky@yoctoproject.org>; Mon,  7 Mar 2016 14:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=androcs.onmicrosoft.com; s=selector1-androcs-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XQRdZYvRaAF1CU2veGaso/1wnlIHIJrKgZUowoctRZc=;
	b=FgXWMJU6Yl3x+ElV7sLy8eSa98zzoOMi/vBuk3X+ztui3VZEoknkZEJ6eV2rZkLz3ujviEtHE4Tb0/5LLNG6Ng0WgDWq1QhjDzXSG8GieVxUYxZtHa5vZ8R6iEgP5IUqmXkjAVNiB1J+yVICai00kdXbuD6MQy4RRfSNjgLJgQE=
Received: from BLUPR20MB0020.namprd20.prod.outlook.com (10.160.186.142) by
	BLUPR20MB0020.namprd20.prod.outlook.com (10.160.186.142) with Microsoft
	SMTP Server (TLS) id 15.1.415.20; Mon, 7 Mar 2016 21:47:00 +0000
Received: from BLUPR20MB0020.namprd20.prod.outlook.com ([10.160.186.142]) by
	BLUPR20MB0020.namprd20.prod.outlook.com ([10.160.186.142]) with mapi id
	15.01.0415.024; Mon, 7 Mar 2016 21:47:00 +0000
From: Thomas Arcuri <tarcuri@androcs.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [poky] fresh poky clone build fails when recipe chown's files
	during do_install (tzdata_2016a.bb)
Thread-Index: AQHReHgAV5fWRC1q7k6BgRUHx84Dup9OLN8AgAAgtPaAABtLAIAAFGdtgAAC0oCAAAPWhQ==
Date: Mon, 7 Mar 2016 21:47:00 +0000
Message-ID: <BLUPR20MB002015533438C4236ADED307B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
References: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
	<CAJTo0LaiG5RD14Cvv=sS=8sPnoF2HzqduTk1avY-t1hO32RBEA@mail.gmail.com>
	<BLUPR20MB00209235147FEF3DE7D88756B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
	<CAJTo0La89VVOk6vvky880rh5Q45KO2DnRnXy0QsZ290Ag=z+5w@mail.gmail.com>
	<BLUPR20MB0020EA93BE0EF0850FA85F5AB9B10@BLUPR20MB0020.namprd20.prod.outlook.com>,
	<CAJTo0LYOZr+rvuGFVz-_ZNziEwsCwmupjnzjMyO9i5Q-SAjV9w@mail.gmail.com>
In-Reply-To: <CAJTo0LYOZr+rvuGFVz-_ZNziEwsCwmupjnzjMyO9i5Q-SAjV9w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=androcs.com;
x-originating-ip: [50.75.127.202]
x-microsoft-exchange-diagnostics: 1; BLUPR20MB0020;
	5:X/+Cc1Mjrpi8sFIEH1mP/GttFmnWyzsIcw29U6PZ1kvIf4d76Cfxh2+p9ITBIOwKB/PqWhRzCEwHwxTIMxhg1J/CjinEarOT7mp9gevGD4qBbBCD7Cv47vl2qHdX6HwSfsF/kBVpxwKA0U6mFvb3fQ==;
	24:dMPmpCA4QU7Sdt7pOR5XsddNYysjgQURPwHhvNPc1LocLgq2kzUrBlQjgLjL1TuNPBmLUNptYk/gQ04ZiJNXYYnE9++qU2aqVnGgGKnH0+0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR20MB0020;
x-ms-office365-filtering-correlation-id: 65234b83-e009-4518-444b-08d346d20378
x-microsoft-antispam-prvs: <BLUPR20MB0020D5026279CFCC9546FD10B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BLUPR20MB0020; BCL:0; PCL:0; RULEID:; SRVR:BLUPR20MB0020; 
x-forefront-prvs: 087474FBFA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(377454003)(164054003)(24454002)(40100003)(19580395003)(19580405001)(2906002)(87936001)(5008740100001)(50986999)(122556002)(99286002)(77096005)(66066001)(4326007)(74316001)(76176999)(76576001)(33656002)(19625215002)(11100500001)(54356999)(106116001)(19627405001)(5890100001)(86362001)(586003)(10400500002)(5004730100002)(5002640100001)(189998001)(3900700001)(2950100001)(1220700001)(1096002)(81166005)(5003600100002)(16236675004)(6116002)(3660700001)(110136002)(92566002)(93886004)(3846002)(102836003)(3280700002)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR20MB0020;
	H:BLUPR20MB0020.namprd20.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: androcs.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2016 21:47:00.2161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4c39a0d3-7bcb-44c4-80ca-b25159279de7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR20MB0020
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fresh poky clone build fails when recipe chown's files during do_install (tzdata_2016a.bb)
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
X-List-Received-Date: Mon, 07 Mar 2016 22:02:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR20MB002015533438C4236ADED307B9B10BLUPR20MB0020namp_"

--_000_BLUPR20MB002015533438C4236ADED307B9B10BLUPR20MB0020namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I talked to my IT guy and he said that it is a standard ext4 mount, but tha=
t the disk is encrypted. I have no idea on how that would impact a build, b=
ut I am asking him to look into it further. When I run mount I get this in =
the output:

/dev/mapper/main-storage on /storage type ext4 (rw)


Still waiting on an answer from the IT guy, but it looks like a normal ext4=
 filesystem, except mounted from an encrypted drive.


Thanks,

Tom


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Monday, March 7, 2016 4:30 PM
To: Thomas Arcuri
Cc: poky@yoctoproject.org
Subject: Re: [poky] fresh poky clone build fails when recipe chown's files =
during do_install (tzdata_2016a.bb)


On 7 March 2016 at 21:21, Thomas Arcuri <tarcuri@androcs.com<mailto:tarcuri=
@androcs.com>> wrote:

I ran bitbake -DDD tzdata, attached is the complete log. I noticed some lin=
es referencing fakeroot and pseudo, but again not sure how to interpret thi=
s. I was able to build this on a fresh Debian virtual machine, but this is =
failing on my lubuntu setup.

Oh, can you verify that the disk you're building on (/storage/home) is a st=
andard filesystem and not something fun like a samba mount, FAT partition, =
or something.

Cheers
Ross

--_000_BLUPR20MB002015533438C4236ADED307B9B10BLUPR20MB0020namp_
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
<p>I talked to my IT guy and he said that it is a standard ext4 mount, but =
that the disk is encrypted. I have no idea on how that would impact a build=
, but I am asking him to look into it further. When I run mount I get this =
in the output:<br>
<br>
/dev/mapper/main-storage on /storage type ext4 (rw)</p>
<p><br>
</p>
<p>Still waiting on an answer from the IT guy, but it looks like a normal e=
xt4 filesystem, except mounted from an encrypted drive.</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Tom<br>
</p>
<p><br>
</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> Burton, Ross &lt;ros=
s.burton@intel.com&gt;<br>
<b>Sent:</b> Monday, March 7, 2016 4:30 PM<br>
<b>To:</b> Thomas Arcuri<br>
<b>Cc:</b> poky@yoctoproject.org<br>
<b>Subject:</b> Re: [poky] fresh poky clone build fails when recipe chown's=
 files during do_install (tzdata_2016a.bb)</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 7 March 2016 at 21:21, Thomas Arcuri <span di=
r=3D"ltr">
&lt;<a href=3D"mailto:tarcuri@androcs.com" target=3D"_blank">tarcuri@androc=
s.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex; border-left:1=
px #ccc solid; padding-left:1ex">
<p>I ran bitbake -DDD tzdata, attached is the complete log. I noticed some =
lines referencing fakeroot and pseudo, but again not sure how to interpret =
this. I was able to build this on a fresh Debian virtual machine, but this =
is failing on my lubuntu setup.</p>
<p></p>
</blockquote>
</div>
<br>
Oh, can you verify that the disk you're building on (/storage/home) is a st=
andard filesystem and not something fun like a samba mount, FAT partition, =
or something.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Cheers</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BLUPR20MB002015533438C4236ADED307B9B10BLUPR20MB0020namp_--
