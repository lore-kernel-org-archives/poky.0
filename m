Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7590CCF9F8
	for <webhook@archiver.kernel.org>; Fri,  7 Nov 2025 14:00:41 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.8])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12087.1762524041035134024
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Nov 2025 06:00:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=bbzvfV6I;
 spf=pass (domain: siemens.com, ip: 52.101.84.8, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NUt8EMG1wPGj/2t+FMkLCAu1C29FkIvVgb2e5qpNRiL2NCtpLBL2hfproy+zn+etWhfW107s5iKTTQj5zDL5spYNeQDhUFjBWB4FiBtpQSDYpdnSd0hchJRPslAL2+4k7o0XIUYd1H5b0gG2l7zKs/TfBOnibMjjOgktb6UQHuGP8PMMgYn46LaY0Rp2bFyg0/UMMBBGMcVq2MLh3polMfG6VHH3X3Bxo29PEG2ATWx8Cb+cWZeyrpm3c5QcO9UF2MmoS9j4ZtZ4kvSKfe/97T9OpfQJJHChLjy11z41LSrWcIY7RUvSQmWNIqNv+qcrcgXqA1n2m6l9bcRgYLMpuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBECL94iZKakK1fLOR3lFcc57nG6LLOKyuXqTzO5+o4=;
 b=skGxYnH14ARhkAo4T44r4JMboyJrKdb/khEp9D+ZSaO/5HmumeJGWlWbTVP8fCpB7yDd6jP0s4NrZOUKo/kCu8mdcUHxok1aRec245UjLpiiSVP4xxX9OS/CMbNx+KiDjqXSsB7mzZODwHPEQlxVhEKadcre1D2dBk2+ZonAzgvlWUJGZH4A6ic4sSn9yYvUQ/nA26fhobB87j2iCuc1bBqX8e6uf1xLHGm4qrbQ9lP6+MW2RiGIUqTqCwlULT/hvdl5lLi8vPkXFpjIkw9nygTSa7wW2y7uMXqPopqUbsHDBt7Cnyz4IvHulMOANgRiEh8Ha/3wGwSwe3tSYs0UUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wBECL94iZKakK1fLOR3lFcc57nG6LLOKyuXqTzO5+o4=;
 b=bbzvfV6IGsLPyo6lbVHf1hwT1xfHBGipVpt3suCIy+bIJutWBYNMwASwfETEX4KYiYdgNaWXnavIGwRhO2VmMTlKMrwM2yQ+AXmeMFXkTkDG30/R/d8lwhWgt4ai6RYznNn0Uuw6GYTz1aoe/YDpn/zrYKQjRoewhfFLSlDX9B763T1lc8LCRWyq5jUPuj+iOycVBbBFA9hW4RKgt6r5KCr+DbTGnfHidLHTVGl7N1+21xqkSDIYlnDCe4xags+SvbDM4TsDs0/f1dGT0waDuTdCAWIJ1RfcUjI4aPZmxhGKVvsWSY2gdraQdhgHU44wjMBu2sONQhc1k3Pg6J44Pw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by VI0PR10MB8381.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:216::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 14:00:37 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%6]) with mapi id 15.20.9275.013; Fri, 7 Nov 2025
 14:00:37 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
Thread-Topic: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
Thread-Index: AQHcT+thsZvB/tEfPUS2s1rV1dTgVbTnPTSQ
Date: Fri, 7 Nov 2025 14:00:37 +0000
Message-ID: 
 <AS1PR10MB5697CC1F1BBE757DE216A6A2FDC3A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=60022aba-17ee-453d-9181-d8a21b249559;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-11-07T13:57:57Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|VI0PR10MB8381:EE_
