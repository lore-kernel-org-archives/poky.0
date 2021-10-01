Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.145.42])
 by mx.groups.io with SMTP id smtpd.web11.8798.1633098005370517317
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Oct 2021 07:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=RggATchV;
 spf=pass (domain: fb.com, ip: 67.231.145.42, mailfrom: prvs=99084d9215=hkleynhans@fb.com)
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1913mAYs018102;
	Fri, 1 Oct 2021 07:19:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=facebook; bh=TZaM+NHyW2gaCy8B/wuRoTxHrFP910dpyo43K66GpOY=;
 b=RggATchV2CuzsDL7EY6clVmFVfMXJc81G1/ObqWWTxbdQxCE2Kvb0Zr6DheCiTpBWrkp
 YY60rJhhWHVUxdCL01mEohA2ftYjqFmegtWdZc0Qk7q43dgNKTOJW7X8nIX4McMMsd3P
 TtIJ5Chs4MobCFBMfdproTKQOXAa+Wwnw7c= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 3bdh9spxqk-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 01 Oct 2021 07:19:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Fri, 1 Oct 2021 07:19:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bSoCZDK68cDqsknDjMUVxY9xX829yZ+oqAWXxBtJtSnhoVsRhDp86RFGw6/CYxhSjOvR+0NJqiTMr1Q7zG1aD1305wZqXV7NBU14S1E9HqSUkPl0fY5s5Xks2n1GMIj0TuOnkE4fV307zy9HpCPvhJCn4ObtVx+5qtZ9PefTNgrL9IdmGd8WRNxvxUxQST+AoGM5lErVHDlapqqZnyTEzV/GnH5/Ditpy19a9qo/uIAbKiKV023gWuyb/F87xF5f1NsSaIz8RM/yN66BJzAGfPQYeOncwO4qhvoIc/psmdVOkNK7At38UscCuyUFR3rKdBhVqc0BrBscW+30RiJ3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pa37kzTkPogz/zQS9yGsmQQA8Y77gNAqCvU2mtRCdeE=;
 b=fPd7jbd2N432rDqgNkbbNbu9anB5xdd1V8ybWkhaCklfmRxwf0gM1RyHYITE+eT/WbPK0o1cFzQLO2iWvKvN0Ja8y8PlRwJ+OsJlUDtCB9NQkWxl7FRYP/zBuyL98NjBXRM9jwv716qQ6vbVhh+a7UQznoPpDkHct4kbg9LvkUdMShYXDI4J8ObFOWUVBIU50lpeQdNG+VY/34k0uHkGJ72Mv4pb8Gkb3WHM3A+oh0cArtATLGz7fQ2rvEOPp78F0USy3vsxWwTgY+oBs+NW0WYzB5eRR6Cd/5tnPnqhq8kbE0+Vp0LM5NB2ZHieIyQQR39p3ZL2nWUc/TnQYctw5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BY5PR15MB3572.namprd15.prod.outlook.com (2603:10b6:a03:1b2::24)
 by SJ0PR15MB4757.namprd15.prod.outlook.com (2603:10b6:a03:37a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Fri, 1 Oct
 2021 14:19:50 +0000
Received: from BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5]) by BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5%4]) with mapi id 15.20.4566.019; Fri, 1 Oct 2021
 14:19:50 +0000
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: Joshua Watt <jpewhacker@gmail.com>,
        Richard Purdie
	<richard.purdie@linuxfoundation.org>
CC: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
        "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
        "Michael van der
 Westhuizen" <rmikey@fb.com>
Subject: Re: [poky] [PATCH] sstate: Add ZStandard compressor support
Thread-Topic: [poky] [PATCH] sstate: Add ZStandard compressor support
Thread-Index: AQHXtqyyv6EBIBiq00q2FbDE+sd1UKu+HvKAgAAA2gCAAAfngIAACYIZ
Date: Fri, 1 Oct 2021 14:19:50 +0000
Message-ID: <BY5PR15MB35723D96FD6682BF2A593FDBB8AB9@BY5PR15MB3572.namprd15.prod.outlook.com>
References: <20211001101118.2526538-1-hkleynhans@fb.com>
 <9e6cc87314854416861d13b5d1ec887c@axis.com>
 <99fdc768454aa12f73bb863f19e6026dda17f76a.camel@linuxfoundation.org>
 <CAJdd5GZFWVxUTZXMApYie9QiQTAwxvSiBOeXGQz4oSWt2CQwRg@mail.gmail.com>
