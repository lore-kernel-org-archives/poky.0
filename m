Return-Path: <chris.vd.kruit@certhon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DE29C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 11:11:27 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.102])
 by mx.groups.io with SMTP id smtpd.web11.77191.1720437084195136365
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 04:11:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@certhon.com header.s=selector1 header.b=G6YFIRUG;
 spf=pass (domain: certhon.com, ip: 40.107.20.102, mailfrom: chris.vd.kruit@certhon.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LzfkUA/fuV/0JzO/bPrh3XnaEmKUZJyzINWSAAfQVSeVTRMRlbgjMdqI2OCiTjDSOMll7X6wMcGW4nfYCZDK5E4VAp/t6BBd6/NW4/CKS5+j6Eyo3l3i3hgd0lE6Y6Zf81Yic6E2plXHnH02fYcGOGWHiluGlHC/g9gbxbj+wmrjJ5Y1OyDvt4e8+X5qvehXNNoVX0+hKIiEYBBv/xg1pWSBzt8TmodOz2DpF4sv2zoM182n7e2ehMvbul55mPwHmi5sKOOF7PEP9gwsuJzXVcM5FVKwlmC0Bue4hC02NbFcTxGFG4UhvQhRc7gB+lTbi5FHJrioJt0JjPQW90nOTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0sOmhCXLpuBgj3nj8xxFVFtLnFPa3yEMb9c6DbciUE4=;
 b=mdFFvIl082RxoW1hTozK7Jya8jeDGDwaVZJco+HAziMOfxUHXw/yqiZNE7gjga/zmryJ/xzicp4dqP9ywsM0Dn2Ay6k1gEE9CWzz4UHnXshxDuXdq4lSZ3Iby5hkVicZujxNQIlhxMpi2oKx1IpQ+00iQRKRtmYGZUJ37K/IbEHzNANX/ur9qfhGjzAmIID1JdkLd7CRhuzEUsSlbsme9lNBViHBzztVCyhPkMVX4xRV9q5CpubM56yAvF3qlP84wOPtBCRtp25AEWpN2H/3BYpGAPD1/LcpoK1e4lb7ApWp52WJXGjvejvc3jhCX5Tib0BiOU6IwIMUlui0kQl7ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 92.68.185.135) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=certhon.com; dmarc=pass (p=quarantine sp=quarantine pct=25)
 action=none header.from=certhon.com; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=certhon.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0sOmhCXLpuBgj3nj8xxFVFtLnFPa3yEMb9c6DbciUE4=;
 b=G6YFIRUGMKP6LJFd6Nr/t3WBaq4n+1l84Z8bcbND6biY7x85pyuWduaOt6ERTALYT7fv7VwUYGRYPYcTlHOHwBkKsspRGDxyFtE+/40P6FZeQfCkbG0UEuwc3H5tg1eiF3zdRqYn78tnev6KOwSV8Bib1HwKtDVm04BW9o52ZMg=
