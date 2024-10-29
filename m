Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1998D2AB37
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 12:30:31 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.68])
 by mx.groups.io with SMTP id smtpd.web11.18232.1730205030933532302
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 05:30:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=AL/gb7kB;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=AL/gb7kB;
 spf=pass (domain: arm.com, ip: 40.107.241.68, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=yueqiyj3N+fVjKglHuj4eGsqsORTG/PzLpUFBBkL1ScsnEBd24VPYn+4JWz8QRPs29+tiegGYXa6EepRO6iYm49/cYEjv5+ZRx7VKp5XZH4cqn531ruYtFmIpnrceQm1Vd1O22EEVnkmrgR34pJUL0uvACg2LeQJuurmX9kDNsaiHVbkmR9vX0DAganSOia5p+1Nnt2kXc5Tcq1PTQNhcZwMoN7UAs7VVFeD+k3o5WsI7i68Hvn+Z3993NBOBLaYv+nJjhtVIIZAuipqD4oJBoh7PgwOmzJF23YcN4sRYY4r7aUd4saPP+BuThV/GoIIk25iVTi1k6uqp8VJoDsjzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xkat91xQSMHNY+tsrB9lC4rWTAKaKxomlqDGyT6XrZk=;
 b=Wm2gadLSJ4Kg1xb6G/uTXRb1KZmrYzQgEJRwVdzx973agk55EhdxuzoGglPAGc40buS4lAWkL1NbanNxcZIx01ycSnWUESfgTe2C7nrE1Z9U6OMJYN5VUpFtQ/BgPLTv9dTUCcz/itQfcsi6pZlbTXpIot7fjlNtfzQo31lYTOTBMoeDCSGvBgkQGmsUMhw+CMJp5xXaRTEkObfha6z9MyorXEDJKLJ9U0R2FUo0sZY6nAWKH14uoHXfNzd40Je+j2vcuf7bHLsU5cf5pQnawIh9PS9k7k90WuHNa7roZXgZsQH7e09axi36P3FXSfDlx2M9iJ8DMGLf9b2NNTceBg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xkat91xQSMHNY+tsrB9lC4rWTAKaKxomlqDGyT6XrZk=;
 b=AL/gb7kBmXLq2ACuk/YqEPc+s/obhmXSWPYtgNjqIoLARUy+XZiktiqc2ICH0bCdUf/R2dVMvF0ji1+jhScHg//kJtJqtUUJhnHGZwz0qe89s7Sk5Kr+M6wGYYpOszRWwvR6yHTMt2DR+MgEvUoI7C3V1vASLHsnfW8HEL4JaJg=
Received: from AM0PR01CA0096.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::37) by DB8PR08MB5498.eurprd08.prod.outlook.com
 (2603:10a6:10:11c::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 12:30:24 +0000
Received: from AM2PEPF0001C70D.eurprd05.prod.outlook.com
 (2603:10a6:208:10e:cafe::22) by AM0PR01CA0096.outlook.office365.com
 (2603:10a6:208:10e::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.28 via Frontend
 Transport; Tue, 29 Oct 2024 12:30:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C70D.mail.protection.outlook.com (10.167.16.201) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8114.16
 via Frontend Transport; Tue, 29 Oct 2024 12:30:23 +0000
Received: ("Tessian outbound 57fa7becdebd:v490"); Tue, 29 Oct 2024 12:30:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 507b2ef4e1828eb7
X-TessianGatewayMetadata: q2KxoKyvbAOicXe47oz+VmJwwzwY0Op6qj5OqSzEHOCu8aSl+oehmfuKa13ROXyZvwYFVBGRjchxOfKKXBSCen7S7X92aRrggrW6UABKF602KNDcbTwW+XDHnUhWpOTB4DZylTe9gtJ1Van/MPZi/qjgdrPbmKptvdKzGxmzuXY=
X-CR-MTA-TID: 64aa7808
Received: from La467c7a3bc7d.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 89D3BFAB-6FD9-4334-AE81-779CD602A16B.1;
	Tue, 29 Oct 2024 12:30:16 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id La467c7a3bc7d.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 29 Oct 2024 12:30:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vfUmcJnMlrjX8CYTqp04F550ldBIVPw+I2QBaELbq5I6g5xWAMy4I6SH8TLJ4mjz6csbevff+VApa8x9eR63/CUElBPcZlErAy9DfD+Knqi885dITP8Nz+se1Nci/QMKYXRsegAAoDKv42OrS5J8qERYQZB9z0CyzhUhi8mVNl+P7Pc6GZXMKRZ5122bMed9w/pMyCh/dvMmbhYCufd1/ljVzcjoGWBhQOXTVSjcZ9F2qKWidiRkhovwX4TabZSavAKZZHz4EXaIdrjBtrGmtK+Kjdap2jz32jW7bOR7TX7sJ7vWr2w+u4FQlmblaINlfWJFR2/76k90gmJ+IyCOOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xkat91xQSMHNY+tsrB9lC4rWTAKaKxomlqDGyT6XrZk=;
 b=L4FigjEWzdX4z0KAChoZ44agzGkI82xl+fiVmCmvBZBZDzOlI3h4jqeNG2HanL8gto1GJ/v2TMP1F3c5y9DcZj5UEPrQWbqgn9dCo9VDYgvUw/wSCxXYsNWm34dQG7lc/6AmLaXlTUAlyPqcTuVJVprLA2Q7wBQezLYLFKDBUq+V+Y8zBHK32/N/6ogKbSf6gvigLw6gXrsFPMLKdsrXQ96yBODQ21BuOXUrXk27wU8Z76yPtho9Vz7JuWyCWd3K49ty5Kx5fkzNAZnmuDrqTX4zkVHiFZA9YLi4xPQ7UzvFQvUMQQFsS3zi4sDVaFtdCQRM2IWUie325NcL4MO4Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xkat91xQSMHNY+tsrB9lC4rWTAKaKxomlqDGyT6XrZk=;
 b=AL/gb7kBmXLq2ACuk/YqEPc+s/obhmXSWPYtgNjqIoLARUy+XZiktiqc2ICH0bCdUf/R2dVMvF0ji1+jhScHg//kJtJqtUUJhnHGZwz0qe89s7Sk5Kr+M6wGYYpOszRWwvR6yHTMt2DR+MgEvUoI7C3V1vASLHsnfW8HEL4JaJg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV2PR08MB8414.eurprd08.prod.outlook.com (2603:10a6:150:bc::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 12:30:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 12:30:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial
 consoles
Thread-Topic: [poky] [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial
 consoles
Thread-Index: AQHbKdlyrCR7iqBUQ02gN7vvnCkUOLKdn+QAgAADcACAAAWHgA==
Date: Tue, 29 Oct 2024 12:30:14 +0000
Message-ID: <048A457D-04AD-4C67-8F1C-5AB97D4B4FAC@arm.com>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-2-mikko.rapeli@linaro.org>
 <9CEA0C25-4CDA-4241-AC1E-3585FE087712@arm.com> <ZyDQqCYY787vrEkY@nuoska>
In-Reply-To: <ZyDQqCYY787vrEkY@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV2PR08MB8414:EE_|AM2PEPF0001C70D:EE_|DB8PR08MB5498:EE_
X-MS-Office365-Filtering-Correlation-Id: 55e31ebd-cb2d-45db-be5d-08dcf81575f5
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?U0o1VDF5L0lqdTZnWVRhYk0wb094K0o3WWxYQW1lQUxZcUZmSys2eDVVM2c3?=
 =?utf-8?B?T1F5N3QyaTRnb1NhazJLZFFmOWwwL0FMRlZCd2lXNWZFZDhyM2NPOVlBNTJT?=
 =?utf-8?B?RkNHaTdOVDBCOVVUVUhqTW9oUDgvS1U4bFVoQjNKSzdvYloyaU90bGlvMlJq?=
 =?utf-8?B?S3gzTnlhVnVoRloybVpmKzdLTXpRaGE1Ry9Jdk1aeDlSaWY3UW5rZ0J5K2Q2?=
 =?utf-8?B?ek1DVExaZ0NCQm4veFY3RENUeVBkR3RpeDNQNnNqOVk0emtIMmNnRWNidGh3?=
 =?utf-8?B?UGpDSGtlenRUUk5TcXhXZkdHOTNMbW9CcDZwNEZJeG53SW9WRnJFTEZ2Q0Zk?=
 =?utf-8?B?SlgwOEo3SWs4bnU4N2hrTWZWdWhmZG5JQThGY25MeGVySEZPUCtEQWxaaXJP?=
 =?utf-8?B?V1dvM08yMWdOYnVyODdBZEJQdHhycjRsRHhOTlpibE00eFZvMU5IZnl2TS9j?=
 =?utf-8?B?MEZ5Q1Nudm9qWjNjWEVCclVwREsrR240YUo0U2poVlJUcVVaVnNNejJqWFNq?=
 =?utf-8?B?MEs0aTJNZVZQS2NCS3RNK1JFdUpScDIzb1FtczBXS25WN2hkRU4xOWZXSzNM?=
 =?utf-8?B?RkFBUGtVOW5BeTJMdTQ0UHprOWgxam5JZjIrbUMrNjJ2dmkrNWhCSXZvcEwz?=
 =?utf-8?B?cnZJUEQ2T2JHL1hzOTdId0FWVmJqSWFUTk9Hc1dSZjZVMEZuU20vd3BuWENQ?=
 =?utf-8?B?Q3FlQy9wRjJucVd2RlN6WVFOUDRSTTk3NmpiQUtuSHVQcGtiSW1KdHVyS0ZS?=
 =?utf-8?B?bW83UG5DYXJzSHo2aFpCOUp0SUlROThwSURuRlJseEFaU2NiS0Rra3lZU2xH?=
 =?utf-8?B?V2hwUENaNkx3MTFHalhFbm1VemQwZmxNREhmYXZydmZRalhQR3RwUHlLTnB2?=
 =?utf-8?B?Nkkzd2RnNUZxRnp2RUJ1ZVFXOWtIdkJlbXZUL2pVRm00NkhDMEN2ZHpTUURY?=
 =?utf-8?B?eUtlTTBsUHlTK3M4NnFzdmt3MCtySXRFUk9jUS9Vb2pTa3lmaFUxRjRlYWw5?=
 =?utf-8?B?ZC94ZDhVMEliR2Q0NDJVaGRpTWVpZEp3ZFNBM0ZSQktNczlSRi8reG05TjBN?=
 =?utf-8?B?TzVRN3JsaGVnZFJBZ0VYaEtiMC91ekMza0h0cWtXR0RKMHBqWmxWSGZFRnlO?=
 =?utf-8?B?Yy91Tml0TDhCRm5uTDBFNWljNEQyaUFGSm92TEVTZ05hbE83TndzSjlFY3oz?=
 =?utf-8?B?U2hoU0hnZlByOUpEQmJRNW1tSkFvT1Z0ZzdaazVzNmNCay9kcDA4QWwyR2Ju?=
 =?utf-8?B?djJMc3pQNGdNTENPTXNVZ3ZLU0lhMlljVTVoc2RDRkxNQjQ0Rk1kc0taRFNO?=
 =?utf-8?B?Z28xVnFMejZXRytNODZMSkRlTWZqVkt3VE50REZGUUdZY3F4aysyUGJiTEtB?=
 =?utf-8?B?OHR3cC9DTDlpaTkrbS9zYWEwMVpDM0YyWlJ0aXZ0SFcveTJUSmpnRXUvbkdV?=
 =?utf-8?B?WG1NMGwvSG1nUEpFWTJkU0pIbWJLbVFIZitNbHFGNlZ2dmF6VUVwNUpFNGdY?=
 =?utf-8?B?MU5qT1hjWEVRWVorNWlqR0d5OXVwditpTzdRQjdrYlFnTGJTMVF2WjRWazJk?=
 =?utf-8?B?WFp2bkp2MmhybHpZU01INnY2bzlKSGJtdWEzTHhqT2twbzcrU1pmeEtIenJr?=
 =?utf-8?B?OVdLVllBTmpvVWZPZEIxUFhmRzErczMxcGZ0UlRsTGtRSzFkRUluU0lkMjVE?=
 =?utf-8?B?VFFJanNFSk1IYXBIZnNCSlQ4Z2tZZis5TTF5OFliVXBvdFlHb09iY05ySEg4?=
 =?utf-8?Q?hLCQdwGBsGT90djh3a4YvHHWjyVSoKH1g2yU/xF?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <DCA10D8066493D4490DE3163AE1EF61C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8414
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b35e2050-cf3b-4d35-c1f1-08dcf8157055
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|82310400026|35042699022|36860700013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dUZwa3N3bGgxMDFpTTNXaVlXTDAzQWN6M1FlU3NaTm11UmJ4TWNLY0hMSHBk?=
 =?utf-8?B?SFZkb0RZeXVTRGNTVXE4b1VQNzR1dGphUUx1bE9EcG50TE5ISUJGS0VuWmRr?=
 =?utf-8?B?UHIwUm1HRUFLS2VoK1BOODNRYzNrQURxd2hpQk8yalJPM2hySklLSFBpcDdG?=
 =?utf-8?B?dGEvM0VTbHF0K0tjMXYyeEFFbEJudkJuTytKS3JyZ0hWd1hodGsvY0JSY2NW?=
 =?utf-8?B?enFobkJwLzY1dTdkQ2ZjM0xhSTdHZ1k1eUZjeGV1RGozVUxGQ3dLbUJySkE5?=
 =?utf-8?B?UGJiZkhhSUpyc2FjQms2Qmc2R2FsRDFLTFpjRUM4Y3VFTVVjbm1jOER0Q1hy?=
 =?utf-8?B?OVR3Y0FqcXhmb0loMTRVYzJtVGJlQWlIbThjZzNNcGNqbm9vL1ZFMXIySHFp?=
 =?utf-8?B?Q3p1NE1tZVJKa2grNklBMmVTMjZ2anVDYW4rRW5UYXoxM2ZycE80ZTZQMHE1?=
 =?utf-8?B?QzNJZWQyeVBFOGNsUldKSG1PekNUdnVkWitkcWdNOVN5VXBzd0s2Z2NMdFJI?=
 =?utf-8?B?Zk1YTDMxVGVBL0x4OU1KR2RxOUR6YTl3RHRSa1l2c0JIRytvbmJrQU53amV6?=
 =?utf-8?B?Y0VkYVZpNys3elV0NFg0cmI4QTIzOURLWUtZNUVqMEhYUHF0LzF5dU5ySnNP?=
 =?utf-8?B?UnJFeWMremxFb3F4MDRYclg2RktpYS82MkYrQnozNHI5ZFBVT2RaMlk4MzU5?=
 =?utf-8?B?L2VTd0tvMjgza2ZtQjEyblJVQ0N4bS91T25DNUsveVdxa1dsd2IvMGZ3VVdL?=
 =?utf-8?B?SEc4dGR2QjlBQk9tZGFIM2toNE4yN3N0VC9DQ1duMzBFUGhNTTIyWDZoeFgz?=
 =?utf-8?B?YXRFNHErMzB5OW1mOGt0UlhRcUdIU3RvUFlPRzRVUjNOTXd3aVZiQnZteWdn?=
 =?utf-8?B?VWlaVDdVU0UzeGQyNlBBeTN2WkNsTkxwdlRsd3JCT1VUSlJVNXFHcTdzNnR6?=
 =?utf-8?B?UmhVM0JaUGFqYWtTV2pxM2pudGxpNWMrc2hwcStBVWt5eVkvVTQ1b3hhc25H?=
 =?utf-8?B?OXlxYTBpRWN1NVpFWFN3WkhLZnhkbzJld3Y3VmZ6bW01QWlFbXJzQ1NkWFVS?=
 =?utf-8?B?T05TbVZ0VkZTdnVmL3JBUFA4bHBxM0dZTFhhaHNHOFA2Z2RZcVhKTHRWbFhY?=
 =?utf-8?B?NGdPaVVPZ04xaC9oRmxRalFVdmtaZ0VNajZ5bVpPd0ZyYVV2b2N5M1oydkI5?=
 =?utf-8?B?TWFRa1VIendMeWd4TFdkQkczRTFwMzQ3TVQvNDk1d0w2ZU85c0lEbGVSYmpS?=
 =?utf-8?B?ZkJVYlNMWmFNVzFtR3VkaTBzeCtDOERLc1lpdVc5M25jVVMzUVVPM1UvUExI?=
 =?utf-8?B?ZUNzUmU3b3FsbVBQNG1FRy9ObFJ0S0FJbnNPOVhRcC9pV0dkeFFQYmNVM2Zn?=
 =?utf-8?B?bHFNcFl2WFdFS1F4NnFUdFl1UWJrUXRWYU9aU2FwYjF4Q3ZWWG1xczNBd3I3?=
 =?utf-8?B?aXFLV3QxRURtVzhEdGN1dThlMGNIaldKV3pHMHduUVZHZlJkOEdjSUUvWGZy?=
 =?utf-8?B?WWlVYmE3NXZIQWlIU1Z1cUVDRjAvYlFWak9pbENyVzh6TmZ0emZNTU9MZGVF?=
 =?utf-8?B?cURPVDBlZGNiY044V0F4TFlQNndQTUE3bzJVbk5sUzdjZFM3aXNRWTR2bFhP?=
 =?utf-8?B?RC9INjY0UWI5Q1ZyTGI3WVhaVWJpSXByM1pBV0xQdzNod3dwNFJDeVZvcEY5?=
 =?utf-8?B?STRoZjk4MUdOUFJSVjV6cm1ROFA3b01KMHRMRGpHT01PS1Vtd21hZmFKVi9v?=
 =?utf-8?B?bG9MRk5uS3kvYjlrSUk4UXphMy9GNTRCeVNHUERTMU9DR0dpY1F4SDJCOElR?=
 =?utf-8?Q?yaE8iuRcc0Uqbtqwg8NZS8KV9L+xtNDJjbiu4=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(376014)(1800799024)(82310400026)(35042699022)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 12:30:23.6183
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 55e31ebd-cb2d-45db-be5d-08dcf81575f5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70D.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5498
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 12:30:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13471

T24gMjkgT2N0IDIwMjQsIGF0IDEyOjEwLCBNaWtrbyBSYXBlbGkgPG1pa2tvLnJhcGVsaUBsaW5h
cm8ub3JnPiB3cm90ZToNCj4gDQo+IE9uIFR1ZSwgT2N0IDI5LCAyMDI0IGF0IDExOjU4OjA5QU0g
KzAwMDAsIFJvc3MgQnVydG9uIHdyb3RlOg0KPj4gT24gMjkgT2N0IDIwMjQsIGF0IDA4OjA1LCBN
aWtrbyBSYXBlbGkgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPG1pa2tvLnJhcGVsaT1saW5h
cm8ub3JnQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPj4+IA0KPj4+IEN1cnJlbnQg
cHJhY3RpY2UgaXMgdG8gYWRkIG5ldyBkZXZpY2Ugc2VyaWFsIGRldmljZXMgdG8NCj4+PiBTRVJJ
QUxfQ09OU09MRVMuIEVuYWJsZXMgdGVzdGluZyBhbmQgdGVzdCBhdXRvbWF0aW9uIHdpdGgNCj4+
PiB0aGUgYm9hcmQuIE5vdGUgdGhhdCBTRVJJQUxfQ09OU09MRVMgZ2V0IGFkZGVkIHRvIC9ldGMv
aW5pdHRhYg0KPj4+IGFuZCBtaXNzaW5nIHBoeXNpY2FsIHNlcmlhbCBjb25zb2xlcyBjYXVzZXMg
cmVzcGF3biB3YXJuaW5ncw0KPj4+IGF0IHJ1bnRpbWU6DQo+Pj4gDQo+Pj4gSU5JVDogSWQgIlMw
IiByZXNwYXduaW5nIHRvbyBmYXN0OiBkaXNhYmxlZCBmb3IgNSBtaW51dGVzDQo+Pj4gSU5JVDog
SWQgIlMxIiByZXNwYXduaW5nIHRvbyBmYXN0OiBkaXNhYmxlZCBmb3IgNSBtaW51dGVzDQo+PiAN
Cj4+IFRoZSB1c2Ugb2YgdHR5cnVuIHNob3VsZCBhdm9pZCB0aGUgcmVzcGF3bmluZyBpc3N1ZSwg
aGF2ZSB5b3UgY29uZmlybWVkIHRoaXMgc3RpbGwgaGFwcGVucz8gSWYgc28sIGFueSBpZGVhIHdo
eT8NCj4gDQo+IFRoaXMgaXMgaGFwcGVuaW5nIHdpdGggdmVyeSByZWNlbnQgcG9reSBtYXN0ZXIg
YnVpbGRzIHdpdGggc3lzdmluaXQsIHRoZSBkZWZhdWx0Lg0KPiANCj4gaHR0cHM6Ly9sZWRnZS52
YWxpZGF0aW9uLmxpbmFyby5vcmcvc2NoZWR1bGVyL2pvYi85NTYyOA0KPiANCj4gICAgU3RhcnRp
bmcgc3lzbG9nZC9rbG9nZDogZG9uZQ0KPiANCj4gICAgSU5JVDogSWQgIlMxIiByZXNwYXduaW5n
IHRvbyBmYXN0OiBkaXNhYmxlZCBmb3IgNSBtaW51dGVzDQo+IA0KPiAgICBJTklUOiBJZCAiUzAi
IHJlc3Bhd25pbmcgdG9vIGZhc3Q6IGRpc2FibGVkIGZvciA1IG1pbnV0ZXMNCj4gICAgUG9reSAo
WW9jdG8gUHJvamVjdCBSZWZlcmVuY2UgRGlzdHJvKSA1LjEgZ2VuZXJpY2FybTY0IC9kZXYvdHR5
UFMxDQo+IA0KPiBBbHRlcm5hdGl2ZWx5IHRlc3RpbmcgY291bGQgZm9jdXMgb24gc3lzdGVtZCBp
bml0LCBvciB0aGUgaXNzdWUgaXMganVzdCBpZ25vcmVkLg0KPiBPciB1ZGV2IGJhc2VkIGFnZXR0
eSBzdGFydGVyIGlzIGRldmVsb3BlZC4gRm9yIGdlbmVyaWMgaW1hZ2VzLCBpdCBzaG91bGQgbm90
IGJlDQo+IG5lY2Vzc2FyeSB0byBkZWZpbmUgYWxsIHNlcmlhbCBjb25zb2xlcyB2aWEgU0VSSUFM
X0NPTlNPTEVTIGF0IGJ1aWxkIHRpbWUuDQo+IEtlcm5lbCBoYXMgYSBsb3QgbW9yZSBkcml2ZXJz
IGVuYWJsZWQuDQoNCkJldHRlciBzb2x1dGlvbnMgZm9yIHN5c3YgYXBwcmVjaWF0ZWQ6IGhhcmRj
b2RpbmcgdGhlIGxpc3QgYXQgYm9vdCB0aW1lIF9pc18gbWFkbmVzcy4gIFNvbWV0aGluZyBpbnZv
bHZpbmcgYSB1ZGV2IHRyaWdnZXJzIHNvdW5kcyBsaWtlIGEgYmV0dGVyIHNvbHV0aW9uIGxvbmcg
dGVybSwgZm9yIHN1cmUuDQoNCkhvd2V2ZXIsIHR0eXJ1biByZWFsbHkgc2hvdWxkIGJlIHN0b3Bw
aW5nIHRoaXMsIHNvIEnigJltIGN1cmlvdXMgd2hhdCB0aGUgcHJvYmxlbSBpcyBhbmQgd2hldGhl
ciB0aGUgeGlsaW54IHR0eSBkcml2ZXIgaXMgYSBiaXQgYnJva2VuLg0KDQpSb3Nz