x-ms-office365-filtering-correlation-id: b76798a8-6d3d-4684-5b7d-08de1e060737
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?Y0JZxOtu1AzX+92NAFbyYq6XChYvzzjMuS5BvA6sF7tbK1FnGMBG6o8Ry7s1?=
 =?us-ascii?Q?Uk3zeyICrFxFmdPTKd7vB8xZuItnNtMswRgA/phtNg6ThzUk5V9YAz4NeKmh?=
 =?us-ascii?Q?MNQEQ3/MiDFzFi6gdPJk7OSfrknwkXBhUoV2G6qvUQytuns/GzwmrZL9Kb9R?=
 =?us-ascii?Q?S3vy66MiP4jUHm55077EC2pFQ4mXzQWble9iJrLfD7zd13DC8FTWJBOtOCDE?=
 =?us-ascii?Q?X6GEnCrssa9FqtJBHZCWGL9v35jp6GjzLxAA2xJqVfxx5muH784cnitc/whF?=
 =?us-ascii?Q?iZmuHxnphZLdsN+XVl1httc7Nrn6g51z7flBeL54MI59DweTNZo5dRa69Er5?=
 =?us-ascii?Q?77wLkRXth/XDaq8brel/WrOWxLGU/9mPLzfAkEcFB2Xc38HpoZh1zfsls96q?=
 =?us-ascii?Q?o1kjJOCyzmh/91tf9logqJnA/RsVB9/VYdSf8kI6RAeP4ZMCBieIhjfjUL6I?=
 =?us-ascii?Q?7dLeNr1D8aHKav9ELtKRqe5wesv02mg1brOjawrqUJPfG2BH1USuUyegfmTk?=
 =?us-ascii?Q?BaZ2NkcxJ6sUCZdsbe6UCucRKdxGwrgi/mC7E0IZtCRSgHId3yDwFZcv6XJI?=
 =?us-ascii?Q?rsbK6i4MGeLo6Y3SFDI/r4rPjvxSJ4RBv4Hc4U6ZCyD+mm+w9/I56X8ePf8E?=
 =?us-ascii?Q?0RVhvLJv07S/NHw1govrd22lMbEXguS9eD89cy/ahYy054ECuXHcAjCxMc5C?=
 =?us-ascii?Q?KoNP+DMGHHLvGw3zuQrzkaTig39sTSvaJxrXedbMQNk4hckNGdDo9yD26Nqr?=
 =?us-ascii?Q?QPoZFR51LRb24nJvOcC+VvU90N8lQAsIjy2WjgyspwxRyQ2r1P27Zu4LB/Zy?=
 =?us-ascii?Q?CgdexRUo2x+8TYbMMcuzJ1NJJdfYd09rUQ2tWu/U8w8Mml2oL65FlgsoXIKE?=
 =?us-ascii?Q?06KikePn/Myhq4EJd/lQwzN7Q2m7dNJfaIVK7v//eMjh/tqWSTkgDfK89UCQ?=
 =?us-ascii?Q?zbV75FUymWrIWygzolG1FX1IVyGec08rw3uOU1UQd48lvXRblvBiPU4wFQRf?=
 =?us-ascii?Q?zNvoUSeKm+JGRKiWOf/wqWLhm5Jbfa6tpS/BaIKJu7RvvZwfec3k6HZJyfe3?=
 =?us-ascii?Q?wgmEzcMZjImzA6dtfqnT9t8IOMkR7uLArYe7yjYOvXZPcGuIA1jzpRGvJuLc?=
 =?us-ascii?Q?KK0WBUsaXIWDsSIJSgoNicU//HTh/I1/oWxWyLpgsKylooLjxBzI+qQK/sFh?=
 =?us-ascii?Q?zBp6rDMgyNc8Ri8feZoG89n6LT4kH3uToLwfOUdoBHA0YZVZcCGU54MZT2Zc?=
 =?us-ascii?Q?1eWsCIT/hvH460DK+lSIC/xaRf38Abz6ne1U81akcBSpIueBzikgnP7ZqSuh?=
 =?us-ascii?Q?ENhGgET8s2hYEUZQ/q0iG3YZt/RD1zfLEfoXuVKVQUP3w0UdWS2uJYR1W3l5?=
 =?us-ascii?Q?Q2GpxCuPGtKvghjAsP5r0hLLk+sUtDz8BV+vrvFA851jgcFidOHTQk4a2KT+?=
 =?us-ascii?Q?oNSYV3u+Cs/ID8peML1SqHOl6PU0XlQtRUNZ39FsadStBAfN/vggvA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?0DroPFfSpi92x8oeWncnAPtd9QFferNfFCu+3H/337rkcUyjuQfHdHmQCwG0?=
 =?us-ascii?Q?wKqLBmc5+Lk+pJbmzPtCstVDyMJd240jg86hyhmUhQUN0STx0MliuAyzb/Mq?=
 =?us-ascii?Q?gvFokSnD7gCADttJoRjASN3bXuS5QJE3tED8QPFRZU1U4/z86YwTeGhRpxKC?=
 =?us-ascii?Q?4DaXsSlrlexy9j5ynkhBNvZv5DxYVm7QhZa1Spg5KFydh3AkhxYQ0PtQcdab?=
 =?us-ascii?Q?4CFqF9S6vunhE7uboUqB6m2LHM4hqda+qd+44HtZwF/GrK8E/5EkOD/JXSbU?=
 =?us-ascii?Q?BKryMWya/3GPnBThNULhczr8sdIuaUGIxJ6f9uJj6fIDxuq05Tw/QM366tdN?=
 =?us-ascii?Q?764kmGVJngPkH/tTET7hQOZK6lEixviCj8QAzbUz5evXq+gJOwb669FD06Kz?=
 =?us-ascii?Q?VQxjKe2JIodAjQH4SY3wFToVJMoSOf0ivbYahNziLTWjGSCO3BBTfJz/mYOA?=
 =?us-ascii?Q?TDHNnsZOpfAeyTdisf7vBbQSv8IFm5KoRRFPB5IFuBj/SPc4KydK6yBa94E0?=
 =?us-ascii?Q?nfXPQZup2A7LKan28e3cT2mhF7+8gFPeyU4G83+N05Qt+izd8BQ9uL4253gA?=
 =?us-ascii?Q?GIzhxWJiPtCuLWNlaBJbr8AU7CxU4IbFl0vnkbFENp8nrOlb9BXamC4PqbY2?=
 =?us-ascii?Q?geL34WbyIJ/Fv5Xglv2bdN6YTtTYR8CnIXfqt0n/bTofjFkteT+p0mKVGGkd?=
 =?us-ascii?Q?VzO7L50z6t0V7aqTS0LyInzYZMpGAN3jWVqt5PI/tUO0o3VIFgmIxBe7cETT?=
 =?us-ascii?Q?nT1Ts0HyG2yrI+Tzh8P3iKxTm0kApskeLDNk/KdXhwf68ea5Y07XdFEM52HM?=
 =?us-ascii?Q?UHWeWHgD/mvffSHYkvxz75+myt5gYfqw2qbPHgkfQab4MO/v5BGURnQEgEib?=
 =?us-ascii?Q?dKfun34+T8YK0jh4+8tVHF175ot1Rlj6pk0BCgY0jm/kv1Nuf8ppBsUUM9o8?=
 =?us-ascii?Q?HEOmi0rzunEMvKWh6CJLJtayeHe8BzqiZfp+VdeLZwBdtkmmgUmwfGNNGmu5?=
 =?us-ascii?Q?vB+Jqdbi2qsJGOB9MUtfCv+IDAuS9aCOm72zx5TAGlmzyVpqV402TL+Rb97f?=
 =?us-ascii?Q?aFZyNEz+mq5ci3MZMZX+ctvqEQ+My4L/u6tuABuQZeF8U+iXuXcXZNgaJLxY?=
 =?us-ascii?Q?jsw+4K7NdXpDI9eM/MlHfHXZDAKXjl0uRTWIQEmxH7dcSsNksG+Q5/EHj7Rv?=
 =?us-ascii?Q?aJIVmHBe9Psuk3kTjDLsizPw+cFZ8Ni0pMEt2AAyXyq+udj4jL0ClNGZRPzs?=
 =?us-ascii?Q?lLocBlaYa30MjHrisZHhKNwwdX31b5/1gYf+uUs/2b2eBAVCSVCcMIauJ0tS?=
 =?us-ascii?Q?Exzuhu2dOZ5YmajJEim9+L5Cu1pijc6oa9UFljXwQlpYt5MU1zeaVu+rOUvY?=
 =?us-ascii?Q?iXhamXbxFRV/McnM0986J6dM2I7y/zk7SpFfkXsDDiBDoC+MmQcMkO1uCyuQ?=
 =?us-ascii?Q?eOy4QIfGpR39x6oLMGGfxFJOx96Jbzle13aanexwCAvtptBaa4SFVDBXqdkU?=
 =?us-ascii?Q?J6vB9Em40nEcjhWzZ0WnKOqrJ5B7IXAX1sOv/SY+2aU4VNbbEezvBCX9j86k?=
 =?us-ascii?Q?2NuFbnH0WVV9i1CNT95lCB0XQ8Tyk5iN62gFurjY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b76798a8-6d3d-4684-5b7d-08de1e060737
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 14:00:37.2854
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5a5t6Upwg4Ngx0Oe8PMQayckIKAWAvxwmXT8Futrmcxs8uWcsDA66YhNTacdivAM4/LE3GXdOyrWrPvkdYatGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR10MB8381
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 14:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13783

Nitpick: there are still 3 hidden/dot files visible in https://git.yoctopro=
ject.org/poky/tree/
I could imagine that it can be useful to keep the .gitignore (for .vscode/ =
or for all files except README), but the other files reference deleted file=
s.

Peter

