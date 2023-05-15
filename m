Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C1BC7EE22
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 09:39:21 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.63])
 by mx.groups.io with SMTP id smtpd.web10.84606.1684143558669744138
 for <poky@lists.yoctoproject.org>;
 Mon, 15 May 2023 02:39:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=TFnpOnd5;
 spf=pass (domain: arm.com, ip: 40.107.249.63, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRMU05n3/3w/qSyEDwHRFBelOWaiIWu7RkbY+X9UPpY=;
 b=TFnpOnd5U5g2wr+utHS1TrfwdTgXNawxw8ThBpF8E5cvMeXeQcXg3bJXNGQWTmBJ7gOD0SZia4nJjCQHSTBGHDlVEz3zLAp6RXHOwoVQqi6Rvr0t+85Az1u7h2v6GgA6IhXxapaCDAV6Gi92Ss/fZiaL8t1X2a7ePXShA/tsosI=
Received: from AS9PR04CA0175.eurprd04.prod.outlook.com (2603:10a6:20b:530::26)
 by VE1PR08MB5728.eurprd08.prod.outlook.com (2603:10a6:800:1a0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 09:39:14 +0000
Received: from VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:530:cafe::76) by AS9PR04CA0175.outlook.office365.com
 (2603:10a6:20b:530::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30 via Frontend
 Transport; Mon, 15 May 2023 09:39:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT008.mail.protection.outlook.com (100.127.144.70) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.14 via Frontend Transport; Mon, 15 May 2023 09:39:13 +0000
Received: ("Tessian outbound e13c2446394c:v136"); Mon, 15 May 2023 09:39:13 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b63ab3e7ecb8a9c6
X-CR-MTA-TID: 64aa7808
Received: from f73bac25777e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E9A93F66-C660-48A6-A6DE-8CE3F9D5F4CC.1;
	Mon, 15 May 2023 09:39:06 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f73bac25777e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 15 May 2023 09:39:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbG02u6Q3YljKrEKOfKbYRto/RstVxrXUgEjKCQs82VL/qvGhlAdgkRgGBgNJLw/UzDxCPfT8IBOyngFlbMRpqbfxYlus7Y1w+qyXV42r9RbZJxA5P9AdgyucWqSPtXNU4oLVU7QwBpLq+1M57myPzsEMqJrOAlrS/3JRt6U/hUvczzfhIb2eHNAnpLuCK8/u0bmvgkxL8QwgTJwvBvThxSZdPp5jF76RSawABS2ic/OaMFNXpHV0EC4K4sx7ZBaibRTMLljU4Ss9+VTy7TLhyZ6aI2H8Ea6CXfRtwVWopq4Ebn7yRyuQZJ0MO+33no45XsLQWCFvAe7+YogTexc4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rRMU05n3/3w/qSyEDwHRFBelOWaiIWu7RkbY+X9UPpY=;
 b=AFoZWF1BSL5mIhQzJ8NmbPkfIcLZPrZpTXNszuuLdBlmV//qfuZ+rf5gzktcYQrgiMVghVatow3htfWxunFGRfOjUrDZNr9U7ZwBgIC4bLubjr+bA+brLVzfgoE3CD3hFr08ANlRGBD8//4ijTssN0O4rRJOnSQWFU0PJpI5tlJ1/amotaM+Hz41qINwKDmvawCPpzwaIeW437oztubyt0xtq27t1B9/VXs2iCMzW9/7kImyxvbDu6l4Ke73724mqgIcOqVWiTAgZnibjqfr9NQYqLX+glcs5z9H0RP3ZtCe9Ul9CFL1M/l1+A3kA/pg6QRJTIqdKMcxZo90DWUjLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rRMU05n3/3w/qSyEDwHRFBelOWaiIWu7RkbY+X9UPpY=;
 b=TFnpOnd5U5g2wr+utHS1TrfwdTgXNawxw8ThBpF8E5cvMeXeQcXg3bJXNGQWTmBJ7gOD0SZia4nJjCQHSTBGHDlVEz3zLAp6RXHOwoVQqi6Rvr0t+85Az1u7h2v6GgA6IhXxapaCDAV6Gi92Ss/fZiaL8t1X2a7ePXShA/tsosI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB7839.eurprd08.prod.outlook.com (2603:10a6:20b:52e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 09:39:05 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6387.029; Mon, 15 May 2023
 09:39:05 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "daniel.macumber@terumobct.com" <daniel.macumber@terumobct.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Trouble with quilt-0.67 in Kirkstone 4.0.4 #poky
Thread-Topic: [poky] Trouble with quilt-0.67 in Kirkstone 4.0.4 #poky
Thread-Index: AQHZhwOeZdvSQ8uKi0+E9zI7YnzckK9bFBeA
Date: Mon, 15 May 2023 09:39:04 +0000
Message-ID: <EF2A6371-137C-487C-9D95-F066D858D172@arm.com>
References: <jL02.1683932564788554823.GrCM@lists.yoctoproject.org>
In-Reply-To: <jL02.1683932564788554823.GrCM@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB7839:EE_|VI1EUR03FT008:EE_|VE1PR08MB5728:EE_
X-MS-Office365-Filtering-Correlation-Id: 28ce6297-2297-4ad8-de04-08db55283e4e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 F7rkBo6OwXUEUHO35UNphd0hbCGCIz/GafQoTcUVuJ5/aMutrpQXmag4q8zQxaK0kBxeHq1y2ShHwfQYFytsgWCSg1cUFzUDU2fyxtexyuNn5emnI8R29H5zHIaGiyAJ5HMctHIS4CD2Qu2q42pi+7pqcOggPnx7Rjn0X8Oq4Bb8dIJczqQHAT9IZAuOFQYYTP97MmXR1CithcjPDhDT6G5+QZGL+IU4KoLeYDcUnpJQocB2NUrDKgqiHAngSqyhtuRCxyM1MX2eKk8AVuoVYFROe5AG5DRYrLT8/yA+QbgLICaJBLAVD0IrI7/LRXSobkpZXE+AKlMF/tcI47LOCv6DDMZsN3bAkUHeUJkjxD7GPlpnOBDC14RjeMhWFu6S6nylCmsse8tTgw6iuq5gKYKtykaYPfbQ4r+sdLvczJIhdJSMi6MMwj+sxy+J2lWVVOQdJVKwD1X13EFZ9hrEap5EdRgMwCX4iELzD1Rsdv6KdJFRJQqBMwxOeaRxOGEGCueVeBeby0gg1pHAb8uGVQVYyJoXnJi7TUXTxNBAcPxCPVAc39SBeizAyoBr7r9SNCUdOt00edoUmXa1fpVptnj361d6XgJqH+sEliaPRTntegasMAnR/prUNcrEKQSweKD+FLy+h2ADl5JekWmzOQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(39860400002)(366004)(136003)(346002)(451199021)(4326008)(296002)(316002)(6916009)(36756003)(38070700005)(41300700001)(122000001)(38100700002)(6512007)(26005)(6506007)(53546011)(6486002)(478600001)(66946007)(66446008)(66476007)(66556008)(64756008)(2616005)(91956017)(76116006)(86362001)(4744005)(2906002)(33656002)(8676002)(8936002)(5660300002)(186003)(71200400001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FD57DFC83019A4C9854638C0A984EC9@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB7839
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	8b71a4c9-803a-428a-c036-08db5528391c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Is/qnyWtAadPzpdNFEw4cZy2r2/y8MNTjmpqJxHY4j2W7kBcEBIGPPy6YAgicDSmR5Y+i+D67LQjSUc6guYNaKq+P4xLme+x0GYpb3BOAM5iW25R5qmhfpXgjvo/Ws8UcZ/0A3grRjh+A+7hauW7RT99OP9i1stgNGPxtjjsMr+YSGXjoeGVaTtzjxVuo6fpSc6Lc41HbpukZ4RK4yLhFFWVpSXn8sYmKcky5Pv1uxPS8vntGPFXVuC/++Uc6wqe0l1GxNaw0dW4BfXPlD1dqEeX2oReUnceQpBqkZRQEjgseax3Fa4uxC43Llpk7MwgApB6KKdK/jeRRqvugR7TXDcMNggX/8LUDgGbVOGjTR9vTGxdzydNOVbptDUzv3lwEDTwg/Cn3pEMEKZ99jfBD/hbUyvlS4n3j/zOYb+I37OOS45HET0TT5LuUy4G/NeqvQdhFu37nNiN+zMB4oBZdPSI+5Kdy7ZHc5ztmCdOgo4k0SewOeQo3ch0tJ4rKoZdVIFgn6Yuwn5g0EeSbws8nOzal+/zFe9RIXDmwozeKpnvekRsV689e16DA9n/nDHvj8aO7QJvziTJaru49bGIdl1nuSMK1GPLjFUzMUXzVY7uq+EKSlTQOJQXTJWe9HwMRVopx6HxAiUE6+UFhQJ83cs/YzKR7cJBTf6nPWQEJ9Ohmn4Ekd7/7pMal+tKpNvq+fNctuamKAuXkUvUGoOBgw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(376002)(39850400004)(346002)(136003)(396003)(451199021)(46966006)(36840700001)(82310400005)(36860700001)(47076005)(336012)(82740400003)(4326008)(356005)(36756003)(81166007)(41300700001)(6512007)(26005)(6506007)(6486002)(478600001)(40480700001)(316002)(33656002)(2616005)(70586007)(70206006)(8676002)(8936002)(6862004)(5660300002)(2906002)(4744005)(86362001)(186003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 09:39:13.4372
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ce6297-2297-4ad8-de04-08db55283e4e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5728
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 May 2023 09:39:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13066

DQoNCj4gT24gMTMgTWF5IDIwMjMsIGF0IDAwOjAyLCBkYW5pZWwubWFjdW1iZXIgdmlhIGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPGRhbmllbC5tYWN1bWJlcj10ZXJ1bW9iY3QuY29tQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPiAgIFdoZW4gSSBsb29rIGF0IHRoZSBmaWxlcywgdGhl
IGJ1aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9xdWlsdC1uYXRpdmUvMC42Ny1yMC9xdWlsdC0w
LjY3L2NvbmZpZ3VyZSBzY3JpcHQgaXMgdGhlcmUsIHBlcm1pc3Npb25zIGFyZSBjb3JyZWN0LCBh
bmQgaXQgaXMgZXhlY3V0YWJsZS4gIERvZXMgYW55b25lIGtub3cgd2hhdCBtaWdodCBiZSBjYXVz
aW5nIHRoaXM/DQoNCklzIGl0IF9hY3R1YWxseV8gZXhlY3V0YWJsZSAoaWUgZG9lcyAuL2NvbmZp
Z3VyZSDigJRoZWxwIHdvcmspPyAgSWYgL3NyYyBpcyBhIG1vdW50IHRoZW4geW91IG1pZ2h0IGJl
IG1pc3NpbmcgdGhlIOKAmGV4ZWPigJkgbW91bnQgZmxhZy4NCg0KUm9zcw==

