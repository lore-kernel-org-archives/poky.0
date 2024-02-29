Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDBA7C48BF6
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 15:29:33 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.72])
 by mx.groups.io with SMTP id smtpd.web10.27999.1709220567751986884
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 07:29:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=PzTSIySk;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=PzTSIySk;
 spf=pass (domain: arm.com, ip: 40.107.6.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=W2U9Dgkm5olPx64eF4UCKNvqTeenVfeTxNDH8CJW1Rg1sJJHtXSnKumenpqBmqpCpq9Gp2zaE3K6dLE/jUz4W15hIBmiyuGaSP4+crjIcHX6xIyMoaytyM7NWFYW62vm8k5ZjE7yAnWoWQd5SREjF/ghnFPr7AZ4mTGXeqrTI/0vXW+j3eJ0KoRO/tJIsQuKcpOGmUAvA0XuT4qNBsQJdK7kkxis+4JN9xTlSTnQ1gEfFduOyO53U70+5VZxkNxN+82B2Qd3ghXOMB4BiaO7D2IRaGJ1noMzSuwWyaHZWSeeFfdbmiK85dfDSFXQYzdNkR9pDuWtE8PZ0aqBBfpnyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqFwPi7Vqzo511YZACiieiZk52i0M/9Gqiy5FrnoXUg=;
 b=SFC1I47eSW1pSnagqZiDP7SubKW2OwHQR+BeTL86YMBgVbwn8IoTDJrGGwGNIchsf+I3KcptjXfLgSvc16P3vGjJk2TRqfqEXwvTyOmphk+PC4m/qaa7U5j5p9IrITf124vPQr3TEBMo+VLpKaZu5vj5cjKcvR3jdozQG2nlIyawakln3EgIa3DHe7HkQ/XY5HwZpP6nmdb+EtScDHTRFW1SZsnfUrahWkINUiQekKsBg7872Tzz4+9VCt4FlImnK6xdnsJO5huq22LoXI51CQXwFPGNTz4fddVpVxVnrwlHCDqIMZ5nqrhq5wGgKKwJqofZuKAas/EcslcbOqYJmQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqFwPi7Vqzo511YZACiieiZk52i0M/9Gqiy5FrnoXUg=;
 b=PzTSIySkEwsdaGtMks69fRIGUeMU3wjk0IS85W/x2ubAnFg4V3dGWZvjJ4/xmO1+q5+Ks3yJZdiAOgewnlG1nYiyWyBI/xvGGIC/WAEKZuiHWv/zJL30zy+pMybMs4FQOotbNFaH4HiOkNsQPm6TsAzZ3HLN9ZBqvzh+LbBxi0M=
Received: from AS8PR07CA0050.eurprd07.prod.outlook.com (2603:10a6:20b:459::7)
 by DU0PR08MB9201.eurprd08.prod.outlook.com (2603:10a6:10:415::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.37; Thu, 29 Feb
 2024 15:29:24 +0000
Received: from AM3PEPF0000A799.eurprd04.prod.outlook.com
 (2603:10a6:20b:459:cafe::63) by AS8PR07CA0050.outlook.office365.com
 (2603:10a6:20b:459::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.27 via Frontend
 Transport; Thu, 29 Feb 2024 15:29:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A799.mail.protection.outlook.com (10.167.16.104) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Thu, 29 Feb 2024 15:29:23 +0000
Received: ("Tessian outbound c21fe6ca13cc:v228"); Thu, 29 Feb 2024 15:29:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8fe60d21bc39332c
X-CR-MTA-TID: 64aa7808
Received: from 4cc4f236b3a8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 4425D33E-A923-4E55-AB0E-3AD36482500C.1;
	Thu, 29 Feb 2024 15:29:17 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4cc4f236b3a8.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 29 Feb 2024 15:29:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PmG1JnYtZxJi6uG97o2xtKVa3Iwj72Fo5/xYd9F0J3PcbbHWzcWn/C5fOO9pf+GEmlu/V9LthGCQCJO0kJk09y22U/5AIIh9qzkCRPQGFMiB+fPoH4fB/bPpn7hJ8H48b0BmOUiaD280psEqalSe1XldLbY92N0VWZNmrxZpIhxsTzQ4HlsRl7PIMyHiqTsxX1uZ7Of3PV9LFoJ2SvS280ANwiGTN+v6WVbadN3ZsZemk7YMOVr5piUZJHkmOxAFI+uOJe5roF6IvKoM0Gm98wpChNp9zu7UZ5EbbDHlAa3qWaoTE7Az630L40D7zhRVviYHzz7O5d0JyxN4mUuc9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqFwPi7Vqzo511YZACiieiZk52i0M/9Gqiy5FrnoXUg=;
 b=JuLn4vauvotBYoLnNpIhaY3m06BqashpRxwxb7zj6vFIpmynMn/veRzIFqVeKWYesPvABLAoD+LJfeeFcoeUQAg+bymEDz+sWG1vfK5hKzaU+ERSC8IYS9L0YUawckQD811gcItb0vlCmnfwdkfBegu5U0dL5c+pQkzyFTAQ6CSy4usNO+BpSSebNwXKSLaC+UkQ9CN2M0ITupNu2LH2mCLsFW9p7CBytZ6gqmSP/Rl9xZRAYK4NqXqZade3wkOqdiVy/s3KfyVfHftUoFoLgC5CRDOyixUDRQX7ioyWM8NbuSiKlTOc/Sb8MDKZkIqh/vqNTRRzrEUsUlfkO81QdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pqFwPi7Vqzo511YZACiieiZk52i0M/9Gqiy5FrnoXUg=;
 b=PzTSIySkEwsdaGtMks69fRIGUeMU3wjk0IS85W/x2ubAnFg4V3dGWZvjJ4/xmO1+q5+Ks3yJZdiAOgewnlG1nYiyWyBI/xvGGIC/WAEKZuiHWv/zJL30zy+pMybMs4FQOotbNFaH4HiOkNsQPm6TsAzZ3HLN9ZBqvzh+LbBxi0M=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by GV1PR08MB10607.eurprd08.prod.outlook.com (2603:10a6:150:16c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 15:29:15 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c140:845d:a373:5e4c]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c140:845d:a373:5e4c%7]) with mapi id 15.20.7316.039; Thu, 29 Feb 2024
 15:29:15 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Tom Rini <trini@konsulko.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [PATCH v3] Add genericarm64 MACHINE
Thread-Topic: [PATCH v3] Add genericarm64 MACHINE
Thread-Index: AQHaax9Vxblslr8ZTEa4FhwAZMw/1LEhcdCA
Date: Thu, 29 Feb 2024 15:29:15 +0000
Message-ID: <9A45C507-855E-44E0-B8B4-FCA65F266FFF@arm.com>
References: <20240228114415.345202-1-ross.burton@arm.com>
 <20240229145517.GT3040305@bill-the-cat>
In-Reply-To: <20240229145517.GT3040305@bill-the-cat>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|GV1PR08MB10607:EE_|AM3PEPF0000A799:EE_|DU0PR08MB9201:EE_
X-MS-Office365-Filtering-Correlation-Id: 6181f7f3-47c6-404b-7a1c-08dc393b351a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 4TEOCHE2Ff/j6Grl+EBbJjKcCJUVyruCTi76R8dTK89Yq5xxwuD49fvAMEZaw+zNUFPl3RDjg4XEY5L6ALUN/sqEpiCLm+j1z/sYTHJudaxrbiKpONZysOYqX/3tSYFQaWhJBpMzKM+gQivQsegE7mS5o2vFOIoQfHiTLC5MFJhYR9eTxLR2iJpcc+TlQzQKq3nU7E4hjBS4xCeVVhuQinoP4DXlv4xhxvdEcB5k8KPa1nEKhbnDce4MaTmnWdFcbiIoGZCKyqGGqsMcDVdD3gl2UttPu7AWdgd+SJei2KXzDyCINL8fNfVWvYp0dj1KgeIQIfie1vETVKEWtpzTQBXvjln4D0nB9lgo8P9aA8vVIR6fATe2+CzH2GxedeMn5JqPta8DjbmDReuW8yMfs+R7uLCF6mCqOLRwRlxVFTS5gKenGHm7k5gF/t94bkItc4uRTGqVQs4eSbdgcCZ/GIhagqaaGskKVA1Dsjp6hJfh+08877D8jrsDSXvELweZ1go69McIwUBLmiiwChpTAuVUJHaPu5bl+0Wf3ARPAbgktYROcbEdoiOEIRxhIhHcXLl/TN2gjIaK7dXtR9rq6ZZaP4u7IOjT0Pu+EhtG6VB0/fDqyUHWFuoC1TzvFEjmMkUCRsWmYdw3quwhgE4+gO4W+Xc8mUz+kW3KnFWaLTUQ8FcDrHtgUln8DxLRHyY90+AldHF2VwMQejyWCraCHw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <3AAAB779ED5B974C8676CF794D031A87@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB10607
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A799.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	1b785ea2-c7ae-4ad2-3c0b-08dc393b305a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LKphpS273RXgCDGNBKpYJ5zkDAmnDkB0PkEgMjvzWTyGbHP94nFlBniMidd90Ukqo/mhNV9WbfEqhpgVfLcpe71tNg/39g4boUu3zZSakPFv9/lQ2PB5lfhqzXM8eiWk+ejkmEf155BZ6NpjT5p8AnKUDGO1sbIqDcFN0Mc2tJNaYSlpiKZj4bdOCSqze3LbJz/mTN/2fzNf8e/3BQg5D47LntvsyGwxfLTqTY/OkP5acz/iU59EPEpiT/Yn8RcjADKfBsMKOciTCMRXzbyb/JcF5QsUvqFlIcXgYRHU1OuSe+PhoMpfCNgNOBYl26GkFW0jCWpTRW/qSo+NtChk2Uyw9zKaU0L1IICNQFGC55eajlj4YsGdzsoFCyDEMOZuEY15883WhZwy8dhNlvNFOdaxGjtfrdlh5MOHz/c8WuryywhiAK/f/xNUurHfSRjzsVYsqyQxjI/EEOJe2H0Htt+lZTdvQLjRRTD3WAK/84pLKIfcPuoTKRjrLCpRL1dk+65qcYpLKUTd1psIuqRrqaOTfDHvvrmQAfbEFcMI1IESJubz0jRcuk1gjV6hZk8qLKcQoldvKOBBnpzq6nG95WhHsaaLXhsYVSf7p/xvrnFBNihpEHTt9iLxdf+Ckq4hLvRuv7ChSe9JsGHQxioOo6XvZVJe447GTFl1sOpXLa+8SSAd99mZYRh9xb0fLQfhJpHe+UEy9jB8ioGft6AaBMx0EH3LUhRetQnqiCu5VhHew4pizfhLzIpb3JobXC4u
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 15:29:23.5924
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6181f7f3-47c6-404b-7a1c-08dc393b351a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A799.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9201
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 15:29:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13285

T24gMjkgRmViIDIwMjQsIGF0IDE0OjU1LCBUb20gUmluaSA8dHJpbmlAa29uc3Vsa28uY29tPiB3
cm90ZToNCj4gDQo+IE9uIFdlZCwgRmViIDI4LCAyMDI0IGF0IDExOjQ0OjE1QU0gKzAwMDAsIHJv
c3MuYnVydG9uQGFybS5jb20gd3JvdGU6DQo+IA0KPj4gRnJvbTogUm9zcyBCdXJ0b24gPHJvc3Mu
YnVydG9uQGFybS5jb20+DQo+PiANCj4+IFRoaXMgaXMgYSBuZXcgNjQtYml0ICJnZW5lcmljIiBB
cm0gbWFjaGluZSwgdGhhdCBleHBlY3RzIHRoZSBoYXJkd2FyZSB0bw0KPj4gYmUgU3lzdGVtUmVh
ZHkgSVIgY29tcGF0aWJsZS4NCj4gDQo+IEEgZ2VuZXJhbCBjb21tZW50IGlzIHRoYXQgc29tZSBw
YXJ0cyBvZiB0aGUgZG9jdW1lbnRhdGlvbiAvIGNvbW1lbnRzIHNheQ0KPiAiU3lzdGVtUmVhZHki
IGFuZCBvdGhlcnMgIlN5c3RlbVJlYWR5IElSIi4gU2luY2UgdGhlcmUncyBkaWZmZXJlbmNlcw0K
PiBiZXR3ZWVuIElSL0VTL1NSIGFuZCB0aGF0IGluY2x1ZGVzIHVzZXJzcGFjZSwgd2Ugc2hvdWxk
IGJlIGNsZWFyIEkgdGhpbmsNCj4gdGhhdCB0aGlzIGlzIGp1c3QgSVIuIEZvciBleGFtcGxlLi4u
DQo+IA0KPiBbc25pcF0NCj4+ICtNQUNISU5FX0ZFQVRVUkVTID0gImFjcGkgYWxzYSBibHVldG9v
dGggZWZpIGtleWJvYXJkIHBjaSBxZW11LXVzZXJtb2RlIHJ0YyBzY3JlZW4gdXNiaG9zdCB2ZmF0
IHdpZmkiDQo+IA0KPiBhY3BpIGlzbid0IHJlcXVpcmVkIGZvciBJUiwganVzdCBFUyBhbmQgU1Iu
DQoNClRoaXMgd2FzIF9zb3J0IG9mXyBpbnRlbnRpb25hbDogd2hpbHN0IHRoZSBleHBlY3RhdGlv
biBpcyB0aGF0IG1vc3QgYm9hcmRzIHdpbGwgYmUgSVIsIEkgZGlkbuKAmXQgd2FudCB0byBkbyBh
bnl0aGluZyB0aGF0IHdvdWxkIHN0b3AgdGhlIHNhbWUgaW1hZ2Ugd29ya2luZyBvbiBhbiBTUiBz
eXN0ZW0uICBVdHRlcmx5IHVudGVzdGVkIHJpZ2h0IG5vdywgYnV0IGluIHRoZW9yeSB3ZeKAmXJl
IGp1c3Qgc29tZSBtb3JlIGtlcm5lbCBjb25maWd1cmF0aW9uIGNoYW5nZXMgYXdheSBmcm9tIHRo
ZSBtYWNoaW5lIHdvcmtpbmcgb24gYW4gQW1wZXJlIEFsdHJhLg0KDQpJ4oCZbGwgcmV3b3JkIGFu
ZCB0cnkgYW5kIG1ha2UgdGhpcyBjbGVhcmVyLg0KDQpSb3Nz

