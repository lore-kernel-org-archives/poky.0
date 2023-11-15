Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E878AC2BB3F
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 17:03:07 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.87])
 by mx.groups.io with SMTP id smtpd.web10.18652.1700067781721261281
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 09:03:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=2WsPwoBp;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=2WsPwoBp;
 spf=pass (domain: arm.com, ip: 40.107.7.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=fpWL+zNOFhzQpAYd9I+GVe3U0nuptqgBNCpckCytl1m2tO8+RDuGkgvxzGJvdDR33j0IcLlZWJ7TAq4esgJsmNfAi9EsUgaW5scCaz6wLQn68WDxMW73xPn6xIGk5GZ3/TjPwetCin/fiqlau6X3pDSCK4qtQKkduDseCpiXQOwcWhUsGTKEolbxEUPmyOi2vzCHnMDaxqkWmP54LqAHriYa5TegrEKbgJocWnbhVovrmS1e7hOt+P/jhOeBElvtddpiupLhaABmDJIc/wy6NVQ7LhuNbxDjTWMprAiSJATWYZK7jXaQMXgEm0s+qGfAieQJmhgGbDoTy6UdjAaJiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJxpr2pfCYpHGrGCzhvE7Nu2lgV9TnQfyBRpioYC2uA=;
 b=XshhCuQHrI+8Qs/MWOtcsIGHRxmW3PCuuTN9RfgQu8oKaY+ubSHWvT0klDVkxKFikHp7zS2Yt673gUuHjlYlDOKP4isBKsu0RPvnGxgUPVBcauw+9LqefwZxjFt3dm8sieSQibGMU1IxZHuW2r4XMdRjoZBMlP6J+2ubEkHo2M4jknV2CFOvrkejXS3kzTwXSJbA/nbjNS9mKbVyZkJuOfjAroTWCKR3G4x/nFN6dMxG5EfC2yGGMpVRuYleGh1Q77nUs+ovvSzB0/hcEGS71QjcrweGDZsPh2gILfF/w8j9NKAH+YabDU2jAgj8/3WjfxKrSLYZ/wAUeqvIRxQx2g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJxpr2pfCYpHGrGCzhvE7Nu2lgV9TnQfyBRpioYC2uA=;
 b=2WsPwoBpaeAcJbzOeeP6fYqebBSHZ0rBs9A51V6IH2GTSgu/YaYu5oMvw6NEBq6c4UlE1pCWyZIa8natWea2oKQrjL7hY1s2cXS0K8B6xWY3legFpODK8yvDTe9M8CBWGJPG+eWKE8h8Ustbc+ej5YgVerMYjiGKyDmj8e7KNFA=
Received: from AM6P192CA0048.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:82::25)
 by DU0PR08MB7592.eurprd08.prod.outlook.com (2603:10a6:10:311::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 17:02:57 +0000
Received: from AMS0EPF00000194.eurprd05.prod.outlook.com
 (2603:10a6:209:82:cafe::1b) by AM6P192CA0048.outlook.office365.com
 (2603:10a6:209:82::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31 via Frontend
 Transport; Wed, 15 Nov 2023 17:02:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000194.mail.protection.outlook.com (10.167.16.214) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.20 via Frontend Transport; Wed, 15 Nov 2023 17:02:57 +0000
Received: ("Tessian outbound 7c4ecdadb9e7:v228"); Wed, 15 Nov 2023 17:02:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8de641c8421c2e0e
X-CR-MTA-TID: 64aa7808
Received: from ca258dc2227e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A3D840C3-9948-4219-90CC-0AD42BFDA110.1;
	Wed, 15 Nov 2023 17:02:49 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ca258dc2227e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 Nov 2023 17:02:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZPGIfxawMXgwyWavTMqInvYkt8hb4ZPUvINCCA8w/UX0Kz+JefBI4Ik8um3Sdw0c0PdR9ZnCnoDg0+tgs34KXCITu9SHOxRaj98QtNTCwJarayv85sYp00UUJroDSDdW5FZcrELpfs0D+41HaDB82Za4Zs5sXHfwXh+m/U1cPaE3cP5Ej3MpoGmRu9hB0qjwZp/FLeAsIbhC995h0tx2pfLQILN2uYlLUfopifJr/XHpR3XpRjG3MjIks+SmSlrn5M0zdN3p4OzWnPWUbUmAbVv55R92RvxrfH4q74dYp+eUP6LyGbRJPzJ3AfOTZfcJuwbMqDXCCUKrfM81vgzC4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJxpr2pfCYpHGrGCzhvE7Nu2lgV9TnQfyBRpioYC2uA=;
 b=PzucROqpCFeMYIR03+CLJKgKViDtA1fV9uWtjiWZTGNXdZIKk67WQUQFZ//evxqYrF0LIQkSog9sdbYANwX9J8zp7iRFez72Omt/yk5Eh5s2mUD6jLIkWjjefe7aV3+2Cyubq7XDdKdfn+5BCNJBAhXgKvA4eoAHd/PnOTbjz7MktHnIr8SpBlqcAj0q5JXO1ajOB/lx4z6xliOnrO6rJxti57rNfqPwIuokryTwah6UlWOaf3cxym1bcJDUnA4e1T7tl32Juuk/TE8VoZ7j6GGFmkySs+/UnkbHMlKvExSZZ9DYgnIWdoz2HmMQTXa2/rd4TVnhtlBR6MGv5beiQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJxpr2pfCYpHGrGCzhvE7Nu2lgV9TnQfyBRpioYC2uA=;
 b=2WsPwoBpaeAcJbzOeeP6fYqebBSHZ0rBs9A51V6IH2GTSgu/YaYu5oMvw6NEBq6c4UlE1pCWyZIa8natWea2oKQrjL7hY1s2cXS0K8B6xWY3legFpODK8yvDTe9M8CBWGJPG+eWKE8h8Ustbc+ej5YgVerMYjiGKyDmj8e7KNFA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB3PR08MB9034.eurprd08.prod.outlook.com (2603:10a6:10:430::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Wed, 15 Nov
 2023 17:02:47 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 17:02:47 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Topic: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Index: AQHaF+VVCd9cn5HlKk6U0Gs1H8hl87B7m0aA
Date: Wed, 15 Nov 2023 17:02:47 +0000
Message-ID: <5CA7721D-98E6-445A-8D8E-5C298118DB03@arm.com>
References: <20231115170039.486447-1-ross.burton@arm.com>
In-Reply-To: <20231115170039.486447-1-ross.burton@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB3PR08MB9034:EE_|AMS0EPF00000194:EE_|DU0PR08MB7592:EE_
X-MS-Office365-Filtering-Correlation-Id: 5bcb074a-7fdd-4407-0bcf-08dbe5fcb738
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 1FZDPZXWTrrpU9QJEh/zsjra6kO3IGLR4jW3kHJw/g0UpwB4kXuWeN48flgdt7O9ZMkCKb8zqYo4jGyPX3UEBLmZ/CrJyf3g5clHz98U8npl/DlbJxZxHcW/BdqpRnRbGBgbPdz1Lo2RrPqz0Ep9pGw316tISI6cozTGjLJJ6iBoyDf4sMZUzTjEkpofUptg2CU4RlkQWal/Wu109OJf29XyfBRl8Qs0qR38/1Cn73x8aRbijcYL7hC0TI2VKBuxYsg8jUI/ciE5hbM2OU09wNDXWYVF9FbhLCSZBKxb73rrhNrqr3TRMZOnmyTdjyq3JwG/rK4MXtFF4QsX5YhNH4Qg5wEIQYdFlodMjV0VcFBCh1hxxV/6L7iQ5ecdfnjd07JB1XLeXCjNyl/LUXLIm1YInGeUU2uXGXevjBg8pb7rg1QpZ7eKnfppg/G52ahvI2V8GTHUqB7Sf1I4DlKF61UBLo5ukJOihdq9n6FVAZq4zOrGUP5EhPjgMU0gzh26UDYpvpdcz4DKaGmGtoFNUZcQ4CAqQKsNVNrHY3q+hNsdCwVy2I5/Q+BZPkXhjD5bXBV0CnqABL+FBPqT+vC2NdCLeRpJU1Wk8VfCnbfVQ3xWFUTmVYrjY3mekdqhtX+nb/mB0jET1/YESeu5aydBDg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(376002)(366004)(39850400004)(346002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(2906002)(66899024)(83380400001)(38100700002)(33656002)(38070700009)(86362001)(36756003)(122000001)(71200400001)(6486002)(966005)(8676002)(8936002)(6916009)(478600001)(53546011)(5660300002)(6506007)(66476007)(91956017)(316002)(66946007)(66556008)(66446008)(76116006)(64756008)(41300700001)(2616005)(26005)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <63B993FCEC9E9848890B4022354E32C1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB9034
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000194.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	69b9eaea-f2e3-4d42-a31c-08dbe5fcb1a8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4XoqkhJG216PU9KqC+gwLR6vfxtH7945sVqRBT9/2JzQS1S6DcKY6THzextn+z64Ref6ZYLD4sVZx73ssZAfEfSUHU8G6PusgAqTAhqUo276G0K/yHLsJTcZI2+WSW/l168FIomlPKh6P59yIj5RhwF9H2qQR4MNClv+fcR8i5hTEboRWvnyuWCDjZ7RihEHQahNU1riXDt0j2FhHAfjLdAmE15aiHysE5MLEjAiwbhUHfqlO3MfefCKOCBgmEZpa7fL3D0MKEJaUa5BVSlbHHfrRqFtNe+rm0Zicqj/yQc+Eyb/+5Iu2ennNFUTcw9lwkZ2U7pa6L0dqe88KYG2YItYh0NZKzVl7C7LdkAJP12rr6EPnKZiAmmdfYcWrJnqrrPqDMIsRaLJCQV9ic30LWpOEC6pKhyMk/dGJEFqTsIznLpOW9L6Pb7PD5KQ8G19io/4AOn/LFquMylT1DRzo+Cnf43awBRXVZDc9axqGkO5PIRad3YqIMkpxBEDLO2ZdGO4J9lXYJW2QER3wf+pBVH/FBKS4cAlA7klW72RxosHA9ES9MdN8v9r1vrYfCPpCH+HB5/pfsTYTJcDup9mgREC809BxhzRGgY0NLNNfLfYZOHiY/qAv4DHnMh+z83fghb+2aoHCG5TVr5YCOu1TRX0rjiNKY+Ee+PHhuriK/hJJ5FQyMfvriendw3fSakRzuKpKNozGBsAgfTXwPdiJE8Cc+HvwifcpxOG/batcVA=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(39860400002)(396003)(346002)(230922051799003)(82310400011)(1800799009)(186009)(64100799003)(451199024)(46966006)(36840700001)(40470700004)(47076005)(36860700001)(356005)(40480700001)(53546011)(81166007)(83380400001)(6506007)(40460700003)(336012)(66899024)(6512007)(2616005)(41300700001)(33656002)(2906002)(86362001)(70206006)(8676002)(36756003)(8936002)(5660300002)(82740400003)(6916009)(70586007)(316002)(26005)(6486002)(966005)(478600001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 17:02:57.1011
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bcb074a-7fdd-4407-0bcf-08dbe5fcb738
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000194.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7592
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Nov 2023 17:03:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13204

VGhpcyBkZXBlbmRzIG9uICJbT0UtY29yZV0gW1BBVENIXSBjYW5uZWQtd2tzL21rZWZpZGlzay53
a3M6IGdlbmVyYWxpc2Ugd2ljIGltYWdl4oCdLg0KDQpUZXN0aW5nIGJ5IHNvbWVvbmUgd2hvIGFj
dHVhbGx5IGhhcyBhbiB4ODYgYm9hcmQgYW5kIHVzZXMgZ2VuZXJpY3g4Ni02NCB3b3VsZCBiZSBt
dWNoIGFwcHJlY2lhdGVkLiAgSXQgc2hvdWxkIGp1c3QgYm9vdCBhcyB1c3VhbC4NCg0KQ2hlZXJz
LA0KUm9zcw0KDQo+IE9uIDE1IE5vdiAyMDIzLCBhdCAxNzowMCwgUm9zcyBCdXJ0b24gdmlhIGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgPHJvc3MuYnVydG9uPWFybS5jb21AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBGcm9tOiBSb3NzIEJ1cnRvbiA8cm9zcy5idXJ0b25AYXJt
LmNvbT4NCj4gDQo+IFRoZXJlJ3Mgbm8gcmVhbCBuZWVkIHRvIHVzZSBhIGdlbmVyaWN4ODYqLXNw
ZWNpZmljIHdpYyBmaWxlLCB1c2UgdGhlDQo+IGNvbW1vbiBta2VmaWRpc2sud2tzLmluIGluc3Rl
YWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBSb3NzIEJ1cnRvbiA8cm9zcy5idXJ0b25AYXJtLmNv
bT4NCj4gLS0tDQo+IG1ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9pbmNsdWRlL2dlbmVyaWN4
ODYtY29tbW9uLmluYyB8IDQgKy0tLQ0KPiBtZXRhLXlvY3RvLWJzcC93aWMvZ2VuZXJpY3g4Ni53
a3MuaW4gICAgICAgICAgICAgICAgICAgICAgfCA3IC0tLS0tLS0NCj4gMiBmaWxlcyBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMTAgZGVsZXRpb25zKC0pDQo+IGRlbGV0ZSBtb2RlIDEwMDY0NCBt
ZXRhLXlvY3RvLWJzcC93aWMvZ2VuZXJpY3g4Ni53a3MuaW4NCj4gDQo+IGRpZmYgLS1naXQgYS9t
ZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvaW5jbHVkZS9nZW5lcmljeDg2LWNvbW1vbi5pbmMg
Yi9tZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvaW5jbHVkZS9nZW5lcmljeDg2LWNvbW1vbi5p
bmMNCj4gaW5kZXggZTNiYWRlYmY4NmQuLmUwY2I3MTU3MTM1IDEwMDY0NA0KPiAtLS0gYS9tZXRh
LXlvY3RvLWJzcC9jb25mL21hY2hpbmUvaW5jbHVkZS9nZW5lcmljeDg2LWNvbW1vbi5pbmMNCj4g
KysrIGIvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2luY2x1ZGUvZ2VuZXJpY3g4Ni1jb21t
b24uaW5jDQo+IEBAIC0yMSw3ICsyMSw1IEBAIEdMSUJDX0FERE9OUyA9ICJucHRsIg0KPiBFWFRS
QV9PRUNPTkY6YXBwZW5kOnBuLW1hdGNoYm94LXBhbmVsLTIgPSAiIC0td2l0aC1iYXR0ZXJ5PWFj
cGkiDQo+IA0KPiBJTUFHRV9GU1RZUEVTICs9ICJ3aWMgd2ljLmJtYXAiDQo+IC1XS1NfRklMRSA/
PSAiZ2VuZXJpY3g4Ni53a3MuaW4iDQo+ICtXS1NfRklMRSA/PSAibWtlZmlkaXNrLndrcy5pbiIN
Cj4gRUZJX1BST1ZJREVSID8/PSAiZ3J1Yi1lZmkiDQo+IC1kb19pbWFnZV93aWNbZGVwZW5kc10g
Kz0gImdwdGZkaXNrLW5hdGl2ZTpkb19wb3B1bGF0ZV9zeXNyb290Ig0KPiAtZG9faW1hZ2Vfd2lj
W3JlY3JkZXB0YXNrXSArPSAiZG9fYm9vdGltZyINCj4gZGlmZiAtLWdpdCBhL21ldGEteW9jdG8t
YnNwL3dpYy9nZW5lcmljeDg2Lndrcy5pbiBiL21ldGEteW9jdG8tYnNwL3dpYy9nZW5lcmljeDg2
Lndrcy5pbg0KPiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggN2MwOWFkMDBhMWMu
LjAwMDAwMDAwMDAwDQo+IC0tLSBhL21ldGEteW9jdG8tYnNwL3dpYy9nZW5lcmljeDg2Lndrcy5p
bg0KPiArKysgL2Rldi9udWxsDQo+IEBAIC0xLDcgKzAsMCBAQA0KPiAtIyBzaG9ydC1kZXNjcmlw
dGlvbjogQ3JlYXRlIGFuIEVGSSBkaXNrIGltYWdlIGZvciBnZW5lcmljeDg2Kg0KPiAtIyBsb25n
LWRlc2NyaXB0aW9uOiBDcmVhdGVzIGEgcGFydGl0aW9uZWQgRUZJIGRpc2sgaW1hZ2UgZm9yIGdl
bmVyaWN4ODYqIG1hY2hpbmVzDQo+IC1wYXJ0IC9ib290IC0tc291cmNlIGJvb3RpbWctZWZpIC0t
c291cmNlcGFyYW1zPSJsb2FkZXI9JHtFRklfUFJPVklERVJ9IiAtLW9uZGlzayBzZGEgLS1sYWJl
bCBtc2RvcyAtLWFjdGl2ZSAtLWFsaWduIDEwMjQNCj4gLXBhcnQgLyAtLXNvdXJjZSByb290ZnMg
LS1vbmRpc2sgc2RhIC0tZnN0eXBlPWV4dDQgLS1sYWJlbCBwbGF0Zm9ybSAtLWFsaWduIDEwMjQg
LS11c2UtdXVpZA0KPiAtcGFydCBzd2FwIC0tb25kaXNrIHNkYSAtLXNpemUgNDQgLS1sYWJlbCBz
d2FwMSAtLWZzdHlwZT1zd2FwDQo+IC0NCj4gLWJvb3Rsb2FkZXIgLS1wdGFibGUgZ3B0IC0tdGlt
ZW91dD01IC0tYXBwZW5kPSJyb290ZnN0eXBlPWV4dDQgY29uc29sZT10dHlTMCwxMTUyMDAgY29u
c29sZT10dHkwIg0KPiAtLSANCj4gMi4zNC4xDQo+IA0KPiANCj4gLT0tPS09LT0tPS09LT0tPS09
LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3Jv
dXAuDQo+IFZpZXcvUmVwbHkgT25saW5lICgjMTMyMDMpOiBodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvZy9wb2t5L21lc3NhZ2UvMTMyMDMNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTAyNjA5MDQzLzY4NzU4ODgNCj4gR3JvdXAgT3du
ZXI6IHBva3krb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcG9reS9sZWF2ZS82Njk0NDM4LzY4NzU4ODgv
OTY5NjI5NzUwL3h5enp5IFtyb3NzLmJ1cnRvbkBhcm0uY29tXQ0KPiAtPS09LT0tPS09LT0tPS09
LT0tPS09LQ0KPiANCg0K

