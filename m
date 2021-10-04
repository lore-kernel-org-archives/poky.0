Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com [67.231.153.30])
 by mx.groups.io with SMTP id smtpd.web10.6563.1633335876257174786
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 01:24:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fb.com header.s=facebook header.b=mAU5NGYe;
 spf=pass (domain: fb.com, ip: 67.231.153.30, mailfrom: prvs=9911f96951=hkleynhans@fb.com)
Received: from pps.filterd (m0089730.ppops.net [127.0.0.1])
	by m0089730.ppops.net (8.16.1.2/8.16.1.2) with SMTP id 1948OVAD006077;
	Mon, 4 Oct 2021 01:24:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com; h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 mime-version; s=facebook; bh=iI3zjekF/6/or/Ha4jEYDb3dJ2Ow4aMtPG2wWZ0FvaM=;
 b=mAU5NGYeOsXetFjaOH/ovc7eDK9cLFCj8zhMuvCGe/CVfMRzrFwKwbauQJNmUW48dJlR
 kq0CjpOcLyDKmNZPXSTmDA8xhDxtl2pTSHXAclq2IMG2gxRbpeDGZy0DPa1dfV+jOMUU
 KFI9VbyhkRnPrEp/PQvYsXtva69shwnAAqg= 
Received: from mail.thefacebook.com ([163.114.132.120])
	by m0089730.ppops.net with ESMTP id 3bfsb11kw9-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 04 Oct 2021 01:24:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.228) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 4 Oct 2021 01:24:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UEOlIyNWT36mO+4IKqVZ9S9WH99B90lryCFxj8+3y2aya6caSAWhEpQB4T9gMzFJWE1oPa1m1YEmLISW4rUsa1OrdV8gwYAJFiHzPNweDD+8K5JQg79NgP9K5FPZtKIUHJv0ooy0mYGiAvoANNQ2LPLVddZYbCdpTm4a0DC0U5OC5irEVKgkzqHzMiqz5vSWOGBA+StY11v9dB+UTLHxvpzOpe+CHL3GLLyV0ZnXS7DmQ51iSKxmWs621KTiYNS0ygqM5IYUj79nuMyx0LX0DlcNWHb8pJAlWK6tJOeSlI7JZrCCphVNuEeAyggkkduKHTF24x/nFcRn5BgZwKNRWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iI3zjekF/6/or/Ha4jEYDb3dJ2Ow4aMtPG2wWZ0FvaM=;
 b=XdL9GcjLLLxbGgxqWyfhAeQtpczgwYGUnztu9cdmk4ujgqNBSdbdI4fC95h3p8tuaNJ8WQl+rweXE4rUONNwf2iNNtd0YTmr/sjHQR3gYglpXcjXmnnUrh6Ug483okXJaXXxAkbUUFs1l9zSzEXDa58Dd14IPfnM3tS0kCEPyijiBlKuPL/HA5oDnRHFTKu2CjVJusmrNCozpU5W5USBNH2VRwEbNQxDn0fLLYORp/AvJaG+C4kuWHYWpbnGFcNnu8ISNJMu7fkDcLgssn7HiuYzqb0wEIWpQzavjRq0XvRoaHtC7WE0FkJW8S4iSuFh8977wOCS8j2CfhGSkAt3FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BY5PR15MB3572.namprd15.prod.outlook.com (2603:10b6:a03:1b2::24)
 by BYAPR15MB3413.namprd15.prod.outlook.com (2603:10b6:a03:10b::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Mon, 4 Oct
 2021 08:24:16 +0000
Received: from BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5]) by BY5PR15MB3572.namprd15.prod.outlook.com
 ([fe80::8d7a:ed38:88a7:76c5%4]) with mapi id 15.20.4566.022; Mon, 4 Oct 2021
 08:24:16 +0000
From: "Henry Kleynhans" <hkleynhans@fb.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
        Joshua Watt
	<jpewhacker@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
        "Michael van
 der Westhuizen" <rmikey@fb.com>
