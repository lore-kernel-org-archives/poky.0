Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E43CC77B7A
	for <webhook@archiver.kernel.org>; Tue, 16 May 2023 14:51:43 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.73])
 by mx.groups.io with SMTP id smtpd.web11.23944.1684248693423112363
 for <poky@lists.yoctoproject.org>;
 Tue, 16 May 2023 07:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jrMaJGUx;
 spf=pass (domain: arm.com, ip: 40.107.21.73, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xBzdPh35jeKTj13fwm8xw5PuVC66DT3IpAhmUcr7zeA=;
 b=jrMaJGUx+H11ePy0Ya613U6NIINztx9WbJ3YOwSwlULVANi4WcO4hQn/y0x5mQhFPeAukDNv/d6oAgToSSq/imobwMu4QGyiRLPAeRamp55aEavg8+bClE4CdGIuDwHdOR5xJvc0wNDV4HqTEAvRTa7HXcOralT8Zl2Oip/9W8c=
Received: from AS9PR06CA0446.eurprd06.prod.outlook.com (2603:10a6:20b:49e::27)
 by DB9PR08MB8481.eurprd08.prod.outlook.com (2603:10a6:10:3d7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Tue, 16 May
 2023 14:51:27 +0000
Received: from AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:49e:cafe::87) by AS9PR06CA0446.outlook.office365.com
 (2603:10a6:20b:49e::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33 via Frontend
 Transport; Tue, 16 May 2023 14:51:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT038.mail.protection.outlook.com (100.127.140.120) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.15 via Frontend Transport; Tue, 16 May 2023 14:51:27 +0000
Received: ("Tessian outbound 945aec65ec65:v136"); Tue, 16 May 2023 14:51:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e5787b9358adbc5c
X-CR-MTA-TID: 64aa7808
Received: from e869f5d02a8b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E915BF9F-33B0-4BBA-BA0F-1C4FA2849F85.1;
	Tue, 16 May 2023 14:51:21 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e869f5d02a8b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 16 May 2023 14:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EUQ+B943ml05hXk4WXngRrUvoqHkyNtUGuP3Dutp+F3/ISkUSPoyoe5Cbx3RlC47KHauH1dUPVEjcOKAVtv1oza3KJaZJ++zsBJ4lBsVlx+PCtHFfOxcQ+5qLH5XmoosDjxMTAegRRhW7YJe0YiM572OHCqPgOgqNFG9WcSpvO6JNo6sajQYR7zs4u0kIPTtCuJ+qsnwoT8EF3/AV02PQjXmB//B9LDIJJabW2cghRz9b+XhsZo1gHzIMN35+mLU62Yn3tffD/qb4OKUfIagX6BBwfpDqCz3F0g5FwKlDdPUmeTS7Jkm0XZVgIpDPsXJ8DIKVN3vo8wierB62DSVMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xBzdPh35jeKTj13fwm8xw5PuVC66DT3IpAhmUcr7zeA=;
 b=gzwtZrRifxQS4RVNVMaBHazOqWhmq6xHc2u7SH4CY/FGkJKYLVxBlsRPGQ2RyagMKssPTEhiOBsUdk8m/m6i70yB9kC2lxA7UNywLkEalqoVPgyNOHXvjEEh1ZjHkKW07gL4fqVMhIlacdUQ/wKPHjGzMxgWSstPD5plNemK85IDrGtIjz9ywioEJjtt7B60bL2roT5myQCcZOwKF9tmtuzutb392F3sIg3FTfaDion9ycbT/1fczHUaeNk2aMmt6HcN+fvsO+vdrC5QbwsGo738aw+Pae7uecsH4doWLSzaaQDTI8cB76K0MD+nHjjgrIzLKjm27UdAnau26uzhtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xBzdPh35jeKTj13fwm8xw5PuVC66DT3IpAhmUcr7zeA=;
 b=jrMaJGUx+H11ePy0Ya613U6NIINztx9WbJ3YOwSwlULVANi4WcO4hQn/y0x5mQhFPeAukDNv/d6oAgToSSq/imobwMu4QGyiRLPAeRamp55aEavg8+bClE4CdGIuDwHdOR5xJvc0wNDV4HqTEAvRTa7HXcOralT8Zl2Oip/9W8c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBAPR08MB5815.eurprd08.prod.outlook.com (2603:10a6:10:1ab::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 14:51:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6387.029; Tue, 16 May 2023
 14:51:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "javier.tia@linaro.org" <javier.tia@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] poky.conf: Add Fedora 38 as supported distro
Thread-Topic: [poky] [PATCH] poky.conf: Add Fedora 38 as supported distro
Thread-Index: AQHZh/k/VVm8Ctg6skeoMrpfSk1nBa9c+78A
Date: Tue, 16 May 2023 14:51:19 +0000
Message-ID: <0FA0380B-061C-4E7B-92DE-63C2BB98BA25@arm.com>
References: <20230516132024.686605-1-javier.tia@linaro.org>
In-Reply-To: <20230516132024.686605-1-javier.tia@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBAPR08MB5815:EE_|AM7EUR03FT038:EE_|DB9PR08MB8481:EE_
X-MS-Office365-Filtering-Correlation-Id: ca836774-6a53-4efb-22fe-08db561d06f1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 B1CS8CTsEKoxkrsCyBHR5o3BD80uF28nXDFsBJ8ei479sPbvLiPWqBvor9IGjKaoMeh8/qC74N/vpokL7s5EGBUjcELx6vemGqJWE0U9gzGGpyhJpVUtzwHmWYXybrCBcXq1Wy5AU1gQcsQ7t+h6T1fOyAK/XiSpw6dicxjxYCMkRzXM0KoQwQ6kNLR3CYCzZsBE7P3yYVGMXqpcO5VoDaPPXvkEssYHJGwBUQEZHEyYZ6luCbqPA6fd4R6aSg0uZZ2WeWx4gA1kqeZh6bbfDL3xGvr/2XddSYvdtEQ3aKPPwJeq7HN3QqeqmVv2JPLIGKwoFFTLq2gG+JF0xzbpaA3eofXMubsN/IR52IyU0IWB//O11twHiIUoHh/2kjzBFmL3h16RgSpEI4An3/yUR3Rd+utoOc2xg0X04pMYut7eEYlYvEcL07mJxjNLJCHeGNSx3mxSdAzvDfzOJJ+pNRhr6M+7+8N5TGATa6nCH3G3mcstkm1+CM3m5760iyCRvArUXIX9EVikTaTnz9THZ/b9ZmNRBYvH/4i5WQ75VZ4bCT8PCQezTC+56GC04wVv27/ZlYwpkgToQPIJPGw1bbn0Fk56SJqc6sTwvLb+xx6yIUD10pXhU0Fz5tTRwiK4NKRHv0BNxh10A9O6FP9wAw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(396003)(376002)(346002)(136003)(39850400004)(451199021)(66446008)(64756008)(66476007)(66556008)(66946007)(76116006)(41300700001)(91956017)(8936002)(8676002)(71200400001)(5660300002)(478600001)(316002)(2906002)(4744005)(4326008)(6916009)(6486002)(6512007)(186003)(26005)(36756003)(2616005)(33656002)(53546011)(6506007)(122000001)(38100700002)(38070700005)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C392030B71A134FB71B118BA605B713@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5815
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0286d202-f61a-4cdf-1c25-08db561d026b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JkgJZC9uMRhJ8Ymz2IPMogWLqRbld45HCVzq7GOUaO/S08F4YTtEqSzch6GYc946bHQPcKsOwrfMbqWF18zGddsrpxNvLOSuVpkQGaoH/+3WZL5SLXXL7zHv8gwnZNH6KqlyTWYZ70Nx0Mi9d/RUUtaTVI2ZgZ0AOZKyI2A/VS6filOwwkBxopCIo2FV6LoDrKSEo9SnHGKgi4Pm/RQPK5JUp97IqugWgaQ15bAJs5q2MlgMt8jaxICP88DRwP6KPnEmBLcCBxphA1k66S5g8fmtsLdUyJMteeQd6IWr+hSIX3ptX4wvAV9ZZVXIKcQ4r1nIQhkLDXEMHuMBPG2DUph+WDnhqlWNf4tOLk1aUFSPTKLT/M3JIlMGp83rkP7gAx+GevuU8CM2NgNuotWame9+9i4cTkz6FX12/HsNjWcndDXqg5VwFcsvJI5fuPhBV3H6f0uUDtOpHbbVSEgACZXNVHOVDukHjuQICbqxFzfvfpcoZ0buMDeRbww5U6DtwgK86C8UNoZ9HH9a1N58juCEIysOLIyP7S+gpBcoKtd2R/bkel8+BJ3xhfTGA1zwkSJ0EZ+29XrkcnN9WSDln/Chr4ZPoQ+Wf5r/4rl0R0cB9q0IFyg8mfhv/VarJnWiL+9IZ6tN7BeZQP9DTb0mETlqVSMVGyUPaKoTEzFZMWRW/JTClvhEyGnKcPbLXtl9/AaCwvqIERlMtXAscNSSTEOZM+IclX6Wi1aIPtCl7gsCnP5gjMviuJAcC8CJBNfo
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(39860400002)(376002)(396003)(451199021)(46966006)(40470700004)(36840700001)(70586007)(70206006)(81166007)(47076005)(8936002)(6862004)(6506007)(33656002)(26005)(6512007)(82310400005)(6486002)(356005)(336012)(82740400003)(8676002)(4326008)(2616005)(2906002)(4744005)(5660300002)(316002)(36860700001)(41300700001)(86362001)(40460700003)(478600001)(53546011)(186003)(40480700001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 14:51:27.3095
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca836774-6a53-4efb-22fe-08db561d06f1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8481
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 16 May 2023 14:51:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13068

T24gMTYgTWF5IDIwMjMsIGF0IDE0OjIwLCBKYXZpZXIgVGlhIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxqYXZpZXIudGlhPWxpbmFyby5vcmdAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBGb3IgYSB3aGlsZSwgSSBoYXZlIGJlZW4gYnVpbGRpbmcgd2l0aCBGZWRvcmEg
MzggYW5kIGNyb3BzIGNvbnRhaW5lcnMNCj4gd2l0aG91dCBpc3N1ZXMuDQoNClRvIGJlIGNsZWFy
LCB0aGlzIGlzbuKAmXQgYSBsaXN0IG9mIGRpc3RyaWJ1dGlvbnMgd2hpY2ggcGVvcGxlIHNheSB3
b3JrcywgaXTigJlzIGEgbGlzdCBvZiBkaXN0cmlidXRpb25zIHRoYXQgYXJlIHRlc3RlZC4NCg0K
V2UgZG9u4oCZdCB5ZXQgaGF2ZSBhbnkgRmVkb3JhIDM4IHdvcmtlcnMgb24gdGhlIGF1dG9idWls
ZGVyLCBzbyB0aGlzIGNhbuKAmXQgYmUgYWRkZWQgKHlldCkuDQoNClJvc3M=

