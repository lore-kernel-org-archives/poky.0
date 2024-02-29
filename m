Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 015BAC54E49
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 15:38:14 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.71])
 by mx.groups.io with SMTP id smtpd.web11.27976.1709221092194076849
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 07:38:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=RAnE4VDL;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=RAnE4VDL;
 spf=pass (domain: arm.com, ip: 40.107.21.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=U0s6ag9gdZDnDJBepEvnZdSM+HUJvsN/y4PgeSCgLDIOWS1E9bHHBHX9aXXZbun0E5GT9Kt+h3EohOFqnXigjEpI1InyqD+4j+t+eO/LFvd8mWPvYMPDD+K1SlTI9no3rsuN4IdOd45C1VTIyMXq2x53cHzp3opUAtZJaxeSGwkcryu8RWs/mf1KD0rj3ZACRUu7Hk8zsj2FIyL3Fe0jEhXG00WsPu8mBHnHj/MfEc9LoZaZAifFnKOirpI+/tqkjLuTVnP10jsfASz84WeTwhf4oi501/DTwM2y7K/fxA0uSDhx2Yz7gH9FN8CopdBo/iae/3xUgng/W7D5VLY5qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5n6LvMG5CrX/okt8OlvVub8YHjEmD8AXbcqgWBvgF90=;
 b=SMJWlmlyxDvhCp7ZGlwWPLrJGhYfzyndUuhoodY9Whl1jhNrvwGmXpPoiIwI4Y6/llsb1B0l+ZFvfTVVC7yiFXCYD8uE1RD8hU8uQklz0u4GvsbrO1DuGO7vIFh4U9vnsh022Z0GlekDw6CbK13sbf46WfctTpvq5TMxl+ay2dNr2kGdxCqGPx8vueiE17k8xsnmggHmE6Xyxc8YL6U1SVckoe98BfGVVaP85XL1TfwGDkoikKToTiCdJ1+09gy0QA3hAk3nBt3zvWIXa7n+kYuaVgl7xpRN3X1C8vNK7HZnDIqC/znsDxEPSqPqTnGnWhxbh6LjlFrcNiT9ygtizg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5n6LvMG5CrX/okt8OlvVub8YHjEmD8AXbcqgWBvgF90=;
 b=RAnE4VDLVhW3jqRzWBZc2r9zIpwhqKeKImx1MFAZPgDUgEnT6roaHaCWPI1A++cVr5de1RVC4LiSwqi9swYdp0X5J5ckG4QtwgKpUth7G78Gvc5QJ/G7ovjBiY6Wl9WD8D1smCoP4v/GY34iuSGgr01lss5EZjziw+dakQH6WEg=
Received: from DUZPR01CA0153.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::6) by AS8PR08MB8827.eurprd08.prod.outlook.com
 (2603:10a6:20b:5ba::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 15:38:08 +0000
Received: from DU2PEPF0001E9C6.eurprd03.prod.outlook.com
 (2603:10a6:10:4bd:cafe::a5) by DUZPR01CA0153.outlook.office365.com
 (2603:10a6:10:4bd::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.31 via Frontend
 Transport; Thu, 29 Feb 2024 15:38:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C6.mail.protection.outlook.com (10.167.8.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Thu, 29 Feb 2024 15:38:07 +0000
Received: ("Tessian outbound e358842a0ad8:v228"); Thu, 29 Feb 2024 15:38:07 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: daf36e423820cfd0
X-CR-MTA-TID: 64aa7808
Received: from c78f0dbbed29.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A85E03BA-0EFE-43D6-8916-03A0D0C3B8CB.1;
	Thu, 29 Feb 2024 15:38:01 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c78f0dbbed29.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 29 Feb 2024 15:38:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XVTbz7O4EVHEWaBjavfjtvprI03IlW2F47waKaQViYIeaeOnjaQEMYZgXxzHreZ/pAJLemkrbDCEsIknxCc6SFUdxn8jghO5Z29C7ppibGXx2yNjQkIg23V36HwM4sugPui2nFKGWH9xhl7cE/rrgDtbMBp0q2aPOxfbBOe1nC9rkKcZAzthHMUGDYfY7kwqVPjatt2gfq3tsJp/Irr3+xXXvWYKfULaAyhscvW+MKE8ccH31P3EgEZhs2qQLgjZfOfDtMIbRZ0qjcNQuMtHR9dSZfg/o9AcG4nY6NoEGbcHUU37FZnVdE7tBfYdJ/EERii3g4D3qMBN2q13UmVrOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5n6LvMG5CrX/okt8OlvVub8YHjEmD8AXbcqgWBvgF90=;
 b=AAiA3PwsbpgLFjBK4oEpH51I8MWeRYU2QLs5bFYjhOMrpPP2Q2t4904QfnzUvoL03a+A63Qe1cJ5FcpsdB/vm2/4lyoOQu37gWKASDCcQ6mcFVDldpwsXdWinf1rgc93UvPqg/at93kbLHc4wShthXAah/nt3xFvHRfKvfniH9IZX1fJFPYx97Srd7zIaPB2aYaHPIF+sVG9ZOoJ1GLOGsO1CrspUVNJjixunZO5iy6Me3NHTgfs0FIMvw++odoh0yWuKgPV8waA5oVINLtaiVhNnK52KetW7fcAOIMkrRQz0KoN7zkFY+3HgKjVty1NEoVKEo2AJW91AbuOeDbi+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5n6LvMG5CrX/okt8OlvVub8YHjEmD8AXbcqgWBvgF90=;
 b=RAnE4VDLVhW3jqRzWBZc2r9zIpwhqKeKImx1MFAZPgDUgEnT6roaHaCWPI1A++cVr5de1RVC4LiSwqi9swYdp0X5J5ckG4QtwgKpUth7G78Gvc5QJ/G7ovjBiY6Wl9WD8D1smCoP4v/GY34iuSGgr01lss5EZjziw+dakQH6WEg=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by PR3PR08MB5641.eurprd08.prod.outlook.com (2603:10a6:102:91::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.41; Thu, 29 Feb
 2024 15:37:59 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c140:845d:a373:5e4c]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::c140:845d:a373:5e4c%7]) with mapi id 15.20.7316.039; Thu, 29 Feb 2024
 15:37:59 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Tom Rini <trini@konsulko.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [PATCH v3] Add genericarm64 MACHINE
Thread-Topic: [PATCH v3] Add genericarm64 MACHINE
Thread-Index: AQHaax9Vxblslr8ZTEa4FhwAZMw/1LEhcdCAgAAAiQCAAAHogA==
Date: Thu, 29 Feb 2024 15:37:59 +0000
Message-ID: <23241565-A96F-47B4-B092-67189AF74CF9@arm.com>
References: <20240228114415.345202-1-ross.burton@arm.com>
 <20240229145517.GT3040305@bill-the-cat>
 <9A45C507-855E-44E0-B8B4-FCA65F266FFF@arm.com>
 <20240229153100.GV3040305@bill-the-cat>
In-Reply-To: <20240229153100.GV3040305@bill-the-cat>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|PR3PR08MB5641:EE_|DU2PEPF0001E9C6:EE_|AS8PR08MB8827:EE_
X-MS-Office365-Filtering-Correlation-Id: 356e73c9-17bc-4a0f-886f-08dc393c6d8d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 iON2aXZamAo8+O62qTEmg7QZDNSyNQrEWDu576dxP90w9/o/XHsmTnjYQWAy/45tiwur37oKDYfEFKS4ZUO6iCayR1La2vFKhlx40wdipCYsRf6mPp9dyUoB1KYToyM+BT3tmlBnjOw1j69t3BtalCyyf7z6dW9yxVNcLSNEGJqAE+KP9AlaPcuoyAhwu/YIrZlQCzn1M6covMFW/mFgZOGS1gajFz7xczbYVdRdfMMkwfqWT+vXIIB/1K8+1SLhqoUCvectb/ZFgEc0TtcHArzSJvOt9B6j0hu0y5BN+jyQ3OnOtkF3ubZb7UmBVZCXzW9utxvCDTPF4DMEqArSAc+dIVY2BOW/dclol5M4NcEjH+G7yWpKP/sMQw1E9VGTuCl9ze+2lrxdcoD6oRQ6zyUH4+lBOwkMnCX2nAPVjSMSSWiXXQd6tKVkSRmgm6NO2FNmWbw2rKNG46k5PQYE9/lz754Jx/XNfEJELvejqOziTptdYzPVDtKE9Kne0UDmOKL9YyM6lFt36Bhk0uDxBBBK1ARrRvQGHjUQy/izvrRyl4PIBBzPWXSikqOoBII8cXXthrNwodKhQBTEYDHDPw+D5zO9fjSdSQbSD1n5U7+PY6/jfPkG4oyyc47GB7qrAcZ8yhwswx6C+eQPS+38EcWwNtJd93mLufnYmwaRv+53I0YUje/8MQdnS4InxwkexS40YKT5LrtUNnbDuLOsZuZzb2yAnqHzhsv0ryRpfoE=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D8ACE7A255DD7C41945CAEE75C138161@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5641
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9203cab9-92a5-4e0e-a39f-08dc393c686f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K+jirD2X8PwU8lervNupbkFRpYoVZ/LRi0+xdnyPc+Lk/Z7TFHbiOT4bHDsY2zFHHI3xll2gJcVsZzynumyL3GeXxJphsqu7LIF2emzmLvUIYbSe3cs3/o4gsdreiJMy2klVcd70D8qw73UMuDzsg52aQHQUzvt8teoTDFprUooBCwT6nMwzEce5L7uGC3+4MRpd6JycCvVhstWnTo0woelHNHD6uPtxkZGNEz6VmI7LCgwYzwLehkw+OUlEXz7sHWMWPg6V+akkTqh6JaV9XmXfLLOD+LbMW5wYmroXYPrxxCM/kMWiadP24rjLIATAKYzqwYOIBt0to3FiHbgvh3B2m0/oym+ppBZwdntNU8WIgC7nPoAiF3aDGO2kG9BYJevcgMgYLogevwIZXgmr1DU1V4mC0uqLKfEcBLWJ7C7ttacyiDa8xSh7Allo0D/v/r03MXT05wle1vK3iBF+6XV5YEiXhdJU2CpQXOAJ5XCtJ+e+L6Th+HUFDpWN6yMal6I7jBiIRshtwD6fU1ZjP+LeYpr27KNzkSJVzzLwoZPNpmEod+rmDrUenU8Aoy1wcWDU6TWmdf4nP5lnP4k1JE5kP7qgB/ItDtkPzrjEbB+oYJ0n4M/wihoOBVOvLkHxYb3plPvm9eZiFI1r2Be37UVvzMCMSnVbkcaomZ1fN2gTQuTKR82Os81inuXwJmEYVKbyKNaxNuo0OoDjyFHjynNJNZKazOa23zinOlfOogCf13qMKyhWLPa1u4ZCtHO/
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2024 15:38:07.8580
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 356e73c9-17bc-4a0f-886f-08dc393c6d8d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8827
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 15:38:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13287

T24gMjkgRmViIDIwMjQsIGF0IDE1OjMxLCBUb20gUmluaSA8dHJpbmlAa29uc3Vsa28uY29tPiB3
cm90ZToNCj4gT0ssIHRoYW5rcy4gSSdtIGEgbGl0dGxlIHN1cnByaXNlZCB0aGUga2VybmVsIGRl
ZmNvbmZpZyBkb2Vzbid0IEp1c3QNCj4gV29yay4NCg0KSXQgZG9lcywgYnV0IHRoZSBZb2N0byB3
YXkgaXMgdG8gdXNlIGZyYWdtZW50cy4gQmFzaWNhbGx5LCB0aGUgc2FtZSByZWFzb24gdGhhdCBG
ZWRvcmEgYW5kIERlYmlhbiBkb27igJl0IGp1c3QgdXNlIGRlZmNvbmZpZy4NCg0KUm9zcw==