In-Reply-To: <CAJdd5GZFWVxUTZXMApYie9QiQTAwxvSiBOeXGQz4oSWt2CQwRg@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 3e8272e4-8a54-a7ef-31c5-4f80f641477b
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=fb.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c6ce0ca-bb83-4cc0-4858-08d984e687a8
x-ms-traffictypediagnostic: SJ0PR15MB4757:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR15MB475719D6EBED961A0534F785B8AB9@SJ0PR15MB4757.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xf326lxSQJCxRmRO0Jl+Hr1VR76b3B6WRg2k0m2uMg/oYAlI6ax55GyffMeH5Wi4u8B6jwkw0MfrgTDL/WBSsH//viC0Hkygz4LeF68NUI5rM/k5ZPPGfesR2VaqhYxGiOFygHutZf6wLsBHDuVpDyE3xwHWwslwQJfS92lpAZeaqTRHRxYqjJKUiopa5/V/KKuGGIrdZ3I9QcdKFhB3MrIKeaXVP46GdH38RYf9NPmt5gysoLfon6+SGc2AjdQDS4SoBQVUeY84AmIJbQV4BSk0VXPazqIwg5NMWZrkBFw+BZX55jLF+aci9HCE2PB26BpunfFg/UAo0OtfYLjy8wMT3eZ18Nq+Y668AnoliN5t/IxulHgyK+q0J1Jx9DfsIQ0CDCZ1DaXinyUNsNKxpA9s3JU8knXuaWuAB1ZnpcXm7Lw3Stag/ZeBAzEwTOB3fLOc3G3KCVDpunNQV5D6vJ2gS8WoaS7W2HXaA2F/2B2qVibXQ3/MYhSZ/J65ghzU2dxDcHpOkNJ/e6DCKtwbAcPaTH7q5NhS87WXPkTM7HBkHpIOak6yUGsKBtVF3ydKx5qXr14gOASvQG/nx0OKjxlfg/h5xIG2djuOeXrCLxokKMVxNxqo6P1JN5xT1xO/ABrspRkVvrVrstaew7PfKxZk2Q+h60x4MG+rQoYCzD8tfy3RWGic0m32O+iM6ibeVjMxjombzPZhY1J+CvAEFXXpvBdTYfknWJmSU1JJ/rsfBx4cdIJ7PV8qdoyCggG1W5gQ8VSZKg5eolk+8jopnXya3iIKdDuLW7EgUNNi6fE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB3572.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(166002)(4326008)(83380400001)(508600001)(66946007)(64756008)(66476007)(2906002)(186003)(966005)(86362001)(91956017)(66556008)(76116006)(38070700005)(7696005)(66446008)(5660300002)(38100700002)(71200400001)(55016002)(122000001)(316002)(19627405001)(9686003)(52536014)(6506007)(8936002)(33656002)(8676002)(53546011)(110136005)(54906003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EdchYarrmRM5ogIbNNYVbqoHXhEm/VTIsJMY7VkVM7afZBwrQpzoA1EX1kv9?=
 =?us-ascii?Q?DwAx1YHfO8sEXNzmkMs3IVH9iBW60oXppAgzquD6rizlFr3W1J89rU831RoY?=
 =?us-ascii?Q?hZN5buWLLGd3Hd3C066g8MqDkH+eusmGGlK6Yow0D+JqlYyqgWtm40KEuiEh?=
 =?us-ascii?Q?BzyXNy5vjX/t5dy3B9fAmjTrLQW31IbRQXw/oHbWBs2wpIq8AhpcoKbtEqnF?=
 =?us-ascii?Q?pEFoElIncTo+hZEcn9s2YS0ZMywOyVlsCoY1MqeUiTAA/YDeOo+H1Z+uU3qK?=
 =?us-ascii?Q?SY9jtMDJm4X277ChEKZUIUel8gliXu7f30q0i/dbaZUwlQlJtM78Zjig5qY8?=
 =?us-ascii?Q?lSTdXNaTBPivnidyXJHb0sL19Z56jmFZgbHSIFptnPu/VX6RwFUns3WTHSSy?=
 =?us-ascii?Q?VPUM8+U5AjLKAb25qhz5AdahYYW97y9V9hQuIKO5VQoso+jjBVIsbIDe9AfT?=
 =?us-ascii?Q?RgbX/yOmT/WgWlD1bQbrnPzh61x5kuPEXPCQOJS8BQzhxzlhU3vfJhchSVvF?=
 =?us-ascii?Q?D+E1rgUDhqYekpzakMbpPviL1aYhKAKqdebEYMiPCnh4HwMu/FRpDgEUMBBU?=
 =?us-ascii?Q?9CDdEe5FD/yeQhZ3RwgH3ClFexpIUNxMFaZS9iunmhOZ7L4SAu7Vc9XzrQ8t?=
 =?us-ascii?Q?QqmyhSsxouLElIvd/KT+9rxncbxsqqJbJINBM6JASR+dpnemSs/bRH1EDeEH?=
 =?us-ascii?Q?Qga8oHJrz7gTILps5R+9PLfzfOoZxIaF5YFb8QGSZb9Pfq8Yztk6BInwR2xs?=
 =?us-ascii?Q?UBNitd3jPhd6jluhfxdogM8ZE/63fThz2NouihJuTXuiul7kf6sbrjiF/1Ct?=
 =?us-ascii?Q?7MnPuMJuuRVk6ACRRUcYNmuZsJz8aVzCkfYR5XQByEwB8zyVt0g1z6FHTBiZ?=
 =?us-ascii?Q?U/h05fvwAeBfONWOCNoSD+rZAIbREfsMycZJfJDWFwh56ND8j62rz3EiQunL?=
 =?us-ascii?Q?bV+ScnSic2dUEM8lFH6BAiySMKkwnNINigJvB/0DPP1XUmqWGwYvmL4OSUCY?=
 =?us-ascii?Q?ZvnEZEWk7zzccMhNA4qDZY76GH0qHEJzGmmuX5bVx8EwkqeCD99byVoXRGwA?=
 =?us-ascii?Q?eGqNThO/OAKCaOmjbGwSHNCUQpDuafepDpxMIcLOh7ghNxBl3zEGtU/beCoG?=
 =?us-ascii?Q?vBNW5KDd16mLAVUseG02YHlxkV6hyCkgCPAZAxrsg3fmkgplxuVS30sohZXS?=
 =?us-ascii?Q?SV1kjEzB1jtij/mUw3im2jcL0n/jDuvtKd6bRUnOQqYO46lCetbTlHZCJfjB?=
 =?us-ascii?Q?eA94tAi2vixZXmHqjJ45wvN8YwZso623fVKi5uCOGTES8HeUwxFvvNZqCIOI?=
 =?us-ascii?Q?+uylGXkS1oyrvsBveVOKbW2AVtgqdhgaWPBC1kvVfTgB6Q=3D=3D?=
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB3572.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c6ce0ca-bb83-4cc0-4858-08d984e687a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2021 14:19:50.2423
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1XtNqYV9bJ8Fxdg4rvovwMi5xp9e9UYd5ycIvVffP08k9AhZCD/lW+PT9htv3cm7gWS7WCG5Jnw5AXlJUfqvug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR15MB4757
X-OriginatorOrg: fb.com
X-Proofpoint-ORIG-GUID: 06KYeBbE34e5VkGsCdMfz1zH-8igZZ6y
X-Proofpoint-GUID: 06KYeBbE34e5VkGsCdMfz1zH-8igZZ6y
X-Proofpoint-UnRewURL: 12 URL's were un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-01_03,2021-10-01_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 clxscore=1011 mlxscore=0
 spamscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110010098
