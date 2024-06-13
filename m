Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19E36C27C4F
	for <webhook@archiver.kernel.org>; Thu, 13 Jun 2024 20:51:20 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.43])
 by mx.groups.io with SMTP id smtpd.web11.3447.1718311869674871046
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Jun 2024 13:51:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Ok7USON8;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=Ok7USON8;
 spf=pass (domain: arm.com, ip: 40.107.14.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=ZEcrH4txQJzEbv4w6rbdWAf2MHP0HrurDfdTQY6owsKA/VrK1iosx2xt5RivA2sZJSyPshr5MgPH+wkvCe5AEQFVn3VVp8M2jyT0EHo1w0A3/8SktQpeOwI/vJWT3O05f34mlGKS28aYhQo/JwOHydr/Ay0H+GohJghDae8ievvkFK0yYyqhw8Y8nOumujIf1/i5GHkeZBY4P3dxxwXsXsXP4Ua45K7IxX25YFcDsGhMTzMTz84MkZKaGC9XW3TbnNmpUgXNU0rbu+cy/wr6fSWHwglW9vnUJS4foxjgtb8QvsGnqvfI1rZZ4h7g1w6CclwkgKuC65n6+bkLM5A7kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=94+Ai60WmeS8idb8YPQc/Ysrso37qlUOuiT9x9CvkAc=;
 b=hloQqrNETdlRwyqkr1jkcRcaYJxlW8nZTSqlqIOU1H0PLVKXQjMe5urn/cYhAo1cI9LEn5+TvhKKW80OugdaKdG+70hQC5tgNxa49uMM8ECIyeFa4DzYiykbBP856CUsJv595QBitO7OaVFLkwEB2PPKukoPKMclN3j7quorFxp6jhHWYV9DoH6TXCEDZYDCxIflSC4pVUQWEdTm2P8iz3EgKKyXE6SpUGW50npQ9H4kblGc3qxm7TSetXFCIyA/aEiwHxs1LhBH5wHGtfA77+5gnN2A6QVA2BxOmqXZWEqeMJ7mNsICfWT2y16fG58k5gDzPXy/NmPgQHbENNJezw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=94+Ai60WmeS8idb8YPQc/Ysrso37qlUOuiT9x9CvkAc=;
 b=Ok7USON8s4xfcsBjPRkubNxTRG3Hh3M0+8wpX7LdAN5HtVLBW4DmZ6ZlJSxWGs/REbPzgi7g69m5feFf3cSnysPXEfNpKNapFTydKI9pcgFsIXd1sWwyEgm5vqnW1GZzB+Ve/BgWC7yWHRe5hbekpDSKiK+s3s6NkP1c9TZDH1I=
Received: from DUZPR01CA0088.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::14) by AS8PR08MB6389.eurprd08.prod.outlook.com
 (2603:10a6:20b:33e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Thu, 13 Jun
 2024 20:51:05 +0000
Received: from DU6PEPF0000B61E.eurprd02.prod.outlook.com
 (2603:10a6:10:46a:cafe::a1) by DUZPR01CA0088.outlook.office365.com
 (2603:10a6:10:46a::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24 via Frontend
 Transport; Thu, 13 Jun 2024 20:51:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61E.mail.protection.outlook.com (10.167.8.133) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Thu, 13 Jun 2024 20:51:04 +0000
Received: ("Tessian outbound 6b7ebc67fb02:v332"); Thu, 13 Jun 2024 20:51:04 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 208c7b3810df40bf
X-CR-MTA-TID: 64aa7808
Received: from 33f481536d5b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A752BB3C-CC9F-4067-9E7E-71A1CF49C66F.1;
	Thu, 13 Jun 2024 20:50:57 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 33f481536d5b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 13 Jun 2024 20:50:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eFZFJJtG5/um1Dx1OGoaauZvSDTAsnBBQe8v7IzJnVbiFctpXGYacQgL04ip8EgSYcji7KleUrsOh3ZeAQAUdjN+03UUL+EVJ2uLgv99XVX0IPxOQ9lGwftYVQB11KuGRM1Dg5RZeNwMtu6Jd/r6mgZKR+qv6UP1V9WjW1L0c0bp5CTqwZ11sSHbJYFW2aL1MUXnQlp5vnEHmbTNcehhHl82c2/mJOb8LarCc1svg4vfprLsJ7u9XOnChAxQME7dVUKmWSFjol2Svl6R86Tl8m4qi2B8ayF5CmRCtfzEuukXuc2EuAndJGP+RIoh7iAuq3mB0S8vf51VHb022k/3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=94+Ai60WmeS8idb8YPQc/Ysrso37qlUOuiT9x9CvkAc=;
 b=ajLQqELpwZZUtp32mTPhYFvzrCTePqdEDjECRTsfTEY1DvGW/ChKY3Z4Xq1T7Xg+luCIyATaUo6LcDbwIsNFxJWd/PxoVPyf833mEo9F1dL+qrIG5aCHTIX63RVVSX42qjZld8xFle9i3aoJ+fPVDK9mfaeuZuYhWIomx2vWvpBDrEQ+vHxCJEwZaZfuXCEjIVkD85Ol8SebAYIjK9NC2Cz4rNlmKIXKZ5/rhxHc1/OpSYYxeIVzJsJjAX+QJwtn5OJMxJoSJuNGAH+9KzEI2QLkIkwbrEgM244GHko3xlsbhQajaZbb+fYkp0ih0MEzmyw/8T7c0jCR53RpttPL7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=94+Ai60WmeS8idb8YPQc/Ysrso37qlUOuiT9x9CvkAc=;
 b=Ok7USON8s4xfcsBjPRkubNxTRG3Hh3M0+8wpX7LdAN5HtVLBW4DmZ6ZlJSxWGs/REbPzgi7g69m5feFf3cSnysPXEfNpKNapFTydKI9pcgFsIXd1sWwyEgm5vqnW1GZzB+Ve/BgWC7yWHRe5hbekpDSKiK+s3s6NkP1c9TZDH1I=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5747.eurprd08.prod.outlook.com (2603:10a6:20b:1c7::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.24; Thu, 13 Jun
 2024 20:50:55 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7677.024; Thu, 13 Jun 2024
 20:50:55 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "andrew@fernandes.org" <andrew@fernandes.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] gtk+: add missing libdrm dependency
Thread-Topic: [poky] [PATCH] gtk+: add missing libdrm dependency
Thread-Index: AQHavcuJZ2ZW4wuJmEGCJMyi+OHvMbHGKyKA
Date: Thu, 13 Jun 2024 20:50:55 +0000
Message-ID: <8D28A096-D0B2-4D51-BC73-803B3295FA27@arm.com>
References: <20240613195427.E771AA847@nexus.fernandes.org>
In-Reply-To: <20240613195427.E771AA847@nexus.fernandes.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5747:EE_|DU6PEPF0000B61E:EE_|AS8PR08MB6389:EE_
X-MS-Office365-Filtering-Correlation-Id: c4879388-3f7b-4732-4793-08dc8bea8a9f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230035|376009|1800799019|4022899004|366011|38070700013;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?eqUeZ+bqRLM4CLv5icuo01W0GK43ikl+J5AtUOGQpYhcxiLgxqSV4GSD/xL4?=
 =?us-ascii?Q?LZ/NhN1tlW1Ai3DNGhns/bx5oZen59Dmyfz6j6VTHBiFi0bkO6a4FL6uG50b?=
 =?us-ascii?Q?4EhH8Yz2BmPX9kNkF9nDhe6hObWTVHw0LEYrjSV9+TYOL30EB0M5o6qdzA2i?=
 =?us-ascii?Q?VxHE5xMgql0MbsPDtgdqZIAXr+FeGOabr5LuIQXXNvnA0W8OOV0yfQJ1fSCI?=
 =?us-ascii?Q?Z5nQoBGhKEWUpsrIbOtfmlNS+8MRbDKV1J6roIQtlpOUmCZkyUCGxjxfY2OT?=
 =?us-ascii?Q?Fh7qP4q70jfbVqlBMrnK0S3QkqwXoEbHqNllM/bAKIC1ZXRiP2wSaT0Ayf9l?=
 =?us-ascii?Q?5P5S5YPhvAPrA2WGRZZjOoi9G6ilSDDWVzdJcoKgQrMTr5rj3EoCbFepCZK3?=
 =?us-ascii?Q?NieCiM5Xcrsb0tcnN9qht/tZi43i/wiumLn3wDwcGrMKLoapO/vPh+JTFZyg?=
 =?us-ascii?Q?Kr7kctBl65GH9O4wcw0dKbrSymye7Uf0CTLLcXHwn+Y+MzMUjZJC/LKu9Bz3?=
 =?us-ascii?Q?om88JRHOx8DL7zp3NmFPfco77+bKJ0OaeWQikMR5mnDeAykEdPHqPZmz37Ym?=
 =?us-ascii?Q?xYAt3wUZv+ufUvi094Qkse/D+A0bzgQgbAvuoyUiL3RzRz5ZgmDlqKFmLvVr?=
 =?us-ascii?Q?9N41fhdpNoM9H2w4PmzvvNIW+Wjabrce3Ka84Uvq7qFIOKIPpcpBAU2Bdjwa?=
 =?us-ascii?Q?ihHYeJbHYKqyQyMB4EDr+KJN3V8aPfxgXApf2pC8GHBvZ8Ekc4bMXPYz/yfw?=
 =?us-ascii?Q?1ho633bstih0wBMtE2+OBRYW7a0cZKzUxd5vH7vwFzQoLjlM2Si7rf5RE2D4?=
 =?us-ascii?Q?4BNqLOHnjcpMZf4jm/3QuCv81E2DV+3X9BNJfC4O3mfOTQsHdxJ4EGMuPMQJ?=
 =?us-ascii?Q?K68LslNjev40RG+Egxf1PJCEd6/TPAPPoUucaswPUN5NzoWP4mKtGHtC6Fcl?=
 =?us-ascii?Q?olhj58tKoKaFWn6ubUac3I5duHD2plrLcjjkrN8GCX6Li68upLfjSzjAm6Wy?=
 =?us-ascii?Q?9OFAA/0aeyekMI0iL04wUuJWnEbzB4di6Okh8+2+ZMpsF5GvCK4DXDBf95Qb?=
 =?us-ascii?Q?FZftgDTnp7db6iEfkjUh+aJex+V1cfPQrP8iHhzWIQ3b7Ln/I7eNEKBBogl1?=
 =?us-ascii?Q?kyssSS4gLlDj/Z7BjaA1VhnVgjZKSx2MlV22lbITgeMdO3HKcFoRL3wobNk7?=
 =?us-ascii?Q?gnNGs/PhAqfK5mU8yA2AJsxtK4DyKnIUThanJulZMkTinxU4XXWDtiVatLX/?=
 =?us-ascii?Q?/4XT0bvZmMAqOIw0PlLI5TXiR9+l5OcM6LO9YPMZmQj03bi339ZklCOdjiHr?=
 =?us-ascii?Q?2q41Y4+p311YMwHJNeMBtoyZ?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230035)(376009)(1800799019)(4022899004)(366011)(38070700013);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <EE3C750B55B07746A57F649BE520E043@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5747
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d4080d65-2cc0-4fff-7e73-08dc8bea8588
X-Microsoft-Antispam: 
	BCL:0;ARA:13230035|1800799019|4022899004|376009|82310400021|36860700008|35042699017|34020700011;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?oKSMjJ3bRtkYwa90zZqXyo4Bivm78Dg76M7vHlxXbHRaIY1/AqiX7nlUJTds?=
 =?us-ascii?Q?Xr2odAHg0hpESRWRqIuGvZSLqZXAsY6zGKrszXou/9/4FmU40BTsB3lplu93?=
 =?us-ascii?Q?hsyNEanRbXWCizRDmGIyQ9lKU1sti1lyvES65xCV9xUT5ioz/CDBog4fua/D?=
 =?us-ascii?Q?vclWGftA5CK+5kBlQHUzGuqW5ryYaxIPHxE1mhQIFfd2Ij4Bpwwil6hScSuQ?=
 =?us-ascii?Q?BlbIWlT4//QtGLmLqFm4vhltnLlSFvv7enBHnBKCq7eJKYmLIt8u5QlpDGu7?=
 =?us-ascii?Q?DXzhuI+wmJAHdvLTjQedMy/FtzaQSbovuvAxjutOlstR9C9enDxEJFsS+Nwg?=
 =?us-ascii?Q?y1M2DmBqnFPOWZFs8z8bZgTGirLSl+FjF9QQPRpBmcWEAtgx966WyUFRRUth?=
 =?us-ascii?Q?uf1PwZ98rsgX7xLtA26dm8amxy/shtibcsZJKErLmHldouHd/07+gMi+RHnt?=
 =?us-ascii?Q?8KXVBcisTmoQQUAnBQa70FNyrqOcuuER8FlvyjtufzR2bvz0L/GxYo8j25Dj?=
 =?us-ascii?Q?ik3PemBZyImEX85LOLdHLsGoMjk38bUx2OqVbA/SCsfJnS83Ex8N2PJpsEIf?=
 =?us-ascii?Q?kRRaSwC2sZNTC9Q9fPSD5ujcliCNeQxxRH0URXSAaFgIltOtUgTxt3G7jb9v?=
 =?us-ascii?Q?lHcXbNB8e9Z7C1PuNR0bfxN2b5ouHiNP6+euOZqInFQ5ddM1/zU6nNH62fsZ?=
 =?us-ascii?Q?O3bOUc3GVxH4eyeKoLrjZPdgUo2QQcZED6IxyXrSPJh80RzzcRxX7+vHzA/Y?=
 =?us-ascii?Q?o90dpDlQbDtcOxVXN2GwytnMBL2I2uR+M/9GhNAOC/yvX/lhIeobXUvFgzGw?=
 =?us-ascii?Q?8F1Y9UCftBEmimuJqkbvs9Aua+SnSVr4qPuO9HiYDiBL4E2bhFMc8A62fMoC?=
 =?us-ascii?Q?aAY1FeRfOHRqp5n7SpvAMMxchKXc5LQWlYaF/HjZffFSZe+SLjT5BH7qF7Q8?=
 =?us-ascii?Q?e2NSUBkknYMRoLhlJjHxmS/zs/I/0e1Mxa0hFfOjouDIEjUMz51nH+iDmRXs?=
 =?us-ascii?Q?crdU5mvwQnggwlhTVwHmqhZi1sDeea+fi2SBqkzh7Xo1O9XWVAQQzbLUeSze?=
 =?us-ascii?Q?lAzx1acRslnTZ9f7tTbfETg2q6EKYq2HMHphIkrCMSj57TTsEjqep05qyzg2?=
 =?us-ascii?Q?gJ5DzfYJ12QH5OBbf0BzP3vBj3vVWOGplkNYuiyjoiQUg48bNk5uGKbn9rti?=
 =?us-ascii?Q?mz/Rue2w74RDSHurtV1RG579UeiCCGQC76cbnqdo5Ob4mLQvvPnveQ36ONhC?=
 =?us-ascii?Q?L1El8cQSfqfuNns5KI3y1rTkyJzmn/OGdK14RVftR5IryRrMcKIkqfzn52EO?=
 =?us-ascii?Q?jRqvppxbfLk8J7l929LktfIYZhBUMUCU9jW0Hr64aIJhL+YJ9cSuNBDs64vF?=
 =?us-ascii?Q?KofrC0c=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230035)(1800799019)(4022899004)(376009)(82310400021)(36860700008)(35042699017)(34020700011);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2024 20:51:04.3914
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4879388-3f7b-4732-4793-08dc8bea8a9f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6389
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Jun 2024 20:51:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13370

