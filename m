Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CAED2AB29
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 11:57:51 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.63])
 by mx.groups.io with SMTP id smtpd.web11.17378.1730203065310753055
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 04:57:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FDm64L0J;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=FDm64L0J;
 spf=pass (domain: arm.com, ip: 40.107.241.63, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=NLzo6xdujU+wPWJ0TaXIeHBn7BALv/s+VCVbNEQ+CMzfgs+YL13sCvsn2aHFeJL2XsTDZPkctS0TQ3AB+8aJxq1xH1AL72k1mV0d64OCHRLuRoB1ysy6hoP9yBcRg/FWknwofDO1WBFafQFF/nfxa1VJ1HAOLumrkZ93fMZYfkWIGxY8e5BqBg9BJKVPNIBCWLYnRwHCXHqTS68IdjdjamQIhkKlrq39THmr+kZpZGWkexpNvf7bgzJFpnvp660k3abG8d+M+IUdIuRBLircjir4g2WHB1exOMiV30d7nCDL+1pcj4Akv0umpXtkLram7uEh9TpeHidRDKo4jimOiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxFQ12kznoviykvwavZ8X+2fi4HlaNYM30wqMxWUpyE=;
 b=Y/u2s3CUQ3yxlgacuI5cfzYVHBsdPXutNKFYEbTj1gaiyaeNCNhgrkzomNmD5CYfP9fhRLFb4ZHeN6yvq+dBY5UCwdUDW2XH647sH+lfMTMLFNUcmzhWQWF/a5YhheO8NX1E8GUtNXU1IWzASj3GZJo83YQhDLiMB8MKIykvgjmoBkyoun6EsiiJfsmMcEcfRq7UN+DFhODBGwFYdDLYfdgOxNQIAG1bkORumcMXCJI4OJp2powvRoHhKlhjLquDFRykxmMibIM0T5LIJWhv0jVV/igantNGfc7DOANVwbqa54FDRqjn9yXH7u5L8N+TFKXYN/UWZiZQYCbzXAd1CQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxFQ12kznoviykvwavZ8X+2fi4HlaNYM30wqMxWUpyE=;
 b=FDm64L0J735TrRmTChOSjhkDuzx8Sxq9V5zk+H6LR7s82QDSYNJN8lM9twbv3kj2/erVoBfCiXwB/1brdn7w7tKY5LWvf/YWh4EBfPcFUeUYfbGbQAQGMV78WAFXWh/3q044c2rF79btUuVrWrcmUCNIktDdcTVpPjKVzkKoK1Y=
Received: from DBBPR09CA0020.eurprd09.prod.outlook.com (2603:10a6:10:c0::32)
 by AS2PR08MB9272.eurprd08.prod.outlook.com (2603:10a6:20b:59b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Tue, 29 Oct
 2024 11:57:38 +0000
Received: from DU2PEPF00028CFD.eurprd03.prod.outlook.com
 (2603:10a6:10:c0:cafe::18) by DBBPR09CA0020.outlook.office365.com
 (2603:10a6:10:c0::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.17 via Frontend
 Transport; Tue, 29 Oct 2024 11:57:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF00028CFD.mail.protection.outlook.com (10.167.242.181) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8114.16
 via Frontend Transport; Tue, 29 Oct 2024 11:57:36 +0000
Received: ("Tessian outbound 8223600b7a9c:v490"); Tue, 29 Oct 2024 11:57:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 86b426a420d82d22
X-TessianGatewayMetadata: H7Mt7wCevvxNzAoUvcQuMKif3RYJ07avnirkza259UxNOXpVsvlERg7dqzg5R6xH4xfqYfpuAImY2JSHwwKCFEJjNCMtNYL4f5HJeiucjprXSH/UazhCinwGQWo0TavUP7AH6wVU0frQh9h8QFrxIggD9RzOtnYoX9ML1urJ8WA=
X-CR-MTA-TID: 64aa7808
Received: from L250c8c8605f7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 11FA2083-6C0C-4E45-A39C-E068022B2BA3.1;
	Tue, 29 Oct 2024 11:57:30 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L250c8c8605f7.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Tue, 29 Oct 2024 11:57:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=elWYmHNPkUdjcbZS950G+0borAEB04FaG65bnwxOz76hu2VFuT8RGpdR1isxeInPtT03fr9oLkhMKy2QoqqkSEXZVcHMAycE9WP5rAYVrosdnF9kedv19ViDQihCEihk7XB0C4Vup/86gacuCdPM+u7che2/o73tTOkjPzSegAJx9oseI0InVdR0MLGlMcmqkqDYBtRJOtZvuLeNk9gsjotBJmIMVRfiwJbdVWrsDBOpyPNkbfzBDDJ+hV9wO9NBox22Q9f2+LnRLAy+RM7+ts+ipAPiJj8lYyAuWxPz8kggO+eaTz3Mc/bSkzNU7+TTIzhwXY4VfJrNheeszsMB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxFQ12kznoviykvwavZ8X+2fi4HlaNYM30wqMxWUpyE=;
 b=IZRb/yszXybzo34omvmR5gDceGcYUqjZyR3vBZ8BrZ/AMmECuC4VS5iV576kueSIEUgLjElVyDyU+wuJJCGmFl3tHA4QUYBJj2Ja8rmpI4hfHO4Ow3wib7yPTRiFgIgeeDW/augYrctvRyN0rhC5BNycjSLw/KNc7mPKy1f83/yY+wy3XWTPCQ8n06/KJUpQCD/jFwiuFdAzL4Z0B+pvu6WsUvCJM8RJ8JkTU6FxEtHWV+NzsxOgyXFW8W97s7+MjpWomK3A3i086aaaaxasykE6P5ZOMSromEN/SEgy3ZrI/dDsoBQ13oxBkKnl8OJSBRnSgrgsmcGv5cbHqv3fsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SxFQ12kznoviykvwavZ8X+2fi4HlaNYM30wqMxWUpyE=;
 b=FDm64L0J735TrRmTChOSjhkDuzx8Sxq9V5zk+H6LR7s82QDSYNJN8lM9twbv3kj2/erVoBfCiXwB/1brdn7w7tKY5LWvf/YWh4EBfPcFUeUYfbGbQAQGMV78WAFXWh/3q044c2rF79btUuVrWrcmUCNIktDdcTVpPjKVzkKoK1Y=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV2PR08MB9327.eurprd08.prod.outlook.com (2603:10a6:150:d3::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Tue, 29 Oct
 2024 11:57:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 11:57:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Thread-Topic: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Thread-Index: AQHbKdlxSQWbirwFAUW9aVOMGjLhV7Kdn7OA
Date: Tue, 29 Oct 2024 11:57:28 +0000
Message-ID: <C8F03665-3B73-4BB8-9164-367F0F42C40C@arm.com>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-3-mikko.rapeli@linaro.org>
In-Reply-To: <20241029080544.5486-3-mikko.rapeli@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV2PR08MB9327:EE_|DU2PEPF00028CFD:EE_|AS2PR08MB9272:EE_
X-MS-Office365-Filtering-Correlation-Id: b72ae1a5-5b63-4882-5850-08dcf810e1b3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?eXh3U1p6dHpseXVPMXFFSlV4LzB0RnZSTHFsYWdUZ0hQbytjYWpYc084TSsr?=
 =?utf-8?B?VFVTaVlUbkZKZW9QNEV0aWFMNlJ2ZFdRN3ZlZlpra0dsRGdCYjNVUGhYYjh6?=
 =?utf-8?B?M2lWRVFPRW50dkRRdG1Xc3BwWEE2azdYRDBDOGVFaGk4WlUzVkVFQldLeFdS?=
 =?utf-8?B?bjlrOUo5cjk3Q3JWOHY0a0RHaFpOR2s3Uy9QZTlWdmZFU0JmN2ptbi82eGZS?=
 =?utf-8?B?V2NIUzd3Um1Fa3dhTkx2Z2MxSGNjeUV6TDZHNm1BOEFHRVRqMHgvSFRGampX?=
 =?utf-8?B?WHoxdTB5aitkOUZWaXpoR1kya1BaSlRjcGNzTkZpMEp5dWkwdzhWTE8xWG9W?=
 =?utf-8?B?MlJSV3hQVS91bjFQc0lHNnNMVytKK3EwMm9ZTENSR1RYcU5aMlhOU3dKd2hQ?=
 =?utf-8?B?UU5NL0dyMXN6RGIzK2xZUGtxR2dzMzcwM3JVV3pnY09ubWxqVE5tMGdyV2pj?=
 =?utf-8?B?VXcydUttS0U3UXYvZ3lmTW9XRHJxVWFVUGJWYnRjSE9VdWkwVzBXOUtleWp1?=
 =?utf-8?B?Uko4dHJMNU56MXBFQTN2Vm5lbFZlTXlxQ1RiZ0Y4WXpXVkhOaU43QW80T3N2?=
 =?utf-8?B?QUo2U01Kd2gzRlljcTIybUk5ZmtLeEJwYytoMHpwcWpBbHNYK2QwSlNOMDVk?=
 =?utf-8?B?ZmFYNnQ3SkpPaGF5cDdPMEtnc2d2Q2NwT0R0dlZBSld4Z292T0E5clY4cDVx?=
 =?utf-8?B?TU9VSlJUSDc1blh0OWFpdTRxcFRVbm1CUVF3WE9hRHR0UUgvQjFHeVhxa1cv?=
 =?utf-8?B?Ull5bTUrUDlpd0E4d1k1dzFWYnRhYU5Ud0RkdDZqU20zc2IwZ0NjRG83OUZ0?=
 =?utf-8?B?WTBMT09zZGFHWm1YU0EwRHZxTmo2ZDQxVFliNzU4SWc0eXU2R1R2TDBocHZj?=
 =?utf-8?B?VU1MelZYRXVlUlVqVWJkWHVTUHd5bzZyYVZjQjRCTDEvczdYbDlPdVRGUEhn?=
 =?utf-8?B?RXY4ZDNSWGhYY01oTlF2OEVNdmNhckFyUFZocFpxb1p4N3AwM1dSRXVJd0ZJ?=
 =?utf-8?B?OGx4VWNBSEI1dG5LZGxwUVpQMWhDUWFyQmlCTkpFVDhCM0xVa2VBdjVZZXR0?=
 =?utf-8?B?K0UvMEtteFJrUy96VHVrc3VoMWN2ZnZJSkp2eDFiUWxzaHhSTFV2MlVoYVJR?=
 =?utf-8?B?N2pGN1RBK0JyTFJEL2d1ejZCb0ltY3YyUzdnNGdhb0VXQzYwR2VBcVVoRjlk?=
 =?utf-8?B?c0hIS3dIVkI5L0xKV0NKVEpVbllWSnliZnFQKzd6YWxRdW9kZTh2UFpxdGJx?=
 =?utf-8?B?bFl5VXBaR3pHVFI2UGZmQnZNaGRndmNIVXVEUm9xMlQrVFZIamhmU1p1Y1hP?=
 =?utf-8?B?ajNYN0RtcTZXZTdiVUFtSURuN0xZOHJTVmFCVDZNRUdNdmhUdkg5NVJIcSt0?=
 =?utf-8?B?MWhZMWhtT3M2Q1JmZ0tmVC84Q1RPK2dCL2dTOEVuam02ck1OSmsvdFd0a1pK?=
 =?utf-8?B?STFkL1RiN2FoV1NyUEROM2pSeEhtVWFXSjRrNXBUejUxMWNLYlhUOG1WcHZ3?=
 =?utf-8?B?bG1CU1RJWlBJOUdtVVFiWG9tbDZ3Nk5Ba2ZrcjEyR3FSOThBUzFLZkJHbkx4?=
 =?utf-8?B?a042Q2dldW9seGdmaHY4MWhtREcvOCtEdG1aYi9JZXo4dGVDMk1wN3ZQVjIy?=
 =?utf-8?B?UW1CdW82bUN1Y0s1NHhmaXNnejY3Q045YUwvNklDelZjWEJoMmYyWVEyVTN6?=
 =?utf-8?B?Rm03RDh2ejArZ3pwbmVzQVMwKzFiV05LTGhUbXdkOUZ3V2FYVkpDTU9hOS9P?=
 =?utf-8?B?L3NOelFzUStXOGc4N0x0OFY0WXp0RFExYVdGTVJLTUU5Y1p3dFYzazNOTWNv?=
 =?utf-8?Q?4S9arP6I++BBBQ+kDniw3QTgWSxTclCBGbs4w=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B23C4B008CC794FA1565C4A46621B08@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB9327
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f7bbe0cf-2b5f-4e21-8548-08dcf810dc7b
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|376014|36860700013|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?K1VzVm0vUzN6ZHhZdmd5cUNrOHRZV1dadUE1T2tQQk0zVncrRnBmK3FDNlh0?=
 =?utf-8?B?ajU3WmZuSHBJR2wvdUFHUWNZSCtkZVIwSGNaMkcrbHNFRXM0U3p4cjVseERt?=
 =?utf-8?B?bzJ1Mm1sVWNqTHZ3N20zbGttSU5tUklsdXdPT0NEVWozeVlleVRGZEVyYVJR?=
 =?utf-8?B?YWxNMENXdUhBYVRzMlViWWkyT3RJbndwcENsS1RhNmtwUjBaL1hUMFdJTzlQ?=
 =?utf-8?B?NDZrWmZ3T3Q3eXkxRXlSNFpxUUxLMjdvclA0S0V5UHdhb2tNa1p2aHp0VWtG?=
 =?utf-8?B?MmVqV29xM0FCRHgwd3BRMTd2R1h6RVJ4NjRQeU54cm9ReVhBQkF4RWZuZU9o?=
 =?utf-8?B?RlVZSk1majBQelQ0SFBGczU2NWc3V1hmZTJFcXp5OEFSVzBFc1JFWGdtelly?=
 =?utf-8?B?eDQrbGR5NnNkUTk2SWhCUjJTVnBwd0pjSUpqRkIzV2NyaUZxcXdkOFpVeXNy?=
 =?utf-8?B?M3Z4TURrQ3NkOTRTeWZubjdJb1VaM1JVMEFFbkJJbjQ4MnJXSE15bllzL2pa?=
 =?utf-8?B?d2I3YWhpdmRxWWpsVlJDbGt4dHlWRGJWU04yK3N1WXJCSGtEdGtHYjNWVU92?=
 =?utf-8?B?SjNtbWdxTFBLSjducmI4dlFzTHF2dldRb1ZLVmlpelhWV1ZTSUl1MktaRVMv?=
 =?utf-8?B?RG50eFFFekp0YytMVXk0Qnd4bDQwQ01UMnREc1daM1hYaWppRDRWeExyNGdq?=
 =?utf-8?B?RTNIdXM2dUhaVEhYa3JyRHU1NkRjR3kwVGsyV1ZpRnU3a0NyVHpqVmNnTmhE?=
 =?utf-8?B?YnoyYkpsODVCSjE3RkhoUnN4WTVuaEcybVI0NFNLcUNlR1ppVnFIV2t1NHhl?=
 =?utf-8?B?QTIvckQvckIzQ01lWGtPbGtPYVNPeVBxTnMrbitRcUNSb0RXSW1mSVdrS2tK?=
 =?utf-8?B?WFFob3ZtMDJaaks3N04wREpCaUR3cVZpTTBtSWlhMWhjSWJwc0VBZnMrdDlF?=
 =?utf-8?B?WVNtZG0rRDlFOUszNVJmWkhKb01tbisxTVV2ZmI2Z01ZTXFmWDd5a29TMmM5?=
 =?utf-8?B?OGs3aWsvOGRZUGtXVlZyOFZDYjdIMktacHY2UTFONUQ5enZOVUJuNk9ZREhV?=
 =?utf-8?B?NjkxVmNqNXBKcExwTTQxeE1Yb0wzd3NXQ3VFbDI5YWVVa3BGa3FSNjNOS0J0?=
 =?utf-8?B?RGxQZUltSk9kYVJZallpWmEwVFVsYkJHd3ZoODVBcjloVDlxNGJXVWtwTCtk?=
 =?utf-8?B?VDgzdXBpcmJRUzZMR3kxKzBlVVc3ekEzdzlhQzZacEFJbWlWYnU4YlEreU50?=
 =?utf-8?B?UDlKMi9hdFJpejM3enA4L3RGZjBCMjdEbGtsMHBNRVRVZUIxd2dlb2JTTnNF?=
 =?utf-8?B?UE85ZjNpZmRtZ1AzWnFNK3BOTXQ0dUtLdmRjclUyTUg0WlphRHRYTnBCQ1V4?=
 =?utf-8?B?VGxwN1dBNktkMjVNUC85SDBYbUVvcXVFMzh5cFZvdjlzU2tSTXhKSEo3OWZy?=
 =?utf-8?B?Vy9ha25JakN1N2UzUktWdjlENTA1a3duQUlKTmd4WHlSMmNMTFQrbUM2MHV0?=
 =?utf-8?B?S0NqbDB6M2RidVFjZzg1czN5Y081SW9nNHF3Y01YR3lLdlpBQ0p5QnJ1YkRJ?=
 =?utf-8?B?Zi9qRG1YbER6MW5Fei9sUFVtZHZUelE4ZGY2SXJmZW11MGczQkc0eVZCOVln?=
 =?utf-8?B?dXFBcU5OR05uTDl1QXo1STRSSzFWTG1scW5Dc3lqNlBEUDJST1NiYXF6SXpO?=
 =?utf-8?B?Rm1oOWpCUUNWbHRJMU1xUEtJVk9OREc0THM0WTZBT1ZFQlhGOGtvY1JEamRI?=
 =?utf-8?B?ZFIrOUc1Z2ViQlAwNkx2N1JGcmpYL3VIWDZUd0tiNXphb2hZVFVMV2FXTS9j?=
 =?utf-8?B?RGQyT05WRmdnS2F5ZTYyQmNQUDlpeUZyVXJYZUV1RnAwbm93Smd0cXVMUm1t?=
 =?utf-8?B?c0RsMXV0ckFNRGpTaVQ1RkRlMG1iejJXcUp3NjRVc29hY0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(376014)(36860700013)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 11:57:36.9560
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b72ae1a5-5b63-4882-5850-08dcf810e1b3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF00028CFD.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9272
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 11:57:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13465

T24gMjkgT2N0IDIwMjQsIGF0IDA4OjA1LCBNaWtrbyBSYXBlbGkgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPG1pa2tvLnJhcGVsaT1saW5hcm8ub3JnQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiArIyBSdW4gb2VxYSBydW50aW1lIHRlc3RzIG91dHNpZGUgb2YgdGhlIGJ1aWxk
IGVudmlyb25tZW50DQo+ICtJTUFHRV9DTEFTU0VTICs9ICJ0ZXN0aW1hZ2UgdGVzdGV4cG9ydCIN
Cg0KU29ycnksIGJ1dCB0aGlzIGlzbuKAmXQgYXBwcm9wcmlhdGUgZm9yIHRoZSBtYWNoaW5lIGNv
bmZpZ3VyYXRpb24uICBUaGUgYnVpbGQgY29uZmlndXJhdGlvbiBvciBkaXN0cm8gY2FuIGFkZCB0
aGVzZSBjbGFzc2VzIGFzIG5lZWRlZC4NCg0KUm9zcw==

