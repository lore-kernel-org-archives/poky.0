Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 832A1CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 13:20:20 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.50])
 by mx.groups.io with SMTP id smtpd.web11.38157.1697203210552748933
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 06:20:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=rbUGtg4K;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=rbUGtg4K;
 spf=pass (domain: arm.com, ip: 40.107.8.50, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/mrVkbMxcLKdbQ4PKZfAbwyewfG+1Z676UvRar7G9k=;
 b=rbUGtg4KxY1vsb2g4D1C/Vxt70ZEPjQin2TaA42P+BkWnEHE9t9sGxccSBBRs7KgzRdy+B0/N9RUDcGbHa62Aqt8eDyZMp3peqxM1AalzD2hHFPDG/NRyvad4xLAs2BQz9pDUrHBYRg9zs1zgeLMNQTwaxQcjujITNYL/naQ1Hg=
Received: from AM5PR0601CA0082.eurprd06.prod.outlook.com (2603:10a6:206::47)
 by GV2PR08MB9926.eurprd08.prod.outlook.com (2603:10a6:150:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.41; Fri, 13 Oct
 2023 13:20:05 +0000
Received: from AM1PEPF000252DF.eurprd07.prod.outlook.com
 (2603:10a6:206:0:cafe::28) by AM5PR0601CA0082.outlook.office365.com
 (2603:10a6:206::47) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.28 via Frontend
 Transport; Fri, 13 Oct 2023 13:20:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM1PEPF000252DF.mail.protection.outlook.com (10.167.16.57) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.22 via Frontend Transport; Fri, 13 Oct 2023 13:20:05 +0000
Received: ("Tessian outbound 6d14f3380669:v211"); Fri, 13 Oct 2023 13:20:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 287b13249ec3b858
X-CR-MTA-TID: 64aa7808
Received: from 8159ec564197.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id DBCB3732-ED58-45B4-AD37-EA35610B0BA8.1;
	Fri, 13 Oct 2023 13:19:59 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 8159ec564197.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 13 Oct 2023 13:19:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iUxqSkMTeA9eu4WuKopXipA6MPWceeCE9BANwVdUOS78tXt6RNvsr2Xzu7I8JZ4uYMMVmExB4sg0sJnipSydR8YLxYVRyFWcihVe15Ia1Y/jAvYRgPTw8BcGRskRaBiQ0MMhUuKaONwaaU31+vtz4M0ueXNiBJtDzhMcNa6COuFq2tbvXgXtBTSyGOIYlhn1f2h0BHZjfTYd0zOqU5c5FJAnq8fn9FIpYOSSazayTPkGgsVI3uFyDrTFtei7RSFpi+uq8FLPKHgM4zB3NrjZQ2guvGLR4Gtr+8e5/XQwHcpMhoxILkjjE3YpP18x/hW563UPIWY84YZZVZWqzRh6JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x/mrVkbMxcLKdbQ4PKZfAbwyewfG+1Z676UvRar7G9k=;
 b=J7gYnKwA8C+nzeYnnQq58Epz8WJglFxl3cF609TERCqHp3ILRZLkzOjyPfsyCdvNeDaaltQCR1XIKyKcM09sF+EMt9Rz2NP8wk70ybG6cRYquzcny3ZLNZhNDIEC+kpxbi0lT8qYWtXkCfpCHKLIMVwziQzmJu3yY0SVPmco7USKCGSYeiF9Qw/q+pB1C0ath243lSCukU6tRpM6LnqANudah2y7KYdTjskkgnVGnDn71xjSznfNKbux7AWnoLqlohpYHyRds7c/HqHMFa9t4G0b5ZaNx4T5JUje26sdXjjEr6tqkV0bU/JS5puWKYpTsX5Pg7UaMRLxR0BIvE4TQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/mrVkbMxcLKdbQ4PKZfAbwyewfG+1Z676UvRar7G9k=;
 b=rbUGtg4KxY1vsb2g4D1C/Vxt70ZEPjQin2TaA42P+BkWnEHE9t9sGxccSBBRs7KgzRdy+B0/N9RUDcGbHa62Aqt8eDyZMp3peqxM1AalzD2hHFPDG/NRyvad4xLAs2BQz9pDUrHBYRg9zs1zgeLMNQTwaxQcjujITNYL/naQ1Hg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB7718.eurprd08.prod.outlook.com (2603:10a6:20b:50a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.42; Fri, 13 Oct
 2023 13:19:56 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5%4]) with mapi id 15.20.6863.040; Fri, 13 Oct 2023
 13:19:56 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "Grant.Smith3@ngc.com" <Grant.Smith3@ngc.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] CVE CHECK scorev3