The patch looks good, but as this is part of the meta/ directory the patch =
should be sent to openembedded-core@lists.openembedded.org <mailto:openembe=
dded-core@lists.openembedded.org>.

Thanks,
Ross

> On 13 Jun 2024, at 20:54, Andrew Fernandes via lists.yoctoproject.org <an=
drew=3Dfernandes.org@lists.yoctoproject.org> wrote:
>=20
> When built without the wayland feature, gtk4 does not
> build due to a missing explicit dependency on libdrm.
>=20
> Signed-off-by: Andrew Fernandes <andrew@fernandes.org>
> ---
> meta/recipes-gnome/gtk+/gtk4_4.14.1.bb | 1 +
> 1 file changed, 1 insertion(+)
>=20
> diff --git a/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb b/meta/recipes-gnome/=
gtk+/gtk4_4.14.1.bb
> index ce733769a5..ae6fdcf604 100644
> --- a/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb
> +++ b/meta/recipes-gnome/gtk+/gtk4_4.14.1.bb
> @@ -16,6 +16,7 @@ DEPENDS =3D " \
>     graphene \
>     harfbuzz \
>     jpeg \
> +    libdrm \
>     libepoxy \
>     libpng \
>     librsvg \
> --=20
> 2.45.2
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13369): https://lists.yoctoproject.org/g/poky/message=
/13369
> Mute This Topic: https://lists.yoctoproject.org/mt/106658773/6875888
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [ross.burton@arm=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