Received: from AS4P192CA0015.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5da::10)
 by VE1P194MB0877.EURP194.PROD.OUTLOOK.COM (2603:10a6:800:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 11:11:19 +0000
Received: from AM3PEPF0000A794.eurprd04.prod.outlook.com
 (2603:10a6:20b:5da:cafe::52) by AS4P192CA0015.outlook.office365.com
 (2603:10a6:20b:5da::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35 via Frontend
 Transport; Mon, 8 Jul 2024 11:11:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 92.68.185.135)
 smtp.mailfrom=certhon.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=certhon.com;
Received-SPF: Pass (protection.outlook.com: domain of certhon.com designates
 92.68.185.135 as permitted sender) receiver=protection.outlook.com;
 client-ip=92.68.185.135; helo=smtp.certhon.com; pr=C
Received: from smtp.certhon.com (92.68.185.135) by
 AM3PEPF0000A794.mail.protection.outlook.com (10.167.16.123) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.7762.17 via Frontend Transport; Mon, 8 Jul 2024 11:11:18 +0000
Received: from EX01.nlhq.certhon.com (192.168.2.10) by EX01.nlhq.certhon.com
 (192.168.2.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.39; Mon, 8 Jul
 2024 13:11:18 +0200
Received: from EX01.nlhq.certhon.com ([fe80::4de7:fffb:a34c:6926]) by
 EX01.nlhq.certhon.com ([fe80::4de7:fffb:a34c:6926%2]) with mapi id
 15.01.2507.039; Mon, 8 Jul 2024 13:11:18 +0200
From: Chris van der Kruit <chris.vd.kruit@certhon.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] Licence error in openssh
Thread-Topic: [poky] Licence error in openssh
Thread-Index: AQHa0R7e127fA3Vbd0az7I4odZu7RbHshzwAgAAivjA=
Date: Mon, 8 Jul 2024 11:11:18 +0000
Message-ID: <e6aec5b3a55a4b01831923133e2d5287@certhon.com>
References: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
 <fc84d485caf7ebcc549256d3916a2164c968916a.camel@linuxfoundation.org>
In-Reply-To: <fc84d485caf7ebcc549256d3916a2164c968916a.camel@linuxfoundation.org>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.2.96]
x-exclaimer-md-config: a117f8f6-59b0-42be-ab48-0f8d11eb585d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM3PEPF0000A794:EE_|VE1P194MB0877:EE_
X-MS-Office365-Filtering-Correlation-Id: e7ae482a-5ca7-4a36-bc77-08dc9f3eb12d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UTJEdGMzNktZRDJNZXZJVkdadVZQQ0x1anpIVHBMY0xzSWpPMXdvcGUzOCtK?=
 =?utf-8?B?ZmZzeXBPZTMyYjNOa3gyUXZvT05QV2JJOXhXemNOWUJFdURIM2hMVGMybStD?=
 =?utf-8?B?LzQrT2NNdlJGWHNldHUwRnlFcXpONmoyYU5xRmhqMm5oMktGZXFLVVZGVTIy?=
 =?utf-8?B?Ykt0aEQyWEFDSzNITzQ5OFNtM3lrRHdvVFJXSDd4QnY3c3ViVGdJR2F4MHRH?=
 =?utf-8?B?SkhXZmhSL2g2NmUzMkFnNnFEdEluT2NVNVdyck91ZXd0SEdPeWhraFQzM3lB?=
 =?utf-8?B?N2puQnF2YnBid1ZqOURaSHFMN01UL29veFdKb0tsMVhGdGFOM1dBRTJFUjR5?=
 =?utf-8?B?d3AxME1CbFh2NkIvS3dKWVJuTU13d3RvYzRwYXYwbSs0cDVSaUFCc0dhdEFT?=
 =?utf-8?B?cWFKd3VjNytiUzIxMEdFUXBZdkhHMGR6bm5rcTREUEhId0xmSmU1WGFKRGdQ?=
 =?utf-8?B?UTFkMUFvdXFZY3k1UlNLbUtkK2pwT1ltUHhZS24wdG9QSVhCVkNmc05EWVRm?=
 =?utf-8?B?UEVBNWdGblJOY240RFpBRy9XMXR3am11NFJnd05vU05remlTcG5meG5YVXZ1?=
 =?utf-8?B?MytyTC8relVoekEvWFBuREhyNXZkMUhxSkdkVTBHQkhESDZCaFJMVFBWVFRH?=
 =?utf-8?B?T1BGOGppSjh6amhZK3owcUdiN2RTaTJGRlVFcjJXNlZmd3Ayd2I1ZTNsMWdF?=
 =?utf-8?B?bnZTTXpHU2FmUWN1S1NIVUtBUUk4dXUzdXdOS1hJVVFzS1AvMk95WldzMVVv?=
 =?utf-8?B?bDdCenlBQTBkSjg0VGtPWlkyM0M4cWdEM01OMXp5K1cxa1JtRVJudUdSZXN1?=
 =?utf-8?B?QTVuTWJubkhNUEZuSmw5THBYTWJkMGNBRmZqcVprbnlIbWxiQm9LRTJnM2tE?=
 =?utf-8?B?UExGTHdYVlQ0c3BxRUNjRWFoVkxoM0p2NTFXS1ZlSG1YSmd4YUxuaDdXN2dl?=
 =?utf-8?B?N2lMYWVELy9oTjB5ZUxMNG04VFAzN2hLOFFFcE01TWtSbFVPYUsxYlVzb2NZ?=
 =?utf-8?B?T05WMUZWVm1nNzVOcW5LWlgxTkJ4YnlvREVrem0wcXl2NGdxSWRVc2dxSzA2?=
 =?utf-8?B?Sm84cWQranVDcVNzTWh2bVFIRmJwdWxiRGdkamgzTzlvSlV2VzA5dERLR2gw?=
 =?utf-8?B?VmlIUUVSQ0tqd1ZEWTF5a3VWQTFEc1doV1p5L0ZBR2FyUnE1N3pTWWtJeVRY?=
 =?utf-8?B?NGRVUExTem9wNFhZNmNvTkRCaFR2ZWNJTlRLRGFVVUdweXIyOUNBRGpOYU0w?=
 =?utf-8?B?M213WTU4STMxU1lKZlg2NHNYNVVUZGc3TzJkZ3lKQ09naFNNMGdnOVU1RUFH?=
 =?utf-8?B?OTlITER0T2V1aVFNd1dMS3kyL2Z2Q2hzWEpNREhZcUtWMVZqUit5czFGN2dO?=
 =?utf-8?B?cDJxd3U1Q2JGa1dLYVRiWTZBdU9Mcjl2cEo3blNDblBCTzVZZHdhU0hKWTlz?=
 =?utf-8?B?VmQ4ZWhycFM1S2lNdUx0ek9kR29CMWZKbzdxZ2t1R2ZPN0E3Y3dCZjdSei9Q?=
 =?utf-8?B?RHF3Z1FmSkM5U0FXSGY2RnEvM0c3OXBONnhjUUltRXhwZC93NmI0NHpSU3RY?=
 =?utf-8?B?WXVGVDNGeTYzdXEwM05DMXFFOWNYdFhRMnVDUFlVcDNlOG1qNXZmRGl4d1RF?=
 =?utf-8?B?ckdhOTg4RTJYd3RBR3pmOENnM0NiQ293N1J4YTJTNkVKcVJXRjUyWWNyMjNq?=
 =?utf-8?B?dXM3N0pvTmJJb0EzYzVrbzdQOUFvb1YrR01URUxsZmhGT2dRb3VXUHVTaEtV?=
 =?utf-8?B?U2tWMXZtallXNnRadFNPU3cwdEVPOXdvZWgwZUVpYm9tMTJTWUZuS0dYYVFF?=
 =?utf-8?B?Yi82V1dUVnZVdUQxbWNWeDMrTHhWVFBhVnBiekF5cVluV0FiT0JZVVpJMFp4?=
 =?utf-8?Q?bxZWG6OzOjeCD?=