Thread-Topic: [poky] CVE CHECK scorev3
Thread-Index: AQHZ/PFn0khbpQXrZkernbrv496m3rBHtfqA
Date: Fri, 13 Oct 2023 13:19:56 +0000
Message-ID: <D372152A-F368-4907-AF8D-475BF9A4CA7D@arm.com>
References: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
In-Reply-To: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB7718:EE_|AM1PEPF000252DF:EE_|GV2PR08MB9926:EE_
X-MS-Office365-Filtering-Correlation-Id: 746fddcc-1d8d-45f1-bd52-08dbcbef1d42
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 d4rwmIWCxlTzywj0MfxpTzUe2UFFkwBfDGeXCCP1rT3AEmEQM/5eSP2pJX9+/XOcX2t50Unq5BJ1nB134sbiL+p7ByjV5F9XtSNE2+M9550xTi9KFmGVYVZ8+qEWfG7qXUSohTXNHLc6GGREX/aIEb/2SweR88ZDDpydQz/ocXYMxzEXqwIKimahAzmJQ/hib2TEob89AmCcxmYjD1flrQ0LopK7OPf4Rz6P8cPXNDd0wpvDqjIuVtCN180C5Sh9d84NvVdVGszSfC5yc0b3S1WUuhmUc7XLiaR1Qk35brhTGFiwGFsV/ZDFr2Nwm0DimIcieC5cZj2BqumQkmSNFueEOrXT1KJvYkhnVUyw0rxSW2J4hjenbv92Ym6xfIR5Qx/236oImNChEyjJsgar0nqrDokD+kLcRvetMAe0YVAMl8HOEy0UWMxVDAjmNjxsYvgGjUBsAmXqUkfTwcuVLIPwJ9KcO40XzDWFTQJqsKOMUstdCPkbGhFXO0FFE5QlCIgAXsVvAcnjMH1/+aU8qlhH8Xo4O7gRXryGsBGpGBQ9a2BPT5BtTYcFC4Zfed4T3i6p8Sa2rSKh/kYgrn4yP17RhAuj8ChqCD+KLDAiGbvZ8fZ9lnCWL/ttUotL9om5lAkGItv1q+/SPtLberEOjg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(39860400002)(136003)(396003)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(91956017)(76116006)(66556008)(64756008)(66476007)(66946007)(66446008)(38070700005)(33656002)(2616005)(6916009)(53546011)(6506007)(71200400001)(316002)(38100700002)(5660300002)(2906002)(8676002)(966005)(478600001)(4744005)(6486002)(4326008)(8936002)(86362001)(122000001)(41300700001)(6512007)(36756003)(83380400001)(26005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2764251752F9F54EA7A25CA59CA7DD25@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7718
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM1PEPF000252DF.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	3f59ca1f-52d8-4298-d851-08dbcbef17fd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Rk40FIgA5Ty80AVwWkt1XVsedd6fAzNPgwyFVbrvUJjPkjiEu+tCrEbdJ804Em5xLYor30jXc5nRtXbwMJbn2OE1/taNhHVkWIufK8EvjedIW5N+lF1hxpBPyOm7F0u3PDIFkwpETx7YPtRllaOFOeLGUcPCw/u4ddP+ymtFedz37Wg5tWOrfqRkE5TJvk0QMVQNMP9vhBLvSXd/XJh1JyTc6zaX3ANKA2JmV1+qCkKvxvAbL0GIS7KDKAnyssiI2CDk/2JSZxl5oX4gRtychgPm39+wxUZfKa5Zn4gm9UYxWlFXe1fnnlLelMM92qDMnb6JTF0efTJ2PT8e3sTpsrKO0moxYaQSGsHqlJISY7GDtKLAZH20f3Skx9tkYM1KgK9pjysWWDd09tJYpfyLPtSzYC1Mw8SVbCXZ8A8Ph0M2Y8OZykAZ0hDAq5tnrqbSbvFAzYvHJBK2srqFbYkXmsOh2THSrllGQqrwXuHUkK2Mnw1iL1xK1Q6dirSK34betyHvc4U61lFRy3fkosCBY1dkXhbi4q55xlm1WarNwekjqLuJS4rypiifq2Ugi5cjOZVqu1RVxvHJt0JOSI8KZfwTX7a44cpXzRwmws5GQXZnFRPi4bdfUenNaQCDESRcrUT/LaJyx1dkxT8HeOzsKL8q5McmGfnBV5dbl8bbTYvmEipOMmc7g6rExc1WJyYRL4kBibPWfeDOqd8FW09K2s+hhP1rBzsPmuLmtdx2X1Q=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(396003)(39860400002)(136003)(376002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(82310400011)(46966006)(36840700001)(40470700004)(2616005)(41300700001)(33656002)(478600001)(70206006)(70586007)(86362001)(53546011)(6512007)(316002)(6506007)(83380400001)(36756003)(26005)(336012)(6486002)(8936002)(8676002)(966005)(6862004)(4326008)(47076005)(36860700001)(5660300002)(2906002)(40460700003)(356005)(40480700001)(82740400003)(81166007)(4744005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 13:20:05.1123
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 746fddcc-1d8d-45f1-bd52-08dbcbef1d42
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM1PEPF000252DF.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB9926
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Oct 2023 13:20:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13174

T24gMTIgT2N0IDIwMjMsIGF0IDAxOjE5LCBHcmFudC5TbWl0aDMgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPEdyYW50LlNtaXRoMz1uZ2MuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiAgIEluIHRoZSBwb2t5IGxheWVyICh5b2N0by00LjIuMyBicmFuY2gpIEkgYW0gdXNp
bmcgdGhlIGJ1aWx0IGluIGN2ZS1jaGVja2VyIGFuZCBydW5uaW5nIGludG8gYW4gaXNzdWUgd2hl
cmUgaXQgaXMgdW5hYmxlIHRvIHByb2R1Y2UgdGhlIHNjb3JldjMgbWV0cmljLiBBbGwgQ1ZFcyBo
YXZlIGEgc2NvcmV2MyBlcXVpdmFsZW50IHRvIDAuMC4gV2hlbiBsb29raW5nIGF0IHBva3kgKHlv
Y3RvLTQuMC45IGJyYW5jaCkgSSBub3RpY2VkIHRoYXQgdGhlIGN2ZS1jaGVja2VyIHVzZXMgdGhl
IDEuMSB2ZXJzaW9uIG9mIHRoZSBOVkQgZGF0YWJhc2UgYW5kIGNhbiBzdWNjZXNzZnVsbHkgcHJv
ZHVjZSBzY29yZXYzIHdoZW4gcnVubmluZyBhIHRlc3QgYnVpbGQuIFRoZSB5b2N0by00LjIuMyBi
cmFuY2ggdXNlcyB2ZXJzaW9uIDIgb2YgdGhlIGRhdGFiYXNlLiBUaGVyZSBoYXZlIGFsc28gYmVl
biBzZXZlcmFsIHBhdGNoZXMgdGhhdCBhZmZlY3QgdGhlIHdheSB0aGVzZSBzY29yZXMgYXJlIHBy
b2R1Y2VkLiBJIGFtIGp1c3Qgd29uZGVyaW5nIGlmIGFueW9uZSBtaWdodCBoYXZlIGFueSBpbnNp
Z2h0IHRvIHRoaXMgaXNzdWUgb3IgbWF5YmUgaGF2ZSBhIHNvbHV0aW9uLg0KDQpJ4oCZdmUgbm90
IHRlc3RlZCBhbnl0aGluZyBidXQgdGhpcyBzb3VuZHMgbGlrZSBpdCBtaWdodCBiZSB0aGUgZml4
IHlvdeKAmXJlIG1pc3Npbmc6DQoNCmh0dHBzOi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVt
YmVkZGVkLWNvcmUvY29tbWl0Lz9pZD02MWE1ODU3ZWZkY2MwZjQ5YzY5YzBkZWIyNGZjZTk5MDA3
YWVlZjE5DQoNCklmIHlvdSBjYW4gY29uZmlybSB0aGF0IHRoZW4gd2UgY2FuIGJhY2twb3J0IGFz
IG5lZWRlZC4NCg0KQ2hlZXJzLA0KUm9zcw==

