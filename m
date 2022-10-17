Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.53])
 by mx.groups.io with SMTP id smtpd.web10.39910.1666008522689841597
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Oct 2022 05:08:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=tqH8DLZB;
 spf=pass (domain: arm.com, ip: 40.107.13.53, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=QbEKPcIGl3b5H4XIHLYTSm2VjYPKktpAgz+hXIIZhUPe88lzSZXV/M+oWhnR6zw9HulzUlHoe/thq9xVtuMrg2LaHTjYDnXVqUqv8ba5yNg3tQMuNMOgp8wKBObXZXKmgHBWIIlxS900WQtz7HwU0yXtU458VkTjek/dkzPdLtSC0C6wVdYdZeuuPVM7kCs+pMJC03jh4KTLHo+xTnBOO3Kb6wZPVsSLQeSM7iLh77kUbbLoizJXvwUw5HNBPZl7zfS0lhWEvPnthWSbGoWwQf9IxBP+BHj8ElPj6SxQaRJIaly1iLIQkbk0QASjqZgIKl2v9LT9ht4zabDu9+4w2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnee8ZVRCBYWzHNudrUrpF2i9OGozOat8/GGV50LToM=;
 b=Cm7YQS6vUjBWbWtUaMqVmgQAkOU22jMSj8WoFJ3eFhHAlZgwEq8MLoN2JklZHt3LpDa0OgAwjjML40TvgcnnW4TkxP90KE7GVHRAcY5wR0DtdOeXc2IioH2YjTgWyKEaLNNfb4i2CKsKtS/YRMubTTeuZRAAUq3swNUwjpME7QQb4NP0naPdR/K+0pdViOmmrgrf2ba3H/1z5Xa9JbKMv9lmOaCZxgrxyBBC/iEyRY0PXbZ+8jf/sEwYqhuQNhUhbY6iOYJZGFsFgn1Bqqb8AXdWT+qSpGKGRKM3MKCyfrAoSm1Y85FxY0V7lFP+VLDrM/mf2zhcZQPLLIQ8kwm/DQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnee8ZVRCBYWzHNudrUrpF2i9OGozOat8/GGV50LToM=;
 b=tqH8DLZBByDtCpV/hQi/Ku6p+DDCB9/c5lrtxKjpUzSgj5I1h6gPuBz2kkY+USF2y80D9UXtN8DuoUTux5nfnmPhmBRfRBrdVX5oQ1XyaMd3c5ZOf0d2umiJZx/HacwIdwSqjr5DcKsk5HyDXJxG8vHNTAUjdFDWpEYFQ0hD9pU=
Received: from AS8PR04CA0189.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::14)
 by AM9PR08MB5986.eurprd08.prod.outlook.com (2603:10a6:20b:281::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Mon, 17 Oct
 2022 12:08:38 +0000
Received: from VI1EUR03FT032.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::d8) by AS8PR04CA0189.outlook.office365.com
 (2603:10a6:20b:2f3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26 via Frontend
 Transport; Mon, 17 Oct 2022 12:08:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT032.mail.protection.outlook.com (100.127.145.24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.20 via Frontend Transport; Mon, 17 Oct 2022 12:08:37 +0000
Received: ("Tessian outbound f394866f3f2b:v130"); Mon, 17 Oct 2022 12:08:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 871713a903f1882f
X-CR-MTA-TID: 64aa7808
Received: from 6b4ee2ffd4da.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id ACFC5B14-3907-4C97-8CC4-292DC7B5CA64.1;
	Mon, 17 Oct 2022 12:08:30 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6b4ee2ffd4da.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 17 Oct 2022 12:08:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XzwF34sN3F7NY+BOx2IwMXdz4X8s+0OdK6gFooWowlPTh3xisPSpB4PJEBb18/G533wib/RoPQ/qG/lNGaNvp8MTdEBNC4OxEPo9Y9EWZUFuG4qF2HFIzZgdLAPBzUipDahIbBPt6I2WL5k4CwbYzUXUoDSsLy/zmJ3+REJ0pbpurYhpXT8JTRW4N8aEGj6OgG3VKUJCDAm8AUGtJCo7CtPf5V52vcysg4OGCs+WVgzkfBXZaeNHigqyR2d76f/Cv5GAML+P0O8ogPmZd9Z8kvHjdw3NheLMPTDz7HoWa8uHzP4hxLDeJTqxDHtZtbLHxuMNFLjYa7HnS8ZOXbshoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnee8ZVRCBYWzHNudrUrpF2i9OGozOat8/GGV50LToM=;
 b=W0elsGmTzl5mM7EhIZpzikQkNww4ZR8l9vW+Uv/9lN6lS8nhoYGLf+/etR/oqShNj9L8V3VyplYyy3e9K7eIzLeSSsGqak72hgBFEBf7gRqtwzZucEkxysyU2komsgKY/7oXkAGxq2CM7Qls804Ry5wlxXll0UAbeUWH6MezHhAVQTvt2kWinzbjb0s2IdQGE0ea2sXVh4eepOGpWpwScfj6Ouu7qJPYCSHk8WMCL3A5IROvBKCxzd6lCfNXEKSRyi5hh9Tr2K53SCAIFk2ZHmXkPH16j3x4Q4nui2yB78bpIkDEaPmtAODciogr/51ISWTnKNX8p1rjCoHbM1lvTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnee8ZVRCBYWzHNudrUrpF2i9OGozOat8/GGV50LToM=;
 b=tqH8DLZBByDtCpV/hQi/Ku6p+DDCB9/c5lrtxKjpUzSgj5I1h6gPuBz2kkY+USF2y80D9UXtN8DuoUTux5nfnmPhmBRfRBrdVX5oQ1XyaMd3c5ZOf0d2umiJZx/HacwIdwSqjr5DcKsk5HyDXJxG8vHNTAUjdFDWpEYFQ0hD9pU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8667.eurprd08.prod.outlook.com (2603:10a6:150:85::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 12:08:27 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7d2b:2570:9a99:a3d2]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7d2b:2570:9a99:a3d2%6]) with mapi id 15.20.5723.032; Mon, 17 Oct 2022
 12:08:27 +0000
