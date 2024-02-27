Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B821C54798
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 11:27:30 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.74])
 by mx.groups.io with SMTP id smtpd.web11.9953.1709033245546879920
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 03:27:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xbCiGjd8;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xbCiGjd8;
 spf=pass (domain: arm.com, ip: 40.107.104.74, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=g2PaTP8+RiKo1+UxW8Y6O9IkR2VRm930f5fcmC53SsJ3d+lj+lpMf6vx7BzYl3rU9DoQMnbw7/4C95ZW3NFHtHd0RQTTN5L9fFuvbN7/ST3tgBFGBnVpKmIeYcPA13aRVg1NjmU22l6R57ivKOiGeUpJX4WnFZrghoPiLdO1qexEv0BmM4+D0tUO/VTquKGr8Va6pgVYKjX3MeBuO+7ciGum8zEHKrxVdqZ+PERm/VMIbmkrq0+Oih/Qd5qEBBSJ6NUqrw1eexRXkVNjuyqPJ68aXbSPwUV5/0witq9GPgH6rv/ZgESUgPYTXajx2j/o9Bxgq0QKLmOEXzFGjt+smQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IuPwx27fueRCkb0gDCoBS5eoj0yrrab9E1uZ7NsjHgI=;
 b=mNw++NOg0PTL1DqCI5Y/s3bCGADliQBntyQcBA5Flny9rVhSITeMsV4OPBXJusnpkSH6nHNednvRN2eVxqdwjRZ4I2izYYyDn3JsbL/9sAGLBGrEzKTG2xKjYrfAgneXo3KWb/2r/kgJab3ekxf3zYVpPzupIOARa+bfmIQ96C76SOpd4c7lziIs/w909p4cObQciR2ByKR2IEuH9U02u4z1Lw5ZAYV/7/pTQFFi0++/cMqRxz9mb6aWr0lyaN1pq/2xaiYUyGz9oY+SuM5hsHTmk7AL476q4MhaaEUxYSiPivIKvK+9M9sSbgXAI+I/ERWw+JnBQ09ATiPTv7L96g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IuPwx27fueRCkb0gDCoBS5eoj0yrrab9E1uZ7NsjHgI=;
 b=xbCiGjd860VLeUjBgld9VXOfBtabnPe78yS6Is4Au/657QxA4TupwktfKDptpQyEokarLp8h1z2YBGZ6//zicAryUUfAiLb/3cxnBJpYykKKjJy2K0gyCUmRGiE2wMP+ZQpS4Rwe4jVRH2Iky3XXIKhsZgPTVOPa4hf+IxewsPA=
Received: from AM6P191CA0054.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:7f::31)
 by AM0PR08MB5522.eurprd08.prod.outlook.com (2603:10a6:208:18c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.34; Tue, 27 Feb
 2024 11:27:22 +0000
Received: from AMS1EPF00000044.eurprd04.prod.outlook.com
 (2603:10a6:209:7f:cafe::25) by AM6P191CA0054.outlook.office365.com
 (2603:10a6:209:7f::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.50 via Frontend
 Transport; Tue, 27 Feb 2024 11:27:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000044.mail.protection.outlook.com (10.167.16.41) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Tue, 27 Feb 2024 11:27:21 +0000
Received: ("Tessian outbound c21fe6ca13cc:v228"); Tue, 27 Feb 2024 11:27:21 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7d901d61aced3510
X-CR-MTA-TID: 64aa7808
Received: from 1abe9a8be61f.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9CE3FAEA-0A51-440B-A479-E10D875DA35D.1;
	Tue, 27 Feb 2024 11:27:15 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1abe9a8be61f.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 27 Feb 2024 11:27:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6Exx68PTsEC0bggOuDnozDCRhXAndcBvFJzp5AMJMDRGgema2Ps/cAefljvzeQ5pNR8ziFy5U8dN6QFmMkR/uyene/Ln/xtb3bhkVNku5UZ596cjxjYB34zNWR0JmdRmYIl/6vS0kVLb4Qak9rrcCkUJ7urkLoq6CQVZZaFkvwGqoIZp0ZOrFEjxRLDWYmeZ8lSqhXRNtf+wxpxqH+e8hS0qgfOL13lBfKMH4gJ/xuLxGR2CnMVI9Bz7w20E7FJdbPotNtkc63tguLP4ap8PB87ObidXzlXwFtbAccoPMPjqPx3O0s4Pv45OaCSO5Jhhs/vu2U0HSfLy5skm+Ro3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IuPwx27fueRCkb0gDCoBS5eoj0yrrab9E1uZ7NsjHgI=;
 b=eQjYwDT6QfGXzuPdx+WAOr61NfAtUR7SNZMor0jT2kEYjQGFa5OjVl9N/HNDo+Ml48xNYaVgy8+idA+SxfrBlUT05nVom4CqSDo2i8uQ2lBJKfGsJBGmDKmDfgJX/xJmuovLA4F+rvsS/JYKAQpwEZYtipI07SlSHfCOUPhD8PdIdMAXZRV8g7ZVdZhOQPErOOfknYlueBgvL6A60o9dTCIaxzDpV0WKRDAK+pWnhgYyRUK8oZLcaenoJKKFfOG9PvGv3VdaqaWaJWTKOPcT0SANybo9mGfBjQUBZPoqtq7/TriHGoP4EFo3B6oH/yAxPvNUEqtpa07dqONnI5CfwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IuPwx27fueRCkb0gDCoBS5eoj0yrrab9E1uZ7NsjHgI=;
 b=xbCiGjd860VLeUjBgld9VXOfBtabnPe78yS6Is4Au/657QxA4TupwktfKDptpQyEokarLp8h1z2YBGZ6//zicAryUUfAiLb/3cxnBJpYykKKjJy2K0gyCUmRGiE2wMP+ZQpS4Rwe4jVRH2Iky3XXIKhsZgPTVOPa4hf+IxewsPA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8642.eurprd08.prod.outlook.com (2603:10a6:150:83::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.36; Tue, 27 Feb
 2024 11:27:11 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7316.034; Tue, 27 Feb 2024
 11:27:10 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "andreas.muetzel@emlix.com" <andreas.muetzel@emlix.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] python3-bcrypt: allow building native package
Thread-Topic: [poky] [PATCH] python3-bcrypt: allow building native package
Thread-Index: AQHaaWXygtvMeOP4NkmLowE6DlcuUrEeDPYA
Date: Tue, 27 Feb 2024 11:27:10 +0000
Message-ID: <3584EFD5-0A58-4ED6-8B43-10D5C6EC38BE@arm.com>
References: <20240227101522.3155724-1-andreas.muetzel@emlix.com>
In-Reply-To: <20240227101522.3155724-1-andreas.muetzel@emlix.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8642:EE_|AMS1EPF00000044:EE_|AM0PR08MB5522:EE_
X-MS-Office365-Filtering-Correlation-Id: 8924c6d3-2dc3-4abb-f2be-08dc378710a0
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 RMsR5KCn4MRyoj1f3I81csY8xLE3w5JfhwWdEXrDX9yFFYIyhBVoQLkZTFCxn5vJUJ0PcpCrLS6zNPW8wM3P9jx12mdVckcr+1e3tY2og3pZY33oMhmkm1IJcZ9g4JpD48rSGN/uyGHAtliM1hRsE1LupValS2hHpHdBZzVzpMI9KYOxYwNe8CeLYfFgJQW33JLdqLvNPFbVa+s8Rpl+ObXbndf0o0ZiVa99rX3WFQY0O2qGBvzITTg3SpMQWqcaCkLfJfbXb41Tay3CaITYw2noBCk9wzmySOQuouk7/YrcvivQ0QzuvNVTAb843q3kvFHifwdhw0+TnHN34pKQEGpimCNl/5EYIGRFdw5KJ+1us+DlJg+vY1Siu6j6JF1qNVoxMt7VtES2XHf215siDoKCY7R3oTzrnR5ov9inQWYcHyet5z/Gn/rcifQKKLnsfjVMIrwgOXW5U3aXhBg0hoHbgabJvk7SPbAXyPOv0d2X7XHwXdfmPzcs5OAcpdivfc9Bl+zOsjSPhZVmEC3fWU7OJCf/Qs8AViaufH+Nf1WC6bAgYZX62ghQcxUO5jLzMUkKWuqNTByOPashTtaUSVEwgC+Ku+iIlpOrAgM4zpfJiO7b16e3LArGR/A+UBQBh+CGmRkCc6yzQIHnsM3Gk9ssFJc8jVzv+ct1sUCtOJogTM6DI05L9ygbnZbPX2mbydUgiiKnBUorLyWNBBTdNw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <44FAD1388AF45344AAEC8F7075F75347@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8642
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000044.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9c965b10-5e1f-42bd-895c-08dc37870a1a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	BNv0M9GPIWp3Il7YQIci4bLyn0MDvMHjkQX75+ntanmUCSMnUr1z2bGHtrOAfGXc6nf7rjGIZmgbY7cdJ/F4BmHvnm0Ip9qHxxqroogaiuCiYMJAoFt7ls3sS2hp0Pu1Ek5y8RLaKxDd5IbXG9YIAhq6hQ2QPorceas8lHe9YJUYOq1U68ImXlSvE9sdFCG0qAwzehYQHTbzsw6I6Aka2I9QwUYmve1w3PI/GhjWYTcfqAggXFGrUlf7Y5gPpOb7AR+C5UGsnIpX15mRby5igM4fOGFDn+CJESlOZXsoTgKDQUIDHlFcw2NGxASPT0MpDWNSWwxIuHWp9LmJDliNrPKJ87KGdtURNGbA2EasepMvh7+9XfMsay021CIHqhsB3uE1djyfnP9xdbRKk5xcXIyVI6kfmmC6qy27KNC07Mz22h5b01k1ApRBza0Hm+NZD0bDbtVXFMT7Rx/hV8IguW2Zaq4seUG92jwHlGf/rSciEU13Sw6xnUeCkGooBYquzG5KJmgGOlXZ+/Ko97sx3N0j5JA9Oebki16KL2OsbpXjDvKp1/H1vW9XKi2IkQn2GUKdldWWyciJhBS2kUc3pHYLQRFO7Ps7Ua0KPyIIj6CSFJOlxEQP2s88++yIicry5qfxRlinFx+rSB5AvG69A3mjtQKotv9X20iBc3W5+hLQyZH3zV+K6zJd3BrDwGyJbmYGRXAcBbw+/QGgttcZg1C3+OBTOo6+zVPxh+a7pq7g9MDrfajJa1QVw737KWxX
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 11:27:21.8394
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8924c6d3-2dc3-4abb-f2be-08dc378710a0
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5522
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 27 Feb 2024 11:27:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13279

Q2FuIHlvdSByZXBvc3QgdGhpcyB0byBvcGVuZW1iZWRkZWQtY29yZUBsaXN0cy5vcGVuZW1iZWRk
ZWQub3JnIDxtYWlsdG86b3BlbmVtYmVkZGVkLWNvcmVAbGlzdHMub3BlbmVtYmVkZGVkLm9yZz4g
cGxlYXNlPw0KDQpUaGFua3MsDQpSb3NzDQoNCj4gT24gMjcgRmViIDIwMjQsIGF0IDEwOjE1LCBB
bmRyZWFzIE3DvHR6ZWwgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPGFuZHJlYXMubXVldHpl
bD1lbWxpeC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBUaGUgbmF0
aXZlIGFuZCBuYXRpdmVzZGsgdmFyaWFudHMgb2YgdGhpcyBwYWNrYWdlIGJ1aWxkIGZpbmUsIGJ1
dCB0aGUNCj4gY29ycmVzcG9uZGluZyBCQkNMQVNTRVhURU5EUyB3YXMgbWlzc2luZy4gQWRkIGl0
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5kcmVhcyBNw7x0emVsIDxhbmRyZWFzLm11ZXR6ZWxA
ZW1saXguY29tPg0KPiAtLS0NCj4gbWV0YS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9weXRob24z
LWJjcnlwdF80LjEuMi5iYiB8IDIgKysNCj4gMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9u
My1iY3J5cHRfNC4xLjIuYmIgYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjMt
YmNyeXB0XzQuMS4yLmJiDQo+IGluZGV4IDgzMjg1OTRiYWQuLjcyMjE2YzM5YzIgMTAwNjQ0DQo+
IC0tLSBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uMy1iY3J5cHRfNC4xLjIu
YmINCj4gKysrIGIvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9weXRob24zLWJjcnlwdF80
LjEuMi5iYg0KPiBAQCAtMzQsMyArMzQsNSBAQCBSREVQRU5EUzoke1BOfTpjbGFzcy10YXJnZXQg
Kz0gIlwNCj4gICAgIHB5dGhvbjMtc2hlbGwgXA0KPiAgICAgcHl0aG9uMy1zaXggXA0KPiAiDQo+
ICsNCj4gK0JCQ0xBU1NFWFRFTkQgPSAibmF0aXZlIG5hdGl2ZXNkayINCj4gLS0gDQo+IDIuNDMu
MA0KPiANCj4gDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVjZWl2
ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAo
IzEzMjc4KTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcG9reS9tZXNzYWdlLzEz
Mjc4DQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210
LzEwNDYwMDEzMS82ODc1ODg4DQo+IEdyb3VwIE93bmVyOiBwb2t5K293bmVyQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9nL3Bva3kvdW5zdWIgW3Jvc3MuYnVydG9uQGFybS5jb21dDQo+IC09LT0tPS09LT0tPS09LT0t
PS09LT0tDQo+IA0KDQo=