X-Forefront-Antispam-Report: 
	CIP:92.68.185.135;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.certhon.com;PTR:92-68-185-135.biz.kpn.net;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: certhon.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 11:11:18.8808
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ae482a-5ca7-4a36-bc77-08dc9f3eb12d
X-MS-Exchange-CrossTenant-Id: d6c7550a-6357-4d47-a905-c95e9b0f533b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=d6c7550a-6357-4d47-a905-c95e9b0f533b;Ip=[92.68.185.135];Helo=[smtp.certhon.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A794.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1P194MB0877
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 11:11:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13414

SGksDQoNCkkganVzdCB0eXBlZCBpbiBkZXZ0b29sIHVwZ3JhZGUgb3Blbi1zc2ggYW5kIHRoZW4g
YnVpbGQgdGhlIGltYWdlLCBJJ20gb24gdGhlIEtpcmtzdG9uZSBicmFuY2guDQpCdXQgSSB3YXMg
YSBiaXQgZWFybHkgd2l0aCBteSBlbWFpbCBiZWNhdXNlIGl0IGRvZXNuJ3Qgd29yaywgSSBnb3Qg
dGhlIGZvbGxvd2luZyBlcnJvcjogL3Vzci9saWJleGVjL3NzaGQtc2Vzc2lvbiBkb2VzIG5vdCBl
eGlzdCBvciBpcyBub3QgZXhlY3V0YWJsZS4NCkNhbiB5b3UgdGVsbCBtZSB3aGF0IEkgc2hvdWxk
IGhhdmUgZG9uZSBpbnN0ZWFkLCBJJ20gbmV3IHRvIHlvY3RvLg0KDQpLaW5kIFJlZ2FyZHMsDQoN
CkNocmlzDQoNCi0tLS0tT29yc3Byb25rZWxpamsgYmVyaWNodC0tLS0tDQpWYW46IFJpY2hhcmQg
UHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPg0KVmVyem9uZGVuOiBt
YWFuZGFnIDgganVsaSAyMDI0IDEyOjU3DQpBYW46IENocmlzIHZhbiBkZXIgS3J1aXQgPGNocmlz
LnZkLmtydWl0QGNlcnRob24uY29tPjsgcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpPbmRl
cndlcnA6IFJlOiBbcG9reV0gTGljZW5jZSBlcnJvciBpbiBvcGVuc3NoDQoNCk9uIE1vbiwgMjAy
NC0wNy0wOCBhdCAwMzowOCAtMDcwMCwgY2hyaXMudmQua3J1aXQgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgd3JvdGU6DQo+IEknbSBub3Qgc3VyZSBpZiB0aGlzIGlzIHRoZSBjb3JyZWN0IHBs
YWNlIHRvIHJlcG9ydCB0aGlzLiBJIGdvdCBhbiBlcnJvciBtZXNzYWdlIGJ1aWxkaW5nIG9wZW5z
c2gtOS44UDEtcjAsIHJlZ2FyZGluZyB0aGUgbGljZW5zZSBmaWxlLiBJdCBzZWVtcyBsaWtlIHRo
ZSBNRDVTVU0gaW4gdGhlIHJlY2lwZSBmaWxlIGlzIHdyb25nLg0KPg0KPiBJIGdvdCB0aGUgZm9s
bG93aW5nIGVycm9yIGR1cmluZyBidWlsZC4NCj4NCj4gRVJST1I6IG9wZW5zc2gtOS44cDEtcjAg
ZG9fcG9wdWxhdGVfbGljOiBRQSBJc3N1ZTogb3BlbnNzaDogVGhlDQo+IExJQ19GSUxFU19DSEtT
VU0gZG9lcyBub3QgbWF0Y2ggZm9yDQo+IGZpbGU6Ly9MSUNFTkNFO21kNT04YmFmMzY1NjE0Yzli
ZGQ2MzcwNWYyOThjOWFmYmZiOQ0KPiBvcGVuc3NoOiBUaGUgbmV3IG1kNSBjaGVja3N1bSBpcyAw
NzI5NzkwNjRlNjkxZDM0MjAwMmY0M2NkODljMDM5NA0KPiBvcGVuc3NoOiBIZXJlIGlzIHRoZSBz
ZWxlY3RlZCBsaWNlbnNlIHRleHQ6DQo+IHZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2
dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnYNCj4gVGhpcyBmaWxlIGlzIHBh
cnQgb2YgdGhlIE9wZW5TU0ggc29mdHdhcmUuDQo+DQo+IFRoZSBsaWNlbmNlcyB3aGljaCBjb21w
b25lbnRzIG9mIHRoaXMgc29mdHdhcmUgZmFsbCB1bmRlciBhcmUgYXMNCj4gZm9sbG93cy4gIEZp
cnN0LCB3ZSB3aWxsIHN1bW1hcml6ZSBhbmQgc2F5IHRoYXQgYWxsIGNvbXBvbmVudHMgYXJlDQo+
IHVuZGVyIGEgQlNEIGxpY2VuY2UsIG9yIGEgbGljZW5jZSBtb3JlIGZyZWUgdGhhbiB0aGF0Lg0K
Pg0KPiBJIGdlbmVyYXRlZCB0aGUgTUQ1U1VNIG9mIHRoZSBMSUNFTkNFIGZpbGUgYW5kIGl0IGlz
IHRoZSBudW1iZXINCj4gcmVwb3J0ZWQgaW4gdGV4dCBhYm92ZSwgc28gaSBqdXN0IGNoYW5nZWQg
dGhlIHJlY2lwZSBhbmQgdGhlbiBpdCB3b3JrZWQuIE1heWJlIHRoZSBzb3VyY2UgbmVlZHMgdG8g
YmUgY2hhbmdlZCwgYnV0IGkgZG9uJ3Qga25vdyBob3cgdG8gZG8gdGhpcy4NCg0KV2Ugc3RpbGwg
aGF2ZSA5LjdwMSBpbiBtYXN0ZXIgd2l0aCBhIGJhY2twb3J0IGZvciB0aGUgcmVjZW50IENWRS4g
V2hlcmUgZGlkIHlvdSBnZXQgOS44cDEgZnJvbT8gQXQgdGhlIHNhbWUgdGltZSBpdCB3YXMgdXBn
cmFkZWQsIGl0IHdvdWxkIGxpa2VseSBuZWVkIHRoZSBsaWNlbnNlIGNoZWNrc3VtIGZpeC4NCg0K
Q2hlZXJzLA0KDQpSaWNoYXJkDQoNCg0KDQpDZXJ0aG9uDQoNClQ6ICszMSAxNzQgMjIgNTAgODAN
CkFCQyBXZXN0bGFuZCA1NTUNCjI2ODUgREcgUG9lbGRpamsNCnd3dy5jZXJ0aG9uLmNvbQ0KDQpE
SVNDTEFJTUVSDQpBbGwgb3VyIHF1b3RhdGlvbnMsIG9yZGVycyBhbmQgYWdyZWVtZW50cyBzaGFs
bCBiZSBnb3Zlcm5lZCBieSB0aGUgQVZBRyB0ZXJtcyBhbmQgY29uZGl0aW9ucyBvZiBzYWxlLg0K
T3AgYWxsZSBvZmZlcnRlcywgb3BkcmFjaHRlbiBlbiBvdmVyZWVua29tc3RlbiB6aWpuIGRlIEFW
QUctdmVya29vcHZvb3J3YWFyZGVuIHZhbiB0b2VwYXNzaW5nLg0K

