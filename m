Return-Path: <suneel.mekala@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E023C19F32
	for <webhook@archiver.kernel.org>; Sun,  2 Mar 2025 07:04:26 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.57])
 by mx.groups.io with SMTP id smtpd.web11.26375.1740899059795487824
 for <poky@lists.yoctoproject.org>;
 Sat, 01 Mar 2025 23:04:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@signify.com header.s=selector1 header.b=rf5DEfH3;
 spf=pass (domain: signify.com, ip: 40.107.22.57, mailfrom: suneel.mekala@signify.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UWFZo/umfp7oQnSAUN78mGc7QFBRldPd3dC4qyHPqH5qdVy58Wn8xxMS7TtjavWWmhOcUBk2k3B0vIlIb7dXpKFG7SYMKHxylRwMgoZshSzgb3tzKh7xTRSE2dOXiJHpIa1PP35/EuubJTuzSe5n4omnTkrxAlaIoFKkNCWMmyNR7pZarECi+YjcA6/rfVo5IyI5Dxy4GXT/tPIEhee6S6NxcXGY/yZkLxpYuH4jnTYLsLAA57vK7zfy3Gb+yGcW8AeUojwf6gjF7SnE/fchRjjoQLYGguiJx1yhi0x5s7cos75ZAI+nSk0zDhvWj35Qm5NqCZLCC4r8/k1P9aFchw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yIHFUOo0uuNFpmu5ZS7dOJ8WdhGKZKlScEX24zd5www=;
 b=Goxfh4bKB0uFo16dmAyR5Wg7Cj3neTI7sYUWmlSKSDH7T/r0IPTXJWCZvqMWL6Ki8j2rZFS9kRTXUPfYgHSg6glCwcZqC9h9ulnlY0Rol3fAv2f00rn2p7hqRfbLuFXuAozn2V/qobY11FFgUOcjxcQEhXtDvxik3WpkDhMJvH0h6ypCTzJC7qerFT98vjkO9EhHx2i/2RckgXyh466oJbot76obpAnL6pEHtpTLDD8tCOAv5c7Nl+IrU8HtrCEI1clJqdajISeozxc0XCsbKjBk+1bnX4t+LZX/Z+RBBEdEQIsRiD2sWK5YuGaGZDAkcwymq1N8w7Mh/bVtv8N7Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=signify.com; dmarc=pass action=none header.from=signify.com;
 dkim=pass header.d=signify.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=signify.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIHFUOo0uuNFpmu5ZS7dOJ8WdhGKZKlScEX24zd5www=;
 b=rf5DEfH3KBM5v2HybCTwHtRc4JlwKd0F6u73qsI+z1BG6CTyEQZDPymSGe4VP9aQ5XCDZeeYcxxB0G2v2JVGqWh5iPbXe4Gbli/gewp6OdGu7qX5agEHYrPHKPO+8AWdj5A/6Xw9M9kP1A6vkUcaNlQrXHJQAGpiYVHHI2gSuSI=
Received: from GV1P121MB0103.EURP121.PROD.OUTLOOK.COM (2603:10a6:150:cc::20)
 by GV1P121MB0104.EURP121.PROD.OUTLOOK.COM (2603:10a6:150:cf::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Sun, 2 Mar
 2025 07:04:16 +0000
Received: from GV1P121MB0103.EURP121.PROD.OUTLOOK.COM
 ([fe80::7fea:a62b:c8ff:1c37]) by GV1P121MB0103.EURP121.PROD.OUTLOOK.COM
 ([fe80::7fea:a62b:c8ff:1c37%7]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 07:04:16 +0000
From: Suneel Kumar Mekala <suneel.mekala@signify.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Opt out of email list
Thread-Topic: Opt out of email list
Thread-Index: AQHbi0E3ghzbKp3gWk6ML+6baVmz6w==
Date: Sun, 2 Mar 2025 07:04:16 +0000
Message-ID: 
 <GV1P121MB010305E634671FD55A8CFA3BF5CE2@GV1P121MB0103.EURP121.PROD.OUTLOOK.COM>
Accept-Language: en-US, en-IN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_Enabled=True;MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_SiteId=75b2f54b-feff-400d-8e0b-67102edb9a23;MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_SetDate=2025-03-02T07:04:15.090Z;MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_Name=Classified;MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_ContentBits=0;MSIP_Label_00f7727a-510c-40ce-a418-7fdfc8e6513f_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=signify.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P121MB0103:EE_|GV1P121MB0104:EE_
x-ms-office365-filtering-correlation-id: d42fcf0f-855e-4317-7480-08dd5958722e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?kIs9q3ilTYxq8FoPVtH4pNakhGkyHbR0L3D3tsKXPaZ8adu/lr9lIUS2L/?=
 =?iso-8859-1?Q?riRwQT9Gly9fCUibVKVEWGVYsldCo+BjMh5wiKjk5b81ZT76Ech//+Js3o?=
 =?iso-8859-1?Q?5Gdfzy0oOWS3aWQrOGB4SRLMVFGnav4H1/oJ60fV61xzT/UHEDquBLSz2F?=
 =?iso-8859-1?Q?RH7FCCbTnzYruOk0VwZJRsmCoMmGUGPDqrRFl1CGEeIAvdefuvRh1SMh9M?=
 =?iso-8859-1?Q?ZoXMrtj/3EC1Cyhec79J+esiDmJ2MbsHklLT2WHPPUdCTZDQMHQ5klUkFj?=
 =?iso-8859-1?Q?6kfoN4YuHsvcAzDjBVH8dkBNNfMQScirmYdWQ5m6+TT/QiKOHSKXHWe3Oh?=
 =?iso-8859-1?Q?njMx1rqKRLy1e9+3hvrGsHnzZEfelZchwdPmecd5CiD5kp50KGM6BnSW/u?=
 =?iso-8859-1?Q?fFma0VyHAp+OHT/9Wp+hocX9FPcGiQJytncJwlAJmL0wUhqPtgNn4mb/KY?=
 =?iso-8859-1?Q?L2B4zvpUklEyBcgdYP4pIcJgWIMLvoTTbkD+ZQUPm91b8C4lCqCgq0Nj5z?=
 =?iso-8859-1?Q?VkSz58cj6yM4JSi05QSQUoGrQMDE0xvgSvwtvITqC22KY5RzMrHx7pt+sL?=
 =?iso-8859-1?Q?3IV5sqRGzvbRbolOAMYtbcY0wRACI4F3Npz23TVHx8j2gB6+iNEaHnRwK2?=
 =?iso-8859-1?Q?bAJF+s5nx2AQT6rT01x9NJxUvKUUhmIhHsJCH/9Un31HzOVtO33K5XIaoB?=
 =?iso-8859-1?Q?FEnHZRwFLRBsWTvGUxu1oSJ7sKYpzIJlz4ub6LyCPEdJKZE1VJ+S224AdV?=
 =?iso-8859-1?Q?XlzjstsjzTnAtOD+7boX/KbuQmms6oYn6RZILxdO1BzVBRCCChV0Auouzy?=
 =?iso-8859-1?Q?FuZIvsj/gym8NLJ5bjGAMZcOjB00EmwuyU0VfOgeP+rgP1V6GGr/U3/cMN?=
 =?iso-8859-1?Q?QT/1J/7r/+eLh85gsx8pkNEyoXpeBbpEk07CI1vqX6VbDZwG0psVtOvJns?=
 =?iso-8859-1?Q?kS36xIrvqFd4Hn+VRYVb7S3Rvmbv16C1q7Y+DhCoDzsm9FQWKHzZQk9gDd?=
 =?iso-8859-1?Q?INomMXxSUopqo3s7kqP8IuaCVLUbrhnmMN7xYxRYcSI6IC2vWG1cp716Mv?=
 =?iso-8859-1?Q?n4w0IplhggVjysA+Iq1gN1w3/Pnv1Q2ANEKDWJP0QJ7LXJbVrJbvXPmsGS?=
 =?iso-8859-1?Q?wuQbuQZWPnO0tj1KbRCoV0mRzvSSUfWVRfE22+8zSm8GGsZzcBZcpbremM?=
 =?iso-8859-1?Q?GWTaxW5yvIF8f6hEaRwMTSY7TaGWHepXuvWKrnHSP7DGA1LeWd+SAt8jTS?=
 =?iso-8859-1?Q?Z1NEqGEpzNE+A+Syrr1Kf5GsUtCguUYOBKuEo4aKo/+MF8WteQLDn6emso?=
 =?iso-8859-1?Q?Ls/QiY3luxTkupGYh/5z1bjxRgOB3Lq757a88DY00PNg7J1F74+2/NhAFb?=
 =?iso-8859-1?Q?uYyXSodyT6Gy63PXe5Tt1L1fqeW+2U9C2RlK7T1pwgyqmfpE/iml/62USj?=
 =?iso-8859-1?Q?+ews8X4VV3LXv8USYjKgHUlvKiRJFTnKNNDHnBgxDxZiJ328uK2xGdzIhh?=
 =?iso-8859-1?Q?Mr7UCcn26wpVAl+QYyGCIG?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P121MB0103.EURP121.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?HOZssI3Yl0BEUobRGeUgu3qcKm1KHSOcERsG1maT89jgQIOpPARJSSXPkG?=
 =?iso-8859-1?Q?WkJ8gKpaPNOTCIUlblLm3hxMb50gQfJMZsdhBz8FJcSTk8G3+TQUDlyflF?=
 =?iso-8859-1?Q?RNC1Gh+BXqJ6l9p8zl7u8dj9yYfSdRr14KSa9SzFM1u92ZxQth+48sHHUt?=
 =?iso-8859-1?Q?48lgMhhdG+EolYH1w6QbsJQsDLJDQr99gv4svL4mb0svlaYO6OCVkLZozU?=
 =?iso-8859-1?Q?ya4RRgu7H4FGEoKmaTJHyYoZympyTMA8NISH9zgHwnu1w8tFm1N4Bckgs1?=
 =?iso-8859-1?Q?mY52kMudh65vsgtXDsfUai7Zj+r4G04ptv4AnSdiPG9A7SU13wBf6bkOHr?=
 =?iso-8859-1?Q?M8GqnDdyuxBvPEC8SF3j2vAJ8ZMIt1bbKN8mttFEj8aEz0mzXprrVjowl4?=
 =?iso-8859-1?Q?rz2ERBx3EW367x0JR4xaZpO5ZMmJA+745YMKyRL53xFPGKAsHKclv+SyMO?=
 =?iso-8859-1?Q?zgrLmnzmYKPf8WagczMb5a7nvosD4FWHEv9Ze08+dbx6RKIcOFCeJfKEOd?=
 =?iso-8859-1?Q?lo1jkg1/xpToHL3by0pAKP4TUdMKIhVIsi7d+LaXk2P0RRpciB7CJAYlbk?=
 =?iso-8859-1?Q?cxTqqSN14Yn+X9sEpIAnXYxSarsZGd/ZApsQ5Mha8tY+rMymkxCzz6W7i6?=
 =?iso-8859-1?Q?kkRWOw+k3q2LSWaCYfMbeqvXAtEHtNDUiJNGxCV3BE36BvpXT8+t36+g1e?=
 =?iso-8859-1?Q?1AfIpNsTv50mh8NyZ0AubbTdNLrSzMIxMBiCg1KIiyZ09HWp3c31cn+W8+?=
 =?iso-8859-1?Q?/8tTOEq0H6F2KaTRQ0JVvfX89WR9gRUyFa9JXAnIyFXrMu3/gJik2GE8Xk?=
 =?iso-8859-1?Q?cTwhglDsVdFo7nEDYP1gcjC+B+q1jbujrcmZ8J8bfazaAQ8ZB90OUEcL0b?=
 =?iso-8859-1?Q?XWDEh4y7k2jMBL7axmQOFhys/47YlGhE93mMzXx1CIQpeW+iIsLaLR/HYI?=
 =?iso-8859-1?Q?w7h7XU565SvM5FR0+Hnf08ef8YtVOaFrrdzZj7UujWmWyNojZeuv3ZLobN?=
 =?iso-8859-1?Q?kgPKBU0CM0a+kiFBcuw0G2uwVR6dU8L1a0BSfn7qYSD4T3KhYNi5hxHKjn?=
 =?iso-8859-1?Q?u/wzka//2O4DTs3kVaAAGUnvvOYgTexCUCSnVS0pXkrgiiO9VeSPf/YZcY?=
 =?iso-8859-1?Q?sMY0bM7TtrMtM7wFnZHRIdZ6R+7xSi+8qHtK/oV9DLfvks/h0ZmBtiRx80?=
 =?iso-8859-1?Q?N4yJB9HE2GiVk4j79cTvV5B48TXYYADo3j9NlUYkqnQVGdDUu2VzSMy4vg?=
 =?iso-8859-1?Q?z31lK933xtL8GC93BmQvhsKUXORx4sNbvzZDucZDV6w0h1HynSXc7YNPeI?=
 =?iso-8859-1?Q?3YZp9qlV5OOhzXcooCcapNHdfXjap55Ub1eEcA+woacpg5uRxZII/EREaU?=
 =?iso-8859-1?Q?lAftnXSEJkakeOopOSMRGkMTTJUgnkOrEXvclie2Wh/Pq0RUZ9/d4BdgSB?=
 =?iso-8859-1?Q?Ea6CpzPVh/c/+9/PMJPtCyiG/Tcsm2rF+SJ7OSmG0SjByPc2Df++G/Wuw5?=
 =?iso-8859-1?Q?kuR8g/PUH5uuKMH/O5X+1i7avW8+VlsB7gDccMWWJJrms6HT3rqltlkulu?=
 =?iso-8859-1?Q?Edh6Pq5k9Erqk64/7q4sHgT6Wyfsshc78ms/E4j5i3iLwvXOR1j4lpN+2w?=
 =?iso-8859-1?Q?W+oDG3HvvfODWU9zdx5ReYuWPjS21VpfUe?=
Content-Type: multipart/alternative;
	boundary="_000_GV1P121MB010305E634671FD55A8CFA3BF5CE2GV1P121MB0103EURP_"
MIME-Version: 1.0
X-OriginatorOrg: signify.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P121MB0103.EURP121.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d42fcf0f-855e-4317-7480-08dd5958722e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 07:04:16.3516
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 75b2f54b-feff-400d-8e0b-67102edb9a23
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DQibSNtDr95RqXesmrucFmBNH1yV4nkyeHWrZz+GOfRHqom6xDiN8YtYVNaoOB+7s3Y9iGKv/OcLwoNcm+m/4LBMrmbUFahgIVo/3KU+j/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P121MB0104
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 02 Mar 2025 07:04:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13549

--_000_GV1P121MB010305E634671FD55A8CFA3BF5CE2GV1P121MB0103EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Classified

Hi ,

I am no longer interested in the emails and would like to opt out of it.

Please do the needful.

Regards,
Suneel.

________________________________
The information contained in this email may be confidential and/or legally =
protected under applicable law. The message is intended solely for the addr=
essee(s). If you are not the intended recipient, you are hereby notified th=
at any use, forwarding, dissemination, or reproduction of this email is str=
ictly prohibited and may be unlawful. If you are not the intended recipient=
, please contact the sender by return e-mail and destroy all copies of the =
original email.

--_000_GV1P121MB010305E634671FD55A8CFA3BF5CE2GV1P121MB0103EURP_
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
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
Classified<br>
</p>
<br>
<div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi ,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I am no longer interested in the emails and would like to opt&nbsp;out of i=
t.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Please do the needful.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Suneel.</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this email may be confidential and/or legally protected under applicable l=
aw. The message is intended solely for the addressee(s). If you are not the=
 intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this email is =
strictly prohibited and may be unlawful. If you are not the intended recipi=
ent, please contact the sender by return e-mail and destroy all copies of t=
he original email.<br>
</font></div>
</body>
</html>

--_000_GV1P121MB010305E634671FD55A8CFA3BF5CE2GV1P121MB0103EURP_--

