Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEA9EED621
	for <webhook@archiver.kernel.org>; Thu, 12 Sep 2024 16:46:34 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.68])
 by mx.groups.io with SMTP id smtpd.web11.52860.1726159588388761036
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Sep 2024 09:46:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=o5Hle54m;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=o5Hle54m;
 spf=pass (domain: arm.com, ip: 40.107.247.68, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=XAxwqiVAhUwGFX0OjeJN9+ixPpIVIaCb7w+LJI4JSHN+UfJrZsADos3wrPwgxHiH38E3LJWu0juAoEzh9+PmWIOTDKo5Xd3frm6ktzukzWkgrHIerMw/Py+StSNuGPLAnXyVIoAL4zL777km5HGgoGNlRL0jkyS5B+j7yB8PXSLHIQEWh/F30PcsJ3MPqi7WvWANHAHDj55gNXNsmQvupFOIzhD8M5e+FX3rXPv5b0dPGzV+0fXFmpjLp3zGWVZlu/+FGkl98g1oZVdfbypXawnSorzMoO7hItUWyMeZkm3GSTLGGWcP0PJJ7uqeegmWXRBLXFWfrEY+Idjn0XYJFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkazKnR8ZOaFevR4HCdf7dYNlf96WWqbLLakQb3yk9k=;
 b=uNntiVBk69In00wfDvyoTQiRyR/pxGQzj8TB1IYWTzWqnBvYsoSPKXFTGihSe/dK6b78+npHYUkbof++UM04bTsintLfeQnFdMke2ZZqclLnEB6BmFwFszK6t3g13LhatzVbK2wvefzJs8tA5nFA7TVD8/p5yQd2GZevBWv50zgJiZwTcC0Vz1vZyjkgHeTow6k61JlPL0R5jlsyJnZKay2yUosuluHTfXPDUyjrVgOY5o6cPmHT3cSxvIneD+dDZnovT0kh0hAxCjY86RkS3CONC9o5DA/s2DQLQYZ/gFD9LE1jClBgNBnsKOpKh6kUMVQn3W8PzCB9NmwfQahsVg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkazKnR8ZOaFevR4HCdf7dYNlf96WWqbLLakQb3yk9k=;
 b=o5Hle54mcf6Zpc4zReviEZFT0SJwncu1GZ2K/Mosvg0C31oMxG1h15/yUBtLeFiN/YbpP8O3E3m+8TXYs07YPNm5VBRcAg+3+GoiAq2Ka8B+7/ZiRZPmHo/g3E8bwQhXYAT4XYisogOioXLtmJhuBGELhEv7CFkpoU+BLw2jkeY=
Received: from AS9PR06CA0691.eurprd06.prod.outlook.com (2603:10a6:20b:49f::8)
 by DB8PR08MB5484.eurprd08.prod.outlook.com (2603:10a6:10:111::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Thu, 12 Sep
 2024 16:46:23 +0000
Received: from AMS0EPF000001A6.eurprd05.prod.outlook.com
 (2603:10a6:20b:49f:cafe::70) by AS9PR06CA0691.outlook.office365.com
 (2603:10a6:20b:49f::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25 via Frontend
 Transport; Thu, 12 Sep 2024 16:46:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A6.mail.protection.outlook.com (10.167.16.233) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7918.13
 via Frontend Transport; Thu, 12 Sep 2024 16:46:22 +0000
Received: ("Tessian outbound ee7a81b3b7b9:v441"); Thu, 12 Sep 2024 16:46:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9e3bd6af4b16fcbb
X-CR-MTA-TID: 64aa7808
Received: from Lae6e18463433.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 75DE1331-A0DF-4B4A-AB41-DC11664CB21F.1;
	Thu, 12 Sep 2024 16:46:15 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lae6e18463433.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 12 Sep 2024 16:46:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DFXIOZV54VGf+7yDBQ9Yqisqz7TOU+WzYVXXUM+V6VrXdkdbnAwfxCBviw5iaz2W2VHb6raMv0/omvf1+PKV501rEQKenq3dKn0QIvdudkJkhkAmis9z/m+f7YxPmmYM/FEy23HKgHzBmA6eU6ek2lgSfTmk5jqRBadfT97lmPWuEMJGQAVm6wN6JF2Q2HCuMUR1+rkGnFgn1/GNJF4XjruWN/kDmBgcLBWk+wjymrn6bu2BtcMjU9o/Hr+KDh3BGa9tarv2l3tHTF7k7hUvLdXLQ3avb6rTkBVAZaPYbcKuF5lSVDiw5vQQGK1R0KTiKOrKb/KNA4KWemOpVfDZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qkazKnR8ZOaFevR4HCdf7dYNlf96WWqbLLakQb3yk9k=;
 b=bKUy0b10bs1SUHstx12QX1bFwJ9918kvlQ4oz2qL4jC8HdvLiDJFmOc2RooCehP/I9Q7f7WfxP7SC8GtuwKzczPxEVpv9BVYDU0c0wxxRoiqT7qTx5++lEC6Hal4k0sGositU8xAIDTFINuMAfpbni/TRLgeWIiTpWv6Cs+m03fspDNXei7uxbbvEmcPzLFq42zjm8qo4o/6viuaLQtBr3r32drwQ0TPkhBpPDPOiQ+fy6KawOiwSMmuvGbMfN56OTHGcSzwHPbE7bt+FHfUkkp7QXkwBo1VQUSiG5DoGeEZuBXMBZ9l7mbj72MJjr33szSTfqDIFf26ZgxDQqpucg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qkazKnR8ZOaFevR4HCdf7dYNlf96WWqbLLakQb3yk9k=;
 b=o5Hle54mcf6Zpc4zReviEZFT0SJwncu1GZ2K/Mosvg0C31oMxG1h15/yUBtLeFiN/YbpP8O3E3m+8TXYs07YPNm5VBRcAg+3+GoiAq2Ka8B+7/ZiRZPmHo/g3E8bwQhXYAT4XYisogOioXLtmJhuBGELhEv7CFkpoU+BLw2jkeY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB3PR08MB8844.eurprd08.prod.outlook.com (2603:10a6:10:439::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.12; Thu, 12 Sep
 2024 16:46:11 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.7962.014; Thu, 12 Sep 2024
 16:46:11 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Ross Burton <Ross.Burton@arm.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] genericarm64: don't pin to linux 6.6
Thread-Topic: [poky] [PATCH] genericarm64: don't pin to linux 6.6
Thread-Index: AQHbBS6eCtcQffsEukiQLNpKUjzehLJUXCEA
Date: Thu, 12 Sep 2024 16:46:11 +0000
Message-ID: <ADE2E25C-889A-4697-B0DC-5F0680B8F4CA@arm.com>
References: <20240912161226.4022231-1-ross.burton@arm.com>
In-Reply-To: <20240912161226.4022231-1-ross.burton@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB3PR08MB8844:EE_|AMS0EPF000001A6:EE_|DB8PR08MB5484:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a092051-395e-422b-c801-08dcd34a6f1f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|4022899009|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VlVaNnErS1BmeDFGajVwd2JMTmRJVUpQWmJzN2RoNHlwMzgvV2svRGdIZHJh?=
 =?utf-8?B?SzlsaE5TL1VvWEhXM2ZaVWI4MlZtYmVUaXNMOWN3QkIwZ3NLNlcvb2wrbG9B?=
 =?utf-8?B?SldSYkJiVnJEYkFqZEZzL0czbWNzTTRaUzRmZmxKVWE3NHdKVGtjcUw1aElT?=
 =?utf-8?B?WUhsSE8za0dnMndrTyt5MkNWSm5HbWEvT1NxcmtHVWhubm4rVVVveCtraHpW?=
 =?utf-8?B?OWZ1UHBRU25iN0hJeHlBRVk2b0h6S2MxcXQ2K3BvZStqOUZzT0ZGbnRncTFS?=
 =?utf-8?B?L2FFNUtEdjBQZEsrRXc1STFxZDhZSnNTOVhBaVk1WU9sankxWXg3QkI0Vk94?=
 =?utf-8?B?ZDJySnU4aEhJN0RFQjRDZmk0M2tzK1Foc0dYUG1sR1hDOENKRURSR21OV0JJ?=
 =?utf-8?B?Y0tmZVRtRk9BZHcrK054VTVwbVV6ZmRZSUR4cmtBQ3pBQ1dCTzN1S3FwY3ZS?=
 =?utf-8?B?bjJxZVlMa2h4aUVVV2lJT05mR0hOTzlieVpVZFhPRUk5NTVnSUM4WUlET3ZI?=
 =?utf-8?B?czM1ellQMTZNaHduWmpiQjQ2S2dmdTd2ZkZTRkU0U0tmeFZxSDNIeVZXY3Vt?=
 =?utf-8?B?MkVYb2hDQ0E5OXZKMEtCZFlWQmdtejRTWTZTYWtaYm53bjZIWUtnY3R4RnQ4?=
 =?utf-8?B?WDdBU2VlY1BURFBQTGxKTjRqektFdTE4dDcvOWp3cG54SWtjbHBMT3BFby9s?=
 =?utf-8?B?S1UxZnB3QTZpTlFqOFFLcjhRaGNaYWd4dGppZkV5bzZ5aWoreGUzSUErZG5V?=
 =?utf-8?B?YzY4NnFjejkrVS9tK0NTaTRTQmEzajdiWUh0Sk9YOEs1UHUzUnlYckdDTEhw?=
 =?utf-8?B?MlV2cDcvUkVJWXF6STlVNWpNSVROVmMrNEE4cWxhNjVnZFpVdzJDVnFFYWQ5?=
 =?utf-8?B?eVBFcDFXeDJ6Ti9LSUF4WFFUZjYyWWVZVmF5QVJnYlU0M3hTa2MxS1A0MUpj?=
 =?utf-8?B?Z1hCc3NCcE9SVk8yakRrVU83RG4vekFKVzZCL3pSclNJNjVvV0hpNUlGNTlZ?=
 =?utf-8?B?TzdpQ0N3KzZkOVRuc0FyblJBNWZPRjRaREF0cm1BYWUxUTFTM0VJVEtpVDFS?=
 =?utf-8?B?ZCtLUlh1R2NXb3htTWN4a3Vpb3E0STlWbDNLSThtVWdsOHQyQ1dmRDIrQm8x?=
 =?utf-8?B?T2o0aHMwU09MRnlPUVNxWXdabmM3dUQ1VnZrb3pFSEtVZHh3Z0hNeUR0Z1dE?=
 =?utf-8?B?M1llOE4wbmQ2dXZLQ0g2ZDErVyt1VmgwaGVLTW02eWlObjNwOHFIOGg4V1RY?=
 =?utf-8?B?d0NJY0t5L1B3bVpqWVB3cWI4Zm1YREFESmR5YzEvdi9vOGVHTHR0OFZDc3ZC?=
 =?utf-8?B?U3RwZDVTcU1QbDlZVzF5cEthMGVBN2tRV1BpQTN2c0tEaDhyRHdvTHJ0S2xV?=
 =?utf-8?B?WXJoLzRNMFZvZ21lZnJ5SERocWhuUWpnV1UrVDcwYkY1cE1LQmJlSWJzYUtn?=
 =?utf-8?B?WUtIbjRRRC8zVVhPNVBGdDNSczhKV0tFb3lxamRXeUh0NjRNenJqZmEraFEz?=
 =?utf-8?B?RCtlSStTeHd0MFNkam8rSWN1S2JBcDFzSXZDTmlsaFVjNlFNQkZhaFZRN2hD?=
 =?utf-8?B?NXJEU01TSk9FWEt3SllMTGdRUmg2ZzJPQnRnYkd0Szc4MHdFWW9TcWRodE5i?=
 =?utf-8?B?MCtWOW8waU1kc1NlY3NqSlUybTJjM1NFOFp4aDRTTUVGWkZnTFY3RGRrWHAx?=
 =?utf-8?B?eWtsVjRwb29BdnpEMkdGOFRjV1lranFZQzh6YXh5STJJQ3JWNlNLREU2RFVT?=
 =?utf-8?B?S0JDaEZCUzF4UklZajRlQXRNYjNFWnVvY1REU0sxRy9HblhURVgwTUxNYyt6?=
 =?utf-8?Q?d0Kigp6YI20v1xJk4yTZleyeGQPD+HKRAMD5k=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <F91EEB8D5EC6DD42A05C8BE327A876DE@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB8844
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A6.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	81560f4f-3220-4021-71cc-08dcd34a686d
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|35042699022|4022899009|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ODNxeVV4NVNRK1pKV0hCUCtyM2hUZUdMZ3N1b2w2NG1Jb0xSSk9xMzV2RUM5?=
 =?utf-8?B?Y3JtR01jTUV3Y3JCdnNmbitkM1piV3RldmkwWFVWbVFWUUVDSGhPRWZrTTRs?=
 =?utf-8?B?bGFFUnNGL2Y0QmtTanRUZVBuUjJ0NER3b3hodlVmMjhpbUJTZGRWK2xvUUN2?=
 =?utf-8?B?MEp3bkFETWI5c0Z4RDYxZ1VLdVdCZHAycHBJd0RoL0hTKzcvSlM4d1o1WXpU?=
 =?utf-8?B?d05TVGZKM0VWeHVXY2RxTG1HRlJRTUpPQk05R25Wc1N3K2xRNERtUFBRZld5?=
 =?utf-8?B?S04vYnEvZGR5bTRBMnVtdldadWpnWWlnQ1FiTC9uSzZOanBKc0dUSStibHF4?=
 =?utf-8?B?RVlNQS9HenpDTGZXaVphOTAzaGJZVGNrYVhnZk5sYkxyQmZFWVRJQ1BHN0Za?=
 =?utf-8?B?d0pYNHE3SFRHQTRISmU2a0hUNU9HWUtuMU5XTm1mRTVPaWt0bFVjWFVBa3d0?=
 =?utf-8?B?VlMyYnhhTVJJb3gvRDNRUSs3ekVPRDIrK0VtMnlIRlU1WGNPd2pJbzlwMjRV?=
 =?utf-8?B?NkZaMXBhVE5SM2dyaWlJZkNFSWhKYnNwQ0lLNTZMSWxjUjVReDFlVTV3S1Zm?=
 =?utf-8?B?OG1wMzVCVElFVnJ6bFlKeFNzdjJ5SjArSndFSDAzZ001Tnc2aUw5QWVZdElv?=
 =?utf-8?B?TkVSNS9IVXpNTDVMNi9KemJjOVdNYU5OQUtYQnhsTzNyMWovWm5IdWZnMU5x?=
 =?utf-8?B?Qmdxbis1WXZ1N0F3c0pPTnRLYWU2YWRqcFE3ci9yVVE2b0JKSkl3a2hnVmp2?=
 =?utf-8?B?UXlWNWNUeXRNNzFMK3pjSlBobXdKR2ZEeCt0Tm9GY0lGeTd1NU41QUdMTU4r?=
 =?utf-8?B?Y1RPWXJvR3RwRGZyUGRmQmxLUHJFaU0rN0RNNVpRaU94RlVqY1pxYzNQSFZ5?=
 =?utf-8?B?VHFGczZJd0U1VytEc3NDQjNWczIxMzk2UmVFMUFsUlpodkxBRFpxNERpUndj?=
 =?utf-8?B?Qi9GbzNwTFp5T3R6azhZSjRoWkl4RGduUXlvNzZxR2h6MWJ5MXJjTzFwdmxH?=
 =?utf-8?B?ZTQ2K05oQk9yRC96dm9LMW55bUNCcDlYRUdhckt6cExFbW9pTlU0by82aTg4?=
 =?utf-8?B?SmM0bGhVQXF1a3hzSTFyWS85OFVtQ2U5eHhqaUdJK2NnMXF6elNqa2p6c0Ji?=
 =?utf-8?B?TUduVVdQdnBtTWE1MWtubXhDSDVJcXl1VzU0UEFYZkFWeGp3eHZQMzBLOHBD?=
 =?utf-8?B?dDNVL2Y4ejZsUXZ6TGd0Q0xPNG8xRUpRanVTUmhwczFkK3M1VVlUTU8wNVEx?=
 =?utf-8?B?TzZDSTdJS3l2RmFGeUxOOUo1amh6ZGRKSTlZR0pSeExIM2t4U2R3eFFqTlNY?=
 =?utf-8?B?eVY3OE50anhXTUhCeTY4dFA0dFZkdm5Vaml6VUJZdExrellIUkUzQ3ErQVUw?=
 =?utf-8?B?cTRiYlk2ZlkwVDdnT29jRnZNZjlCdmJCQVIxK3lPT3BGbVJDcGFicUhIZDJK?=
 =?utf-8?B?U3Y3aTJoUDBLcHFKcUJCNVVibW85azdHZ3BBNTRXdzVKN3E5Z1FiNUxpdkVo?=
 =?utf-8?B?elVQTXpERVBmR0UyaFE2bGk5T1QrYWZ3VnJ1VE96ckFtV0xkTFdON3NwSURv?=
 =?utf-8?B?WUZnT0VLM2ozelRIMUVYUm9UM29ldGRCVHE4ajVLVEVscUJmMFVBdithbXJK?=
 =?utf-8?B?Y01mMzNzUlRyNzJLK2NpekRzTkFMV0dNTTUzQmZ3dStvOFdLYXpBYzQxS1F2?=
 =?utf-8?B?K0Q2ZEJIOFFoWkxDRmxyWFhxd3dmMXBMWjZvdHo5TU5LOEdDSzlsQzJ4bFNT?=
 =?utf-8?B?ODBUSmQ0dUJMeVIyNGFodVdYckNkWUdmVk9XREVEVWpNZWZ2VjhrVUpuTzUw?=
 =?utf-8?B?c295SjRCenRlb0VwL0U5Sk93UFdFbGszT2QzNFowblZWT2ZHRkkxaG5sdUtU?=
 =?utf-8?B?NDMzMUJxalV0Q2l3L1E2cVBWaHlsTmRMZEN2TElZa0pBQ0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(35042699022)(4022899009)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 16:46:22.4537
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a092051-395e-422b-c801-08dcd34a6f1f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A6.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5484
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 12 Sep 2024 16:46:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13436

RWVlZWVoaGhoaCB0aGUgb3RoZXIgQlNQcyBpbiB0aGlzIGxheWVyIGFsc28gcGluIHRvIDYuNiBz
byB0aGVyZeKAmXMgY29uc2lzdGVuY3kgaW4gbm90IHRha2luZyB0aGlzLCBldmVuIGlmIGl0IGRv
ZXMgYWN0dWFsbHkgd29yay4NCg0KTWFpbnRhaW5lcnMgY2hvaWNlIDopDQoNClJvc3MNCg0KPiBP
biAxMiBTZXAgMjAyNCwgYXQgMTc6MTIsIFJvc3MgQnVydG9uIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxyb3NzLmJ1cnRvbj1hcm0uY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiANCj4gVGhlIDYuMTAgYnVpbGQgaGFzIGJlZW4gdGVzdGVkIG9uIGJvdGggYSBCZWFnbGVQ
bGF5IGFuZCBxZW11LCBzbyB3ZSBjYW4NCj4gcmVtb3ZlIHRoZSBwaW5uaW5nIG5vdy4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IFJvc3MgQnVydG9uIDxyb3NzLmJ1cnRvbkBhcm0uY29tPg0KPiAtLS0N
Cj4gbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2dlbmVyaWNhcm02NC5jb25mIHwgMSAtDQo+
IDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWV0YS15
b2N0by1ic3AvY29uZi9tYWNoaW5lL2dlbmVyaWNhcm02NC5jb25mIGIvbWV0YS15b2N0by1ic3Av
Y29uZi9tYWNoaW5lL2dlbmVyaWNhcm02NC5jb25mDQo+IGluZGV4IDhjMWIwOWZkZDUwLi4xY2I1
ZTQ2ZGNmNyAxMDA2NDQNCj4gLS0tIGEvbWV0YS15b2N0by1ic3AvY29uZi9tYWNoaW5lL2dlbmVy
aWNhcm02NC5jb25mDQo+ICsrKyBiL21ldGEteW9jdG8tYnNwL2NvbmYvbWFjaGluZS9nZW5lcmlj
YXJtNjQuY29uZg0KPiBAQCAtMTIsNyArMTIsNiBAQCBNQUNISU5FX0ZFQVRVUkVTID0gImFjcGkg
YWxzYSBibHVldG9vdGggZWZpIGtleWJvYXJkIHBjaSBxZW11LXVzZXJtb2RlIHJ0YyBzY3JlZQ0K
PiANCj4gS0VSTkVMX0lNQUdFVFlQRSA9ICJJbWFnZSINCj4gUFJFRkVSUkVEX1BST1ZJREVSX3Zp
cnR1YWwva2VybmVsID89ICJsaW51eC15b2N0byINCj4gLVBSRUZFUlJFRF9WRVJTSU9OX2xpbnV4
LXlvY3RvID89ICI2LjYlIg0KPiANCj4gIyBJbnN0YWxsIGFsbCB0aGUga2VybmVsIG1vZHVsZXMg
aW50byB0aGUgcm9vdGZzDQo+IE1BQ0hJTkVfRVhUUkFfUlJFQ09NTUVORFMgKz0gImtlcm5lbC1t
b2R1bGVzIg0KPiAtLSANCj4gMi4zNC4xDQo+IA0KPiANCj4gLT0tPS09LT0tPS09LT0tPS09LT0t
PS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAu
DQo+IFZpZXcvUmVwbHkgT25saW5lICgjMTM0MzUpOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvZy9wb2t5L21lc3NhZ2UvMTM0MzUNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xp
c3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTA4NDE2MDY5LzY4NzU4ODgNCj4gR3JvdXAgT3duZXI6
IHBva3krb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcG9reS91bnN1YiBbcm9zcy5idXJ0b25AYXJtLmNv
bV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gDQoNCg==

