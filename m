Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10EC8C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 14:59:27 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.55])
 by mx.groups.io with SMTP id smtpd.web11.58536.1718636358453951076
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 07:59:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=SKjZPFI8;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=SKjZPFI8;
 spf=pass (domain: arm.com, ip: 40.107.21.55, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=G8jv6xNLPBpXF7IZmrEffBN/kSoe8cGuLOrAl5Q2o2F5HDtttyLTu3FzVUzyFU2mRVaTEGuEMapJE7BWijNfbwWlWvIy0FMzdYVlvN/fr2L7e/1PlDD2fAWGLTmDymVzrqm0ZMavVsggNCDgECHQIGbRWrbX0kOKnse6SaK0yU7I4xzVqefwIYtcau1j+zetme3TONbcjq1voAoZjSz/67iKSJ9uzt0be8/hlV5lf4h/I1xpIX03IkwoVFP4klZa4aIMc502Y7UnnAW0e+6IQ6rYf8FM4KE/QjvOEbXK/dZS6cgGD4wI/33q3oXXA70LGebdvW0aLxPEcYP20O20Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wscEL3g2NNvTsberpmPd12Sc1nRScTE91PCJ3Jokl/0=;
 b=Q18mtn0xXOV8yDXjD+O5Z7f2zxJDSWJUVG+F5utAXMFfYS34XvYwxYiDT4yeUB3zzbp0VCFnpNH20UmNCZFJZMGF0LLEKfIVJP0ywRQtA8KkndZEVMk1A889rw4BI98iZl4F0m+r3ariWM5cGjByqfk1ExsqvqiXngmMucSxZvXPt46LoNG1H+0/AKT6oKT//mm8RpshEoOVmVYdxANRhP0YGGbirn7Ye8mVWM06G1UOGl3X0fLDB30rLASNH29Q47GxopYZJksAtubyIobYllTXiatkERqSvRSNLpQrOo0up+5fRfOjGrqHWEE4zTgERg18TNO0YBlg3Pfqyp/eHw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wscEL3g2NNvTsberpmPd12Sc1nRScTE91PCJ3Jokl/0=;
 b=SKjZPFI8Q+GYzPpxDKjZfP5XBvFmuI6HNEssxm7wlMJD1WIKmrp8CYOk+2o57VUV8wF9p6o5ZPAzyDDY/dQePceR1nJJvi65A1bVIUPWUdXpaDsGxkz+MQ61Wjwu6xmEbThe7Be4JZwkLYd15J3MT6rgHdXHJ8+lw74B763/J+M=
Received: from AS4P192CA0019.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:5e1::8)
 by DBBPR08MB10386.eurprd08.prod.outlook.com (2603:10a6:10:534::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 14:59:14 +0000
Received: from AM4PEPF00027A60.eurprd04.prod.outlook.com
 (2603:10a6:20b:5e1:cafe::3) by AS4P192CA0019.outlook.office365.com
 (2603:10a6:20b:5e1::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30 via Frontend
 Transport; Mon, 17 Jun 2024 14:59:14 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A60.mail.protection.outlook.com (10.167.16.68) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Mon, 17 Jun 2024 14:59:14 +0000
Received: ("Tessian outbound 1986e26a179a:v339"); Mon, 17 Jun 2024 14:59:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 948d29265f756c27
X-CR-MTA-TID: 64aa7808
Received: from ca01fb57ecbc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 11C184E0-344A-48AE-AF91-9DF2E77AC7E9.1;
	Mon, 17 Jun 2024 14:59:06 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ca01fb57ecbc.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 17 Jun 2024 14:59:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nd0v4vJlXjKxMzcgkRFdLyo6yrv6eNNmXnU3pWOkarNVjQG/gxJIszFUo+uA1px/Vl7C+wSz9RSSQFfIWqW2+u9OuHiz54deQtSFjW/tqnoD7Mg2kn4J6YNRHqF5iZkW2vismbeJDXVbQlbU+tIkgcqdljR0fu5jCHoIMCzV4FFFN40848+hWMTyEjjmFbbf0/+9Pt2GDxLmwlO9KgNeuhJ7QS75bWb/OiQQHpbCbQ9q9nLPemm6EIHZq9LPGCwN572Z6cOc3OaChzo7tqgKwEs5k7RX4eh7ioeNgCS0jj+HjMnJ8+Wcr1hnSfsWFoWJtmb1aFvEipLe/VK8vW30yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wscEL3g2NNvTsberpmPd12Sc1nRScTE91PCJ3Jokl/0=;
 b=ifTel7NtjIBiWIPWeMPv14Mn0t9ioWXcjP0RJqHidcOUUOSrDiplQaCj14uVDDSoVto910sCbSf7iwPOf3i6+SsPrmHWcy40RZ52i4dPlLfyRhLiM4tSmouBV5jN35UBDzMkxsQgg1So7cdfzckgfMTel60fk3dCRyB/iH0QPQHmfs+1TG0CwDgq2rrGwB3/TwqKS7AEi9YLBPkuJAzgw2bJRuKWr1tobKpf0wFfXC1zoOZbqIdq8czgFA5b67DRrqhstdr/GlWwV0IZ6YSvpmO+CaIhDP1F73tx2jdebd4moYgTOTwGh/Yr44KV12TM1S0h1c4H4CzXRah0VvBvPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wscEL3g2NNvTsberpmPd12Sc1nRScTE91PCJ3Jokl/0=;
 b=SKjZPFI8Q+GYzPpxDKjZfP5XBvFmuI6HNEssxm7wlMJD1WIKmrp8CYOk+2o57VUV8wF9p6o5ZPAzyDDY/dQePceR1nJJvi65A1bVIUPWUdXpaDsGxkz+MQ61Wjwu6xmEbThe7Be4JZwkLYd15J3MT6rgHdXHJ8+lw74B763/J+M=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9996.eurprd08.prod.outlook.com (2603:10a6:102:35a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 14:59:04 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 14:59:04 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "star@gmx.li" <star@gmx.li>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
Thread-Topic: [poky] apply a patch to a complete meta-xxx - before using it
 (in kas)?
Thread-Index: AQHawLg2GSyZ8gFB6k6dwygylU0KlrHMAUYAgAAA0ACAAAo2gA==
Date: Mon, 17 Jun 2024 14:59:04 +0000
Message-ID: <F97F4F85-AAB4-4C8A-93CD-5218C675F729@arm.com>
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <20240617141926002dfbfd@mail.local>
 <fa1a0f0e-93a5-4b27-9661-7431902a2d4c@gmx.li>
In-Reply-To: <fa1a0f0e-93a5-4b27-9661-7431902a2d4c@gmx.li>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9996:EE_|AM4PEPF00027A60:EE_|DBBPR08MB10386:EE_
X-MS-Office365-Filtering-Correlation-Id: 965a2b47-b441-41db-540a-08dc8ede0dac
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230037|376011|1800799021|366013|38070700015;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?TERkQXRYM0I4ZUJtNmJQeTIzOUtXSGJ3blF1cUtUbkp2RGFCSDhhdVh6NDEx?=
 =?utf-8?B?MERnSzc4KzAzcDBYRWYzQ3o3MGZkeHY4VmFEek9zYURJVFJwdzhRMXlwYlJD?=
 =?utf-8?B?VjlHYUUrbHBXQWwzYllmZ2tsNHRmWlpUTERZTWhlbXJJQUY2RUZ1eThiYXph?=
 =?utf-8?B?eGxpMmd0UUJZMXc5RmNWUHNIaEl6ZXNPK0xiU2pjVFMvQ3Fxak5tMVRYRzdu?=
 =?utf-8?B?aWoxRzU1MklMaFlyZGlRM0xpSSs5cWg0VFdzRG92Q1YreWJMY0V5Y21KTllD?=
 =?utf-8?B?UW8wTFVFNW51ZEl0WWlwNXZEZkY3elJUQkg1V2h4R2NXWGJKVzVid0hyYkhD?=
 =?utf-8?B?bVhOTHMxK2dNMDYrNTNzWEZYQWIvajQzaFZqQWZ3RWJhWThzbHE3WGVFemVz?=
 =?utf-8?B?SmNVbERjeWs4TVcrMWRDN2IwYVVtVlhaclFmcUdGUmFpNDEwRmk1em5QaGFK?=
 =?utf-8?B?Nm1zUlFyejgrZE9LdkJoTTdZaFdRZ1ZrNE52M1ZtQURUMWlzV0dMRFZ6Y3F5?=
 =?utf-8?B?MUZlVlM4UWhQMWlpTGc4Q0IxZ2dFcFFHZ0FTMVRZckFXUnY1TGkyMERaV1pG?=
 =?utf-8?B?YVpTRVVhMGgzRkdtRmZoRkEweGpKVzY0a3RKOHljY3M1RlpUcWZWeVV2bkVQ?=
 =?utf-8?B?R2VFd2hVa05URThLZGtydElGSy9JY29GNmxQaGRLVlQvcDFMNm9DTFB1RXRM?=
 =?utf-8?B?bXhxaHVoeDZFQzRrc0ZuZ1BTZWRveGtGaWxTS2Q2SmdlZUZzMVVjS2JSWHds?=
 =?utf-8?B?QitFUHlFeWNnZGEwbDBXQnp0WmtUVml2Tm0yMUtaUWxpaFRlWUo4UjF4TTVz?=
 =?utf-8?B?STNBQ2lsTWRJeS9wUy9weXRMZ2diajBMUEpLTHNJZWF1T0R5UWhRWHFWVVdH?=
 =?utf-8?B?TkZ6Qnk2TWlNSk1Qc3ZDalltQVNrRDZSdytYc1hjeTJFYm9PNkhXUmxDTmlO?=
 =?utf-8?B?bndJTGJ4aldKaGJlTGNaa1QyMDAwb2ZEeXRUNHpaN0dtNlk0OVhGR0xoQlkx?=
 =?utf-8?B?dFhPQTdvbm03TUw0d3JJb29DbXdWRFFlWXoyUlQ3YWhBNCtQN2NLY3ZHTUxq?=
 =?utf-8?B?WVpyckhaYnMrcGpwYmc4U01JOTh6MHhHbFRITUZRN0ozdEdiakpBSkZQS01r?=
 =?utf-8?B?cXpkdDJZd3I5SGx5NjNXZ1BBZ2RqdEkxU21xczZJZzdNNzM5T1pGRjkvNkY1?=
 =?utf-8?B?OWV5aVp4UGRBRGh3RXQ4S29vdmtMSStZRi9uMXBKcG0yNVA0Nm1YbEVadS9Y?=
 =?utf-8?B?dDJ5Y3FFKzJKZW9ZL2dNaXJsdlBydlVGZjNwQi96Mzl6WEdNN2VxOHpGMDN2?=
 =?utf-8?B?VmZzV2JPWjkrR3ZGR2FCTEFmOG1OeEIrYlFLb1VxSEJhYW9KOU9BcUFzUU5U?=
 =?utf-8?B?R3JGMk16K3A4WGo4UkhIOVVHSGJ0TTF4OWttWmRWY1B5cllHVEswR01ITTBN?=
 =?utf-8?B?Q1FYSndIMVc3cWxKYTZkcXlFR3F1Z0I1cEVqVFlENHFZU1NKSzNabkMvVjZ6?=
 =?utf-8?B?Sm1obWNhbDk5MHo3N0NMNjJoaDliVUJXcGpNOTRldmZvMXV5aUZabUNSbEo1?=
 =?utf-8?B?bzhlSHRFTExlRGFCS1ZkTURpWExsYzRZZXZPODliaWxENTNIMmF6c3dUT1kr?=
 =?utf-8?B?R0tHUkgzSzJBWGFDNVo5eS96Ny9jK2dNL2dLTXhQM2xMdFlVRXJ3am5WYkxn?=
 =?utf-8?B?YUI0bEIyRUVTNFg4eHZHdndWS1dDTWQ0bGhOcEwxZnN2NUlRTEFJMmtQcWRa?=
 =?utf-8?Q?aOrmV7uM93e99chxS9L/POvW2m1iBq8Efr+H9VS?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(1800799021)(366013)(38070700015);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <222BD4E65BD1F04EAF16BC60DB52B206@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9996
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A60.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7f011e59-20f6-4636-05fc-08dc8ede07d6
X-Microsoft-Antispam: 
	BCL:0;ARA:13230037|35042699019|36860700010|376011|1800799021|82310400023|34020700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bVBNU0NxdmdDekhSQmZ5NnJDd2FWN0tRSFFNNk5aaXI1YTBVSFRLK0NWbTBT?=
 =?utf-8?B?V28xYTlOSjYwNjVnRkZ0MVBscDNyRFVocDhDeEF1d1pPOG4wSm1XVU80TW50?=
 =?utf-8?B?U1ByeGMxaVNLUHNMaExBamsxcGdHY3l1UENmMTBqNFp1UGU0aUxYSXVxQlIx?=
 =?utf-8?B?K2Ywdkh4aG5WUzZHQWhqdXV0K2VkZ2lTeFRweUltMzdYeW05dXF6V2RscG04?=
 =?utf-8?B?QnlaOHdkeURFb2NyL1Fsa1VjTUJmVHA5UVVLc3VZaDZjRDVtMnpLMUtFQTVI?=
 =?utf-8?B?VlJYS2lKWUNMZFJFbHgrdmlENFRFd2p1MGVERkIranFyeFNsUG1qVjdaaktH?=
 =?utf-8?B?aUdqZDlhUzhoSlRtNFhTK2YrMFV6UXpQejJLQlVMcURKTXE0elArbW5WMXUw?=
 =?utf-8?B?YmkrV1ZGRXoxQWZOemJFUGRRTklNZGxEYzhucHVmNUFSenZLM1IxNzFEdkor?=
 =?utf-8?B?OXBudkpncXRzZko2UElZVGZ5UFJlcjI3cFBRcitRNzk4VURvSzlHZlFTK1Mr?=
 =?utf-8?B?YzdGMStkWXRxaG9zdlVJOE8vdUpKTmlBcmFTMFg5ZWdSNE5FZjlOUFg1ekpE?=
 =?utf-8?B?TlgrZmd4K2hOeDMxYnZ4UzhOMXdkQmVQckFzbEpxY0t6SnpKcUowZ0VVdmR3?=
 =?utf-8?B?TUtabkw1UkxKM09lVVZHaHROaDBmVTc4VFFQdTZNTVh2Tjg4Q0VSdlJTY2g5?=
 =?utf-8?B?YnJhblNpdVVKRzB6dFFmMnpnVmJZbVBtTW1UTmZWTHhndzdIczRocncyWWVE?=
 =?utf-8?B?OXBtUThNNW1RVkZiZ2QzYkhVbGc4ZlhGQmRZc3FHZ3lsNWJlbkdseXUvMUh5?=
 =?utf-8?B?ZkREOEx3MkpUYUhaRXBsdDl0WndETGpNcThlZ2RBRWhSZzk0UEppTWc3cm1q?=
 =?utf-8?B?cmZuOWJKL3pjOWkvVUo0Qjc1WHJlOFRaM0EzcWVXOHl5ZzNubmJQUVFDTXVj?=
 =?utf-8?B?UlhpOE1OcUluSmU3c0hrUElMR3hxZHBieEJDT0NkbVhNUm1aakZySXlXZFUv?=
 =?utf-8?B?dkk1bU5pMmQweVNwOFZTTjhQWG9FZE5DMDhSSWdnVEVuOWRHSFlwSWJDSjFF?=
 =?utf-8?B?OE5PV1NZcGVrVk50TTFhb21jaW1hRWFnYVhiUUI2Z2ZPcmM2bzNpRkZzeWdh?=
 =?utf-8?B?a3Q2NUZxa1RsWHE1R01EM1RZMFFDT2I3UHJpTlZmTzd1cGhhSHF1TENuZ2hw?=
 =?utf-8?B?Uk84c1YvVEUwalN4VHl2WUlGbndzZDRLUXQvNjFDRG11aytVM2lvK3NmaHJq?=
 =?utf-8?B?Wm83dnR0ZDlWd0t6YmdsTjdZaDErbFVSOWlaMVdtYTc3WHVtcHBIK05YWVll?=
 =?utf-8?B?MlM1ZTQ2L1BxOFZWdUxVNzlPZkp3dHQ2OXYwWVJTeFFtbXoxK05iQVNBZ2da?=
 =?utf-8?B?enB0aThYUmhJN0V0VXc2eHNEYnkzREptTjd2ZURnemdJNldFMHlUNTJRTFdy?=
 =?utf-8?B?a1lGU3BvVFJVU3hUYlFHcFFtb25xejdNbU9HN1pnbFhaNjlDaDdjRmMzNkZO?=
 =?utf-8?B?YVc3cC9USzdUZVBKRGFmeFFFYXRoOGNvVHJET3VRdkZTbGY3NldxdzkzZXFj?=
 =?utf-8?B?dkJ0S3pnbjZQcnRpVzl6ZkNoWllXWmV2TWljU3ZwWG5EZ3dOc0hDL1ZpZjBu?=
 =?utf-8?B?anBXNmlZYUF1TXRWRzhCYUpKVWNkenpLUE5QVVUza1JuUEptb2FVMWVuZ0J6?=
 =?utf-8?B?WEU5b2Z3Uy9GWEdrcVN2cFRkMWRHN0ZacUplWHJKT0NYVlUrQ0ZYNDRpejJZ?=
 =?utf-8?B?Zk9CdVA0ek9VczV3QzJqbkFLUGV0K3YwUUQ2aGlSOEZOOHkyUHVSUnpVUlYr?=
 =?utf-8?Q?rfdjFlT73rJWvUYiYifWnwLmiPE6JPe4RZcVg=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230037)(35042699019)(36860700010)(376011)(1800799021)(82310400023)(34020700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 14:59:14.2580
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 965a2b47-b441-41db-540a-08dc8ede0dac
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A60.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10386
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 14:59:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13378

DQoNCj4gT24gMTcgSnVuIDIwMjQsIGF0IDE1OjIyLCBTdGV2ZSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8c3Rhcj1nbXgubGlAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0K
PiBPbiA2LzE3LzI0IDE2OjE5LCBBbGV4YW5kcmUgQmVsbG9uaSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyB3cm90ZToNCj4+IE9uIDE3LzA2LzIwMjQgMTU6MTM6NDIrMDIwMCwgU3RldmUgdmlh
IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+Pj4gSSBuZWVkIGEgdmVyc2lvbiBvZiBh
IG1ldGEteHh4IHJlcG8gdGhhdCBoYXMgbmV3IHN5bnRheCAiOiIgaW5zdGVhZCBvZg0KPj4+ICJf
Ii4gU29tZSBvdGhlciBtaW5vciB0aGluZ3MgaGF2ZSB0byBiZSBjaGFuZ2VkIHRvbyAoYXMgY29t
cGF0aWJpbGl0eQ0KPj4+IHN0cmluZykNCj4+PiANCj4+PiBJIGNoZWNrIHRoYXQgbWV0YS14eHgg
b3V0IGJ5IGhlbHAgb2Yga2FzIHRvb2wuDQo+Pj4gRG8gSSBoYXZlIGEgY2hhbmNlIHRvIGFwcGx5
IGEgcGF0Y2ggcmlnaHQgdGhlcmUgb25jZSB0aGUgbWV0YS14eHggaGFzDQo+Pj4gYmVlbiBjbG9u
ZWQ/IFRoZSBrYXMgZG9jdSBjb25mdXNlcyBtZSBhIGxvdC4NCj4+IA0KPj4gWWVzLCBrYXMgY2Fu
IGRvIHRoYXQgd2l0aCB0aGUgcGF0Y2hlcyBwcm9wZXJ0eSBvZiBhbnkgcmVwby4gSSB3b3VsZG4n
dA0KPj4gcmVjb21tZW5kIHVzaW5nIGl0IGJ1dCB0aGlzIHdvcmtzLg0KPj4gDQo+IA0KPiBEbyB5
b3UgaGF2ZSBhbiBleGFtcGxlIG1heWJlPw0KPiBLYXMgY29tcGxhaW5lZCBhYm91dCBteSBhdHRl
bXB0cyB3aXRoIChmb3IgbWUgbm90KSByZWFkYWJsZSBraW5kIG9mDQo+IGVycm9yIG1lc3NhZ2Uu
DQoNCkFzIGEgdGlueSBleGFtcGxlLCANCmh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvbWV0
YS1hcm0vY29tbWl0Lz9pZD1mZWY1ZWFmYzA4NThiNzkwZGYyMmI3ZTQwMjVmOGVmY2RlMWQ4NGIy
IGlzIHdoZXJlIHdlIGFkZGVkIGEgcGF0Y2ggdG8gbWV0YS1hcm3igJlzIGthcyBmaWxlcyB0byBw
YXRjaCBwb2t5Lg0KDQpSb3Nz