Subject: Re: [poky] [PATCH 1/1] sstate: Switch to Zstandard compressor
Thread-Topic: [poky] [PATCH 1/1] sstate: Switch to Zstandard compressor
Thread-Index: AQHXtupCY9FQME3bL0yp5cPZNdX27Ku+6MMAgADY5ICAAsLJ5w==
Date: Mon, 4 Oct 2021 08:24:16 +0000
Message-ID: <BY5PR15MB357207415CE1CF049C4C2488B8AE9@BY5PR15MB3572.namprd15.prod.outlook.com>
References: <20211001173152.3015007-1-hkleynhans@fb.com>
	 <CAJdd5GbXDoX5hvuB_CQuQAc1Uj8vUJ18upjbAsn4nsj--F2kFQ@mail.gmail.com>
 <13946fc9383a0a6d08ede021466a107dc1125f81.camel@linuxfoundation.org>
In-Reply-To: <13946fc9383a0a6d08ede021466a107dc1125f81.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 55174903-a33c-9439-ccdb-57b955399874
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none header.from=fb.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b093d697-b38c-479b-7aa7-08d987105b15
x-ms-traffictypediagnostic: BYAPR15MB3413:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR15MB3413701BD181677697CA3883B8AE9@BYAPR15MB3413.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NdhMHtxxhPaLfzCi/+nRFgZ+VTK+PoKJydyYyPhcTJDV2TFoijYbTO1GDMYnqFU1CZvQkSDNpg2//NKrHfagyH7H0k/HOqiuRE4KvGgUMJae0xcN5EHIknX8wBNs1Yvk+TWi2JIp8t+TNGuUiOQv07nTWGCxA5Yd/0s/RMyJND/LsjUL5wzXwkXgDiUFDulE4K2uyROz9jKlAcpf1+BmkCfUPVPLVspfKKgS+Zc5LtYG1K/NYNxVhu7tpkTfZjBjudEJPsG68b4eElKHr85pMO6YMmc02JzjtTuqw3vxe42yMcMqOSLMwujReKv66SyNyNyLd8/oTu/B3nJoMKlzztP+2jNORpN7+Y4SRyMcgeUnxCop5Hh7hUwVUuU/1Kq/VqIJoiGO92ZexegykiHqz6EgNAMUwkEFMqLCjPfjhlqXoulYOoPNf6yH8iF9SlmwavE8pmpzF+HvhK4lIpTMq3KLv7M0jLe9szosM+qC5jkg1kzKjHUy7/9E3ax/JWFyVZqDkyrNMdKFUQnWE8hHWFtG2Y1zG8ABdOw70P4O4oA2RtQFFtvNJZdcZZ4Gyd3cgZyQzGAA9meazw/0ZbNj6IQ7tnoznn28zS0Am9kWWiuUjCmRikuDErTo/mpZE4cs5OwWdaYcpjcgSSWEO1Q6t0hL5j6hh5rELZ7bLg74VJrsVtBZiuPa4QFU/94dvNelO5ajEQwWIEwMOp++9EJ0iw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR15MB3572.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(71200400001)(55016002)(86362001)(7696005)(2906002)(186003)(26005)(53546011)(9686003)(6506007)(508600001)(110136005)(64756008)(66556008)(76116006)(5660300002)(66446008)(38100700002)(316002)(91956017)(33656002)(52536014)(4326008)(8936002)(66946007)(8676002)(19627405001)(38070700005)(66476007)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EIbrwu15feaVJn8OVZZSv3xJ61ao4k93VsW3u2WHq+NhkvKd9PhNd53mA1MQ?=
 =?us-ascii?Q?P6rL8a5DPJtlOFKBhpJVGtVaZGyQtCgBuYI+lHPb+0bUq97x39N8zSBr5cGC?=
 =?us-ascii?Q?GmlABgb163uK85jqphi0vOJCwMEZKHRu8SKnC3BshZvKabOyUWtL3+RjHgui?=
 =?us-ascii?Q?/X27R0Y2iKQFBIEFYNCiN17Npy2Mep8Q2YeSAG+FU4yiLQI4jlEs59nwsQwe?=
 =?us-ascii?Q?APcJ/KMy6bESvGQ6pK1LHGtGTBSCg/6vyEo6M4p+49Hyl5UilpCjMTU8YUTm?=
 =?us-ascii?Q?OVVBdrUcyiCjl5/NMbbgR41xxDGXNinsE+GZ0ADxCpNHj+n+irVmuEzHhcQH?=
 =?us-ascii?Q?XkwBfIMDQokFfwFw8SkRK26+5jmxLLAq/3+a75gxw2ZCFlyW8S86s9L9FTUj?=
 =?us-ascii?Q?w8Dlf4UeLq0YCknZWpee4sOTUi+zG6N6mAgwqaEfnL8GA7xmOqAxbewXW1rM?=
 =?us-ascii?Q?2cRZwGzsweo5CQuymTXp/M6ZjIJQCq82O2npu3gNcEjALTEeEPTM2mK73oMX?=
 =?us-ascii?Q?VOn/KTnC1wE52FXWyuvZLb85aFRof5QO9S/blyfXn6hKW5XeNg5KdA6peixZ?=
 =?us-ascii?Q?QpKjYD9Gp0xfuw8Hn44IMTxzF28V9f2c5d+77zr6imw85rcxSvrFIs1slz3C?=
 =?us-ascii?Q?6XH+YaUTmDLYfz1SIOQ85Q30QDUq3lRbGsc09d9zlHmQ4yyyjrwOrKlnCbxY?=
 =?us-ascii?Q?uRJcAJFM82olNKQt4b1m7J1tagDM2EtfKl6awvWqU2ytbuThvvqNmST77InD?=
 =?us-ascii?Q?qP/X12r+b2KFvZ50VBMZu5uYV+B3I1Fe7I1YuydWk9TRxapwxLB6YpIMajcq?=
 =?us-ascii?Q?Y5j6QVz6KIEQ48dwaGxJnnfnOY2hvB6E6PfNUOaB/WiAUarUv4iCpbBmsVXv?=
 =?us-ascii?Q?+TgjyT6LIqiPDh/8JNO2jk9ToxeBRlTtfcnIGP2hX4YhcA3nbMLZsx5X/d9d?=
 =?us-ascii?Q?8l4/24YGcoCgqZGzYbNGdHxQR558JPmbrK6utXRb3QnUUhu1OSrgXyD3+7QX?=
 =?us-ascii?Q?rkgbnDxHJdSDVxUDZcA5dPhnur2yyU7SKujV3t8+QtX+/kVtQZfkxk5Cqedm?=
 =?us-ascii?Q?gwCYJzqbWOXPlQSmS9jRNQPPVveWr6vVy9gHVBDZ1L7YfTTV/dJekMToGrrh?=
 =?us-ascii?Q?PYyhh0BZzB7PA2LunJ9VgRHHUesnHBkCz5tdR0ZnxVU7WRwcF925NaWduQU3?=
 =?us-ascii?Q?8cI+9iM65kxxtEgNlD01kf1MiP2T3XjsJi+6cZFfvRyzPO/1T2pw+PHvFQMt?=
 =?us-ascii?Q?IUMmGoGxGXrU4YVO4kfTKtGU82yLMPvvmq3mH5JzWUrfWCQaCNbCN9Nzsb/n?=
 =?us-ascii?Q?l68JvLaADwLaKDulttw19/Pw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR15MB3572.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b093d697-b38c-479b-7aa7-08d987105b15
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2021 08:24:16.5897
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +S1b9m2ieSgeZsfDiODZsxpukgwphZaC478D04ABXeKwMnOpYnB7RQhyz8yht49UDd/E3TfHBgNWaCvFJqWzqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3413
X-OriginatorOrg: fb.com
X-Proofpoint-GUID: xO_wywXhH9sUR-QoVlytA5aQDhR2lihN
X-Proofpoint-ORIG-GUID: xO_wywXhH9sUR-QoVlytA5aQDhR2lihN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-04_02,2021-10-01_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 mlxscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110040059
X-FB-Internal: deliver
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_BY5PR15MB357207415CE1CF049C4C2488B8AE9BY5PR15MB3572namp_"

