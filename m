Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4235CC25B79
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 13:52:53 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.54])
 by mx.groups.io with SMTP id smtpd.web11.16051.1715781168162670377
 for <poky@lists.yoctoproject.org>;
 Wed, 15 May 2024 06:52:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=axfYm3kD;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=axfYm3kD;
 spf=pass (domain: arm.com, ip: 40.107.105.54, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=LM6hTcx2kUuq4rjFH3U8oPpuHnIq5UcoK+iwShrkR/MTvyQVmShwaf+Y4FhADxYdsvEDV19E7iDTQiJb9eByKytV8fBPGSqt2i2LmCUtOiQf8YaaG35He2JOo3OMbPzi+ZN5AF8viGQn9ZmpjEOVvpIPPSO61OdjPnfNxpz/KtdImYgIrYqiXNWjLZxNP4knsJjrSJcXcbIxIm06FtO6L//qo7CsguWrC/3V0ZMP3uRBwvRXetpwJKtKrgyQKfD8mt4Bjtu5kpMmN0vLgAMPgntp1Ng5PesYAkvTmNAjF2JFM7vvp3Qp2m68w7c83LuMJFFoHFl76C0F+aqiJQs9/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLEm9qasyM7TPlDyarYZoNS2Mk1lTRU5+lMFAD9JBdY=;
 b=XN3wzZ4Rq/9dzrjxvofJtoNp1uqXx5Roi9SCCkIdxFxhlCd0fhTYjJy2PrfuO+uBpTr8juUDdD4kit0Dv/9RDFbf5N+TN7mvPXLstbil/vSMNpZq2uXpbYcDFGHMVNu/HL8NMmUUTj/5SGKO3bMip+SuA+y7YTnWO1WcovC4hM+ejRgUTPWfoNSV+kp3xTsfNo6GFrkr5A7Cxzs0IKcgcitwYZClFEY4aw9D6D6iuXAwXPklzHXUUMwtVo/2h5w4G626hahRQ72cocQx8yniDd0D6AYcv1+aavwl2UUbXRogSDVkS7T4MYmKgs2CfoAyVaFvhxZtIzBBOA8KchUZtQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLEm9qasyM7TPlDyarYZoNS2Mk1lTRU5+lMFAD9JBdY=;
 b=axfYm3kDbvFh9dV4PRPAeJdBPNuhrABoVIJffoXRbm9rSg4k7kZjGoCK0zgXfdK6S3yBy+5nyfdVRr+iBoppySnmBLXM7cEVSTX6vJqsdKRAimiiyLCC/M7+Jms8gLmUrnqlhc2ziIA98VyJda8XZSTcoG4nRNpYwgXR6mGfcCI=
Received: from DB3PR06CA0006.eurprd06.prod.outlook.com (2603:10a6:8:1::19) by
 GV2PR08MB8100.eurprd08.prod.outlook.com (2603:10a6:150:7a::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.55; Wed, 15 May 2024 13:52:42 +0000
Received: from DB5PEPF00014B91.eurprd02.prod.outlook.com
 (2603:10a6:8:1:cafe::ff) by DB3PR06CA0006.outlook.office365.com
 (2603:10a6:8:1::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27 via Frontend
 Transport; Wed, 15 May 2024 13:52:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B91.mail.protection.outlook.com (10.167.8.229) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Wed, 15 May 2024 13:52:42 +0000
Received: ("Tessian outbound b7675f20d34d:v315"); Wed, 15 May 2024 13:52:42 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2fac10f09becb6d9
X-CR-MTA-TID: 64aa7808
Received: from b769937bf568.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B784BBCC-6A34-4F6E-B267-495BE6C922B6.1;
	Wed, 15 May 2024 13:52:36 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b769937bf568.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 May 2024 13:52:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VO1XNRy+f8fuaUSQd38A+qIBE/iQqrsKE4lMgmIqzAWpiol5aA/3V2lKC26AmeQb7B/LyIw3/PBKPMsuDNOtqL13Ta8IIv4dFPgWxOnbXWF16NTw+vemqUfXvmWC9cw1VcMbJ4sK7mrCfff3h01JbpJLw8njesVMBI2+h2iVzBNO2i+Bgbkc5nN3ea2BFeQTaqo8rbmS3dRdZn5bejtSbO9ta/KBKK/OOdrbhfMB+4N3GmrtwDDN+/kazaIuWJzVONNnM66LodWbwcQ3aUgMtmKBJlTlr4hti+VxnxIZ7E0J90xosJi4g4CE35gK4XDe3O2Y6AQ5yNQhULMDogmX6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLEm9qasyM7TPlDyarYZoNS2Mk1lTRU5+lMFAD9JBdY=;
 b=Ypu+rTPY37wAXBZGNzxBpa8y82eDLwb7loKwKW+7k54ct7bSzdCtBOr94m3d01MBzHmdF/XTaTTHaQsjUQeiPsAe20NyLROQ4jttrYj5An07gpQQGj4CvGBrLIf6udD6Y7nBC8rvvnxr/ld7tU2VOPSUst/HygUQ4XCXIoz73wSMuqOfF79p/dC1kKgP+F8A3SOHoxl9CpY+8oQV+xVYyIEE51uPVTEk9MJip8eFknbGlFj1GZUmmMPeQSoMXYMkkRe/B2s2YDRY0zQalUekwInnt3XQ/GX9goJY6pIvobkVYNBW/i96kSN15ctXlKaf9f9nASQ2NauS2rVV8gyK8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eLEm9qasyM7TPlDyarYZoNS2Mk1lTRU5+lMFAD9JBdY=;
 b=axfYm3kDbvFh9dV4PRPAeJdBPNuhrABoVIJffoXRbm9rSg4k7kZjGoCK0zgXfdK6S3yBy+5nyfdVRr+iBoppySnmBLXM7cEVSTX6vJqsdKRAimiiyLCC/M7+Jms8gLmUrnqlhc2ziIA98VyJda8XZSTcoG4nRNpYwgXR6mGfcCI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10076.eurprd08.prod.outlook.com (2603:10a6:800:1bd::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Wed, 15 May
 2024 13:52:34 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.052; Wed, 15 May 2024
 13:52:34 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "nicolas.wirth@speedgoat.ch" <nicolas.wirth@speedgoat.ch>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Running chroot-like command in Yocto #yocto
Thread-Topic: [poky] Running chroot-like command in Yocto #yocto
Thread-Index: AQHapsFlJzlqzjyRSUe3rVD22sP0lLGYNsoAgAAEDoCAABXfAA==
Date: Wed, 15 May 2024 13:52:34 +0000
Message-ID: <EFDF2248-3DF0-4B41-B58D-B9437E75645D@arm.com>
References: 
 <CANNYZj_14fsnt6RV1cZyf0qSFD=58MBh59LammMkrGx53DHXng@mail.gmail.com>
 <19808.1715776447222316220@lists.yoctoproject.org>
In-Reply-To: <19808.1715776447222316220@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10076:EE_|DB5PEPF00014B91:EE_|GV2PR08MB8100:EE_
X-MS-Office365-Filtering-Correlation-Id: f20a9069-a794-45e7-70a7-08dc74e64ab5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|366007|376005|1800799015|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?OG1TQ1VLeDUvZzdZY2pZc2FjcWpYenJ1d0YvOFBsTUQ2QVpYeVNkaEh5RExM?=
 =?utf-8?B?MlBSS1pMVmNzejdCOEZXMEhpQURnTDFkV2t6T0d2UGloWnRXUnZMS1NQMXdq?=
 =?utf-8?B?QVQwMnFPL0JtaUtURTRvWCtjV0pnQ1VieDNHT3BGandxN3liL1pGNEVaYVRw?=
 =?utf-8?B?N1FCamY1OEFwWGhWbitWZ0VNMzFwelFuT0hVRkZPT0ZGMmhmOGZvTndUaFFm?=
 =?utf-8?B?QjFHRWt6eWtCUGtUSGFjNHltZkltRk1QcVJLeVRLL3Z5TTRMeGRBdGF6QStE?=
 =?utf-8?B?TDdCQURySnVtdUQzUmF4OVRqRWJwRTZ3ZDdxZjdNSFlLMzduS3VoTlExNTE1?=
 =?utf-8?B?dDFlMUVFV1FDOEJKTjdxZnZ6OVE4aXJQdUlHUy9JN3d0aWNDdkNRaXkzVVk3?=
 =?utf-8?B?RmVPMDBpQjI0eXdmOHNPMTJUcXgrY3oxSC9rNGdDaTBjc0g1dXdSZE50L0du?=
 =?utf-8?B?SFpPeHRDTjJvaXFTaXBGTFQrMXFreUllTXNScTlpRTdCUUt5RjVvT29ZaXdF?=
 =?utf-8?B?M3RDWWlyb2lrWFRtRWM0Q2JlTHkvL252R01SNjErbklPaGp5V0FNQ1gzZ2I4?=
 =?utf-8?B?Z3Z3NjBoZzZMc0FJQi9JckNTREdLRDQ0U0tiTW1iZER2c2ptVlAyWGY3SGJU?=
 =?utf-8?B?dTA0OU5IUk5iZnRMbDFWemtEQmdqanVDKzRBWEJEODVLUUdhZ1lxOThCbkwx?=
 =?utf-8?B?clIzOGw4V3V5VTg1aU5xM2d3cllVYXNIRzZKdlE0dmFSNWRla1lsSWhYbXBG?=
 =?utf-8?B?TDdpeUZhQkt2ZUN6K0xZb0tkQW1hOUNrU1dabGlLOVd6SVVmTXQra1JaOGFJ?=
 =?utf-8?B?TmFKNkNrSjJ3RzJpUUhPZys0TG1vMXRoN2M4WnVQN0ZZaVIzNDdyRU0zdHZZ?=
 =?utf-8?B?UGdSRW5hOE5GUitDWkcxZ3BSRjBrcm5ERG1HdU5WUGV4ZzZ6UlhRdDh2S2ta?=
 =?utf-8?B?ai9Mdm1WckxmYStZS3ErcEZUbFVGQ2pLcWI5UU1qU0FZZWRFV1hpSm1sQnlH?=
 =?utf-8?B?STN5bkpVSkc0NC93NzZsbFlwMDU0a2hFcGYvZ0dyYlBqMW83L1U1d0F4Syta?=
 =?utf-8?B?dXZoY2c0bnZIL25JQm90QzdZYVlHOXZiNEdwMHhROFEyWlJrczUwTGRSRFFB?=
 =?utf-8?B?R1A0clRXV0NoOGtDRUE0c1EwbFlDQ0tqUEtOakpIUjJPdGpRQzRpYksrYkdj?=
 =?utf-8?B?N3VBUnJHbHdpbGdESnZWT054WWlkVSt1SXhKRk1VSHpzQWRROTRUTFdRL2NS?=
 =?utf-8?B?VmpXMnVCMHBFT012Q1Jtc1F4dVZkWFRTamhoVVRadXM1bTFzMkZEMnVBNTZU?=
 =?utf-8?B?cDRGUkZBaW9wSU1INTFvN3JTNU1UcnNib0Q1L3h6NGNxVC9PSm4yRWVWQW41?=
 =?utf-8?B?L20rcHRuZ1JKMGdiQjNwSVpydFhPSi9Hc2dlb2NuSjVhblh5L0VKRmxxT1pq?=
 =?utf-8?B?ZmNhSFBuZWxKS2F2dWdidzlLNnlYZHFmTVd3cmtIbUVHNXhnRDZwc0ZWZ0NZ?=
 =?utf-8?B?QVZyWDVGSThwYThmYndxaW9MTFMzL3MrUTR2TWhpeU02dUF4blM2Y1phNCt4?=
 =?utf-8?B?R1JmYjVJZFFQTVRra1dHTWdGV1dKY3ZwZ1k5cDFDNU95QkZoNG9VTmRUSXpN?=
 =?utf-8?B?SWMxa1d0V3ZaSm4xVG5KZmpUenJzdlUzSlEvT2N4R3RVWXRtZ282M1gwdGVT?=
 =?utf-8?B?YS93RDJyMGthRVlvd1dSVnNPdmduZUt3eEFpUGg5VzZmdEVsN2tOMmNRUU8v?=
 =?utf-8?B?bW1ZZ2FyTDlWNTJqMFhwRVNqSmM5clpyK2MrQXE5K2pFcDFmTGwrcUp5SGJr?=
 =?utf-8?B?M09RYVU1clhkS0FSNXc2QT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3B2A6EC141C7A458C3339E421C6A07B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10076
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9a627a24-6518-4af3-a771-08dc74e645e7
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|35042699013|36860700004|376005|82310400017|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eUZtNlZnZ2VHYnplbit4RjMwU3lkMVEyWmp5ZVpjbUlFSnlmUHdROG1JTmQ0?=
 =?utf-8?B?R2tCVFRwUllNVGZmSnZob0g0YWpXcjlvTDY5SnRad1ZzY0owZDhkWW5JYnh6?=
 =?utf-8?B?d1BxUVdMMTBqYzVVWThrVnJraVhrbmkycDR4YnRQUmYzcVlSekhFVTExT3l4?=
 =?utf-8?B?OHpJNDk3TXIxaVNPdnBKejNOVFQ5QmZWc1dBZ28xSHdFKzBjVEoxVzRjNHYy?=
 =?utf-8?B?cThSamgxODFhL1AxSWpuRFRUTW9WWkNSNGRtcWxVUFRwb3BhRjdiOEFjWlN3?=
 =?utf-8?B?WGpnNlpjZ3FqVVZtRTVybElGcmp2bG10WWczSFZ5eTYrbG5vcFdiK2hWTGxz?=
 =?utf-8?B?ZSt6NGVBWFZ2Zkc5U2hjNkJGeExZanlMUk5ScUZqQkFVNmRvb1M4cnNSYTVP?=
 =?utf-8?B?Vk5pOU43MkJ0MVVxTHd1QytkczVYbURRTzZ1QllLYjJENEZiaDE4UmdwYjFl?=
 =?utf-8?B?dloyMWxiM0ZFZXpPUklnOFRPbGFqVWtZQkUrTkJ4RUVRbGhud3VuRGQzRllj?=
 =?utf-8?B?cTFITFV0TmM3ZHdwcHBKMVk5cWdLTHF3dmYxZnZ5WkV4K21IM281Sm53UmVN?=
 =?utf-8?B?blZXanZJaFBtNkNtZ0gwdTZNa0Y4L1h6SEdtVVFub1N5d1J4bnBXVDBtckhC?=
 =?utf-8?B?eUdxYWcvb3VONGJFVnpHSjkySFZrN3VKMm4zQlBIMnJ4SGRWdkJMa0toLzN5?=
 =?utf-8?B?NUdqcXNpck83M0NWLzRGcm03YWxIOVZ6V1h0N01pbHMzRFdQYnRqSml0ODZH?=
 =?utf-8?B?Rmo5eCtXc0d4OWRpZHU3ZFVLTERja09JdkVwMFhVUTM4dDVYOWRkS241c2dO?=
 =?utf-8?B?V3g1S3ZCbDlmb3hNSHFoa3JLUW8yVnhDL2NvbEVEZWcwNHAvV3o4d0pvcDJh?=
 =?utf-8?B?MzNKaTdUd01pSG9lb2tIYytqYW5pVTdwdTZDbmpyTHBwMXViN0hTd0JYSlEx?=
 =?utf-8?B?TTVVaVArMEtDY3BBZU1wb29ZeVk4T1IvLzFQeTJmQnM1cEI2UGZSbmdhR3Qr?=
 =?utf-8?B?WC8yN3hjclBtWkJqSUVoQTFib1N0YlE5dDR0K0VCdGY4Z3JYNjF4WmZCQ2N4?=
 =?utf-8?B?VFB2UDdIbTVHTHc3Wk5pZEx6M29lQ21LbFE0b3dXQlo3ZDc5Sm5UNUFqb1dD?=
 =?utf-8?B?U2dJN3pYMTcyR3dWNStGRzRkNWVTbFYwTVZKZUFDRjNwVDNWYzgwUE5xVk5h?=
 =?utf-8?B?cmM3VHBWUy9VclhNa254ZFJuUys4OThLYXNjSEtlTnhtTWVIenVGOHVVc0lj?=
 =?utf-8?B?ZytHVFd4QkxncnE1OGdNbGtqKzV2MjNPRENhMEtDM0JhVTBrVUlhWERsRjMr?=
 =?utf-8?B?T3RJZXFvNVFzZmxsWFFRK3VxZHdnNkVpVmdickJLWHBNMFVnY3dtK0VBaGE4?=
 =?utf-8?B?THM1STZJenNwSDNKbHY1SjB5NmpvUi9pUUtlWmxrN2htSFE1K2YzU20wN2c5?=
 =?utf-8?B?UjZKY1dxZnVmbm9uRWpFMGg4ODhld1JaTkZVMTMwR3F3QUpsSmlheXZnV3dK?=
 =?utf-8?B?dkx2QjdrbDFZeXBUcHhpQVpNL3dwRk45VHRhSEdWY1lyZktZTC9VVDJ0ZmlR?=
 =?utf-8?B?MEdZczBkSUJxRUN4YjhkUUZ6M0FSYTh2cWNQdWF4SWtDemZhaFlCbDNoZ0Z4?=
 =?utf-8?B?elB5RlozMHQ3NUJuV3VESlVDU1FRN0FNNGJPd2dqZlQ4dDJrbllEWVMxZTVs?=
 =?utf-8?B?amNLSWtyUGRZRzB1UnFTSm8wRHZvRnZJdVN1a1FXT2N6bHVkazlMVWhuV2Qx?=
 =?utf-8?B?S0FseHM4cTlmUXdldEtRc3pqUWh5c2JQbHVFZWp3S2NzSTJreHo4Q2lMeGZH?=
 =?utf-8?B?VjUyRFpmMnh6bXgvZWxEV2RzT2xmRklmc2tzQlJOSEw5N3NWeGMyd2pKOEx5?=
 =?utf-8?Q?t0DNJ4UOl9VML?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(35042699013)(36860700004)(376005)(82310400017)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2024 13:52:42.4316
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f20a9069-a794-45e7-70a7-08dc74e64ab5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B91.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8100
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 May 2024 13:52:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13353

DQoNCj4gT24gMTUgTWF5IDIwMjQsIGF0IDEzOjM0LCBOaWNvbGFzIFdpcnRoIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxuaWNvbGFzLndpcnRoPXNwZWVkZ29hdC5jaEBsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IFJlYWxseSBnb29kIHBvaW50LCBteSBleGFtcGxlIGNh
biBiZSBtaXNsZWFkaW5nLiBJIGRpZG4ndCB3YW50ZWQgdG8gYWRkIGNvbmZ1c2lvbiBieSBmdWxs
eSBleHBsYWluaW5nIG15IGdvYWwuDQo+IA0KPiBUaGUgZ29hbCBpcyB0byBydW4gZXh0bGludXgg
LS1pbnN0YWxsICR7SU1BR0VfUk9PVEZTfS9ib290L3N5c2xpbnV4LCBhcyBJJ3ZlIHVuZGVyc3Rv
b2QsIHRoaXMgY29tbWFuZCBpbnN0YWxsIHRoZSBzeWxpbnV4IHJlcXVpcmVkIGZpbGUgYnV0IGFs
c28gZG9lcyB3cml0ZSBzb21lIGJ5dGVzIGF0IHRoZSBzdGFydCBvZiB0aGUgcGFydGl0aW9uLCBm
b3IgdGhlIE1CUi4gSW4gZGViYm9zLCBJIGNvdWxkIGRvIHRoYXQgdXNpbmcgdGhlIGZvbGxvd2lu
ZyBjb2RlIGFuZCBub3cgSSdtIHRyeWluZyB0byByZXByb2R1Y2UgdGhhdCBpbiB0aGUgWW9jdG8g
YnVpbGQgc3lzdGVtOg0KPiAgIC0gYWN0aW9uOiBydW4NCj4gICAgIGRlc2NyaXB0aW9uOiBTZXQg
dXAgU3lzbGludXgNCj4gICAgIGNocm9vdDogdHJ1ZQ0KPiAgICAgY29tbWFuZDogZXh0bGludXgg
LS1pbnN0YWxsIC9ib290L3N5c2xpbnV4DQoNClRoZSBzeXNsaW51eCBjbGFzcyBhbHJlYWR5IGJh
c2ljYWxseSBkb2VzIGEgbG90IG9mIHRoaXMuICBJZiB5b3Ugd2FudCB0byBkbyBzb21ldGhpbmcg
YmVzcG9rZSBhbmQgY3VzdG9tIHlvdSBqdXN0IGVuc3VyZSBkb19pbWFnZSBkZXBlbmRzIG9uIHN5
c2xpbnV4LW5hdGl2ZSBhbmQgcnVuIHRoZSBjb21tYW5kcyBpbiBhbiBJTUFHRV9QT1NUUFJPQ0VT
U19DT01NQU5ELiAgQnV0IGlmIHlvdeKAmXJlIGdlbmVyYXRpbmcgdGhlIGNvcnJlY3QgaW1hZ2Ug
dHlwZSB0aGVuIHRoaXMgd2lsbCBiZSBkb25lIGFscmVhZHkuDQoNClJvc3M=

