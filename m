Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11EACC7EE25
	for <webhook@archiver.kernel.org>; Tue, 16 May 2023 14:56:03 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.55])
 by mx.groups.io with SMTP id smtpd.web11.24085.1684248957451136924
 for <poky@lists.yoctoproject.org>;
 Tue, 16 May 2023 07:55:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=izJ8dxQC;
 spf=pass (domain: arm.com, ip: 40.107.104.55, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrGLdmiZ7hna1aLd0NBfugSmXSfZy+vZze8bl763WIA=;
 b=izJ8dxQC3PXHQU8NC9w/x/lyLq2DZTrxCH4jmap27ZJh94UdF07JDJ1I3GiUQL19AWAZXNzW8ynilY6dGts6RoXEoAYb1fpkbRiAdffuRoQBsG/i3DD+x4Xy67uoHamjHLjjeBn1iiylme6+fUI0Ewg0b+6F+ftKA9NMDVH+iVg=
Received: from DUZP191CA0040.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:4f8::18)
 by PAVPR08MB9769.eurprd08.prod.outlook.com (2603:10a6:102:31d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 14:55:53 +0000
Received: from DBAEUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:4f8:cafe::52) by DUZP191CA0040.outlook.office365.com
 (2603:10a6:10:4f8::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33 via Frontend
 Transport; Tue, 16 May 2023 14:55:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT019.mail.protection.outlook.com (100.127.142.129) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.15 via Frontend Transport; Tue, 16 May 2023 14:55:53 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Tue, 16 May 2023 14:55:53 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 241116410d6d5e56
X-CR-MTA-TID: 64aa7808
Received: from e88f09ae7cdd.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 40694BF3-5694-4CDC-9695-489D08781B9C.1;
	Tue, 16 May 2023 14:55:47 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e88f09ae7cdd.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 16 May 2023 14:55:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WdjpiOGK8ndkFBRZB35N5BfaU2D31bURcDgKWIz2Z0zEzZEwlcG2dFK9nok0kiCi4iyjTMqkbN98TW8975Tk9LzByVRP0886/7sW9lVzlluOeouUU7gFTVfnsiaq6T0pdL8fTUpqujz58XdlAaISOVbvwIirkwKUoOuYS06poMqlQIfRsQie5Dk0F7DBfDwdZlAnYG2+fCVWb0nCxP38cX8zdxGVaMCc02jG00+9PIr5b1AuCC/TDaD1Cr7WHpchsnyHpgiUKRhoUHxwZvuootcaqYC+/e9SW10azq3M2lQB0QC9FSXB3AlniOHXbHUNRgow+3ngzwIP2L3GKjrYzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GrGLdmiZ7hna1aLd0NBfugSmXSfZy+vZze8bl763WIA=;
 b=H0vkOCGJ7GwQctGKFIUubuvruPxBTmYcTNVeiYKkH4tEXjxVy/Gsl65xbtXAVHtyrDHSBiGIraGxb0Aa0zPUwzfoFabdfFX6BTVZEgaVbNZsyhAQ+Y7iHwUrAKyi49e7KSAGGq63N81l9uELsY0cBXJvMKgOeGV3LR3jUsAr/H10yIIgfdhbcKXizAdcE+hN4uRwtE4EBCIchWzn/1r6kRjLiRdl6H8qCG2cn8OLaRpKIEZL1Dbiepvtg5hddi1YYuXa2Yv62DxfnkiihPtRTUJiq5tBjSsqNKU9PAdHG2A/PKdfl4/9KznuYMdk6bVl5gXvbjR5mSVaMOQVDvCnwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GrGLdmiZ7hna1aLd0NBfugSmXSfZy+vZze8bl763WIA=;
 b=izJ8dxQC3PXHQU8NC9w/x/lyLq2DZTrxCH4jmap27ZJh94UdF07JDJ1I3GiUQL19AWAZXNzW8ynilY6dGts6RoXEoAYb1fpkbRiAdffuRoQBsG/i3DD+x4Xy67uoHamjHLjjeBn1iiylme6+fUI0Ewg0b+6F+ftKA9NMDVH+iVg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8065.eurprd08.prod.outlook.com (2603:10a6:10:3e8::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Tue, 16 May
 2023 14:55:42 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6387.029; Tue, 16 May 2023
 14:55:42 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
CC: "javier.tia@linaro.org" <javier.tia@linaro.org>
Subject: Re: [poky] [PATCH] poky.conf: Add Fedora 38 as supported distro
Thread-Topic: [poky] [PATCH] poky.conf: Add Fedora 38 as supported distro
Thread-Index: AQHZh/k/VVm8Ctg6skeoMrpfSk1nBa9c+78AgAABOYA=
Date: Tue, 16 May 2023 14:55:42 +0000
Message-ID: <2CCEABCF-2FF3-4C80-AED2-980DF580F9E1@arm.com>
References: <20230516132024.686605-1-javier.tia@linaro.org>
 <0FA0380B-061C-4E7B-92DE-63C2BB98BA25@arm.com>
In-Reply-To: <0FA0380B-061C-4E7B-92DE-63C2BB98BA25@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8065:EE_|DBAEUR03FT019:EE_|PAVPR08MB9769:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fec4d50-2318-4da4-7089-08db561da573
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 n846mPmmgbfNDXstGKv7fHOEA2FSv5tecDgnfkXH/dcWPOWv956bgycI2ccgIoqvRzgm6Jprq/r+C67VAt8CBaheoeJvA5u3qMWH810biM3vCPpHGlkGdEgtBIk/sWJLCkNei7td0aTxooZxRaxCpTK0mgrXvXOCxUHtskXF6jptiusTy/pO+75WOscCPdhZd0hksxKn16Tw+GPd/BGNFTn5ekGaaaCp+p5LJKNk6YyxfLKamxu2MCkHUNG335rk7KL++1ww9n2cbwRQX0S3+SZ3Htz5yzXCgJpaTqFqxG7fCMAHIZOcDlz0kQ9sRhy9in427aj+CHRpTbb8TcSXwkmdFdOhM9iHKRrHAY9JJT1aHseRaMbXEyhuXmwjK+Hkv3P60/SZzsRULYXlgUubJMi4h432iRvqghB7u8G1eF7okU3FbeLY/3mXsxL8Mp+u704BlJ9Fk0/l2OVlmNbuHF7KSKwjnf8r9fjaBI9R4Zplg8M3i/cMwBhM0AtTGGVujCJ1jIsdbRA7a6U4WGxabdE1pQomvSfnA/700uG5kaN1uAapZFnrc8aKHYJVo4c/btpcjcxZGmase3vJcr0x6+jUtsQIT2zJGCArCBsvQpNs4BQQjAM2I4bbNvaU6YWvD7Q4O3DVjUe24TOHXudzog==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199021)(83380400001)(64756008)(76116006)(66476007)(66446008)(91956017)(66946007)(2616005)(26005)(6486002)(478600001)(66556008)(71200400001)(186003)(33656002)(8676002)(86362001)(2906002)(5660300002)(8936002)(4744005)(6512007)(38070700005)(41300700001)(36756003)(4326008)(316002)(6916009)(53546011)(6506007)(38100700002)(122000001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8F1BD1DC2922E4B868042DF2D097317@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8065
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	653aee4d-f409-47fa-5cb3-08db561d9ed0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fa9l81KriLza/kh7C72bM8M/cuET4Axypce1KSmOm0Wa/JoA2NbX3R24XqvIbqcrnm85YTmsMCJmvrs6hNTKbLVYxAUzw1VynWGllrVuUGKynPd8B5O7Fa62BMXcW4vkE2b0dLo9UL6AMq5GE8AnshvlMyTXsK3qSmiDpkLH69uFaGMNuVrMAiPu0Vvn5GzyLQO3f2a7/dXUdnAIurtPxHAzJ+dCOK6PPQc2o9T+DvsrhhKljEacUbxJQNh99KzoBd6s2dUw9I1tN4qi7HWgyT9QMHXR7bXWzoYQcRsWkl48HHB2bgHfDeChb9+xB1CTpBjjESfDCSQfFPoxeGFbMvrZOah9zGF7pH+WKyjt7HrWtlZr+Sg4cfammgFltU7G7TlajR9dK/TLC2t+BHbFIxapp+gXNjg7wN08JcyowyEnYpRgyb7cBksjlK6ig2+Zb+rR6+j/yi9Juh+kTrWXypckpJTk+eHjQR9Bh+m8Cb7+zg/UBqVtq6jEc2aJJd6VMm7T3i61YpdANRZXL1sKmXyz6wTK9fhDGEJdSQ7bklK9zUUvCqZn+BDDo8H3xFe2eS260dZ4WskJEy9qzA+Z4ihKuPyxifWi09S7GUdE3sVCaQFk5f7SGSBuWMXuyU4kddVA6p27mbCCzdsd/31uu4IsycHx7y+lgWA2C6KDXTPZajTEMnRYccjTs5mEFYb9Dzm6tTkNwNE1Dr0gPcfR+gA+BMSItO8KIRZ4633ce6/1qgv6FCab7B/3oVo6vqPe
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(39860400002)(376002)(346002)(451199021)(40470700004)(36840700001)(46966006)(8936002)(8676002)(83380400001)(47076005)(36860700001)(33656002)(336012)(4744005)(53546011)(107886003)(40480700001)(186003)(2906002)(6506007)(26005)(36756003)(40460700003)(2616005)(5660300002)(6916009)(70206006)(70586007)(4326008)(86362001)(82310400005)(316002)(478600001)(81166007)(356005)(82740400003)(6486002)(6512007)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 14:55:53.2747
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fec4d50-2318-4da4-7089-08db561da573
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9769
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 16 May 2023 14:56:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13069

DQoNCj4gT24gMTYgTWF5IDIwMjMsIGF0IDE1OjUxLCBSb3NzIEJ1cnRvbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8cm9zcy5idXJ0b249YXJtLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gDQo+IE9uIDE2IE1heSAyMDIzLCBhdCAxNDoyMCwgSmF2aWVyIFRpYSB2aWEg
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8amF2aWVyLnRpYT1saW5hcm8ub3JnQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc+IHdyb3RlOg0KPj4gDQo+PiBGb3IgYSB3aGlsZSwgSSBoYXZlIGJlZW4gYnVp
bGRpbmcgd2l0aCBGZWRvcmEgMzggYW5kIGNyb3BzIGNvbnRhaW5lcnMNCj4+IHdpdGhvdXQgaXNz
dWVzLg0KPiANCj4gVG8gYmUgY2xlYXIsIHRoaXMgaXNu4oCZdCBhIGxpc3Qgb2YgZGlzdHJpYnV0
aW9ucyB3aGljaCBwZW9wbGUgc2F5IHdvcmtzLCBpdOKAmXMgYSBsaXN0IG9mIGRpc3RyaWJ1dGlv
bnMgdGhhdCBhcmUgdGVzdGVkLg0KPiANCj4gV2UgZG9u4oCZdCB5ZXQgaGF2ZSBhbnkgRmVkb3Jh
IDM4IHdvcmtlcnMgb24gdGhlIGF1dG9idWlsZGVyLCBzbyB0aGlzIGNhbuKAmXQgYmUgYWRkZWQg
KHlldCkuDQoNClVwZGF0ZTogSeKAmW0gcmVsaWFibHkgaW5mb3JtZWQgdGhhdCBvdXIgRmVkb3Jh
IDM2IHdvcmtlcnMgYXJlIGJlaW5nIG1vdmVkIHRvIEZlZG9yYSAzOCBuZXh0IHdlZWsuDQoNClJv
c3M=

