Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3138AD43365
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 14:13:55 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.84])
 by mx.groups.io with SMTP id smtpd.web11.72720.1730988833892105396
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 06:13:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=L3XONRO7;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=L3XONRO7;
 spf=pass (domain: arm.com, ip: 40.107.21.84, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=EEQX5+w6KRrn9YUqYysYpiUWpvblGzb7mcFORFOLCrsxUTp1Y/Hp+d420cqnk+ERmaGKC5MLos0AwAlxYVqTybXxHRAQEil1wCve6nmg0I4HuG+PnJ99habNL0Vuom5Bxf0O+Np8hSxY3m3ZikpUyxVsfzr+zVIVwann4dT0wEFqf/FtSG65ib1SHqHK2cn8B0dWLDp7465JHO2u/08JhzY2da/YP6VsLmKVt5RQRSzkwSxmIfW0f/tjalVvcMcUyY+qghJjcp2HDFK0akwuFpr277TEnZunslKQmyUKkYt6gH0pRunUDlg6DmxxfHt54a1OUTQ+7bfWT9qNBQZAkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UwfyqJdO6tswQu2NCSBP3tFqB0qrVyzKHFqXFaPmKg=;
 b=xVy0iqR0jkBRjDAguadmOS47gTWSrBeklg4rg5DARmlONzz9lk6gTGDALR36lctDzx8b0Q5CMOhk8EyWt1gEd7SZlKiYvFJsJ9UztYqPh7d+IezCeggmb8/D9IZuk0x1Vt7VQxbdKIKJfMbsCuI469pbeNSl+XHM7JsyzIrG276DAIxhWzDEPqbX2y6nVlYh6X8JNEOaYrXnn+GXhXU1dm2NhbJxexJJR/jmqq9c9MqyEiq/CxykdvqwwCiPkRITyAyIMo3+nI8I10fG/ugiLzu9M3lOLDd7EvciAn8gvXQxjlu7KZ32FfQ1rjXP5Wf8xs6k8qTIFn10xRlDDYKjHQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UwfyqJdO6tswQu2NCSBP3tFqB0qrVyzKHFqXFaPmKg=;
 b=L3XONRO7qKWnI50vH1AzAxVl7CZ9lLwLX+dgW4KjIUtCvEWBO5pLuhIqS9t0BimSCoJdIz1ZDMQMB8Wb3iS3tU7LyEJ9LQI8Cio+QFOW9LO5TSyHQYnPsPjZiy2hoSjuuv5ZkFSMx6/cLxoPqwyCwuUMpM/Hf0upyOUopTI76rc=
Received: from DB6PR0301CA0090.eurprd03.prod.outlook.com (2603:10a6:6:30::37)
 by VE1PR08MB5790.eurprd08.prod.outlook.com (2603:10a6:800:1a9::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 14:13:47 +0000
Received: from DB1PEPF000509E5.eurprd03.prod.outlook.com
 (2603:10a6:6:30:cafe::e6) by DB6PR0301CA0090.outlook.office365.com
 (2603:10a6:6:30::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20 via Frontend
 Transport; Thu, 7 Nov 2024 14:13:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509E5.mail.protection.outlook.com (10.167.242.55) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8137.17
 via Frontend Transport; Thu, 7 Nov 2024 14:13:47 +0000
Received: ("Tessian outbound 8223600b7a9c:v490"); Thu, 07 Nov 2024 14:13:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c229e1405ab006f1
X-TessianGatewayMetadata: HYBCXsTybrSdZdr0B2BlTADCLiXrdZPinBkk3NDDWUAdqfufhJIhY6R5HofwA/98hskjQZ4ZQT7SQ2NXcu2eZRkyjMLsDKoOJw7PWyTTNtvCCc9EOpLFbsrAiSVeKMoEz8o6ssvCdhtSmpaz8lKAQxx4kPQ9BZiPFPellWKPaOc=
X-CR-MTA-TID: 64aa7808
Received: from L9af4760eed56.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E0D5BFFE-1CEB-4D2D-8F55-D04246A02975.1;
	Thu, 07 Nov 2024 14:13:40 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L9af4760eed56.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 07 Nov 2024 14:13:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M77277ULJxnJQpD11RhdnGl/wpvDyN9nDqKKzHLenOVerDhiDBLhqLJn3r9Wufv4hamNKdm8tFKHDirnSnf5+hNwBK8LAISGUTejh0X0/ozdEHnp1keWaRlPlktjcxF6E6TnduaZKNKUroDlJa2YhNWmY+JPLPukjjIZkGu9pcXWCiYo4mzN6dSIiRLRDSJS7Ay4W9T7zXnDgN5ajYtw3ZSjUrK0LS3riTR1LFXSlDF7B3me3bxz36J6clvnO6HisYNaHN7yv4yeZ9cjoMooCLXOyiB6LoNcQlBtqseBak9kresS86WgOyaTb/qOV6MG+t/N+6r/Mk5TLJDkV4a//Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/UwfyqJdO6tswQu2NCSBP3tFqB0qrVyzKHFqXFaPmKg=;
 b=G2yw7cG+VSkBpb/JFIf8GzBHYsbMvx7O7y8fqzgKUyiwUzmNNfi20DqzQKYIHih0KFYBw6CowRCzstznoo3r1WhX3C6Acb0cTtcrWN1foF0Xc1hrovogXenTgmN8GT3dE3zAbtTQE6oe+mJik33qEgLbr+ZK3PPExXYGZq6HI6vUIA0I3K8WU+vOcQzHrajgsffwjaFG6DLfLruCYb/AErhR6DT5qA4ZG5M53edlinWY0tgGuHw/O0IapFyFzbR9rkir8ckVtf2OfCGn+sHv5tOngoHH1EVtHjuDutZBWSpJwgWGA7+KxRy6YS1gC46f6BwbGABIza3XPjCD3br4LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/UwfyqJdO6tswQu2NCSBP3tFqB0qrVyzKHFqXFaPmKg=;
 b=L3XONRO7qKWnI50vH1AzAxVl7CZ9lLwLX+dgW4KjIUtCvEWBO5pLuhIqS9t0BimSCoJdIz1ZDMQMB8Wb3iS3tU7LyEJ9LQI8Cio+QFOW9LO5TSyHQYnPsPjZiy2hoSjuuv5ZkFSMx6/cLxoPqwyCwuUMpM/Hf0upyOUopTI76rc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8878.eurprd08.prod.outlook.com (2603:10a6:20b:5f0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 14:13:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 14:13:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: =?utf-8?B?VWxyaWNoIMOWbG1hbm4=?= <u.oelmann@pengutronix.de>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] local.conf.sample: update IMAGE_FEATURES comments
 to remove debug-tweaks
Thread-Topic: [poky] [PATCH] local.conf.sample: update IMAGE_FEATURES comments
 to remove debug-tweaks
Thread-Index: AQHbMRuz5e0NJ7NBiE6D3n/LEiHxdrKr25+YgAAAlQA=
Date: Thu, 7 Nov 2024 14:13:36 +0000
Message-ID: <2C63397E-10E3-4850-A2F4-CB2C726DEAF7@arm.com>
References: <20241107134805.2071772-1-ross.burton@arm.com>
 <6rh68jnngd.fsf@pengutronix.de>
In-Reply-To: <6rh68jnngd.fsf@pengutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8878:EE_|DB1PEPF000509E5:EE_|VE1PR08MB5790:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f20603c-2d86-4995-e4e1-08dcff36655f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?bmdhd2ZhOEhCSHFnK1hVd1hPYzcyYVYwM2Qwd1VFTTRUanI5UGZCSlhWV0Zi?=
 =?utf-8?B?ZVNzbGFTayt1U3J6QjVPUjhDZGZlZmxTSlVjSDdWQ2NDWEx0eE9yMnBXT0Rs?=
 =?utf-8?B?V1dSeW1IT2pINGsrUXZ0L01DazdESE4yTHExQ283MGdUbWthVUdINXZETEdC?=
 =?utf-8?B?UTI5bExjN3o4ZDV0aWcxVjY1cHZrUXp3Ym96QVZRNldvQzRKcjM3STRqanA0?=
 =?utf-8?B?aVNCc2xNYnpTcVRIcVo1YXh3NWN1YXNZTFlZcTZrK2haUFZxdVk3Mi95MDNL?=
 =?utf-8?B?REtiZnpXbk02VTY3Tld5Y25sYlRpYlBSNi9wQzQ0RDRzeWZXZE1wZjBpUEdu?=
 =?utf-8?B?Q296STNaalhXMG1uUXd4MFV1YWJGL0JqV3I4Z0c1RExaSmNvQXBGbUlaOVA1?=
 =?utf-8?B?Q1FaMUZHVGxqM2poUFB3MlNyQ2JkQkhJUEs4TGgrT0FHSmlPd1dEN3RxQ3Ey?=
 =?utf-8?B?QmZwRCtKNGV5OEgwQVQxcWppSW84b1VZVFRjZXo1em5hUEQxSUp2OUM1OWtE?=
 =?utf-8?B?QmdRYUdqZmQ4MU1MTmZMWHdYR04xVjBxd1QwVU9JN04waWtXRTNOQlh2bEor?=
 =?utf-8?B?UmlETjg5YVlvWGZINnlGRmQvWnFwL3Q1RkNBdzdOanhyQUFZK0lKdDI1WWFp?=
 =?utf-8?B?ek5xTHRsRCtXYXdRS3BZOCtGNE1BTzRkSWs3R013Q2svRm1UQ0ZJQ20rVDY4?=
 =?utf-8?B?ZzRxYmxGRzRZUzhyTUtOVFRsVURlSURMeUdqU3JqT0tZSU5QYm9WYjh2TWJl?=
 =?utf-8?B?TXpreHcwWGw0eXkweWVBOUY3dEtxbklhRUYrM2FYbzBHcnJGbnpDRnUwQUp6?=
 =?utf-8?B?ZkNlS1FBNFhKMWNWZThha1Z3WXZUM2gzNTVXQXVsT3o2VU5vVU5yUWFHK1ZU?=
 =?utf-8?B?U3FUSW80TS9SWGh0WElYakc3YWZ2U3ZoNHQvUndaNTM2Lzd2SUYyb1N0Ulk3?=
 =?utf-8?B?elBacXIwNFVYRU9SNkRucDkvU01WcHZsSWptZGt0U0orRnZ6blpsOGpaK0ZQ?=
 =?utf-8?B?TWRoNk5VUTJnYy9rbDZ2WjRRZWVKT1ZsU1F3UHlNbHZ5SU55dFZXd1Y0STdI?=
 =?utf-8?B?TVlCRVJVV1ltVmFyWnA3YjBVTFdHUGs2M1VYQXkyM3ZEcGNxZ2VNcEsxdkdx?=
 =?utf-8?B?QWVEYTBjdHRtZU9nOE1vK0RLL1pPcEhLYURlQkdrNzBjZ0U1TUd4Sk1UU3Iy?=
 =?utf-8?B?Z3lYY2VwS3M5b0krWC8zaWN2bHZTblFwbzg3dVJMMzZrU3A2Q2ZNUE5KUlAv?=
 =?utf-8?B?eXVQYklTS2hPcWJFNTNQdUlOODlNV3pFOFBFT2pQdkord25lb3N3TUE0UEVM?=
 =?utf-8?B?bGdMekpPUzBSOCs1UUlEdW9oRFhEWk8wZnhtVkFWV1I4aGdKU3IyOW9oc3M4?=
 =?utf-8?B?cVZ4QXNkQ3JweVlVRi9nZVlLdkh2UHVPWGhnUmhHNTM3THlhZ0hWQ2VMY2cy?=
 =?utf-8?B?aUQ4UFFoenhEdDE0UkhqeS9KeE8vbmVxbU5iTlppRndHU2k5N3czWWxvdy9C?=
 =?utf-8?B?UVVkdndCZG1Pb3NCS2lFZnBoWjdCMytWUnF0cHlIUERINWlHa2VobW50cEF1?=
 =?utf-8?B?cWFBeXVhYzh1VlN4ZWxyRHM5OTdXTUl3UDJFYmlRUWVsOHpYakhScnpUQkNq?=
 =?utf-8?B?ZkFvbjljblZ0L1Rva2tPcE9lWjBrWDcySnVIbTBHMjkyTis1Z2ZsS1BmdU5O?=
 =?utf-8?B?UlFINlQ4SEh4cyszNzdqZzhJQ3dLM2MyaktIa1NXNEdZZlRCbzdHdWIwR0hM?=
 =?utf-8?B?dTRzcWxFMFJkSmlsNHVHNXFqbmF0OWNkZjJ2NjkzdnlLek4zQmlwQzRtR1Rm?=
 =?utf-8?Q?y/m3+3XXDGuTsD+rD/bt1wlJ7ifQ3uL0dXEJc=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <11604E2CB041C34ABB06FCF2AAC7DF8A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8878
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509E5.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b21ce9db-b3f4-43d1-2701-08dcff365f09
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|36860700013|82310400026|376014|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MWt5UWcyTmJwRCtTVitoYm5oc0xtLzNyU2ZUT3pndU1SM3A1OFR6aDhMeUM1?=
 =?utf-8?B?cDZSRXYvTXMyTHhTSVVtV3FUZ3VVaWRma2F2Wk4rVjVoZ3ZwTkNOaVlSTDlj?=
 =?utf-8?B?dTE5NHZtUkxRZk5NbEVCYWtEaFU1SExLa1p0OGhEeWJFeERPNnFoK1NvQUNq?=
 =?utf-8?B?TjkrWkZ1anE5a2dPR1pUVFdicm5KZHg4bzl1UWhZVzNCcTlNaHIwd3JLbUVR?=
 =?utf-8?B?OENIWDMxM2tEVWN5QnJqQXkva2NSRkxhN0w0SHZ3QUIyc1VkWnRIQ3YyQWdU?=
 =?utf-8?B?bWl3Znc3UURZeEFGdWwyTjRpQWpTcjVhelMweEpxdmZOK2s0UmJob1VxSDU5?=
 =?utf-8?B?NGlQZzErSHpDTUswc01keUxrTGp6NEJ1blRVMXBoeUZWN1IzTXIvZldIVmJ5?=
 =?utf-8?B?Z09qK1YvYUo3SEdnMSt3cUJzTGwzV1Z1VmQvcDB4LzE0RVpOQUNOb0kzQUxk?=
 =?utf-8?B?ZkFNajJ0Tkd3ZzBWQTQ4OVBVSVFJblZKbS8wT0YxQm9DUVpSbm5oRHRaeVhU?=
 =?utf-8?B?NUtjb2NMeEswQmlKMUtacHNITVNXUW5hcjN4STdqWUMzd3F0L2xzc3g3d2xD?=
 =?utf-8?B?bTA2SG5EV1ZlbHpRc2h5dm1sa3JDckN5dlV4NUdOZHdUYzRNTXF2YmpRWVIv?=
 =?utf-8?B?S0ZlZ2tPck92MGtIeGxhWGNjdFJxc0t2OTk5OVBkSnF2VGY2cGdnK2V0Yk5J?=
 =?utf-8?B?TnpHTVhhTENxTmpIbDk5TGhNa25FazFDU2U0bEEwTCs2eTBFcG9lb0ZKaFh1?=
 =?utf-8?B?ejVqSmhxQXc0VEI3LzJaUWJxNkRKWUdPaGNQclkvcG1aWE1adFRpNDc1bDV1?=
 =?utf-8?B?R0pnOUs4eWNQTjRQWHdOMnorNWR3dzVvRk9mTmR5bzhLWmRQT2tvaVRlVUt1?=
 =?utf-8?B?RFlpTU0zN2xueHJrVE84VCtCK2UwczVobHZ3Rnl6U1JzaktnRG1OL1orejk0?=
 =?utf-8?B?dCtJOC84L2VSVGxhekNhamN2K241RDB5Q202VW5QdGRFVFRoN1JUaGJPYVJk?=
 =?utf-8?B?b1AwUW9hZUYxemVGNjhBd2tjUk9veU1DYktxS05LeXFxTUVWOTUxTjNLalY4?=
 =?utf-8?B?NXlaMGRZaUYvZFVKR3Btb3dVSGc2Y21ZRzF5SVhHb1ZJZHJYK3IrWkNsWG9K?=
 =?utf-8?B?NERjbkxxaklhN1hmSVZVUll0VGhJc1F6TkpIMWZKTFpQUGM0Z00xRDBlSFQx?=
 =?utf-8?B?amVKdnlLdTlOQjZYQ2pqUFlVZkNaWlo2c1M4d1E3ME14b01oZ3d0d1A2TDM2?=
 =?utf-8?B?bGR2a3VGeFR5eW5aVU5OOWtteHZLMFVJL05Sem1GTDhYaE45SEx0NXRjc0M2?=
 =?utf-8?B?YW5IM21oRWJ0c1ZEdVRPVEZFVURrUGtSUGdnYUM1QkxVbXNOWjlIVlFrelAr?=
 =?utf-8?B?bXRhNTl6NVBVYWgzL2c0SmRVanFZVE1jbU5UbFpWTTc4UC94US9FVDNpWnVB?=
 =?utf-8?B?cS9DOHFnbXpYZnp3WHFkaDVFRkNkTTd5STBNWXdEcm4xOGswWlh2ZC82ZVRU?=
 =?utf-8?B?TGJub0p3YzQ0TWNvZ1ZRV1czUFVJOGFVMnQ5WCswRmFaZFMwbDk0TCsxa1ZU?=
 =?utf-8?B?U1JPMjV1ZHNVQWcxWG9ZcW84UVpIeHJOaHlPTDJ0aW9tS3FSSGpWNlpYRTkx?=
 =?utf-8?B?K05tNTg1dWpyelVpOEkrcVJpb1RybmhCUVNhRlloUWhrbDFMdjNGaklDVFNv?=
 =?utf-8?B?amIwQ3N6SDcyc0ZFRldqZWVIWklyOXFORmVWZ1B5VnkwU1ZHQkkvbm9ocUh2?=
 =?utf-8?B?K1cxdERJemFHTGtuWXpDOVVzaWtxbUN0OUJ1RFpSS0FYRU5HeTRFdEFhNHFp?=
 =?utf-8?B?UVNIdGJ6K3E1TWUwKzlDSE9vSmYxbGF5dTg2czBLbE05NkVoa3RHMmw5Zkt0?=
 =?utf-8?B?VEFzbURFbjdnYy8vSXZITENjQXlVTTdVbldNRkMxRHJSUkE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(36860700013)(82310400026)(376014)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 14:13:47.3711
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f20603c-2d86-4995-e4e1-08dcff36655f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509E5.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5790
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Nov 2024 14:13:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13485

T24gNyBOb3YgMjAyNCwgYXQgMTQ6MTEsIFVscmljaCDDlmxtYW5uIDx1Lm9lbG1hbm5AcGVuZ3V0
cm9uaXguZGU+IHdyb3RlOg0KPiANCj4gdGhlIHBhdGNoIHJlbW92ZXMgImVjbGlwc2UtZGVidWci
IGFzIHdlbGwuIFdhcyB0aGF0IGludGVuZGVkPw0KDQpObywgd2VsbCBzcG90dGVkLiAgQ29weS1w
YXN0ZSBtaXN0YWtlLCBJIHRoaW5rLg0KDQpSb3Nz

