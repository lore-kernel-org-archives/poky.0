Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80D3FC54E71
	for <webhook@archiver.kernel.org>; Fri, 22 Mar 2024 17:09:44 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.68])
 by mx.groups.io with SMTP id smtpd.web11.668.1711127383586975953
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 10:09:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nrm1IhIq;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=nrm1IhIq;
 spf=pass (domain: arm.com, ip: 40.107.247.68, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=bzdExkSKyK5vmRn31iw6n38jyDIuIBILjZpM1AFyfC9jiFaObFrF15or3pGZoCF92r719OxNYuriNl3uWlJ1kubqjFy+9kigVs9EErvhlsIWooJpwMpTNHHFIh69Bn1OApUVuSxyXUXcuKhfY3G/wvwHWoHJIn7QqvTJyMR8rwoA9ptlUJiQLUlL1+nuh9MytPZ/J+pMPrVONIuVNVtUmlDRPAQZIqj6Y/JtOOgB5twciP+HWEPbWOc40OwqbEjHVKLJU7KVWTZ22qPfClm48J1mOIr8DsumuhvwJrgTt7+4b82ri2ZYnNoQHx+vUOT5F6Z+EdIK8eH/BXcQKFrSug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QakKQTnGW4pyfku8KSNcJ2lJANrxDV5/SioXcwjntk=;
 b=AERCau5oLHp0z5SgHx6s0wW58WnCGrPIUbLXCFsetY3W4V/M8y0U3JXnIPO5G73llhLB0ocC2xQqPKMV8H3w3ambKr7OWokwXvgizVCcopbI/wKaPG468LElDvuUXwuGko3mQHXYlCvicppMF9hynPvA9vmJEMbtFTyzGFjxhkL8+Jh2CiXSnU+mnlX/P9k3Kb0YlPvAgoXOawxXICLo5K+yh/FYzrpD0VFfZhpJX+bRL8VFIIyOLGxvZDE+5rgrRq3PnEETpiDAHB4AWth+bQgjuqtl/4IZSsVaMBX32EB0XI3axPcsEyzsfcwYB7NtvPPNutb+XAUmHR3lm/d7lw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QakKQTnGW4pyfku8KSNcJ2lJANrxDV5/SioXcwjntk=;
 b=nrm1IhIqBdNkcDxbIuIImX4A5nfZnqn15H3g2zaJvsUtJ7t6zmwRu71MfevtpeCOlb8vFsNrhTBrD0eFBzDnjgdXmHvAXLKFhxVgtUJx5p0a4a3ivH356+k+3svBtAjRTn2DDi3hOJKtYGJEQfyleT2rr9qJwYNeL3tfk0gy3eM=
Received: from DUZPR01CA0273.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::14) by AS1PR08MB7636.eurprd08.prod.outlook.com
 (2603:10a6:20b:478::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.15; Fri, 22 Mar
 2024 17:09:39 +0000
Received: from DU6PEPF0000B61F.eurprd02.prod.outlook.com
 (2603:10a6:10:4b9:cafe::de) by DUZPR01CA0273.outlook.office365.com
 (2603:10a6:10:4b9::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.13 via Frontend
 Transport; Fri, 22 Mar 2024 17:09:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61F.mail.protection.outlook.com (10.167.8.134) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Fri, 22 Mar 2024 17:09:39 +0000
Received: ("Tessian outbound e26069fc76b9:v300"); Fri, 22 Mar 2024 17:09:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a7f9825d5bc4c5e7
X-CR-MTA-TID: 64aa7808
Received: from defb4c0b14bc.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 15801009-4758-45F4-A451-322213EAA8FA.1;
	Fri, 22 Mar 2024 17:09:32 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id defb4c0b14bc.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 22 Mar 2024 17:09:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR+/S52GvOZFu8qQqD93eLQXL1+D0QLxIoSFVCnR7J+xvoha5Il0ZITkvd4s7x2JoY+Ba6dfMSZLJyoYM79uwdYHQOQ0OzCoK9eZoQrby9Oc/meywg1u4YAyjSz+t7aH50WDupal9vyQtL+ic1681B5vbdd0XmRl/y6d0uqZURTR9+v8YZt2hTPb8YP3CCQ8kTQ1oSWeW4n8an/llV8lLbvGVexne78ROd2g9bHfs+/4JdsQGmzFRi62b9lYUSxSZoYe+zZssmK7mhDzK9VRHrt6AceUo0lYbRg2MuVMe1TkYGtcUvPjTw2DcQcLBCA5m7FwBCYiUQgdgJzbu0N54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QakKQTnGW4pyfku8KSNcJ2lJANrxDV5/SioXcwjntk=;
 b=CJdVHxC7gBwrd6UY5h9zboUKP/MfZPgIwzUnJIeXFTruWBYGRCybYyHYgxP03ZXRlx1r2WFjJCOhCH1IB3qqLTxsjd8O20TZ9d1A/wF7NdQqPjAzdYEwYcJIn8+GpUznkmw/doELTg8gvDeCXIkEJ1J/zu+Ul4dLFsg9wSY4fD6LojqzFf0UuMlnYw1LRmpxeDv8YomgDwoVDRGSGUuTMXRQGtYFoObq9x1/XCx+5BRXkY5+6FiKEbMWPSwNdB/bJUbSw2VkYBUWdmBsHUrmHkrJj6ADIydDhz/T1CBLIjJEYm/tTx1+Rn+WnWwve5Eue3pwOjhjZXQZhtfAKAPSqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QakKQTnGW4pyfku8KSNcJ2lJANrxDV5/SioXcwjntk=;
 b=nrm1IhIqBdNkcDxbIuIImX4A5nfZnqn15H3g2zaJvsUtJ7t6zmwRu71MfevtpeCOlb8vFsNrhTBrD0eFBzDnjgdXmHvAXLKFhxVgtUJx5p0a4a3ivH356+k+3svBtAjRTn2DDi3hOJKtYGJEQfyleT2rr9qJwYNeL3tfk0gy3eM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6535.eurprd08.prod.outlook.com (2603:10a6:20b:336::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 17:09:30 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 17:09:30 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Jose Quaresma <quaresma.jose@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] genericarm64: add qemuboot configuration
Thread-Topic: [poky] [PATCH] genericarm64: add qemuboot configuration
Thread-Index: AQHafHkLpvNR0/YxKkSOCFAjzfiVPrFD/IwAgAAB3QA=
Date: Fri, 22 Mar 2024 17:09:30 +0000
Message-ID: <5DE04BE0-19D1-4E46-B4F1-25B8AB26AC8E@arm.com>
References: <20240322165009.3704771-1-ross.burton@arm.com>
 <CANPvuRm8sFizLvd0zd9cRaedD2bJLMf4nPZaVJdcWAWEfB24YA@mail.gmail.com>
In-Reply-To: 
 <CANPvuRm8sFizLvd0zd9cRaedD2bJLMf4nPZaVJdcWAWEfB24YA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6535:EE_|DU6PEPF0000B61F:EE_|AS1PR08MB7636:EE_
X-MS-Office365-Filtering-Correlation-Id: cc1a3e4e-9447-469a-5f19-08dc4a92dbba
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 OAJS9QqGL/C3Jq1miop/FdMukL79hJlRgaIlozAQGHUjD8JZOA1snPgh+OObbRfSzy4KxM5gby8P03zFCfHrhU+6sNq8NptSByxd/FYhkrFDLunrsow2XXU4lG6TnDnr61Ev+xgcwhclW3S7l4AFpjuzELO9wC4kEDIL8p72N9x0IaAjJJvCRmTo+SHQcKyqJ0UwKK2t30Ul6x2f9/qbQpv9Gxcl31iu97o22mWu1RcDgGuI+L9NTZL8jwk6dEPN0lObdGyiG6zapbkWfUtnkRI31orEPm9IEePWgsDh9+BsTShHSa7Uy6vzSYXjLMu2qpsd8+SUOtT9ZC123moTrVqQyZzZSmvKQYucKj2Lg8Zllu3UAEAACvGCcDxs1URUPCJZW1ZE+lMdrsS+joCo7U5XCm6sfkLlFPbX9g+kGNB3otAqTM9Hp035J0Ow9baEqrm1LbMe4ojqCxvlgx7JyR0lnZp1pZa5cdMPB3igg3Ger1TW+udlO+hI1kJvt9EvZ/UtrF0M3HWfTNcY8+AruIrIVZBOL9XsN7j53T5VCMQiW402VzOVfauxZcp9aWM42LVOHaisYTQZ7Aid8MblvGimnTQBxchU3h1zaWmpI+4Pi2ylQmVzibZNpvcnpK4bGV0VzzI0JKw9iRO1M3NZbcVUROt4d+TTcybqS3gzthdid4/duK7E5LGsTuQO506TB56JqAcuuaeh+k593GUnEg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2D828F588428443A26B92212ABE5A4D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6535
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2c9afe82-33ff-4b5c-3c4a-08dc4a92d689
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FoO2KhJUm5Sfr0hdbWXed19tOL8phzthebw2Cg1hhqBo+jZYaIS0yobAYWvNVewlUjGdRnSviE8F7Z6exOfpss+mG4oFkXZzXB78LpoKkECqYd37Xtlt76sXJ7OLN494fyD2MRtGFYrYxf+CmK1e7kEuRecESWD4wTF/395diyBAPvWLfvsxsVaRl2hgesGD6sflNV9c1TJxZ9NY5hqrXmFKx1ZZ50tTJLJyCVxS/9tBUhUNaEWFngTeaXKi0ekyh0M7hTUrfih9TSTeZ9KBG11pPLniG0QB9BlqwVKYu5gGN56dPlpqZ9iTLh4zuZMIka8Pw5c1Q0sCBEbZPlg4Vht5PX9I9JDdkHpuvPCTb9qfHf4CK6IETxHXUoyvbCCPS9n646gxJUFQkltwFiJBqR4jSgul+qfPdQt6xn/5pnLtT1YLtI6phWDri2hSkPTx8il/Q7J2N8cZadGmUY6dBMRDFte3NtPLDcicjESH3mrFHJ9TpFrSBns4IYVNrsmvs+K91YCy3fy5BzEvoT/sB2q128xOzPJ5HpHgtZ1usZMVWeE18gQgDFiET07Q+DGtLEVtge/bPiX/ny1387pYfBBa8G8z/EjUKaxAmcvfOjn8TQBoxGn/uQr8LH0La/yZAHZIZXVgg8xaysgPgbfVp8bHac/5YLo59AZc6zXQRGvUXx4HRyNLFnawO0R8RhCTCOJHMYsUiNgv8K04CxmAQlCOziUDwVQYLWLs9HrkqLCJzvT8cHgsUjZJkRKD1Xar
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(376005)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 17:09:39.1872
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cc1a3e4e-9447-469a-5f19-08dc4a92dbba
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7636
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 17:09:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13314

T24gMjIgTWFyIDIwMjQsIGF0IDE3OjAyLCBKb3NlIFF1YXJlc21hIDxxdWFyZXNtYS5qb3NlQGdt
YWlsLmNvbT4gd3JvdGU6DQo+IFdoeSBub3QgaGF2ZSBhIG5ldyBnZW5lcmljYXJtNjQtcWVtdS5j
b25mIG1hY2hpbmUgd2hpY2ggaW5jbHVkZXMgdGhpcyBtYWNoaW5lDQo+IGFuZCBhZGRzIGFsbCB0
aGUgcmVxdWlyZWQgcWVtdSBiaXRzLg0KPiBJbiBteSBvcGluaW9uLCB0aGlzIHdvdWxkIGJlIG1v
cmUgZnJpZW5kbHkgYW5kIGNsZWFyLg0KDQpCZWNhdXNlIHR3byBtYWNoaW5lcyBhcmUgbW9yZSBh
bm5veWluZywgdGhlcmXigJlzIG5vIG5lZWQuICBUaGlzIGlzIHdoYXQgd2UgaGFkIGZvciBnZW5l
cmljLWFybTY0IGFuZCBxZW11LWdlbmVyaWMtYXJtNjQgaW4gbWV0YS1hcm0sIGJ1dCB0aGF0IHdh
cyBtYWlubHkgYmVjYXVzZSB0aGF0IGFsc28gYnVpbHQgVEYtQS9PUC1URUUvRURLMiwgYWxsIG9m
IHdoaWNoIGlzIHBvaW50bGVzcyBpbiBhIHJlYWwgaGFyZHdhcmUgZW52aXJvbm1lbnQuIA0KDQpB
cmd1YWJseSB3ZSBjb3VsZCBqdXN0IGFsd2F5cyBidWlsZCB1LWJvb3QgZm9yIHFlbXUgYW5kIGhv
cGUgbm9ib2R5IGdldHMgY29uZnVzZWQgd2l0aCB0aGVyZSBiZWluZyBhIHUtYm9vdCBiaW5hcnkg
aW4gdGhlIGRlcGxveSBkaXJlY3RvcnksIGJ1dCB0aGF0IGZlZWxzIGxpa2UgaXTigJlzIGFza2lu
ZyBmb3IgdHJvdWJsZS4NCg0KUm9zcw==