X-FB-Internal: deliver
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_BY5PR15MB35723D96FD6682BF2A593FDBB8AB9BY5PR15MB3572namp_"

--_000_BY5PR15MB35723D96FD6682BF2A593FDBB8AB9BY5PR15MB3572namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you all for the feedback!  I like the idea of switching completely to=
 zstd.  I will update the patch accordingly and resubmit.

Kind regards, Henry
________________________________
From: Joshua Watt <jpewhacker@gmail.com>
Sent: 01 October 2021 14:44
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>; Henry Kleynhans <hkle=
ynhans@fb.com>; poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>; =
Michael van der Westhuizen <rmikey@fb.com>
Subject: Re: [poky] [PATCH] sstate: Add ZStandard compressor support

On Fri, Oct 1, 2021 at 8:16 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Fri, 2021-10-01 at 13:13 +0000, Peter Kjellerstedt wrote:
> > > -----Original Message-----
> > > From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Be=
half
> > > Of Henry Kleynhans via lists.yoctoproject.org
> > > Sent: den 1 oktober 2021 12:11
> > > To: poky@lists.yoctoproject.org
> > > Cc: hkleynhans@fb.com; rmikey@fb.com
> > > Subject: [poky] [PATCH] sstate: Add ZStandard compressor support
> > >
> > > This patch adds support to optionally use the Zstandard compressor fo=
r
> > > ssate cache files.
> > >
> > > Zstandard compression provides a significant improvement in
> > > decompression speed as well as improvement in compression speed and d=
isk
> > > usage over the 'tgz' format in use.  Furthermore, its configurable
> > > compression level offers a trade-off between time spent compressing
> > > sstate cache files and disk space used by those files.  The reduced d=
isk
> > > usage also contributes to saving network traffic for those sharing th=
eir
> > > sstate cache with others.
> > >
> > > Zstandard should therefore be a good choice when:
> > > * disk space is at a premium
> > > * network speed / resources are limited
> > > * the CI server can sstate packages can be created at high compressio=
n
> > > * less CPU on the build server should be used for sstate decompressio=
n
> > >
> > > Signed-off-by: Henry Kleynhans <hkleynhans@fb.com>
> > > ---
> > >  meta/classes/sstate.bbclass        | 49 +++++++++++++++++++++++-----=
--
> > >  scripts/sstate-cache-management.sh | 40 ++++++++++++------------
> > >  2 files changed, 58 insertions(+), 31 deletions(-)
> > >
> > > diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclas=
s
> > > index 92a73114bb..a73d631679 100644
> > > --- a/meta/classes/sstate.bbclass
> > > +++ b/meta/classes/sstate.bbclass
> > > @@ -1,17 +1,30 @@
> > >  SSTATE_VERSION =3D "3"
> > >
> > > +SSTATE_USE_ZSTD ?=3D "0"
> > > +SSTATE_ZSTD_CLEVEL ?=3D "3"
> > > +SSTATE_ZSTD_NTHREADS ?=3D "0"
> >
> > Do we really need to make this configurable? Can't we just decide
> > to use zstd and be done with it?
>
> I have to admit I was also wondering that. We started requiring zstd on t=
he host
> system so it may just be better to switch over?

