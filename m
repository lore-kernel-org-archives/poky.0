Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59C59C2BA15
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 15:53:07 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.75])
 by mx.groups.io with SMTP id smtpd.web11.60043.1718639584012993741
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 08:53:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=QIYmcUnx;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=QIYmcUnx;
 spf=pass (domain: arm.com, ip: 40.107.22.75, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=EuqMJCSzPlS9qIN62seM4X0mE0l/OMAzNa5ZxE++Xr9T0fwf9fNojtOmX5GdlL8S8jIIfguy1T+B8PD3/g6l9zSpOXwpcHfFt4XJYB2XXjpyiKPxhJLgz79SFxIfUuRMB/SzzrC03xF2p8YjascMLMmubcag+ZdeoGh1Ku4KLB4yhNqaLR+ooA8JRJ5l8CYiOhg5cv27cwyT5XQ96TPAFcEvzFHVJnsw9ejH+IX1avPaOMbAqGrA9ml42WahkhDap4nRJaR+1VCq8Ggduq3s2UimS3ACZYvJFtdPwfdcgVQ6RDHyIbCdXC9Y970LraSNqIoSLrAxwLagK9d2zIW6mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lwzCfo0+qzXdo00V/RgsZWWSRv3zEffV/8Nz2zYetGM=;
 b=lajid4BEfkXzsZlSn8auYCx6g9FPuJqTcVh3HCT+4rAGAat9aqnI5IfG580AL38w8/fT5o9W0oOcH/GcH6/eqLmWHt9x2sDr8VU5BoMZ4hRcKSd1mgwt1/JbEffPE1smCf7/4muRbGn/iuCOIN7MSBugxz2PSWSxgz3ulQmqCk7a5gINiElk6Dv5WcA0Tb745Y+RRdfBEuj7F3ILnMgVFPvy0wpQmy5ZLpew/cL7R7c0BTYemp/tmx6sxk5hJczkwDR/f27qhT/3WNyfbT1eQxTveI41KD5f/tnnJSbl8K7sfJ3tKglyCWWMOViIkWXRgZGdwZsJgF1j5UoXCJwNfg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lwzCfo0+qzXdo00V/RgsZWWSRv3zEffV/8Nz2zYetGM=;
 b=QIYmcUnxWUXS2txOW0tliaQ1GHYc9+wx7dG8Fm0GwuJq7ep8DjbtCS9qtz8X+gEUcKl0t/KeuZnD/DikLD9hpalbG0TT/lcxGLH2Vx+wK+ZWSMF/tK51uPih98nlgB/Se7GgnejMotLMw0r4dthI8Or3ppq1KEbLK5A82RF5ZNg=
Received: from AM0PR08CA0023.eurprd08.prod.outlook.com (2603:10a6:208:d2::36)
 by PA6PR08MB10829.eurprd08.prod.outlook.com (2603:10a6:102:3d6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 15:53:01 +0000
Received: from AMS0EPF0000019F.eurprd05.prod.outlook.com
 (2603:10a6:208:d2:cafe::ef) by AM0PR08CA0023.outlook.office365.com
 (2603:10a6:208:d2::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30 via Frontend
 Transport; Mon, 17 Jun 2024 15:53:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF0000019F.mail.protection.outlook.com (10.167.16.251) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Mon, 17 Jun 2024 15:53:00 +0000
Received: ("Tessian outbound 1986e26a179a:v339"); Mon, 17 Jun 2024 15:53:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 47b14d389bd0ac03
X-CR-MTA-TID: 64aa7808
Received: from 0f0e9bb4e0e8.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id EE14F213-02E9-4C13-93A9-16B7BEF0A950.1;
	Mon, 17 Jun 2024 15:52:53 +0000
Received: from EUR02-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0f0e9bb4e0e8.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 17 Jun 2024 15:52:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vxx1xqdB2ciLUc76ZTRhzW7DH9VLBfUR+rXpOm2xR8hNDs9sb6sxsiR+i4QeD/6r7pYOkkDIATbh9em98iWqYu9o4eSCpVbj2AgbHW7FytGgwQpVH5gATZf9k3DjXxNquGXLUB1nQrnHaBfzyT6zmq8Xmb1hqx6RXwbjg+koaQhZVm/gDmrUL+wHYRTlkWIaK4GJHyaV2pvwnncpKNhgtjDt1pbUxu1eD3PZF+cGC+jZuBwfSOOGQeu8lhcxTgasI9vMW5I5a8Ft1swu22fpn6Vndi9eZQkQoYlUl68jIHETBMyz8918qE/YaNyYY8JdrAF66D4cewleijbchMWWUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lwzCfo0+qzXdo00V/RgsZWWSRv3zEffV/8Nz2zYetGM=;
 b=D2iONc1oOA/YUz9yEHH1UWXerQocciXGc+Zl/eV5uSFEQv9KdiMLCtuTyNlSCcjHDKlPlpmK7iJ4tRz7RE8euIq2+wI8hIwPmL5mMioxRdfDa79tJL1ZoQfOR+1BFwS6pE8Y7UyBWHoKS7TL+UQ+2OlHiIJCWdUlbed/9WnFiPP5NO74vFaogjj4kKMKTIULbqszM7RWDgOE6HU77f6DlJ7YnSJBF/3oQh6BeaEYKK1O07/QciK8QdQJxFn0Yz9YvSc3in2YPo8V/qJ4fN3KXars8n59+OpenhsyFbkEcPaAYv/bB//gQg6ws87qTX86EF1Rqg/Pqo6AZWMdrDeOzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lwzCfo0+qzXdo00V/RgsZWWSRv3zEffV/8Nz2zYetGM=;
 b=QIYmcUnxWUXS2txOW0tliaQ1GHYc9+wx7dG8Fm0GwuJq7ep8DjbtCS9qtz8X+gEUcKl0t/KeuZnD/DikLD9hpalbG0TT/lcxGLH2Vx+wK+ZWSMF/tK51uPih98nlgB/Se7GgnejMotLMw0r4dthI8Or3ppq1KEbLK5A82RF5ZNg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU5PR08MB10467.eurprd08.prod.outlook.com (2603:10a6:10:519::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 15:52:51 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 15:52:51 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "star@gmx.li" <star@gmx.li>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it (in
 kas)?
Thread-Topic: [poky] apply a patch to a complete meta-xxx - before using it
 (in kas)?
Thread-Index: AQHawLg2GSyZ8gFB6k6dwygylU0KlrHMAUYAgAAA0ACAAAo2gIAABikAgAAI34A=
Date: Mon, 17 Jun 2024 15:52:51 +0000
Message-ID: <16153F75-25A9-4FB3-9295-8A0018E269AD@arm.com>
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
 <20240617141926002dfbfd@mail.local>
 <fa1a0f0e-93a5-4b27-9661-7431902a2d4c@gmx.li>
 <F97F4F85-AAB4-4C8A-93CD-5218C675F729@arm.com>
 <a5390387-0743-47a1-a144-38b04f7c19f3@gmx.li>
In-Reply-To: <a5390387-0743-47a1-a144-38b04f7c19f3@gmx.li>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU5PR08MB10467:EE_|AMS0EPF0000019F:EE_|PA6PR08MB10829:EE_
X-MS-Office365-Filtering-Correlation-Id: 81392545-de65-4714-b9a0-08dc8ee590e5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230037|376011|1800799021|366013|38070700015;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?dGhrWmp5c052QUtpRzlUWElHbElXRzVsQkhpQWtzRTNGb01zLy9nWlBlNlpx?=
 =?utf-8?B?Q00zYm5ONFpDdkFDYkZIM0FiMVJpbWRqQmF5dEtUcXQrUzN4Z3ZnSDVwa0tE?=
 =?utf-8?B?c3luajFFak9JQ0dCNXM5OERNYTJkVDIvYWpqUFUyWTNGM2lvNVJtQll6SERp?=
 =?utf-8?B?ZnpHUjV0NW91Q24vY1p3OWpITUdZTmhtTkNld0EvU3gwT2piZzBHNmRrZmhV?=
 =?utf-8?B?YTNRMmRWYWNuc1JZL29GU003N0EzajAyQkhLVUQ0VUVTNkpabUhxczdiTmRU?=
 =?utf-8?B?MGZYeUJySFJWUXZtVDkzbVpyaVl4V1dGdzJRbGJLQnl0UTVtaGcvTXJ4cU9P?=
 =?utf-8?B?NDNqcWRjMEREbkw5dDY1ZzlxMXBscXBSYTZxc0lpbWt2TVBzY2VxYVJ4VjY5?=
 =?utf-8?B?ODU2VlBmcDcvYk9ZcHRwRHNRZ0Y4OTNxWFhDK2NWYmlQOUNleGFBdzRiSHRJ?=
 =?utf-8?B?dFNrTEJHL1VYYk44Yk84SlFPM3NLT1ZzS3Y4SkFvVG93dUY1ZUYvMjRKeVE2?=
 =?utf-8?B?LzFkQzJFZzR0a0NkY2VSWkdsczlVMCt1ZWdmU1VITGJyS3RONVBXOUFzNk9E?=
 =?utf-8?B?b2dUd1ZPeE5kUm5rM3R3OVpad1JXUmN3SFZxTktDUTg4dzZIUzNrNmpVdDBy?=
 =?utf-8?B?MWdvU2FEWEc5K3RmTm5XTmZma2ozQzlxeHVUT3RPc0dJZzJzcHZmaFJHZFR1?=
 =?utf-8?B?ek5laDJzWVQvbnQwL0tJclVJeVVaTHRuVnVLL1BaU0NwSXdkeWZhazNhemxr?=
 =?utf-8?B?aEMvQTFqZDJ0azVDWmVFZDA0RzJuRjBFRFRBa20zY0R3WXdoSmJQUkhSREFh?=
 =?utf-8?B?YVVKQmNETXY3Y3NwbE1oUjliNklrOWlkOUxFeC91dHZLQnNEYlY1UmxoVE15?=
 =?utf-8?B?bkhzdXluYnU0cDJkZ3FSeGx2U1VnZG9uQ2RIREU1WWdVMTJ3M3drSDZ1d3Uw?=
 =?utf-8?B?ODlwMjJEbGtuTGJyRGhaT3pWckxSVWFnVDlwU0R2VnZEeUo1RHFJQU9QR2lW?=
 =?utf-8?B?QlZ6Z0J4bW1WUGVBeTN1VnJ6bTZRLzNXN3RLMHNGODVVeVF1aHdYWW5vUVh0?=
 =?utf-8?B?V3phWnJXcE5tZGJMM1VrQ28reEc3YW5FTGRZZll6TzBBdTQzY0R4TkdHSDBX?=
 =?utf-8?B?Rm1Ca29YWnVibDNlRGRuS2VISFNBUmphbFdMcm16WVlJajBHeUpOR29rTDZG?=
 =?utf-8?B?Z0w2Z1l3U01JZzlkZko5bWZ6R2o2MFRZRHU3RXlaUHBGSnMvV1VqYUtGVlp1?=
 =?utf-8?B?NEtMVWQ4TDEvVG9ZUkswSEhab0hTT0Z1cStsbWJtOUJjQVlESGVZR2pZMlNl?=
 =?utf-8?B?dk9yajhaYzEzdE93SlJmcXpGbURCSm1hVWlaYXlDVmlvMXFIZm1pTmsrb254?=
 =?utf-8?B?MndXQWhDU2NVL1kxZEx4LzNOeGV2aDNIUU8yU2h3WjFnME95YXdIZTZ5eWhi?=
 =?utf-8?B?a3dFUzdGclIyMUlBK0g2N09GNEI4MFFUalArd2R4RnREZVIxYkZ6ZUpEY1NM?=
 =?utf-8?B?VWxpeUI2OTA4bXVkWkI2MW5Gbmg5eEhoQTJTWVBnbExRTDN5Qm15NU1OZFk2?=
 =?utf-8?B?RTZ1L3VNMHRKeGxlMXZkQ2tOWU12bCtlclpJOEFUZUFhME1xWkxJZWJoaFBQ?=
 =?utf-8?B?Y3RZenF1OURSaThtVjFNNXNXT2U0Mk1HeG1kdUlpRTh0WUd6enJlTmxkNW9J?=
 =?utf-8?B?bDdXenFEODZnSXdBRHdkcHBHVGo5cnBKUFVzZE83QlMrWXh4bEpEb0dXVjla?=
 =?utf-8?Q?c+4AT+lOIlzso/yVu+UJLDCGBVfeuCfPp97SF+k?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(1800799021)(366013)(38070700015);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <08DAF97DCBC606469B145CDBB04ACBD6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10467
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF0000019F.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f9062796-7d20-430d-6d11-08dc8ee58b4d
X-Microsoft-Antispam: 
	BCL:0;ARA:13230037|35042699019|36860700010|376011|1800799021|82310400023|34020700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eElVMHA2SkpzRTVtMUk2NnQ2YjBPRnFvek8xZUVGMlcwTlc4ZzE2ZmNjVjJp?=
 =?utf-8?B?RmtYK2cyNGFBNG9nS2J6b2FYTUkyWHVLQW9TbWYwSXBMNXlTSEFkTzdZV1Bm?=
 =?utf-8?B?cUsrbjM4aUN4SlF0d2pRUVFmbkZjcnR4WXh4dzdlMGFuRkxLd0ZYanBxTndM?=
 =?utf-8?B?K3FwZHhEcm5OeGpNWEszbi9HVnJUak5iQ09Hak95Q1NJVyswTjZDak1NOTZo?=
 =?utf-8?B?M1F4K0tDeHk2R3ljSDRLK3Z3VE82V0d2OFdzZUg1ZGo5R09iZE9EeHlnYkp5?=
 =?utf-8?B?bmxRdTIrdlpQSFZmSWszV3NRNDlGQjVUN2JFVE15V2tjWndMZHZlc2t0Mlly?=
 =?utf-8?B?VnZpWHkvVGhWeFFpQ2dVNWlJY3BFSlVFaXRCSk5heFkrN3F4Q3B5bjJMZnpW?=
 =?utf-8?B?TDgzT1J1UTB1K3FFZkN1a2pvRk9KdDRqaHlUeWd0TTR1RDJFUGpyNkRDd1B5?=
 =?utf-8?B?bHJLUTk4aXZpL2hjbDRVU1ZnaUJidmNWOFFZS3ZFVE9XOHRjbEMzUWhpMmkr?=
 =?utf-8?B?cnN5L2VuWmM0Tks0Q09WaEZuUTFST25NV3hEWkhoYUlzdEpYdUlBOVN4YitB?=
 =?utf-8?B?M3BaVUc0S0tQM0RyR3hwaHlQYjJxTm1rTUNYa1IweFJ1QlpMeG9IVVVjOUdS?=
 =?utf-8?B?TnRPazd0Umh6ckZTRllDc2l6L2VVdFlUMDdUeFoxMHJsQmY1elAvSUdtR3kw?=
 =?utf-8?B?cFZnK3hOMVNNNzBYbER5NUk2enI5VnJvaW5MUGVyWTVSL2ZPRE5IaVNwZmJo?=
 =?utf-8?B?SXJoL3VZWWRIQXNQYUljdjQvTVFBSkUzU2lEYzhNanJHb1RBL1Z3dnVDeWZs?=
 =?utf-8?B?bWtiWU4zNm16cnlzRXh6TFRWczJDUlpGc3ZhSWRobTh2Um4wMlo2QUswQVVt?=
 =?utf-8?B?U0VlNVFtaUtSVm5PbjVFKzRDb3luMTZWM2c1YTBCWjJGRTZtdGpPNlVCNGlx?=
 =?utf-8?B?VlhyTkNxZVNQUURMUWdHUFRhTERpZnNSSWZQV2Q3L3hHdWZBNm5RbjcxVzFD?=
 =?utf-8?B?QVZGQ0VUeldMVXB5L3FyWFRQY20xdHNtQ2QybnQ3MWowSmdQSEd1eTc4OTFi?=
 =?utf-8?B?c1g5SUllczhzdzF2Zzd0d25zUnhZa0xYenh6NGFyL3RKaVpOaXZmTktVaHFi?=
 =?utf-8?B?cTJvU1V2Z3JZbCtmNjBmL0djNXdvbzh1M2pjL0c4eDRtWXdJU2d1b0VjWFgy?=
 =?utf-8?B?UkVKRXRqS0NWSVc0cjFJSTJKL2dCVmNUZjFiNkNPdktJbUl6TEN3SVRNelFQ?=
 =?utf-8?B?dzhxeUs1S1YxQjdvaFp2UFEwQ3dzQlQvemIwREhqRkR4emFaeEp2M1Q5clpZ?=
 =?utf-8?B?VStBQlNDdlVtS2tPWlppTVUzOUZWSHUyL203L2ZqaUpacVdaamFqMG40cVE1?=
 =?utf-8?B?ZVRVZzZNUW55T3RFQUwrQzlhajd5Uk05QkFzZWh5MjhzRlUrbnNIVnRDV0Nh?=
 =?utf-8?B?R2xsNEFUOFlscTFDNFR0VlJFVVowbFVaeG1iYlM2YUxpcUhqYUZyT0pzZkIy?=
 =?utf-8?B?U3M1WVFVY1NqYVdmK0tPZThQbityZ3c2TWQyeTNnSEtkUXNndEhHbmh4MjdB?=
 =?utf-8?B?SUd4Z1Zxbk9zT0hLVkdBRXh6VkVxR2FjaUFRSklBVDZjL09EQStzSWFPZmdj?=
 =?utf-8?B?bFdieVhBbDZYM0dVbWFKa3gxZG0yMTd6ek5pN05ldVFGKytqb0d5ajVLd0Ew?=
 =?utf-8?B?V1JXYktxSVZLZVBrRnc3MWZydXlNRlJrSHk3bnRuUW1tNUFSdERSdFN1YkdY?=
 =?utf-8?B?UUd4T2thRUJlRDV0djBxR0QyNXJYTkxzOUJ2VEZ4QTg1c051VXNzZ0J6czhW?=
 =?utf-8?Q?LWOAjy/IyWI5fcdVLZiu9o3NxSIcrHH+lHVM4=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230037)(35042699019)(36860700010)(376011)(1800799021)(82310400023)(34020700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 15:53:00.8928
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81392545-de65-4714-b9a0-08dc8ee590e5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF0000019F.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10829
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 15:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13380

T24gMTcgSnVuIDIwMjQsIGF0IDE2OjIwLCBTdGV2ZSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8c3Rhcj1nbXgubGlAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBPbiA2
LzE3LzI0IDE2OjU5LCBSb3NzIEJ1cnRvbiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90
ZToNCj4+IA0KPj4gDQo+Pj4gT24gMTcgSnVuIDIwMjQsIGF0IDE1OjIyLCBTdGV2ZSB2aWEgbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyA8c3Rhcj1nbXgubGlAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+Pj4gDQo+Pj4gT24gNi8xNy8yNCAxNjoxOSwgQWxleGFuZHJlIEJlbGxvbmkgdmlh
IGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+Pj4+IE9uIDE3LzA2LzIwMjQgMTU6MTM6
NDIrMDIwMCwgU3RldmUgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+Pj4+PiBJ
IG5lZWQgYSB2ZXJzaW9uIG9mIGEgbWV0YS14eHggcmVwbyB0aGF0IGhhcyBuZXcgc3ludGF4ICI6
IiBpbnN0ZWFkIG9mDQo+Pj4+PiAiXyIuIFNvbWUgb3RoZXIgbWlub3IgdGhpbmdzIGhhdmUgdG8g
YmUgY2hhbmdlZCB0b28gKGFzIGNvbXBhdGliaWxpdHkNCj4+Pj4+IHN0cmluZykNCj4+Pj4+IA0K
Pj4+Pj4gSSBjaGVjayB0aGF0IG1ldGEteHh4IG91dCBieSBoZWxwIG9mIGthcyB0b29sLg0KPj4+
Pj4gRG8gSSBoYXZlIGEgY2hhbmNlIHRvIGFwcGx5IGEgcGF0Y2ggcmlnaHQgdGhlcmUgb25jZSB0
aGUgbWV0YS14eHggaGFzDQo+Pj4+PiBiZWVuIGNsb25lZD8gVGhlIGthcyBkb2N1IGNvbmZ1c2Vz
IG1lIGEgbG90Lg0KPj4+PiANCj4+Pj4gWWVzLCBrYXMgY2FuIGRvIHRoYXQgd2l0aCB0aGUgcGF0
Y2hlcyBwcm9wZXJ0eSBvZiBhbnkgcmVwby4gSSB3b3VsZG4ndA0KPj4+PiByZWNvbW1lbmQgdXNp
bmcgaXQgYnV0IHRoaXMgd29ya3MuDQo+Pj4+IA0KPj4+IA0KPj4+IERvIHlvdSBoYXZlIGFuIGV4
YW1wbGUgbWF5YmU/DQo+Pj4gS2FzIGNvbXBsYWluZWQgYWJvdXQgbXkgYXR0ZW1wdHMgd2l0aCAo
Zm9yIG1lIG5vdCkgcmVhZGFibGUga2luZCBvZg0KPj4+IGVycm9yIG1lc3NhZ2UuDQo+PiANCj4+
IEFzIGEgdGlueSBleGFtcGxlLA0KPj4gaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9tZXRh
LWFybS9jb21taXQvP2lkPWZlZjVlYWZjMDg1OGI3OTBkZjIyYjdlNDAyNWY4ZWZjZGUxZDg0YjIg
aXMgd2hlcmUgd2UgYWRkZWQgYSBwYXRjaCB0byBtZXRhLWFybeKAmXMga2FzIGZpbGVzIHRvIHBh
dGNoIHBva3kuDQo+PiANCj4+IFJvc3MNCj4+IA0KPiANCj4gVGhhbmtzIFJvc3MsDQo+IGNhbid0
IHRlc3QgaXQgcmlnaHQgbm93LCBidXQgSSBzZWUgbXkgbWlzdGFrZS4gSSBsb2NhdGVkIHRoZSBw
YXRjaA0KPiBpbnNpZGUgdGhlIGxheWVyIHN0cnVjdHVyZS4gQnV0IHdoeSB0aGlzIHByb2NwcyBl
bnRyeT8NCj4gVGhlcmUgaXNuJ3QgYW55IHByb2NwcyBzdHJ1Y3R1cmUgdGhhdCBjb3VsZCBiZSBh
ZGRyZXNzZWQgaW4gbWV0YS1hcm0sDQo+IGlzbid0IGl0Pw0KPiBJIHJlYWQgeW91ciBleGFtcGxl
IGFzOiBUaGVyZSBpcyBhIHBhdGNoIDAwMDEuLi5wYXRjaCB0aGF0IGhhcyB0byBiZQ0KPiBhcHBs
aWVkIHRvIG1ldGEtYXJtIHJlcG8gKGluIGdlbmVyYWwpLg0KDQpUaGlzIHdhcyBhIHBhdGNoIGlu
IHRoZSBtZXRhLWFybSByZXBvc2l0b3J5IHRoYXQgd2FzIGJlaW5nIGFwcGxpZWQgdG8gcG9reS4g
IFRoZSBwYXRjaCBleHBsYWlucyB3aHkuIDopDQoNClJvc3M=