--_000_BY5PR15MB357207415CE1CF049C4C2488B8AE9BY5PR15MB3572namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback!  Will add support for pzstd and add in the openemb=
edded mailing list.

Kind regards, Henry
________________________________
From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> on behalf o=
f Richard Purdie <richard.purdie@linuxfoundation.org>
Sent: 02 October 2021 15:13
To: Joshua Watt <JPEWhacker@gmail.com>; Henry Kleynhans <hkleynhans@fb.com>
Cc: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org>; Michael van =
der Westhuizen <rmikey@fb.com>
Subject: Re: [poky] [PATCH 1/1] sstate: Switch to Zstandard compressor

On Fri, 2021-10-01 at 20:17 -0500, Joshua Watt wrote:
> On Fri, Oct 1, 2021 at 12:32 PM Henry Kleynhans via
> lists.yoctoproject.org <hkleynhans=3Dfb.com@lists.yoctoproject.org>
> wrote:
> >
> > Patch revision, changes from the last version:
> > * Switch to Zstandard rather than adding it as an option.
> > * Specify 'zstd' threading and compression as arguments instead of
> >   using environment variables
> > * Remove debug output
> > * Non-posix if statements were removed as a result of replacing 'gzip'
> >   with 'zstd'
> >
> > I am not sure if we need support for 'pzstd'.  If this is a requirement
> > I can add it in a subsequent revision.
>
> Thanks, this looks pretty good. I was curious about the performance
> difference between pzstd and "zstd -T", so I ran a few numbers;
> specifically, I ran these on Ubuntu 18.04 which is our oldest
> supported distro that uses the host zstd.
>
> It appears that pzstd is about 20% faster to decompress data than
> "zstd -T"; I think this is because zstd never does threaded
> decompression (at least on Ubuntu 18.04). Would you mind switching to
> using pzstd?
>
> ---
>
> root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | zstd -d
> -T36 > /dev/null
>
> real    0m35.503s
> user    11m34.695s
> sys     0m9.405s
> root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | pzstd -d
> -p36 > /dev/null
>
> real    0m27.830s
> user    15m18.733s
> sys     0m13.895s
> root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | zstd -d
> -T36 > /dev/null
>
> real    0m28.134s
> user    14m42.322s
> sys     0m12.886s
> root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | pzstd
> -d -p36 > /dev/null
>
> real    0m27.911s
> user    15m28.182s
> sys     0m17.036s
>