Since zstd is required and a clear winner in compression/decompression
time, I think requiring it and simplifying the sstate code to only use
zstd would be fine.

>
> Cheers,
>
> Richard
>
>
>
>
>=20
>

--_000_BY5PR15MB35723D96FD6682BF2A593FDBB8AB9BY5PR15MB3572namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thank you all for the feedback!&nbsp; I like the idea of switching complete=
ly to zstd.&nbsp; I will update the patch accordingly and resubmit.<br>
<br>
Kind regards, Henry</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Joshua Watt &lt;jpewh=
acker@gmail.com&gt;<br>
<b>Sent:</b> 01 October 2021 14:44<br>
<b>To:</b> Richard Purdie &lt;richard.purdie@linuxfoundation.org&gt;<br>
<b>Cc:</b> Peter Kjellerstedt &lt;peter.kjellerstedt@axis.com&gt;; Henry Kl=
eynhans &lt;hkleynhans@fb.com&gt;; poky@lists.yoctoproject.org &lt;poky@lis=
ts.yoctoproject.org&gt;; Michael van der Westhuizen &lt;rmikey@fb.com&gt;<b=
r>
<b>Subject:</b> Re: [poky] [PATCH] sstate: Add ZStandard compressor support=
</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Fri, Oct 1, 2021 at 8:16 AM Richard Purdie<br>
&lt;richard.purdie@linuxfoundation.org&gt; wrote:<br>
&gt;<br>
&gt; On Fri, 2021-10-01 at 13:13 +0000, Peter Kjellerstedt wrote:<br>
&gt; &gt; &gt; -----Original Message-----<br>
&gt; &gt; &gt; From: poky@lists.yoctoproject.org &lt;poky@lists.yoctoprojec=
t.org&gt; On Behalf<br>
&gt; &gt; &gt; Of Henry Kleynhans via lists.yoctoproject.org<br>
&gt; &gt; &gt; Sent: den 1 oktober 2021 12:11<br>
&gt; &gt; &gt; To: poky@lists.yoctoproject.org<br>
&gt; &gt; &gt; Cc: hkleynhans@fb.com; rmikey@fb.com<br>
&gt; &gt; &gt; Subject: [poky] [PATCH] sstate: Add ZStandard compressor sup=
port<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This patch adds support to optionally use the Zstandard comp=
ressor for<br>
&gt; &gt; &gt; ssate cache files.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Zstandard compression provides a significant improvement in<=
br>
&gt; &gt; &gt; decompression speed as well as improvement in compression sp=
eed and disk<br>
&gt; &gt; &gt; usage over the 'tgz' format in use.&nbsp; Furthermore, its c=
onfigurable<br>
&gt; &gt; &gt; compression level offers a trade-off between time spent comp=
ressing<br>
&gt; &gt; &gt; sstate cache files and disk space used by those files.&nbsp;=
 The reduced disk<br>
