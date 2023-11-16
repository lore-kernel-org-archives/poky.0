Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94730C197A0
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 11:48:07 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.60])
 by mx.groups.io with SMTP id smtpd.web10.4933.1700135286955879992
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Nov 2023 03:48:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DMiGZ2Qj;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=DMiGZ2Qj;
 spf=pass (domain: arm.com, ip: 40.107.247.60, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=nqLpka8jg6Nl9aCzkP7ix2sZiBj4nlRrijQlhqnvj4LdPaeK9uh66kiuzwZBZxRS1zfZhKkD4973XyvnD9ZN+1t1wrypmxOymKY9/BVmMU1ePvfrPJPay5bg5SAOETi+4TICMlS5awV2jpdD+CJqQADgugFYPgq2dJaj2bK/7vu9NzHXfcakFqtAWqFtJs3k8Dpk6Ri0AE8oaY0yh7i/Qt+uzxgu3fn/KHii8ZMORKv4oCKWnrxfJo1UT4SaaHA6lbGpsdElArET9PwNAabquK/Tp3iQUZmNSH08yx8RErQ2IyGJfirlTVwcvlSBsaTg/dbMOamceFlsrRauOgaeTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=Uyo66aCK25jGjgZ6SUfX/qOZVjYxEh8tyerKqAlRI0Ztx2amnlzTuzjBYW2bXL441wNV8L7pVJfQNZqzJoIv0rb4fG9k+MIa2tO+IiooQPkLZSbsSBhukeKkeqtUiM0dARnmoJfjl+cwMpNqVGnVcIhbnQ0wkbZknQo2l03NX+5t0mUBKjPJqOHnrEtTDxsdaadV52ZivLU1jyWF0R7JwmJxMzZWymCWV9x50nMNoyFsuTyajdBx8elmATKiTNJ8VgUavYBr6F08blgTg5NrfM7GHnjhNP52f7iKwuHVznUvznE3od5nQRsRc4vZBK5ymfteetRugYn6fOcUPos6Kw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=DMiGZ2QjS/9eng+O0eUKPbhGl3VbNNVOSpvxdccHO6f/qIPmgKxbcU6COBx878wyqOQq35RmtIFkqUHFopyixS5j7Z2aYnYZ+/8WZ5oof4RgPPoQDJ/6HaVXZ5I9A7hbqv4stzNk1Zk7AWKFhCBmAZ8gsCqwJIf1xkstu82B6gY=
Received: from AS8PR04CA0007.eurprd04.prod.outlook.com (2603:10a6:20b:310::12)
 by GV2PR08MB9328.eurprd08.prod.outlook.com (2603:10a6:150:d4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Thu, 16 Nov
 2023 11:47:57 +0000
Received: from AMS0EPF000001B7.eurprd05.prod.outlook.com
 (2603:10a6:20b:310:cafe::a7) by AS8PR04CA0007.outlook.office365.com
 (2603:10a6:20b:310::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.19 via Frontend
 Transport; Thu, 16 Nov 2023 11:47:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001B7.mail.protection.outlook.com (10.167.16.171) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.19 via Frontend Transport; Thu, 16 Nov 2023 11:47:56 +0000
Received: ("Tessian outbound 7c4ecdadb9e7:v228"); Thu, 16 Nov 2023 11:47:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 17c87cdf42fcc87f
X-CR-MTA-TID: 64aa7808
Received: from 6dc7cc4bc880.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F09695C3-30DE-41E1-990E-DDFEFF3E7E27.1;
	Thu, 16 Nov 2023 11:47:50 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6dc7cc4bc880.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 16 Nov 2023 11:47:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JS9jc6RoFnLtTo+HF+CAEOgLmJU75NhIKNFkZkRAQna3I7x45Vkvxnh7baBGK2G4OEtGRvekRXbNBS2g4Z/+lHy0xPo7a7JACR0SR4Uo4+FQwdwMNB8Ef1w5kzxAqIeDLbzqnnfD+9mnCs+fdql/1KhrQWERZ0uDaz3TsqQP6MMy8//BmHo56Y16o0lQYoVNyreUxoWxtDKmZucy/c0hu0u8obVgi1TGz50AWmQNebpfK1GwtrvUlBGxz3nYjUZYrLjbt4iQE5f+rld8NMMa7wSbhEzjX2aKPi2UM+l8sbTNq1wilwye0ngR5CRpyKZGFOBHRgaKIFLSyKzDRfplMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=N9jH/Eqd9PsYcLAhkZ11VREJgFbLjzfMq7cDjikdf40sdvINYSWHwHBDu5u4v3I0UmtuxrhmxoA5VBNZdhnO2Gy6/93sXdoJZE8dSsW/+tX0rTnfPbBa11kzQjH7djRKxZYG1ytFSu5XqxSuFz0T4nlz+Wt9OZBffNx8BSsY7dPUtUTYORg5+LEon/x0fiJY5pix/FXmEw/qCRvWHT2+X695LbA4cKn2eUnO/NkuvONoUBG9yLmi7MunD2RU9S1nA05KCeLtd501vCLEbkg3WJKLwKChJxsHq5QipCeSqzJeOV3VPGVLHznNebdWdpLk1dplquwxvQyygPzPg8us0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WttCXUwi9kV51mY6wla3yY7ZBwQ7EpNTiFAs+9Wz0NE=;
 b=DMiGZ2QjS/9eng+O0eUKPbhGl3VbNNVOSpvxdccHO6f/qIPmgKxbcU6COBx878wyqOQq35RmtIFkqUHFopyixS5j7Z2aYnYZ+/8WZ5oof4RgPPoQDJ/6HaVXZ5I9A7hbqv4stzNk1Zk7AWKFhCBmAZ8gsCqwJIf1xkstu82B6gY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB8815.eurprd08.prod.outlook.com (2603:10a6:102:337::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 11:47:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 11:47:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "naveen.kumar.saini@intel.com" <naveen.kumar.saini@intel.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Topic: [poky] [PATCH] genericx86*: use common mkefidisk.wks.in
Thread-Index: AQHaF+VVCd9cn5HlKk6U0Gs1H8hl87B7m0aAgAD/eACAADrcAA==
Date: Thu, 16 Nov 2023 11:47:48 +0000
Message-ID: <67C4DFDF-D4A0-4847-91FF-F576A573CF20@arm.com>
References: <20231115170039.486447-1-ross.burton@arm.com>
 <5CA7721D-98E6-445A-8D8E-5C298118DB03@arm.com>
 <CO1PR11MB5026A695EC1B8DA80DF192F5C4B0A@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO1PR11MB5026A695EC1B8DA80DF192F5C4B0A@CO1PR11MB5026.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB8815:EE_|AMS0EPF000001B7:EE_|GV2PR08MB9328:EE_
X-MS-Office365-Filtering-Correlation-Id: 38bc52ed-b122-4685-1a42-08dbe699e049
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 uG4esM8dQAjZpzln7uZnOqHIqeeK5lHAWsuJqHc4018xVAwTug4pRMp/LBOHNYt6QUwirEKWTtRluUuxvHsuL1VN0nBkIVn5xbbAuUPHfMQ/9+PIJomElwTPSXXs0iLl8kJ7uqT6mLuL1YQRtyG9gut5upA5rtqpN4qOndDM6nURyMgDDvb2EImRS/uUBqJdiVa2xHDh5VVXgHJQ0vad+rPShaI95sVCOuL0yrHZtD32bJyKswSZ0/G7O5L9RdiRgsKFBeTR0WrOqfAB07BVW9zbQa2FsCRAqiZPL11blcwOzputt5BMfqWZvO1aQ3gGm/djBgvE2sc7GGNEKGzdcP+to8+lGoxvsQJhM/VBU5PpVOt90uwphFOhvcHinUPCfICcWYCkTxqN7b0OrQZMIRiITPoawLYB8oYG86IFjXNX1gaivP+9q6KdNFbuN6o8H7E9b0sSUBOV8VtZpycORmcE7KyoF6kDWgi4Xy128L3ycVUwM5qLHvwYgztUAMDjxGIjhB6CqqpTDt8whuB2Mb9SykPu2hXqLad8L/4fpGJ8TswiKzkbF7N+/sE9irBj+crU7afuHcnoSGPnOI8g42t6lGuWoY4/MQ2yu+WN29WQDo2aK2Uik5i1SGCTlegUeebJqc5qpLNQNMGXr69GBg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39860400002)(366004)(396003)(376002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(66946007)(66556008)(66476007)(76116006)(91956017)(41300700001)(66446008)(6916009)(64756008)(316002)(86362001)(5660300002)(558084003)(2906002)(8676002)(4326008)(8936002)(33656002)(122000001)(38100700002)(38070700009)(71200400001)(6486002)(478600001)(36756003)(26005)(2616005)(6506007)(53546011)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <448C4896FDA91E47A510C5F42A16FFD8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8815
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001B7.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9633a1eb-7d0c-4f1b-8902-08dbe699db1f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jozANKFz/VjUgirlNmlAVPp2GvK9BEct+d5tqO0liu5CzjJDNI5NfWv9NY1ddWV/uo1+47FrZ/avvL/rz/6syM26MfXogKSHAjjHAE5rzNn8m5IETIXYgS5mSjK9BorR/B9jbu04iAVZSlbRKtxBRQvzmjMyZzIJCGGAVXVbY2YVsDH1kyXEB3ERkTdAVlt+Kda37eVZuYllgnuYNeoIS0MSU1B2O1Rha46Yc10d5vLgC8FiLTjPu5Dwevz40jAFTKtKM6nIcD5tnss0kTKCL2IQX31wOybAII6Q7ZwACtjc1vEL/gFdWCISDcUrsHkqE/wp4AIpriLGrvHsFGnNKNNdsmd6zWes0uGtT2S9aw2q/39vAtfQmWZ5Ym3Jtb+NE0mOxu/Y3S+3u1EUhDBvDpMsGT8RY0Cxhnx1jveRQWqhM52BJPEvJ3/mp6ZxqdNyKaxrgNvgsc3BbBMwqMzDBl9GR4c7j2Ijp7lL0M55DVkoIIp3osoOKJyCiBgY0Iy+fXf7Lp0Tqb4Kwzjcc2ehSi3jPFmWYigHnzJWnk2Y2wuRau58kOLPOP/i9zUT3iWIKuAVdm5SJfEHYL8hTWvIy1ImC9k9lqqaxVzeOZCir8ROWWwl0p+HGpI8rdkr2pagXMGiLJjjTrWzCEZjRgqytmxuudAdSmiSdl7fyBJVAcxQwq/I9ynjFUMh0cozQFLlEdEb0okv+uSuNMfwy6ttjBvVz+543lNerozTy/DLeMslfImAoD5KXpsZUt/g1Wh8
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(39860400002)(376002)(346002)(230922051799003)(1800799009)(451199024)(82310400011)(64100799003)(186009)(40470700004)(36840700001)(46966006)(8936002)(40460700003)(2616005)(33656002)(41300700001)(36860700001)(70586007)(6486002)(86362001)(316002)(70206006)(82740400003)(36756003)(356005)(81166007)(478600001)(4744005)(5660300002)(2906002)(26005)(6512007)(6506007)(53546011)(47076005)(336012)(6862004)(4326008)(8676002)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 11:47:56.9860
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 38bc52ed-b122-4685-1a42-08dbe699e049
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001B7.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB9328
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Nov 2023 11:48:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13206

T24gMTYgTm92IDIwMjMsIGF0IDA4OjE2LCBOYXZlZW4gU2FpbmkgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPG5hdmVlbi5rdW1hci5zYWluaT1pbnRlbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+PiBUZXN0aW5nIGJ5IHNvbWVvbmUgd2hvIGFjdHVhbGx5IGhhcyBhbiB4
ODYgYm9hcmQgYW5kIHVzZXMgZ2VuZXJpY3g4Ni02NA0KPj4gd291bGQgYmUgbXVjaCBhcHByZWNp
YXRlZC4gIEl0IHNob3VsZCBqdXN0IGJvb3QgYXMgdXN1YWwuDQo+IFRoZXkgbG9vayBnb29kIHRv
IHVzIGFuZCBhcmUgYm9vdGluZyBmaW5lLg0KDQpUaGFua3MgTmF2ZWVuLCB0aGF04oCZcyBtdWNo
IGFwcHJlY2lhdGVkIQ0KDQpSb3Nz