I agree, I think we should try and use pzstd where it is available. This co=
de
can be similar to the pigz code we have right now which was written for a
similar fallback reason.

As Peter mentions, the patch needs to go to the openembedded-core mailing l=
ist
too.

Cheers,

Richard


--_000_BY5PR15MB357207415CE1CF049C4C2488B8AE9BY5PR15MB3572namp_
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
Thanks for the feedback!&nbsp; Will add support for pzstd and add in the op=
enembedded mailing list.<br>
<br>
Kind regards, Henry&nbsp;</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> poky@lists.yoctoproje=
ct.org &lt;poky@lists.yoctoproject.org&gt; on behalf of Richard Purdie &lt;=
richard.purdie@linuxfoundation.org&gt;<br>
<b>Sent:</b> 02 October 2021 15:13<br>
<b>To:</b> Joshua Watt &lt;JPEWhacker@gmail.com&gt;; Henry Kleynhans &lt;hk=
leynhans@fb.com&gt;<br>
<b>Cc:</b> poky@lists.yoctoproject.org &lt;poky@lists.yoctoproject.org&gt;;=
 Michael van der Westhuizen &lt;rmikey@fb.com&gt;<br>
<b>Subject:</b> Re: [poky] [PATCH 1/1] sstate: Switch to Zstandard compress=
or</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Fri, 2021-10-01 at 20:17 -0500, Joshua Watt wro=
te:<br>
&gt; On Fri, Oct 1, 2021 at 12:32 PM Henry Kleynhans via<br>
&gt; lists.yoctoproject.org &lt;hkleynhans=3Dfb.com@lists.yoctoproject.org&=
gt;<br>
&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; Patch revision, changes from the last version:<br>
&gt; &gt; * Switch to Zstandard rather than adding it as an option.<br>
&gt; &gt; * Specify 'zstd' threading and compression as arguments instead o=
f<br>
&gt; &gt;&nbsp;&nbsp; using environment variables<br>
&gt; &gt; * Remove debug output<br>
&gt; &gt; * Non-posix if statements were removed as a result of replacing '=
gzip'<br>
&gt; &gt;&nbsp;&nbsp; with 'zstd'<br>
&gt; &gt; <br>
&gt; &gt; I am not sure if we need support for 'pzstd'.&nbsp; If this is a =
requirement<br>
&gt; &gt; I can add it in a subsequent revision.<br>
&gt; <br>
&gt; Thanks, this looks pretty good. I was curious about the performance<br=
>
&gt; difference between pzstd and &quot;zstd -T&quot;, so I ran a few numbe=
rs;<br>
&gt; specifically, I ran these on Ubuntu 18.04 which is our oldest<br>
&gt; supported distro that uses the host zstd.<br>
&gt; <br>
&gt; It appears that pzstd is about 20% faster to decompress data than<br>
&gt; &quot;zstd -T&quot;; I think this is because zstd never does threaded<=
br>
&gt; decompression (at least on Ubuntu 18.04). Would you mind switching to<=
br>
&gt; using pzstd?<br>
&gt; <br>
&gt; ---<br>
&gt; <br>
&gt; root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | zstd -d<=
br>
&gt; -T36 &gt; /dev/null<br>
&gt; <br>
&gt; real&nbsp;&nbsp;&nbsp; 0m35.503s<br>
&gt; user&nbsp;&nbsp;&nbsp; 11m34.695s<br>
&gt; sys&nbsp;&nbsp;&nbsp;&nbsp; 0m9.405s<br>
&gt; root@0df785908a53:/bin# time seq 1000000000 | zstd -10 -T36 | pzstd -d=
<br>
&gt; -p36 &gt; /dev/null<br>
&gt; <br>
&gt; real&nbsp;&nbsp;&nbsp; 0m27.830s<br>
&gt; user&nbsp;&nbsp;&nbsp; 15m18.733s<br>
&gt; sys&nbsp;&nbsp;&nbsp;&nbsp; 0m13.895s<br>
&gt; root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | zstd -d=
<br>
&gt; -T36 &gt; /dev/null<br>
&gt; <br>
&gt; real&nbsp;&nbsp;&nbsp; 0m28.134s<br>
&gt; user&nbsp;&nbsp;&nbsp; 14m42.322s<br>
&gt; sys&nbsp;&nbsp;&nbsp;&nbsp; 0m12.886s<br>
&gt; root@0df785908a53:/bin# time seq 1000000000 | pzstd -10 -p36 | pzstd<b=
r>
&gt; -d -p36 &gt; /dev/null<br>
&gt; <br>
&gt; real&nbsp;&nbsp;&nbsp; 0m27.911s<br>
&gt; user&nbsp;&nbsp;&nbsp; 15m28.182s<br>
&gt; sys&nbsp;&nbsp;&nbsp;&nbsp; 0m17.036s<br>
&gt; <br>
<br>
I agree, I think we should try and use pzstd where it is available. This co=
de<br>
can be similar to the pigz code we have right now which was written for a<b=
r>
similar fallback reason.<br>
<br>
As Peter mentions, the patch needs to go to the openembedded-core mailing l=
ist<br>
too.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_BY5PR15MB357207415CE1CF049C4C2488B8AE9BY5PR15MB3572namp_--