&gt; &gt; &gt; usage also contributes to saving network traffic for those s=
haring their<br>
&gt; &gt; &gt; sstate cache with others.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Zstandard should therefore be a good choice when:<br>
&gt; &gt; &gt; * disk space is at a premium<br>
&gt; &gt; &gt; * network speed / resources are limited<br>
&gt; &gt; &gt; * the CI server can sstate packages can be created at high c=
ompression<br>
&gt; &gt; &gt; * less CPU on the build server should be used for sstate dec=
ompression<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Signed-off-by: Henry Kleynhans &lt;hkleynhans@fb.com&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;&nbsp; meta/classes/sstate.bbclass&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; | 49 +++++++++++++++++++++++-------<br>
&gt; &gt; &gt;&nbsp; scripts/sstate-cache-management.sh | 40 ++++++++++++--=
----------<br>
&gt; &gt; &gt;&nbsp; 2 files changed, 58 insertions(+), 31 deletions(-)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/meta/classes/sstate.bbclass b/meta/classes/ssta=
te.bbclass<br>
&gt; &gt; &gt; index 92a73114bb..a73d631679 100644<br>
&gt; &gt; &gt; --- a/meta/classes/sstate.bbclass<br>
&gt; &gt; &gt; +++ b/meta/classes/sstate.bbclass<br>
&gt; &gt; &gt; @@ -1,17 +1,30 @@<br>
&gt; &gt; &gt;&nbsp; SSTATE_VERSION =3D &quot;3&quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; +SSTATE_USE_ZSTD ?=3D &quot;0&quot;<br>
&gt; &gt; &gt; +SSTATE_ZSTD_CLEVEL ?=3D &quot;3&quot;<br>
&gt; &gt; &gt; +SSTATE_ZSTD_NTHREADS ?=3D &quot;0&quot;<br>
&gt; &gt;<br>
&gt; &gt; Do we really need to make this configurable? Can't we just decide=
<br>
&gt; &gt; to use zstd and be done with it?<br>
&gt;<br>
&gt; I have to admit I was also wondering that. We started requiring zstd o=
n the host<br>
&gt; system so it may just be better to switch over?<br>
<br>
Since zstd is required and a clear winner in compression/decompression<br>
time, I think requiring it and simplifying the sstate code to only use<br>
zstd would be fine.<br>
<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_BY5PR15MB35723D96FD6682BF2A593FDBB8AB9BY5PR15MB3572namp_--