From: "Ross Burton" <ross.burton@arm.com>
To: "festevam@gmail.com" <festevam@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky][PATCH] go-mod.bbclass: Remove repeated word
Thread-Topic: [poky][PATCH] go-mod.bbclass: Remove repeated word
Thread-Index: AQHY4ZG1rxI8jczQ40qBfrfg9R45V64Sfy4A
Date: Mon, 17 Oct 2022 12:08:27 +0000
Message-ID: <7B89C8B4-BCEA-4E33-B472-CC3754B82834@arm.com>
References: <20221016190116.3238532-1-festevam@gmail.com>
In-Reply-To: <20221016190116.3238532-1-festevam@gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8667:EE_|VI1EUR03FT032:EE_|AM9PR08MB5986:EE_
X-MS-Office365-Filtering-Correlation-Id: 2eb954cd-a57b-467f-0219-08dab03852cd
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 aFakvJPWdE9wz8cUI3ASRUO0erQnzGcmmuaJRKw6DmyzpVht/k2gpNQfM0Y55DNafUCSygwMA2gKA1ZJH+a27HlAPPfxoezXZ9x7Cxtz+5K6fdFNvQedr0Php+roFsdQs+W9y/9mUEEFZ9L6X/uhhTxEGuUZuGbGNGKzud01bpJmnMWoHoq+Mx9GgKQo9mInDSvT8QIilhzaq7czLB+gD7soJ/EvIKtaKOuQLXseNyzA0yubDNJWhz3/sUbkYnweOAmrR8LouwCd70hRQYWFPV3Tdv9cAdZdITmkuOA8BP/WFdAyUp6eVHdzXmPlB/l0qkfobG8C2sYghKwxeTE99lQzeMv/yrHeEu/2Z13/jeGTMN3GTmdElzKwtgCvsIT5pVPHgvTWE4nGO/ndfjDO5HnACsnTWL9dVdCVBo0s7uMqPW0qw+07zyW8gnleQ43MglLk+vtovBAuFDptWO34NEVmc/QDjXm216X5uHKPmC7rO3kyq/aSlmtpJslR5Trguw+Wa09kSsANpuki7b+lX2fGOLac2bNVyP6mFhIhz/edhNAP0oRycrUsI8Lku/B3+yKrrsEU9AaDGw4mi2sTxN3ucVNWlyZguW/dhn1WSZ5eoXl7bOMQxBSCxq9HGCNPsXqVJvObbmJk3JJs6efxEfMapaIotyQS0Z2hmY4Y6lamYvCoIq3NCH/7Gzcg2kJTbn9ku3rvouZZpUVRhrLUi1ixxq7y5JBPKVzClx2tu494gMmlyDIv9nJEE5CNa9Ypa3yQISNK/hYcpBtaza4sDfnofB4srgqCqELIPUGpqPcRs3TKfYP+4KNe3uaGGJtJpDvGn2sLFwrznIOXjKt+eQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199015)(41300700001)(26005)(6512007)(186003)(2616005)(478600001)(38070700005)(33656002)(36756003)(2906002)(6506007)(86362001)(53546011)(8936002)(5660300002)(91956017)(316002)(122000001)(6916009)(38100700002)(71200400001)(966005)(6486002)(4326008)(66446008)(64756008)(8676002)(76116006)(66946007)(83380400001)(66556008)(66476007)(66899015)(45980500001);DIR:OUT;SFP:1101;
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8667
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
Return-Path: Ross.Burton@arm.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	406a9fd8-45f0-4b47-70c1-08dab0384c50
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sO99sBe8UcyRQnfokzCRVLJ1eaS8PgAPNBthWzOY6cEfou/HM4D+clFTBMBZ8IbyqzuTQmtqDN/46xy8BB2J5k7k8NDScPmelJsoMDY4OpUpaid9EOqWGpBTXpMwPo+mp7mlbhs0JwaDeZq4mgquZWj1MrL4DTp7DvrjGX+Cc3b589tL3g72kPV/mvT1y4cTRG2+ml+0Bky/nR/BI/+KcGtvdbv0MuZyBg7NuJ85zPtx98FiG6wbrVwP6adYblOyHLH/7dUUAcf0mAOZblZjRbqIJ/DyCIuaxeffzO522wSQY/eDBp+Hlpp5kABw7zs/KGYg0GZqnB6vWewChjNKG30T/RyHHcu9maQBgvwDPX/YVbRsMD3n+dyPEYRpErCkOcmGVAVXA9VV4A7E1uZEnsTf7ggUvQg+FOxujIbqdBh7XRiTrFCD2CeEmr1a06pA6LxhcLv/hLfeOfoO8694h2efzMXSnWp7/KOmvnY10l+wSjCnIW6a3qnfsMYKIFyTDpAJrW1KlF0wLNaM76IFgx0/29CPQLfrBHIMR/bzPxDc2IT/Xb1y7rci5gLwycttCq7BjhzQeEh8MYlMPovV+xp/dJrb4IEkMhApolYWL5m9BwOOjxoJ8uZSExfmtobeODy4J0zumbrJEs2OFkbK2GAM43jJqD1kWoy46WPY/jKktv1/p7aoZc3JrhG8wMJKDUNxbydvUWmJrwq0y2vhEKNuZsDN9YL7pGla3YymEZAnavWebu7EZqDep5Dtc7guPSKpnTR+JDyJNyXTvhnj3OjleL3d9JIporWlFGUcFw8=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(136003)(396003)(451199015)(46966006)(36840700001)(40470700004)(966005)(66899015)(6486002)(4326008)(316002)(478600001)(70586007)(70206006)(2616005)(8676002)(336012)(5660300002)(2906002)(6506007)(186003)(53546011)(41300700001)(8936002)(6862004)(6512007)(82740400003)(36756003)(356005)(81166007)(82310400005)(26005)(47076005)(83380400001)(36860700001)(33656002)(40480700001)(40460700003)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 12:08:37.9077
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eb954cd-a57b-467f-0219-08dab03852cd
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR03FT032.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5986
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E01D097341EC104AA305943F4A7161F0@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

This should be sent to the oe-core mailing lists, openembedded-core@lists.o=
penembedded.org.

Thanks
Ross

> On 16 Oct 2022, at 20:01, Fabio Estevam via lists.yoctoproject.org <feste=
vam=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> The word 'the' appears repeatedly. Remove one occurrence.
>=20
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> meta/classes-recipe/go-mod.bbclass | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta/classes-recipe/go-mod.bbclass b/meta/classes-recipe/go-=
mod.bbclass
> index 927746a338be..61571596bcfa 100644
> --- a/meta/classes-recipe/go-mod.bbclass
> +++ b/meta/classes-recipe/go-mod.bbclass
> @@ -6,7 +6,7 @@
>=20
> # Handle Go Modules support
> #
> -# When using Go Modules, the the current working directory MUST be at or=
 below
> +# When using Go Modules, the current working directory MUST be at or bel=
ow
> # the location of the 'go.mod' file when the go tool is used, and there i=
s no
> # way to tell it to look elsewhere.  It will automatically look upwards f=
or the
> # file, but not downwards.
> --=20
> 2.25.1
>=20
>=20
>=20
>=20

