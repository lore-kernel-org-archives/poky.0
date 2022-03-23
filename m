Received: from NAM02-BN1-obe.outbound.protection.outlook.com (NAM02-BN1-obe.outbound.protection.outlook.com [40.107.212.77])
 by mx.groups.io with SMTP id smtpd.web11.3562.1647996882879397322
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 17:54:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@generac.onmicrosoft.com header.s=selector2-generac-onmicrosoft-com header.b=P09eJvld;
 spf=pass (domain: generac.com, ip: 40.107.212.77, mailfrom: jon.richardson@generac.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+ZYrnGGqUFOuf2y4MKlaSlhoyM7dXU5ftXCIspA/9c1Hmt36NCOjSyTLb+v23t/NJ4L0BLfb20jSKeL5KOvnSa6oiGLqbYyDeGrvPGWwF1O4pcjYu2zHY/aZ2vTJQOULWSEmdK4jNbipafX5h/6dFA0uZspXgDOTgbeoC/T2h7W10+njdwl2oCQRT8f7ygOkUueGyaHZwwFBcvIgNkrOHrIUAeSb3s1QVcsyegYie8WdHwjFA/HythHoKoRvv/xjy8a/gN9MDxN5uD5CIjniu7+4mJbLQ+Vel6AQxOADx22kQMYX+tk335Y4OowQq4gzvYR4jnX73/tbP+YwPZlBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AdkQdvmCO//Qxt7Jel81/klfLXMZciBipvi7nPeZklk=;
 b=BKMHy1QSJTStXanUo8yhrHahgBNR5SHiGl/oVfogJXKi7YDKQdF7cJIR3+xHU3xdTL3te62TZzTAOAIv83gXx8H17Wvy39neGPtkqYe+A57D4s98dCYWwk2hYSrvmFQD5mE6oOqd0tbi5LIhKrWmxVEznZgfJNGDw9GCpdBaPK8scJq9Cvr5bvh3x3LgZdbJNRfeDbZBFLq1kTNc04LYzPVVNwTVN9t/JRyhtQ73bgqheWnCcS7Zt4q4cMVgIptYN2+ZE8kwP83kSbKl0l+PM/SVghtIvvq1QizroRq2tDFZ0l4I2Wx8vKoEjrRlejLgPVvXc1cBuNf/1GqEnl1nIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=generac.com; dmarc=pass action=none header.from=generac.com;
 dkim=pass header.d=generac.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Generac.onmicrosoft.com; s=selector2-Generac-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AdkQdvmCO//Qxt7Jel81/klfLXMZciBipvi7nPeZklk=;
 b=P09eJvldrcJugZEfLmb0rFW4XCrjPtG+LkFlbyvhzMNjqSufIy82YfHpoRbE2SyD5ODiOibLufcofCwVNiMHil6KB2cW59+H1lyNvZjHH3NegYl9TtxJunMD8ZIMlUyzadV0JzRaxU7RwV/ZoVepuVJ6sDltMRWM3JVDUdTimZw=
Received: from MW4PR15MB4473.namprd15.prod.outlook.com (2603:10b6:303:102::7)
 by MN2PR15MB2702.namprd15.prod.outlook.com (2603:10b6:208:124::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Wed, 23 Mar
 2022 00:54:39 +0000
Received: from MW4PR15MB4473.namprd15.prod.outlook.com
 ([fe80::5419:fb29:972a:5180]) by MW4PR15MB4473.namprd15.prod.outlook.com
 ([fe80::5419:fb29:972a:5180%7]) with mapi id 15.20.5102.017; Wed, 23 Mar 2022
 00:54:39 +0000
From: jon.richardson@generac.com
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: git lfs support
Thread-Topic: git lfs support
Thread-Index: AQHYPlA3jeoYrtWPDkWVStUCfTJPQg==
Date: Wed, 23 Mar 2022 00:54:39 +0000
Message-ID: 
 <MW4PR15MB447343CF64A820024D3AF8D69C189@MW4PR15MB4473.namprd15.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: db744c18-2504-b177-7121-70f73b31dc00
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=generac.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10ac568d-cf9b-4e28-16c7-08da0c67b574
x-ms-traffictypediagnostic: MN2PR15MB2702:EE_
x-microsoft-antispam-prvs: 
 <MN2PR15MB270230E447D798C03633C6559C189@MN2PR15MB2702.namprd15.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mwipDKblcuDrnQXLA7IefKa4TInx+8WmP24hWL4/cYFaLupt+Cz1Az5Qv7OXyT0lHDrEERxYqRokW69C9r92j4RkPOGPfV99iy+9pao1qXuEnqZCNDVoAZoZyGGKh/Orx7+IzQzFwertzLUw/cWYV/bsY5BxYTIgTpeKyKE5ZI7iyjVO3Yl0xKYMHxn2ZrMWbE6hh23OxvaCOJtzMjWiDCannUrd3trfl25hC26Z8nPZEfqh8Bnx1BQyI3XTYyw8HVGh3EYzQyOP9oe7EH+k0l3ULD13/MCEmMD4BOgw978st8dP9zmp+P3SCtwr4Jhky5nMcUV9MftH2XvBwbKRQCby/tB1iP2lRERCL4Qj748Gwi2qPc52wOBlxsLeJJoGLlLvsuxmTZN0+WN28XokbMcMsPqrLw7r/voW6PzCBEl3dbu5ok5zufZ4PYv5NKz7V1eQFKr5WF6ceA2q9jnfb8bmccqA4k6qgYzaXz8R51q3abr8JlvzVPDee7RqDb6UQf+xIYm77yR4uUrlQPbt9LMrE8YOxsOOvWtJRJTS2cqALMuYntWpLSudsWzOiB8UkzEx/YZ6KSa/JGprKQYHwDkY7ZUn3uK+2pR3YF8ypfr9ulqt0XQZ0gxB8r6hEM+EzucU2BavjelpueMgd0hHeFiAF5lfKJ4affjWnmxwNRZTQaxRHKJpDiY1RKM8fWpXnzM/UmhbLoqPZqtB3I033Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR15MB4473.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66946007)(64756008)(66446008)(19627405001)(66476007)(66556008)(6916009)(316002)(26005)(186003)(76116006)(122000001)(7116003)(8676002)(7696005)(9686003)(6506007)(71200400001)(3480700007)(33656002)(86362001)(508600001)(52536014)(38100700002)(2906002)(5660300002)(4744005)(8936002)(55016003)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Obzn1tMbMfxlz0au2TVKmnkALOYpq+iYKSG9Ot2kkrS68juxpxhprjrEmN?=
 =?iso-8859-1?Q?tMsy6Bl8j8ZCK98r+CYWILASx1RiMkZWqnpknPnqqPsfbseImKI6KzmJEW?=
 =?iso-8859-1?Q?rjRrXPl/c/n+Ib1y2WIKVa+jRVtJlW7oPss53R8mZEz1jjPH32vwidoY+6?=
 =?iso-8859-1?Q?2DZ0pwUcKvBTkwwlrudSAR/XAQM9d60Pi6iXSSBFoXCftmQ5c9E5sfE+YJ?=
 =?iso-8859-1?Q?PZrTNAvGR4iGZ4GqEjALROUrs8tDpBwdshNFQcVMa6qEB32Ixw7NdqMy+a?=
 =?iso-8859-1?Q?1FkkZGKST/H/NVh5bWoCqHT1RbvWwmSLhsiHDRJKxyo7wCM+n4/HgQIoqk?=
 =?iso-8859-1?Q?6Je8qw9Gh1XvyzbZsBa2btojX/ldD4EH+6VGpqMQmI6kPbz2zKoqp97xgI?=
 =?iso-8859-1?Q?SNGSto7h5xfxFz0tsGGDLWjXB6GT9ny/z+kjU4cGAEu0QjA4HcV7wyT7Ha?=
 =?iso-8859-1?Q?LS++2thvqJdM0mThOBMIEm6QwWxTu0Hv8zd8i3W60UPveYdPEUA9Vpqf80?=
 =?iso-8859-1?Q?Sobp2vCTB76wm7+oBNELAn7wRC9leTpUuLPz7BEt2YPc5lCLgeR3ivG7lj?=
 =?iso-8859-1?Q?/ktB7FWjUKyMWYiPg8P3+j6RtCcSGvlGChY7vbXispV6GtiTKaiYYdoqd5?=
 =?iso-8859-1?Q?1k9BrfkXr2OgpkimUaGO/4PX1iA4YwwCea1RLavMOU+C4aHXHG72AJ+rfJ?=
 =?iso-8859-1?Q?uiwNDGIpQJ2OZfpfu7dmbDPu2T/bbRTfFKbOBQkwvXf5Gd3629mSy+KKCG?=
 =?iso-8859-1?Q?NegHTXCzIBTu6S07Tq3dgwTwVJVOFFXVdpuuWOe0LZQnaBtljGUD6dSzFs?=
 =?iso-8859-1?Q?DM3GpGmSMPdTNyVFsPAXVAQvO/M7iKbY2bYqWPahq4r9ZIOcGp4NUAIbm4?=
 =?iso-8859-1?Q?rQ7zI1S8XrQtZio4AwPy7/U8oYRHzV3JUCzSShbMN6gwmqFVfnwfO8Apck?=
 =?iso-8859-1?Q?y0k3rxQGzrdUC/Vxr5rc/ajClGYKzooha7NjSnRODtPzXEmufqQRdCErZR?=
 =?iso-8859-1?Q?97ko+lJSfRyCH2xIMGJr06UBZpYfPupPqfriCx3pNpXrzaTfnlSkIhiKmm?=
 =?iso-8859-1?Q?zmbJe3VfTuc72EejiWASy2Uo66vx7ttVaNBVmCESr/bVtDzdn58eohsz+/?=
 =?iso-8859-1?Q?gX+LoPDDrvS6EFE+WjTTuYNg3I0QVQ/3/RyxGVDCeoSJFZV7CC5vfzPK6y?=
 =?iso-8859-1?Q?hEPRo14TxLcqFg7NhY1lre7y7/ot96JXyiCvFqVky9aPXUMagmIb1koM/C?=
 =?iso-8859-1?Q?oIIjRLIMwL6ayaSH2UAt7q675r7lP0EUSWMEsoCoNxrEq14J/w4ACSHp+h?=
 =?iso-8859-1?Q?w85VtZxk2Nx5ibtia3Vgb5wU6ACkOrVpxVEbCMODvlP9WW7zDIlIItKoVN?=
 =?iso-8859-1?Q?gou605JTzhnOiLbAjt7v8boFe3ZO15Bm12bSGgtxmDDmJ2R1PqP8q17FHn?=
 =?iso-8859-1?Q?6qNOl5gAjQzULGbNo9MfEP0i5YtVxly7eZ7OJBVIH6WCdu8V+Q3kB2URXU?=
 =?iso-8859-1?Q?OmcBWQm89i+mRjZFjpdfu2?=
MIME-Version: 1.0
X-OriginatorOrg: generac.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR15MB4473.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ac568d-cf9b-4e28-16c7-08da0c67b574
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 00:54:39.0076
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3a720757-c2fd-40b0-96eb-840507006544
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQ0NwaOa4YUNa3DMI1e5CB8FMy3bM47hO1ACTg69HbCSKKPfvnGoF79sOiHlq4naEP/eyBuJIAZ6xdQN9wPdv1Rsmu15GsWP1SHrxGVBz/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR15MB2702
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MW4PR15MB447343CF64A820024D3AF8D69C189MW4PR15MB4473namp_"

--_000_MW4PR15MB447343CF64A820024D3AF8D69C189MW4PR15MB4473namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I added lfs=3D1 to my SRC_URI that uses a git repo. I see code for supporti=
ng lfs, but I don't see a git-lfs checkout being called. Does yocto not sup=
port lfs? I'll have to had a postfunc to do the git-lfs fetch otherwise the=
 files aren't checkout out properly. What is the purpose of lfs=3D1 in SRC_=
URI? It even checks for the existence of git-lfs yet doesn't use it anywher=
e that I can see.

I'm using dunfell (52b59e884110b2d48ad83438eef1fed7a28f01cf).

Thanks.

--_000_MW4PR15MB447343CF64A820024D3AF8D69C189MW4PR15MB4473namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I added lfs=3D1 to my SRC_URI that uses a git repo. I see code for supporti=
ng lfs, but I don't see a git-lfs checkout being called. Does yocto not sup=
port lfs? I'll have to had a postfunc to do the git-lfs fetch otherwise the=
 files aren't checkout out properly.
 What is the purpose of lfs=3D1 in SRC_URI? It even checks for the existenc=
e of git-lfs yet doesn't use it anywhere that I can see.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm using dunfell (52b59e884110b2d48ad83438eef1fed7a28f01cf).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks.</div>
</body>
</html>

--_000_MW4PR15MB447343CF64A820024D3AF8D69C189MW4PR15MB4473namp_--
