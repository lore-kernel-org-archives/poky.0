Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.120])
 by mx.groups.io with SMTP id smtpd.web12.10013.1576173511041116824
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Dec 2019 09:58:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=R5ZnyTbX;
 spf=pass (domain: microsoft.com, ip: 40.107.94.120, mailfrom: shashank.sasidharan@microsoft.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+vFObJRthU4MODZBS/vkDoA56mZHBku9xDG/x04xm/8nF/I4F51P2vL1TGqNBvHVeqcaAEtHyhuZJbaGHjHhCFxgO4faw/UaCCJAfWjtqDK29DQ/t4SZvCj+IOgKzIsiQiT5nnIw2TTYp+1iFJ255QZn3IncB6B2x300e3W8RQZT6eePVNNGttRxygo3QGrhoMyqvb+gPN/GIvMnXSHmTHa5R6b6KD0EnYUcvRRqoyNPJCk7FYCZ2l5lWsmpgvtR/lzADs2Z1ztYSF1lbqQkrKmN9q8MBVVoTR1PxkOcE/Azzk/ww138YOKlrhIpb8bPTgfYlqCoAx+YYR6keOFFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K1+35g7Uw9mhsLunwzmI/dM7R0Q/TWnXqLZHI0t2lw=;
 b=kdi2fAnWixOX2vr4bwDLkZDnqm/2x/wHHsMUpSMpCkjSbgOWlxQS5PHtyeCNTOtLign4Ko9rOk+TrFJuM4qOOhk6cMPxwMS8kVW67iN+hoOjBXWVIhuyrlnfHY6xsDf5bGkzEJax9KV2g341Tem+FHQ9DOyDmxQBmwJ6xl3C/iOshDuanvkSGk+B7iuSmhjhM5k8KhCtN6lUz4XN8iGEdMBwfWc6t2XozfVKHAhgjX3cZy8c27kSfyq1VSTOBVw/1YUZCLauDOth/3rxX1TYlr8NaymzL38yFSggmqZkr8C6rjtwEVWeFnRdtV/f2TbclGlbptve206dJQGlRUNJBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9K1+35g7Uw9mhsLunwzmI/dM7R0Q/TWnXqLZHI0t2lw=;
 b=R5ZnyTbXOJIh9jl/4/Ma0taQ2TpOD5OqY4s0Px3J4AHayfq6kxyfk0am8ulTlQGn4k8H39qFmyh9nfXRmBEG0swwpKw5nuFQ1r+6EBgEcYkO3qqm8Ie2YhdyedJO88IBkKmf/9elqlLpz0NB/eVUfQVNagkMIAu5x5LVu/wTlXg=
Received: from DM6PR21MB1196.namprd21.prod.outlook.com (20.179.49.83) by
 DM6PR21MB1452.namprd21.prod.outlook.com (20.180.22.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.8; Thu, 12 Dec 2019 17:58:30 +0000
Received: from DM6PR21MB1196.namprd21.prod.outlook.com
 ([fe80::6055:54f1:48ee:f1c2]) by DM6PR21MB1196.namprd21.prod.outlook.com
 ([fe80::6055:54f1:48ee:f1c2%8]) with mapi id 15.20.2538.011; Thu, 12 Dec 2019
 17:58:29 +0000
From: "Shashank Sasidharan" <shashank.sasidharan@microsoft.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: files-in-package.txt Not Generated When SState Cache is Enabled
Thread-Topic: files-in-package.txt Not Generated When SState Cache is Enabled
Thread-Index: AdWxDBpCQDbzfoEFQu2cw2TjrHukkAACAlwg
Date: Thu, 12 Dec 2019 17:58:29 +0000
Message-ID: 
 <DM6PR21MB1196CDAC7AB47D5E83447060F2550@DM6PR21MB1196.namprd21.prod.outlook.com>
References: 
 <DM6PR21MB1196F77F7A95A57EA59A5050F2550@DM6PR21MB1196.namprd21.prod.outlook.com>
In-Reply-To: 
 <DM6PR21MB1196F77F7A95A57EA59A5050F2550@DM6PR21MB1196.namprd21.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=shsasidh@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-12-12T16:49:21.7341241Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=29f8dbe6-1dce-40bf-99be-240805b8386a;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
x-ms-publictraffictype: Email
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Shashank.Sasidharan@microsoft.com; 
x-originating-ip: [131.107.160.210]
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1542aba1-c2f4-486c-60ca-08d77f2ce562
x-ms-traffictypediagnostic: DM6PR21MB1452:
x-microsoft-antispam-prvs: 
 <DM6PR21MB14524AA95660F0FB08E1D99AF2550@DM6PR21MB1452.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(346002)(136003)(366004)(376002)(39860400002)(199004)(189003)(76116006)(8990500004)(8936002)(33656002)(66476007)(66556008)(66946007)(66446008)(6506007)(2940100002)(316002)(186003)(9326002)(64756008)(71200400001)(9686003)(26005)(6916009)(52536014)(8676002)(4744005)(5660300002)(86362001)(2906002)(55016002)(81156014)(7696005)(10290500003)(81166006)(478600001);DIR:OUT;SFP:1102;SCL:1;SRVR:DM6PR21MB1452;H:DM6PR21MB1196.namprd21.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NByTop0+z650vHH/Tyw1mLBB2s/Lj3lPNvEMifEovVv0DfJ00f+4zWzZniW4Q0cSEAynloHEVt6mPrzijdwmn1SYmhGiOIzHeHDSI/PKDJ4jFcgnOBQ6se1A0o3OTRh6tXFki6a+IKPQs+6q5q+AJBHNoyCJu8ydQObjIG9aUSptoFHqD+6Dm4LL+tFt5DBrK0VmmuuNFyrdP4EF4uUO0RGAWQlHfdm5aPNc3bwLErm6uHI4u7hkVXic7Kr4DOb+mb4A7eefiDc9wK8HBBRZuOxj3+TeW4V1jL4+ZZ2Nrcur7hxG793RQIeTg3cKXTInwxWNeaOLSnkHb8hCwq5jOturYCSvYZ4rps9QnlOZuL7sfFkle1SCYUiDNTTpY/2fsm9e4Jxfwi8fx4oHztstN3QY72qyvgsfp4IJjUHfrklLBxchmtDDDqYMEGW1w7Bv
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1542aba1-c2f4-486c-60ca-08d77f2ce562
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 17:58:29.8483
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lEUL4WVmLqR4zNJ5UH/FJdPbD/KI+lT8B1XzhYWrEqq6Z/37tCyGIRob+JCLrae7FP69gS8/z0cmRWKpLVr8EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR21MB1452
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR21MB1196CDAC7AB47D5E83447060F2550DM6PR21MB1196namp_"

--_000_DM6PR21MB1196CDAC7AB47D5E83447060F2550DM6PR21MB1196namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am working on a project where I need to use files-in-package.txt in the b=
uildhistory directory to extract the list of files installed by each packag=
e. I was wondering why the files-in-package.txt files don't get generated w=
hen an image is built using shared state cache. It would be really helpful =
if there's a way to generate these files even when shared state cache is us=
ed.

Thanks,
Shashank Sasidharan

--_000_DM6PR21MB1196CDAC7AB47D5E83447060F2550DM6PR21MB1196namp_
Content-Type: text/html; charset="us-ascii"
Content-ID: <097F09F797E8ED45B3E421138000B585@namprd21.prod.outlook.com>
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am working on a project where I need to use <b>fil=
es-in-package.txt</b> in the buildhistory directory to extract the list of =
files installed by each package. I was wondering why the
<b>files-in-package.txt</b> files don&#8217;t get generated when an image i=
s built using shared state cache. It would be really helpful if there&#8217=
;s a way to generate these files even when shared state cache is used.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Shashank Sasidharan<o:p></o:p></p>
</div>
</body>
</html>

--_000_DM6PR21MB1196CDAC7AB47D5E83447060F2550DM6PR21MB1196namp_--
