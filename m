Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.50])
 by mx.groups.io with SMTP id smtpd.web10.11885.1647964611311321468
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 08:56:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foresysinc.onmicrosoft.com header.s=selector2-foresysinc-onmicrosoft-com header.b=Dn2R94tM;
 spf=pass (domain: foresys.com, ip: 40.107.93.50, mailfrom: john.lemonovich@foresys.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNRThGPsjABEYK0sNhZoDXhvaEoLtowxHUt4325piTXgs41In5LfMsKcPL68zS5OJ334IMp+ePEYl2qT54C9iM0OuQZ9AHJOb29NNw7ktdtG3i72kZg28Zq1oHdDXbRxqrbplQ6zP574D5w9BwPRSx39dJHB+zCs0uiTdtWJWfmvNbRaTL6entLWXER15eqAN2Mnk4vyhlRFZFQPe0BJlhfO6kKSeDvkVC9M9eLzWnNcv/ZqVThfIIb138SgdM080GDyDJy8UZ1WePx7xvFZyeKroDQublgkThVpffg5OvUYD9Hg9r6U23YohJUyzkEDh3zDKx/pyka1b2x+ONeZ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrOt4vDBLN8Xgtfw3b4uk5PfV1ItMIF77T2CpdSna5w=;
 b=WaAI60s+hRRU5HX2zoMilbWbkhrEBvgtniI1xiCr7iyPaaBUcPCxoxsAYJjVg6mCKVvQTRlue3yaOb5kSs6qRZgZK7EU9Lgxi81KltqTyPygVHkwmmu7MtbwGfVCTycM4MFQBHoouR3GUluVWbnepQ15iKdb//kHksvL1WJ0a1TMKRnZ7m9CMdM/JgYQWF4U+w6MMzOS/JIXSBaIK5vdUdGbgDMvjfioqCr2rD/2AKMuPKRw3KxWFF+ZE7nFUyUNKJ6Wsk4/97q55kUXGbYveGrruj6bpiInl8Cj8EcHKo1qD8UlmU5T/yhb4qbNQuwm3Kx6Yfg2pR6adYJsaxpejw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=foresys.com; dmarc=pass action=none header.from=foresys.com;
 dkim=pass header.d=foresys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Foresysinc.onmicrosoft.com; s=selector2-Foresysinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WrOt4vDBLN8Xgtfw3b4uk5PfV1ItMIF77T2CpdSna5w=;
 b=Dn2R94tMvwmyJPAHMX6+99PsZYIJKCHdz5S5tENJ9liOZItOcdVP7oAPv1AxFSjYjb92f7pYLfFET8TBa4U4Y3e+0O1JOdx4IFJvtSopdivZlJIqjplIczr9j+dxXc6LRLrS2QYQjhn1z08zXcOfBPChrTo8+v9Kr6BZxAZlP9I=
Received: from MN2PR11MB3887.namprd11.prod.outlook.com (2603:10b6:208:156::14)
 by PH0PR11MB5206.namprd11.prod.outlook.com (2603:10b6:510:3f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 22 Mar
 2022 15:56:47 +0000
Received: from MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30]) by MN2PR11MB3887.namprd11.prod.outlook.com
 ([fe80::6c07:33c5:5a87:4b30%4]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 15:56:47 +0000
From: john.lemonovich@foresys.com
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Topic: ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf
Thread-Index: Adg+BWxnSx0rHyT7Q0WLXKcK19eJQw==
Date: Tue, 22 Mar 2022 15:56:47 +0000
Message-ID: 
 <MN2PR11MB38872A8ACCBBF121A1D4441BE1179@MN2PR11MB3887.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=foresys.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4face4a1-7280-4cf9-d197-08da0c1c9221
x-ms-traffictypediagnostic: PH0PR11MB5206:EE_
x-microsoft-antispam-prvs: 
 <PH0PR11MB5206E7C6600F469684A4CA48E1179@PH0PR11MB5206.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2uPEdjvm+jthADWNcClNK2hPmJp70AAsV8kKwiRLbR+bchRPd768ohjMlR46mhaQzLHd7PoR6DcFiQ/YTonP5GJt6vA5nno1N8TJ0hfxooZsh9tYj3+k0sauR+m14lHY8Ke/2DAEAOjrK0/FBBGZO8/biYsksirArBf3rrkfJEWhB29mZXSSPA/5DH6otXQr0D3SCYLOYJI2xmdY3/HEItQldcFZuFT++jc61TB/Hhi04RPJFh6PKOpqL0tD4jiFL8fiT9XayVi9ZrJWBzg2lXjWkHmErpmiPJ+AkRzgp3iNAMjVrDJYVRrfMakHeyXOgi1MJU/iMbpE9LntrTk/M+aCKYsGFsWlBfIB/7lONu5TR+FsbvTGFJnkf79LNzpoXdPuwQDxkCZtIw3EIpB1WelB+/8IXuYACedIpcYHxexpAFL45N6kGy3FmOx/W9Rq/+Lt5f6N8Qv25rl5seXvOMbe6k1Br/TtF2tPIlK4efG39qI3N5q5OknlKiLzCsknnYyMkp/MCCwkkzkFTV1Uv9x/DcEPPRLecfxlBit+7cEV4q7q4UFsl3t4Jp39teZlqpfS9HM9A+FelAspd1QhOnnvpbzpgoNnU91SdNwAcDunUkgUCXDXH++5M7O/T+NlbWKFseQUDNIqmc6g1ejqBFM7teCzDw5rxt1hWZRLRUzcMoXrcIZYvEC+WiZpxCKNENbEYwF1bU/1RNUdTV8D1Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3887.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(346002)(136003)(39830400003)(366004)(376002)(396003)(7696005)(9686003)(86362001)(2906002)(6506007)(38100700002)(316002)(6916009)(122000001)(5660300002)(71200400001)(38070700005)(9326002)(52536014)(8936002)(44832011)(508600001)(64756008)(66446008)(8676002)(66476007)(76116006)(186003)(66946007)(66556008)(26005)(33656002)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?e3BEMNbeNcuZi0JP4RiYN8WiFbGO2g39O4iNjGI0aeZAYKHmmRJc/kmCxH+r?=
 =?us-ascii?Q?M1MwuuMQeA8w32DmkKiygCG6LC9hT36OabZmeNSUWLR0aJ+sh60bj3HHwX+D?=
 =?us-ascii?Q?81wVWXTyNXP906ORCVneCJ66UaI+AbfNC+IeA0NltI8cG9KPyn36gK0+64YG?=
 =?us-ascii?Q?dIXH4bt3m5YAe22/PUh3SRsmn803G/vIVY92uH/NkHo7roGnRmdT60XwHibe?=
 =?us-ascii?Q?xBJRYhmEr1qn96+q1/hZ/8G96mHzN/PKX2fPmc8iv3yqOY0Ys60Ucb1EdbNo?=
 =?us-ascii?Q?EkpXhCnrUwuFFp6lPWi/4xjwsHursLtj7d0DKm8nck+VUZUbnKQQAllJa4zP?=
 =?us-ascii?Q?fxjmBu2KuEM8FZBi4tUUMlhKFJTzQhQenvBOCegELHK+Gv2KzYf0mSBIcuQD?=
 =?us-ascii?Q?SN5u0619hDeIdrdlGNE/IFmioJkGk5NJaN7GhdXJpyYsykHyFHsttMkHy/vQ?=
 =?us-ascii?Q?Nun0KRgbHjtYH+IukQMZ/Hvi9qpCUX0BtY9mEestn6DoLEVCFLar8Y0jVoW8?=
 =?us-ascii?Q?X/FbNgq8nKfA0a+jKLzKE97urql8T7Z1gUlByEgykSSQyt1SiXJkzq/pzjBS?=
 =?us-ascii?Q?lpJ++MrNiRfTSw4zgWpT+sTYSfG3LjpHemhv80w76GdR+qQAOh4ldMZOzqcK?=
 =?us-ascii?Q?EoJbxQn8pocaepIzYXyb+rv0DKqT3rh5J2Qv4g/wDSI9jWSFre1oOIGLEmC9?=
 =?us-ascii?Q?n0CU74Otfy1E5e0i0gFYB0yzAL1Grp+fGYBAnUjUKxBrFgkNxmFAdBVWPzeY?=
 =?us-ascii?Q?H3e0dX7Jli+iMNDJLtcrBvmeO7Xp8BfZEQKl774H84/SiHk2YxyZl0uj1M/F?=
 =?us-ascii?Q?/NnvEINI6teSU1KGDbJcJ1QwY86vSWPXiNwrjlZy3A/LXhea9GyFK8aP/+62?=
 =?us-ascii?Q?Z+Wr4jZ6vglbRXbFseyFtHXo8LIzq3mYtvt4tENWHyiiNHTtHz2FmW2gZriN?=
 =?us-ascii?Q?TEfMOaDJNPzNuGbVh2sllkk/Rs8waZYUUjjCK/oQ04Y43VmCHfXoiWaeIv7v?=
 =?us-ascii?Q?lk0GTmzRorUj8iKo0SalI3tD4BqHAYEXuDKAduLjDgR3TsDITEBAwHYdZ3Ue?=
 =?us-ascii?Q?gqwHnup1tNl0l33FRnAkswG+iYGSv3aOD3yIXlQw3C6soGgkZOApHF48Y7/k?=
 =?us-ascii?Q?Nsrf9iEhtvHTvzQh0joJKLSwBvtmoLF5B4hojVVJ437o/A10Z89vFERd1gSa?=
 =?us-ascii?Q?00FiV2tvAf01BKGv/j5yqdWP3X1+OU9uETLcuwT+1eY0YwO2QgqNcnZbwhTN?=
 =?us-ascii?Q?oaarVroZBtpW8zxLrzRKO/ZQadm+R9/1b1k4wsz0DkwmJhXlJ5tioamJLyJF?=
 =?us-ascii?Q?TyEZX6OkJW1j/crbY7M/4i7PIst+wjN1AMru5bhzXMnefuxOtXazWuP384fy?=
 =?us-ascii?Q?TYHUSddKQj0xx5o9iNxrof/RV15VZEV6QE9XaCaxqquCI3Mt7T8taYZ6g/xO?=
 =?us-ascii?Q?8NqYA8D+ekqeS0c1lsV2KqepUW7Ei+zcjpABMWXS8QgiqNAAPvtwdg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: foresys.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3887.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4face4a1-7280-4cf9-d197-08da0c1c9221
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2022 15:56:47.5091
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1490b116-3c42-45c3-abd4-2137a151eb3e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IDzgrLtdtM7iHlJqezXwXNQb8faBXg3+gj2+Xf0M+9qyrIms5wpNJgUQoGiUoL/0b0WTN2yeqGayCoAg2FN5nY6YTyY17/lmP0Kc1rj3/rE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5206
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR11MB38872A8ACCBBF121A1D4441BE1179MN2PR11MB3887namp_"

--_000_MN2PR11MB38872A8ACCBBF121A1D4441BE1179MN2PR11MB3887namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hello,

I'm relatively new to working with Yocto / Poky and I'm trying to build a r=
ootfs for an Arria10 Intel FPGA, according to the exact steps from Intel.  =
My host machine is Ubuntu 18.04, and I am running into an error and was won=
dering how/where to start with debugging this?  I read another post on here=
 where this error was resolved in that case with adding  ALLOW_EMPTY_${PN} =
=3D "1"

Is this the proper thing to do in this case, and if so, where do I add this=
?

Here is the command and the error message:

bitbake core-image-minimal

ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command '=
/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image=
-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo =
-y -c /us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core=
-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/us/jle=
m/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minima=
l/1.0-r0/rootfs/etc/yum.repos.d --installroot=3D/us/jlem/L3_rootfs/a10/buil=
d/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs --se=
topt=3Dlogdir=3D/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gn=
ueabi/core-image-minimal/1.0-r0/temp --repofrompath=3Doe-repo,/us/jlem/L3_r=
ootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-=
r0/oe-rootfs-repo --nogpgcheck install packagegroup-core-boot run-postinsts=
' returned 1:
DNF version: 4.8.0

Thank you,
John

--_000_MN2PR11MB38872A8ACCBBF121A1D4441BE1179MN2PR11MB3887namp_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m relatively new to working with Yocto / Pok=
y and I&#8217;m trying to build a rootfs for an Arria10 Intel FPGA, accordi=
ng to the exact steps from Intel.&nbsp; My host machine is Ubuntu 18.04, an=
d I am running into an error and was wondering how/where
 to start with debugging this?&nbsp; I read another post on here where this=
 error was resolved in that case with adding &nbsp;ALLOW_EMPTY_${PN} =3D &#=
8220;1&#8221;&nbsp; &nbsp;&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this the proper thing to do in this case, and if =
so, where do I add this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is the command and the error message:<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">bitbake core-image-minimal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: core-image-minimal-1.0-r0 do_rootfs: Could no=
t invoke dnf. Command '/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-l=
inux-gnueabi/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v=
 --rpmverbosity=3Dinfo -y -c /us/jlem/L3_rootfs/a10/build/tmp/work/arria10-=
poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/dnf/dnf.conf
 --setopt=3Dreposdir=3D/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-l=
inux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/yum.repos.d --installroot=
=3D/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-poky-linux-gnueabi/core-im=
age-minimal/1.0-r0/rootfs --setopt=3Dlogdir=3D/us/jlem/L3_rootfs/a10/build/=
tmp/work/arria10-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp
 --repofrompath=3Doe-repo,/us/jlem/L3_rootfs/a10/build/tmp/work/arria10-pok=
y-linux-gnueabi/core-image-minimal/1.0-r0/oe-rootfs-repo --nogpgcheck insta=
ll packagegroup-core-boot run-postinsts' returned 1:<o:p></o:p></p>
<p class=3D"MsoNormal">DNF version: 4.8.0<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you,<o:p></o:p></p>
<p class=3D"MsoNormal">John<o:p></o:p></p>
</div>
</body>
</html>

--_000_MN2PR11MB38872A8ACCBBF121A1D4441BE1179MN2PR11MB3887namp_--
