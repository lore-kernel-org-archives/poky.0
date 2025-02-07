Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1E6C02194
	for <webhook@archiver.kernel.org>; Fri,  7 Feb 2025 10:53:41 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.61])
 by mx.groups.io with SMTP id smtpd.web10.66776.1738925614597598133
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Feb 2025 02:53:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fWwodHQl;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fWwodHQl;
 spf=pass (domain: arm.com, ip: 40.107.105.61, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=B38abBxrcung2LOkPKujBOf5o+FVSwrKrqMgLChjkbiW/g1g/VCgnJdMceCadDj6w3huC/sG8AJQA9I2xROlECJSLGaKzOoR50VEk0Mft/ZPb9SS8kccILEHk4dFMvWkG9s7QZN23OWLD7RKqSe2yL68JZZrD5tO3LthJ2opVla7gpUGhbhDHeBgse3Na8PQrU7GqZozRNWJlLM6KlIkbSUPsBKdXZc0YPWfW/JqtE69xSJbViqtKCEfSRUcT4QNXpuSfTGUWNO5g+JjJZcj+06AyOlD7G7Oy2xP7gN0NaKTGZGW2o1xwTFBGqXXq0z7iMdloDH+HKgg9PCJFOGuMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAvaQiwVAjNiEXN7RhoCbNvXcn0TTGSsLY2wOqHE6n0=;
 b=Q5E3MZ0Ybupn58K9fxwl8T7mcubF3r9yG6TfQ7zsJO5uDfqM3mBIWxRnLmJapSfjGruXEIk4VncCJSzl1kL+uuc5OASFVSdcJn67c8Ltya91OJgmsjSmerNWicDTo7IdGB1lqBapyoovhTL0AGyJiX7IrJgVn0P2dYmdV2X0ArN4B9RCtgJY/In2/h69eiJdej77wBFvZcnX1UkqvEvOKSo4rqeYBmhnciunAmrwKYdB4OpMQHzhCQku8KvqOTKLmoNQf0006+8Yimxp8WAvQSi+2yWL9dX5Ae4L3ywbGv2fu1WgxbTQMdD/NBoLQq0NS5Q4Izbq5CrmHzgSNxhY2Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UAvaQiwVAjNiEXN7RhoCbNvXcn0TTGSsLY2wOqHE6n0=;
 b=fWwodHQlnW5m3J91a9AG2qFlTq5MphKpn13cLF7haGmrziRuVvlOEsoFjUZcHYH5kSy4X6Pzj1xDeq0iI5tlR29rnbfG9GDSWXn449ZAgd2xeJIQqg8BoThSM6BlFrTvkQunGeTD515RCtbgdqT37ayusBPHZZ1tpvONxWsJVs0=
Received: from PR1PR01CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::21) by GV2PR08MB8656.eurprd08.prod.outlook.com
 (2603:10a6:150:b2::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Fri, 7 Feb
 2025 10:53:28 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:102:0:cafe::b4) by PR1PR01CA0008.outlook.office365.com
 (2603:10a6:102::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.24 via Frontend Transport; Fri,
 7 Feb 2025 10:53:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.14
 via Frontend Transport; Fri, 7 Feb 2025 10:53:27 +0000
Received: ("Tessian outbound c2a0e6651601:v567"); Fri, 07 Feb 2025 10:53:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c24acedeaed7534f
X-TessianGatewayMetadata: q99ioPHkgW7h24mMOvar2T9AcLUaqQ5y4Z1gU8kIsLCRIiCXeT2NZt84cA/mRLFqk87Dmch5bSdbDYJWzBhCy1YpGalY49jZYe8To/h8eybIqgtV7JT60kV4ui2+lzLSU5BweqJktvXEewKqzTb7+R6s0tNr6wRuF8dPjkvD/QA=
X-CR-MTA-TID: 64aa7808
Received: from L1875b5f8f3cd.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 87ADEC74-2E91-476E-A96A-D0772D900ADD.1;
	Fri, 07 Feb 2025 10:53:21 +0000
Received: from DUZPR83CU001.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1875b5f8f3cd.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Fri, 07 Feb 2025 10:53:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DgY/9dpZP4W6GvC9oAyFvI9VbsZ0aAj+h4JFp91sNTMjCAQECUEnqayrZXmXqTwY6oPUgBj0p9Ko2VG1oRQnRAkX8JwTFPwUpgpl8mDV4y/YfbsYpzrZjEwX2bcCi1QWwhvc2absGFQfisn/WYuYY8X6NY2bn5QsGVg/zI+Ws5rJd5Q/ymnOd+usZodvdhW1qoaM23C6w7XFcSkogwwG4peyPO8OOgsb+2dFT2XIBXBTm/AY1p5YmICW+GFfryGTZ0QcD9RIXlaOtngDIMGShjhNsNt0AopfywBK0FN/7euq/7IRPDR4iY1t5S1ZqzCIfBqZ3B+tIJpgF/recySR/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAvaQiwVAjNiEXN7RhoCbNvXcn0TTGSsLY2wOqHE6n0=;
 b=HgP3Z+iTS1so3Jc8BE9oJW72nAAE3pE+Pa4qMseFkevs0NoCh7ALMuPoMNtiMSbay77uy/umPBusBJZGnhITXJG5qR66wW9Zjb5Sw9UnaAyczC1jCO1wcCkoadOnFpxNlbgCp8g///fsK3n1XYwOTqfUzrw3NhGMmQNrSt3gNR9zXqaHL39IoUjsVPzYl8L3LZJXldcg2H3ycqzjROZW85jm7fTCdUbtGSsCkq0uP5CfdgaG4HAifE7xhJf/opxdxea5hwCW/AmKH4Tr94sFmt+ePalBz3xryOqMXYAUvOteJuhBqy9o7L6Rf888u+X91mpP6mtIbeYoDhiNnHDi6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UAvaQiwVAjNiEXN7RhoCbNvXcn0TTGSsLY2wOqHE6n0=;
 b=fWwodHQlnW5m3J91a9AG2qFlTq5MphKpn13cLF7haGmrziRuVvlOEsoFjUZcHYH5kSy4X6Pzj1xDeq0iI5tlR29rnbfG9GDSWXn449ZAgd2xeJIQqg8BoThSM6BlFrTvkQunGeTD515RCtbgdqT37ayusBPHZZ1tpvONxWsJVs0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5428.eurprd08.prod.outlook.com (2603:10a6:208:182::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Fri, 7 Feb
 2025 10:53:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8398.021; Fri, 7 Feb 2025
 10:53:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250 power
 management changes on genericarm64
Thread-Topic: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250
 power management changes on genericarm64
Thread-Index: AQHbeLwT3NT6+pSu3EijahR+oSLewbM7d+gAgAAzkoA=
Date: Fri, 7 Feb 2025 10:53:20 +0000
Message-ID: <1B89DD21-3484-49B4-8FED-22F77719062A@arm.com>
References: <20250206172451.3843991-1-ross.burton@arm.com>
 <Z6W60hHg7PNrUaMu@nuoska>
In-Reply-To: <Z6W60hHg7PNrUaMu@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM0PR08MB5428:EE_|AMS0EPF00000199:EE_|GV2PR08MB8656:EE_
X-MS-Office365-Filtering-Correlation-Id: c2823648-67c9-4453-cd4f-08dd4765a73b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|10070799003|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?B5iWzV11WZ6z2YRgoKWIGHC2YJe8bqxxYULGHRXaWK18so25+fZXo/Veijnc?=
 =?us-ascii?Q?M0V1T6N4REJLpo+V/9NUu/LBEpsL95RFbc2/9MWfSgd7nky1SuIldO4ycsG5?=
 =?us-ascii?Q?Wkjokks2C+9wQHOAHFyczrPriWlMk3iMg5FmDa/2IJ/s2LunopMWWSPVT31k?=
 =?us-ascii?Q?xx26+48poIRmHsYtAG2q7r/zWEYSPG9cjTOq+dNnJI13Q47KOfx2vOefGiz3?=
 =?us-ascii?Q?+T8vG0qbLX1FoCGXN1U2n5cIOJRwUhf23DqlQXD52AMs1b/OJnjg/MNpVAx/?=
 =?us-ascii?Q?c1zNLnYQnu0xvuFfLXJKDKcarYOUT+njXt8YnbNpLLi/zUpR2oPcgnqLQ+m3?=
 =?us-ascii?Q?EPaOsI3NvNwAdQI8vDNUtUzh8CFV4mbRZwPF3kgHYgA019DESuUf7tB7h8TI?=
 =?us-ascii?Q?HmyhRkpg5Z3I4/mD/Cm13AMJvPPn/8UfqAoGGBXx6QNwOHR9RxulJCjrusIM?=
 =?us-ascii?Q?ZK8rjjLJadDQkdSTR36ZxE+b2m1t3yLay3ttrcTRBYVU7kfTqBjPEU+TdxZo?=
 =?us-ascii?Q?RwfeqVr0r52Hiyahrv7p39M5WpO06ZYOsL+02IEe//6JL/bNfn90OYez3gzU?=
 =?us-ascii?Q?jseNQ+w3pN78FmWXOpxZIss3GV9J2kdDEe2K3j4u4YCjrJ3uqJ/7FP6QWZJS?=
 =?us-ascii?Q?HlR4DUtNTnx04FyEa3Tkr5IOc+Iv0RyJsLAsDDLPtKHwEo/cK5vBWywJ/eFW?=
 =?us-ascii?Q?9COsuep+EwDhQ2Eb3oO7dxdwJnXooiHWG0cC3ZjGvOBU44O03lprkKiXDrmw?=
 =?us-ascii?Q?9MPU445nwaQL7zeSkEcYXIHBRSKSaxwPH4fVAMMyTXjkwT/cbbzFPD3a4GW9?=
 =?us-ascii?Q?rkTgUK/bZ0Iiz+5JdbhUMtWG+ZaZfTSpY8tOljVSoZXy22N0420f3elQ0Pan?=
 =?us-ascii?Q?HWKX+XarFGqPoGdMCj1KjFyhZQXkEYLsnstzoIFnYWPnA8dhUy6gniNrDPq3?=
 =?us-ascii?Q?wKXN7DYopZ01FTHzOZbZYazW2rXwo67sRA434Ba+3Ztt9HI83XxaRYaCbp9x?=
 =?us-ascii?Q?PzKdUSXPTEAJ0FQZO8MDTZ/Prfn7n82iKZTmGAIpp1NCpFXiSyo3YRb3U53p?=
 =?us-ascii?Q?B3wU/O2DQ1PpmLBdVvf1aceLBRZKlI7t1eqZkL0PZ/QaYp4pv5vXcuWPeRT7?=
 =?us-ascii?Q?FmguxLTGJPaMSR7aaPqEUCnGEhVB7MmC0gr3XW2ne5E3+3po+jF7I2x9Jjgx?=
 =?us-ascii?Q?To+bK8JWcyOOA+Ai3t1AYlcE9uJUfUUOloqWHSER9RnWrXKObV5bGMwEdp0J?=
 =?us-ascii?Q?ZdkHgnWykpHygCai1xlhGyi9u8IlFLvkPsnxTOXNDirVioV3+bVo/LCJhU4s?=
 =?us-ascii?Q?pSoozu2EUP65YMJlGOGEvx4nNcO8EbwHUn+V+SA6sa7IB9+eqTCMQh3Ycq8C?=
 =?us-ascii?Q?08gyigF91yxQRlNxlNsh4H/Ynfi7?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0DE8C7645B44304CAA5A11101A9DE401@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5428
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	43a40a48-98a3-4d60-4dcb-08dd4765a297
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|82310400026|14060799003|36860700013|376014|35042699022|13003099007;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?8F8S7Lz93WRWr9uN/i0yiviK51/Bu7tre3iYW6EkkyDQ9w51p6Yy3k6AyeX0?=
 =?us-ascii?Q?DHafCr9i+znnyMFaRSw6gnXT8s/uzbyfIp7vzcJHWoJdw25m9ylFJ8WOtGKW?=
 =?us-ascii?Q?bWA3iidx5GvdvlGnIPwvt19GvzV1kz+Sp83DTFA2rIlVBzWavbsDbj1CT0WJ?=
 =?us-ascii?Q?gzjov8JcqZXmYpKtWbsUCe2PRf4TGHzkAFZV5Mh7tu2wYJ5UOQiMSMrMn2Ha?=
 =?us-ascii?Q?nbGCDJfZzkMMxak9wcA3Pr2YAwnFY5Wlbvu2ZB5ox3hL43hel0dSK4nL09nj?=
 =?us-ascii?Q?lbg6SdluWMtWYwafOw9JwkvI6+2b4kZWyoAkIaVDzKA94Anx+vteJfwIE7gv?=
 =?us-ascii?Q?6Vk3bCtfsxE3vfl+OGUZ5Ls2BKkTFSLMZdJ7GVcGZ641Hz6AWNUfTfsEFbAb?=
 =?us-ascii?Q?FP/Z3LVL530X8I3Sfej35IspWRPMcHyD501On7ZXurzfZu8yU7wqG8fNU2PQ?=
 =?us-ascii?Q?X3PKF2hNDCYHuqks8r4yC0VwTa+dr2zCltNtQeDMOzsokINUHYgDhB9HSFYj?=
 =?us-ascii?Q?BQASyBzOF3lXz1+fVGMA+oDEJXl8rR/G5dYwNyVSKZSPUB0ScORzk9sMwN7L?=
 =?us-ascii?Q?JZpcXGnFRD9WNdvyCnDb3a0T8Ei1VmgDCeTHsN+ARY00GTc/xhRWr/Df7N2B?=
 =?us-ascii?Q?QLttpyfcSFvC/KD0AUWeHfkgnu2abIjsLhuIG+0ZAzp8F0pHmTj8QnInUly1?=
 =?us-ascii?Q?zqQo2hH2fNagFkJwLBA42G21gC3k+y7E4hutplDzlHSuAwKrFjg0SpavLImE?=
 =?us-ascii?Q?D8gsiF0mWCzmu7IpGoTv8S1r8mFxj/77P23dpf9O0r9S4FShCOPXrqZjKIIz?=
 =?us-ascii?Q?ZZ5vcgpGlGiwnP77QsAE6GqDDdkEwZAzOFzeEPU49yhDcpY/Ni7a7lpO7FFi?=
 =?us-ascii?Q?0KyYH5HT9myrHGg2T262NxFDzZXE6GU4wYctQIS9pMx0jpl8AEdZeQbxFwOW?=
 =?us-ascii?Q?1mUD4AxpMh4AMgHCybSFvq0jkNP5vWtnqbffuD3qNMsowmzTQLEGgNchJE05?=
 =?us-ascii?Q?I6a3i1vVknERF3gc9jqczf9NA7Ig6LXycdLyK10vZYLBglmGT/qzMOA5Wm7Y?=
 =?us-ascii?Q?07XtLGag2pa+J30kvIv8sx1irbhrmDosCwWIq3xPhnPPx/c/LqzEK+FBzNYa?=
 =?us-ascii?Q?vwUJcDOC721dxJrGcbT/sYHjclr0lPOU+qm8RNMbdNlwdvqA29Eplroh4WGR?=
 =?us-ascii?Q?YnBfQhfYIE2Yk09jykSEzXlVYicqMB0itoBjkfOo/zBVzn4M/gzcuie8hiWp?=
 =?us-ascii?Q?WpluRWooOvbgEf6nGjvag/bi2OW7Y+uwkdmoVDrQ/1FQQfecfbL0Mc7O8Srt?=
 =?us-ascii?Q?BAKkn7jGAIA/3O1KbNN+pVuPSLDl/Do2DWUFzvwS/aSPdnIjWmd4WiUYlab2?=
 =?us-ascii?Q?eiM1fi2wWnA8hIWf5VODi1Xbh+qTNB4PDx7L6w+cpSIyjtiZhebOhvLs51+r?=
 =?us-ascii?Q?3rvY6DALJbg=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(1800799024)(82310400026)(14060799003)(36860700013)(376014)(35042699022)(13003099007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2025 10:53:27.8836
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c2823648-67c9-4453-cd4f-08dd4765a73b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8656
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Feb 2025 10:53:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13529

On 7 Feb 2025, at 07:48, Mikko Rapeli <mikko.rapeli@linaro.org> wrote:
>=20
> Hi,
>=20
> On Thu, Feb 06, 2025 at 05:24:51PM +0000, Ross Burton via lists.yoctoproj=
ect.org wrote:
>> The genericarm64 machine sets SERIAL_CONSOLES to a number of potential
>> devices:
>>=20
>> SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;tty=
S1 115200;ttyS2"
>>=20
>> With sysvinit this turns into getty lines in inittab, and with systemd
>> the systemd-serialgetty recipe creates explicit units to spawn gettys.
>=20
> So for systemd poky-altcfg genericarm64 images my patch
> "systemd: use serial-getty-generator on genericarm64"
> https://lists.openembedded.org/g/openembedded-core/message/210938
> should also work around this since build time SERIAL_CONSOLES is ignored
> and getty started by udev to the correct serial devices.

Same problem exists for sysv though.

Ross=

