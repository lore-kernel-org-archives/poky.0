Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A3E0C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 18:12:04 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.71])
 by mx.groups.io with SMTP id smtpd.web11.43478.1702491116403287883
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 10:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xVlaxvod;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xVlaxvod;
 spf=pass (domain: arm.com, ip: 40.107.22.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=C+rqD3jrDrEZQQT9IHozEvrhD8R8ANhmxyvQZ7FDw8etIdOan60VVBPRTRkigbYhbiRSXA7C3nx0OcXc33cA4pT3wZTOu5WXDF4xX0AIf8Am9MuqMJ8N8Xmdu60isF6ms8OKlsLah89ZFQEtC8lOhiUzbUr9dYxc7Y9ZPGSBvVnti59WMTKJl2Uwt0szF4d0SlRWWdQQaBIekNb4tIyjSLnWZ3O+w65uQxhhrrA1a8JGLK3kdcqfJlLCZxuPC0uVj3D2muRbB4ELdQdc6EV50q1jQufNQyt2hae+qr5aFfcF2+mt/ed3pJ9HZF5Jkz856zfynH0n6+adFHVHkwLUig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bEkZipt2yNHmx2opuIFFsW+ii537jb5ljmhxrItAYIE=;
 b=e/KEBgEkNqpAPdekED2nnQhJq+mVUXk9Jh6ecgcGc6OyMvWOhUNUQiBmPoesVNwUABSDcAfyG3jFwsLGNHS+x6NRatRocp3356C645AVauzXqs8KIvEkz77CRu3SjfOPMypeBPVeu2WrvI/VuQGQFa6KfaeHOTmD7S/84z5GqJuUFCBFWPoOyhCGh7B+HO8Md1obVsr36GQ5prTlghVEQmB8U7ccgM1ulDMivupo1l9R+O6VSpQ1W7fJTLMFzMAHWMt54m55ASH/CJaSz4yha8rT5g4ThHW00wyOdRvH6tzzJUYFckaRsugl2kHYxI9g2JgJg4HQ48m1S71cA1+kIw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEkZipt2yNHmx2opuIFFsW+ii537jb5ljmhxrItAYIE=;
 b=xVlaxvod4keNTJ4OcMKgxV7U5+HI7S/F9R39TAgkT2bctGo63tp479Z35s7/b5hJl934O2IMakCDUxY/APfgkShEufeSgGB8gKDBgdJW8b1mnEvKm0piXXGTMwpsIbDDxnohB1fH1I37UTX1OvfXmNDUwl9Lnm99PlVc7t23SVI=
Received: from DUZPR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::13) by DB9PR08MB9921.eurprd08.prod.outlook.com
 (2603:10a6:10:3d3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 18:11:52 +0000
Received: from DU2PEPF0001E9C2.eurprd03.prod.outlook.com
 (2603:10a6:10:3c3:cafe::45) by DUZPR01CA0006.outlook.office365.com
 (2603:10a6:10:3c3::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28 via Frontend
 Transport; Wed, 13 Dec 2023 18:11:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C2.mail.protection.outlook.com (10.167.8.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.26 via Frontend Transport; Wed, 13 Dec 2023 18:11:52 +0000
Received: ("Tessian outbound 8289ea11ec17:v228"); Wed, 13 Dec 2023 18:11:52 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ce6f6162e0b60d1b
X-CR-MTA-TID: 64aa7808
Received: from 36461e5c62f1.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 72F92F9B-72AC-42AF-8E1A-73E296F4E585.1;
	Wed, 13 Dec 2023 18:11:45 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 36461e5c62f1.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 13 Dec 2023 18:11:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=atCv/NEW38UgGG1WYo7njrv5iAQGOFudv4kw8jLNdtCL5D66YQCQkXjgPY/sUkb/jX7a+IyY88ROHYurmmqcewH9rchN4pq1YxI4ngTV8zft6wSW0EdKIEGACSELLdJX7YZbpQTtm/U4fU7JNIfoK8TOueYrr2aE7sNSKYyoVtxumtnJSatIvUPmxhWUyPogKQNYt/bJR/a14UVdDjw5s0p7BieAZIUcZzst8O/ZehhUTxXynH788GUwyHAT1UmS/hKTD0EVlc/U9UXVwfubCiQxjFMfNTr8Fkxfi4mPfzbYI7TWcSoy541XKxR0M7YuTjrpUqF3wISYZE/CtviW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bEkZipt2yNHmx2opuIFFsW+ii537jb5ljmhxrItAYIE=;
 b=Wmc+GpxOiD+PXoWj/1CL46RjvCqsj2WsEhiJP89rOTMiUoeU1jFQVDd0e4ZhcmPf1ue0TRDqGlI6YwEQf1JHOY4eF56xsyLuRwj1/S3BohncZd5t87bXIQ/blb9eDaeh+eQYMkBA0smfoDZ6mCnN2CeX36cPeiefxYCE64G1QUXB7TvevDopPpNN++AzQ+d9RL9MX24Os8BNyiXVLmHtkqpiR3ywCepxz63OmSZ3CikSjKzFfF//Sgz2FtLzKFM0OQeJoeQvWZsyq1wx1rd8o3VWV0nxEmlw/g/24J7H363oAzBhG4V1FOnjDdIrD+z0vyEm0X+Ttm4IAl1MlfPD8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEkZipt2yNHmx2opuIFFsW+ii537jb5ljmhxrItAYIE=;
 b=xVlaxvod4keNTJ4OcMKgxV7U5+HI7S/F9R39TAgkT2bctGo63tp479Z35s7/b5hJl934O2IMakCDUxY/APfgkShEufeSgGB8gKDBgdJW8b1mnEvKm0piXXGTMwpsIbDDxnohB1fH1I37UTX1OvfXmNDUwl9Lnm99PlVc7t23SVI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9888.eurprd08.prod.outlook.com (2603:10a6:20b:5ba::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 18:11:43 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 18:11:43 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tolvupostur@gmail.com" <tolvupostur@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [question]: Creating tailored image without standard
 rootfs files?
Thread-Topic: [poky] [question]: Creating tailored image without standard
 rootfs files?
Thread-Index: AQHaLd0we2B6fQg++kWbQGwyT3ZbNrCng98A
Date: Wed, 13 Dec 2023 18:11:43 +0000
Message-ID: <44A9502F-A654-4A0B-B4D9-3E1AB8DB1130@arm.com>
References: 
 <CABhNV20HP8rNTkEfnUqbju43Z7K=LOHNanUc1nosnvHprxUa7A@mail.gmail.com>
 <CABhNV21oUdDU7dULZOin11ex4UPGt5dLA0yoBkSQTbBaHw-abw@mail.gmail.com>
In-Reply-To: 
 <CABhNV21oUdDU7dULZOin11ex4UPGt5dLA0yoBkSQTbBaHw-abw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9888:EE_|DU2PEPF0001E9C2:EE_|DB9PR08MB9921:EE_
X-MS-Office365-Filtering-Correlation-Id: d821d8c0-f0e7-4bd4-7a88-08dbfc06fbb0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 lUjY2T4x5yK+a4aqt4vPF63ZrZGIbqWJ85AgXYOJwaGbO9u5A4znNFXL/S84xLmMPJEkrFeV7jmzdJS0rmbjOFMNvXoLYQz94C0yVLVLI5bGOdHaqPISoBWVdaEfo00ikg6TKiHzKmuiPbxPsIOitUeQQZP3vo32NomKT5PLYaPKyS6eSj5FZxdr2xZZ+HWwJmynPmYKHxX3halMN69OpQszz3bWLNTXL4WkfpaTAwxVKAPkwbzv408+zRTZk9O/QwQX944fyn+VOXMGMkXllpt50QwLXMSAB71e1Bv+AjTL3L8dgqvhRVSCBgh//IOrWzE8KYAAoKT7OaZC9WSvmp2B6mkayiB/kDYJmvJdHoHvy9QXxTrOpdT+5V0dXb9Czzx63ufsCRFvnQr/qWuVRxaB2spA/kJP0yzSjvMN1ukAcMRo5no2pIFyse+x4Sy7cJIofRvcu2yYHAK9xBGk1FVkmtpDjP5BcFCE1G+UbBw1vMr6ST00TBMqJEq58J0vdWpI+ckHccycFgoGJvPdaoUCyr9iU8/Fgd8l7e9ArM30Fqcb2VLAxC4D2OkrTMcd/QVsTrtv6VlxE5+qy7WHQBj7rRYACzfszYfBV79MwmQwZTB6D4O7CGLufVG7SFrnMVUNHVVfD8BuEKm59pUGUTdAHNioswoOvyd1V7nY8hQ=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(396003)(39860400002)(346002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(38100700002)(5660300002)(8936002)(4326008)(41300700001)(8676002)(53546011)(6506007)(66946007)(86362001)(91956017)(76116006)(316002)(36756003)(33656002)(122000001)(66556008)(66446008)(6916009)(66476007)(64756008)(2906002)(38070700009)(26005)(83380400001)(966005)(6486002)(6512007)(2616005)(71200400001)(478600001)(545624020)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <65456D92603DC042AF37AF961DF92046@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9888
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C2.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a10d28d0-a89d-4de8-6f40-08dbfc06f64c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YEaTrWUeVm6VVDXbuqK/ED5Yl5TMT27BQRykcFQvvnXBQ/48g4pgOJ/Ph+siEPsAa68o5Vu3jp26sAYjgscOrQBGlTaKEnM35j4ApFiFZ+r2otR6SDDLBPBBVnvOfUREEVww3xSTv5CThzNgUqkkSErrKk867xBgSloWIABAitD7mRhQq0YhjzalheLif+NdpAJR/mJbTSkkp11jmIjr/6GEtROSUkTR/Y4X51wJz/VnFxBfW5aMDZ7URCy56A8jmpwrxNJNnxgeWLoilQsKSqAOga/P7UpUSLDqWcxqVvyJFj0orz2ldZACes4MBF7XJxZZe/+GDxcef55gseLkXOMnU1ISuvuxxAGLmyVvHhRsZOMOBD2RYCI+HSYfJ3S4inpEjr7oljNDMjqJ/85zzJ1LttMFwqWjavxC6jxg9Jhg9Iov16lZIKshjUrDoCm+ZljFrqAUTrgPfouzut+XPYljwUU62APR+munLNZnT9BPqaWYb3miLufoS5o03LyAuXS/an4IJQZBQY5JXyM+SWTt5dj0+xqd/Ve/7kQD38V0EITLykUS8EyIuZ36Wm+b+RRgo2iQ17gpKKePwCupo1R72g1klwPaJj5yFi0KeL0n9EJPZsAADX9dmVdcwAA04I1fI1OrsMT78NtiyeEHuW7ulTZxF/WHESwdhckr4WMeBUNE27swJ8V9kAWkT2sHjNdP/sdge+JssjFtQRWxB4x+c72nPebLl2Fa7zgysIAej7c9G3R1hIFrKt6sVRf0
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(39860400002)(396003)(346002)(230922051799003)(451199024)(1800799012)(82310400011)(186009)(64100799003)(40470700004)(46966006)(36840700001)(40460700003)(2616005)(26005)(336012)(6506007)(6512007)(53546011)(36860700001)(5660300002)(83380400001)(47076005)(8676002)(2906002)(41300700001)(6862004)(4326008)(478600001)(966005)(6486002)(8936002)(70586007)(70206006)(316002)(82740400003)(81166007)(33656002)(86362001)(356005)(36756003)(40480700001)(545624020);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2023 18:11:52.5551
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d821d8c0-f0e7-4bd4-7a88-08dbfc06fbb0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C2.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9921
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Dec 2023 18:12:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13215

T24gMTMgRGVjIDIwMjMsIGF0IDE1OjU3LCBFaW5hciBHdW5uYXJzc29uIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDx0b2x2dXBvc3R1cj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBIZWxsbywNCj4gDQo+IEkgYmFzaWNhbGx5IHdhbnQgdG8gYmUgYWJs
ZSB0byBidWlsZCBhbiBleHQ0IGltYWdlIGZvciBhbiBleHRyYSBwYXJ0aXRpb24gdGhhdCBpcyBu
b3QgYSByb290ZnMuDQo+IA0KPiBTbyBJIGRvbid0IG5lZWQgdGhlIGtlcm5lbCwgb3IgL3J1biAv
dmFyIC9ldGMgZm9sZGVycyBvciBhbnl0aGluZyBsaWtlIHRoYXQuDQo+IEp1c3QgYSBmZXcgcGFj
a2FnZXMgYXJlIG5lZWRlZCwgYnV0IHdpdGggYSBRVCBhcHAgb24gdGhhdCBwYXJ0aXRpb24sIGxv
YWRzIG9mIGRlcGVuZGVuY2llcyBhcmUgcHVsbGVkIGluIGFuZCBJIGVuZCB1cCB3aXRoICs4MCBl
bnRyaWVzIGluIHRoZSBtYW5pZmVzdC4NCj4gDQo+IFRoaXMgd2FzIGFza2VkIDEwIHllYXJzIGFn
bywgYnV0IEkgc3RpbGwgaGF2ZSB0aGUgc2FtZSBpc3N1ZSBub3cuDQo+IGh0dHBzOi8vZG9jcy55
b2N0b3Byb2plY3Qub3JnL3BpcGVybWFpbC95b2N0by8yMDEzLU1hcmNoLzAxMjgwNC5odG1sDQo+
IA0KPiBUaGlzIGltYWdlIHdvdWxkIHRoZW4gYmUgdXNlZCBieSB3aWMgYXMgd2VsbCBhcyBzd3Vw
ZGF0ZSwgYXMgYSBub24tcm9vdCBwYXJ0aXRpb24uDQo+IEFyZSB0aGVyZSBzb21lIHR3ZWFrcyB0
byBhY3R1YWxseSBidWlsZCBhbiBpbWFnZSB3aXRob3V0IHB1bGxpbmcgaW4gZXZlcnl0aGluZyBu
ZWVkZWQgZm9yIGEgcm9vdGZzKj8NCj4gSSB0cmllZCBtYWtpbmcgbXkgb3duIHR3ZWFrZWQgdmVy
c2lvbiBvZiBpbWFnZS5iYmNsYXNzLCBidXQgSSBnb3QgbG9zdCBpbiB0aGUgYWJzdHJhY3Rpb24u
DQo+IA0KPiANCj4gKikgQnVpbGRpbmcgYSBiYXNpYyBjb250YWluZXItdGVzdC1pbWFnZSB3aXRo
IGEgbGludXgtZHVtbXkgc3RpbGwgaGFzIGFsbCB0aGUgZm9sZGVycyAvYmluIC9ib290IC9kZXYg
L2V0YyAvaG9tZSAvbGliIC9tZWRpYSAvbW50IC9wcm9jIC9ydW4gL3NiaW4gL3N5cyAvdG1wIC91
c3IgL3Zhcg0KPiBhbmQgKzIwIGVudHJpZXMgaW4gdGhlIG1hbmlmZXN0ICgxN01CIG9mIHN0dWZm
KSwganVzdCBmb3IgYSAxMktCIGJpbmFyeSAoL3Vzci9iaW4vdGhlYXBwKS4NCg0KSWYgeW91IHNl
dCBQQUNLQUdFX0lOU1RBTEwgaW4geW91ciBpbWFnZSB0aGVuIHlvdSBvdmVycmlkZSB0aGUgaW1w
bGljaXQgcGFja2FnZXMgd2hpY2ggY2FuIHB1bGwgaW4gZGVwZW5kZW5jaWVzLg0KDQpVbnNldHRp
bmcgSU1BR0VfTElOR1VBUyBhbmQgSU1BR0VfRkVBVFVSRVMgd2lsbCBlbnN1cmUgdGhhdCB5b3Ug
ZG9u4oCZdCBnZXQgYW55IHN1cnByaXNpbmcgZmVhdHVyZXMgb3IgbG9jYWxlcyBpbnN0YWxsZWQu
DQoNCkhvd2V2ZXIsIGlmIHlvdSBoYXZlIGEgbm9uLXN0YXRpY2FsbHkgbGlua2VkIFF0IGFwcCB0
aGF0IHdpbGwgb2J2aW91c2x5IGRlcGVuZCBvbiBvdGhlciBwaWVjZXMgb2YgdGhlIHN5c3RlbSAo
c3VjaCBhcyBsaWJxdCwgc28gbGlieDExLCBldGMgZXRjKS4gIFRoaXMgaXMgYSBwb2xpY3kgY2hv
aWNlIGZvciB5b3UgdGhvdWdoOiBzaG91bGQgYXBwcyBpbiB0aGlzIHBhcnRpdGlvbiBiZSBzZWxm
LWNvbnRhaW5lZCAoc28gdGhleSBlaXRoZXIgcHVsbCBpbiB0aGVpciBkZXBzLCBvciBhcmUgc3Rh
dGljYWxseSBsaW5rZWQpLCBvciBkZXBlbmQgb24gdGhlIGNvbnRlbnRzIG9mIHRoZSBtYWluIHJv
b3Rmcz8NCg0KSWYgdGhlIGxhdHRlciB0aGVuIHlvdSBjYW4gZWl0aGVyIGFjdHVhbGx5IGJ1aWxk
IG9uZSByb290ZnMgYW5kIHVzZSB3aWMgdG8gc3BsaXQgaXQgaW50byBzZXBhcmF0ZSBwYXJ0aXRp
b25zLCBvciBkZWZpbmUgYSBkdW1teSByZWNpcGUgdGhhdCBkZWZpbmVzIHRoZSDigJxBQknigJ0g
dGhhdCB5b3VyIHJvb3RmcyBwcm92aWRlczogdGhpcyBjYW4gUlBST1ZJREVTIHRoZSBuYW1lcyB0
aGF0IHlvdSBkb27igJl0IHdhbnQgaW4gdGhlIHNlY29uZCBwYXJ0aXRpb24gKGxpa2UgbGlieDEx
KSBhbmQgYnkgaW5zdGFsbGluZyB0aGF0IHRoZSBkZXBlbmRlbmNpZXMgd2lsbCBiZSBzYXRpc2Zp
ZWQuDQoNClJvc3M=

