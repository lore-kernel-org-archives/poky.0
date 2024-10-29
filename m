Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE7BD2AB30
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 12:10:51 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.83])
 by mx.groups.io with SMTP id smtpd.web11.17851.1730203842385627541
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 05:10:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MeMsbt+V;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=MeMsbt+V;
 spf=pass (domain: arm.com, ip: 40.107.241.83, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=odRRc/Tyyotpd6Pe+8Tq50gTq0WVgL+bkljr8QO1OucqLlko30zkUnOfbUAbA7vMlPpZQpi5ot4ALDE0Hv4bKAeKL95X/U07gtNlIrPZOEhp3s2LGo+6E5ccXt780kEHiPT2u/ypSmSL0oybJoWDE77Al5gMq4G0Iht92zNPHnPaSGw2J4s0hDPB8UIoSF90x7QxTs8y26HJ/4uITqCeXaJ+XAUEuSJWLThUEwgxt7tDBdQCYNq0BacexcHVDSjSefqike+qf9CKgJVJAY/WfVSxOXurxc6gyJcybTUFMnRLrtmJdKIr/JhfT/FO4gihQ4QA+CWfQKz/szuwCSKMkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ypzDRvDKesfFNEum8PpHgKyQHfHTV3lQP5jTnDS1nhI=;
 b=OCL3gTwqsjHG1h8hzb7oDIbmTl84n/nfSOjt2e3O9QpisagOmNFw+sy1EFkiXvrlE+3ZRGIjBHciqsjSqhRzdtGxJeW6AfTDisXfM7YlKXNn58e37S6zXWAvj8/Wv84fksoQKE6uni/CsawUw4tYaBY/CUlHI+89GYCQxJlLTSXPrbVEGkh/7nWPb00guJ6sCg80mbkgVN+jNwMLLioxF9mApfw+28TlUf8oWyvFb+QlsavU2OFtRsjXbMQkfdMypO3Cdt5ygg2MD+ZqCNAgAvHSR5Dm3K3HqCX7u3i4kuNEn+TCQQcfOsGR60afdJHu198kwscu85BwqH3GfpZcvg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ypzDRvDKesfFNEum8PpHgKyQHfHTV3lQP5jTnDS1nhI=;
 b=MeMsbt+VXY8ohBgwDA4DMwzDmABv0FbXwD+iKO8X80V2x1bb/nj/xzIam1EpvWWaJOIB/g8RS5Pug9276dO3U1Vh64+9rsglRRqZ7ws83clcC+Sd/bDTRVZ4Vf01V/qMlMe7HIweNPfhPPTw9HkPPeqyXLROk0ZNDyxXVVBWHRY=
Received: from DU2PR04CA0174.eurprd04.prod.outlook.com (2603:10a6:10:2b0::29)
 by AS4PR08MB7951.eurprd08.prod.outlook.com (2603:10a6:20b:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Tue, 29 Oct
 2024 12:10:38 +0000
Received: from DU2PEPF0001E9C5.eurprd03.prod.outlook.com
 (2603:10a6:10:2b0:cafe::d9) by DU2PR04CA0174.outlook.office365.com
 (2603:10a6:10:2b0::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24 via Frontend
 Transport; Tue, 29 Oct 2024 12:10:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C5.mail.protection.outlook.com (10.167.8.74) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8114.16 via
 Frontend Transport; Tue, 29 Oct 2024 12:10:38 +0000
Received: ("Tessian outbound 8223600b7a9c:v490"); Tue, 29 Oct 2024 12:10:38 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ded9aac18bb595f7
X-TessianGatewayMetadata: ZRAfUVf2/LuBJE2vP9jgVHIidRicfDYKeUy5qVUL3YPrUcTq8gag5n+XqTxKVzr92/K9GH+nqSaRoIoFkNpQsOPT9ZykTUzQ8iAwMSTAZycZ/Dt8T/uIZlfQhAW1TZkXTHC7sJXFjkWXEk9zMody7BM78mRW+HEPANe7FVPW1qc=
X-CR-MTA-TID: 64aa7808
Received: from L1b686b91a7f6.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 39AA2E00-832C-4435-A604-1029858DFB78.1;
	Tue, 29 Oct 2024 12:10:31 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1b686b91a7f6.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 29 Oct 2024 12:10:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YUbdke10PHCpscCnM7z+h0JU96rA0Eb1bEOLvyhuWtR311IwM0lqt3ra7RBbd1Pk1Kr7COxmkT0jeNaX63TzRwGpGM1DS8vDgnbf0EgVYBXlaem1543Q8sQSSkwwytsCTqZ7MHxruLufXLLIZX929MnCVq6JKXgnCnGuyEzhyXoWbnZBks+pFD9x9L5F2OvPivfdOOgkvwQBe2hCesWEltUVlKBNsr5+gn6Pmq6AaVIpDdtOs8ZTo/9fBstEgGfOuRm6BVI6ed+Mfliesi4HmwdpNw0F/dRAclQ+2XG266Tb8LntPgA1lZqQ3pZuJWkRH0e9z4bZ0J8ClgQS84KUNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ypzDRvDKesfFNEum8PpHgKyQHfHTV3lQP5jTnDS1nhI=;
 b=oM9SSdU5Wra3O2yvWwE+ht2IhbxujhbdMeCZaS61BXiVbtfFfwA5X9IYifVAJkGol1aOhyc79XyJjrDJvzvDv4ix5eYbDlVb+7IPZKKBeoMcUTBE6lNVVhV1760a5p1RKy1sH8GqriXZzx+uaIdF0krSZHHOz+poBSJ7i151QF71uWpJmaWeLAOshANywwyEG+ft4o2KcAiTXdxAAJ1HdrZE1f7u648EyUDlVuOjAQwR3Jan4AqxUWvrgakHsh3wZ15EkIERIW1C1leaTHdHpWcllpKLPbrGmuAbOP2E5vwI+8lZg0BmdXNrXTpteeC3V/wyfemmVFRKO0iNCGBzYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ypzDRvDKesfFNEum8PpHgKyQHfHTV3lQP5jTnDS1nhI=;
 b=MeMsbt+VXY8ohBgwDA4DMwzDmABv0FbXwD+iKO8X80V2x1bb/nj/xzIam1EpvWWaJOIB/g8RS5Pug9276dO3U1Vh64+9rsglRRqZ7ws83clcC+Sd/bDTRVZ4Vf01V/qMlMe7HIweNPfhPPTw9HkPPeqyXLROk0ZNDyxXVVBWHRY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS4PR08MB7951.eurprd08.prod.outlook.com (2603:10a6:20b:577::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Tue, 29 Oct
 2024 12:10:29 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 12:10:29 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Thread-Topic: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Thread-Index: AQHbKdlxSQWbirwFAUW9aVOMGjLhV7Kdn7OAgAACPYCAAAFmAA==
Date: Tue, 29 Oct 2024 12:10:29 +0000
Message-ID: <CAB9A599-AAC3-4BC8-A4B7-EBF1915FABCE@arm.com>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-3-mikko.rapeli@linaro.org>
 <C8F03665-3B73-4BB8-9164-367F0F42C40C@arm.com> <ZyDPfSNniORKkPIW@nuoska>
In-Reply-To: <ZyDPfSNniORKkPIW@nuoska>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS4PR08MB7951:EE_|DU2PEPF0001E9C5:EE_|AS4PR08MB7951:EE_
X-MS-Office365-Filtering-Correlation-Id: 07eda950-310a-42c0-ec14-08dcf812b380
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?RllKSVppVHNqcW9BMjY3WEtvZGpBcFVVeEdqeWx3VUhIeCs0K092STN0TWFn?=
 =?utf-8?B?TzZ3bUFJenZ3Mkc0UmM4cVFEQlVFeDZWcGlPSHE5emdNdEpkVDNpaEJxZkZk?=
 =?utf-8?B?c1o0NlFha3BpeWR4V3BBRUlBQ3p5amtBR250QkdWS3RrajdwVklrMG9oT2o2?=
 =?utf-8?B?TUg3RFpJQUJPa3hSdk1HZUNxKzF4ekYxODViOWxGWU5SU2I0THpKMElpTkp6?=
 =?utf-8?B?TTZLOHhDVEEyM2grT1d5SlhkVzNrZ3pDU3ZqbVVKbGozbVFlaW9abllRU0ZD?=
 =?utf-8?B?cWNuVVloc1VMNTFHcUd1WFZsZCt1azJjM1dIV2RPYWdZV0xGMnFENWVTYUNh?=
 =?utf-8?B?Z1NteTBSeXFFVG5pUGlJSEhIOEhJM1hkSDVjNEdxVTc0S2lWK2JoK1Rodyti?=
 =?utf-8?B?UUtvYlNLbTRRbVRCVnUzdHpabVBLbHNqK1R4ZXNsdndqOWxCSkNucDU4V09m?=
 =?utf-8?B?M081bjVVZHFTS29yNzZTR2hmSWJIdkwvVVNIN1pMUERFdXhWcmNlczhyVkdn?=
 =?utf-8?B?UHdyQ3orMVNveDNBbWRqRWlRMmUrSUhRNmEzVXcvTGg4TmtmTTZMUUZ3YmFN?=
 =?utf-8?B?UkFIbXh0bTUyTTNyRWdRSzdaMGNrSHcxVHU3c3lDRHRuT2hKcTVIbjQ4UHlX?=
 =?utf-8?B?MDJiSmk3Vml2YnpVUWVmK044YTlhcWVtNUtFRHNmTEdWT2dVbEVmMURLM3pZ?=
 =?utf-8?B?UE9FRE54U2l6d2V5NEJDWlFrTndwTDBOUHBKdFN3RkY0N0MraWoyWDE0YTRa?=
 =?utf-8?B?Q0tpVXc4UHlXVWI4Z0FnRGFsaElSMUxVRmJua09pRGQ3NHFIVzJMT0hIZFpB?=
 =?utf-8?B?c0NYcDJLM2tCTUpSTlVKbHJUU3RhZjhxM21wUDBFWkpRQ2x4dVYrMVhmUkly?=
 =?utf-8?B?MTRLU0VVbWd0VnNEZXdrbTZSNk1qZThiWW5lcWphV3RGVWExMVg2cWJFWWhu?=
 =?utf-8?B?NjhlbDFWbVpYWkY5U2ovZTdyb0swN0ZxT3VNVG93cUtMc0J1R0FVT2lnUkpR?=
 =?utf-8?B?R3hiWGszdnp6TXNUODlVYnljTDRMYTZ5cjdTcmdPdU1IWEFvaXB1TjBBUTBY?=
 =?utf-8?B?STZ6dmpjWUVjd0ZnMC92SjF4bE41Z1NvVTVtY0lETjNmeHdvaW42NGlSUDAz?=
 =?utf-8?B?Uno2a0FCWmMvbVhBOXFJbUhaV0IrM2hZQ2JMYThDY09Hd0JnbXRIajBiOEV6?=
 =?utf-8?B?VzFqU0JCSmJQWk9QYk1WWWJSUVJkaHM2WVRhMzVJYlBKZlVWMzVFNVArY3lo?=
 =?utf-8?B?WHl2NHFtbFQ4eEFiMmVIUGlJQ3dMTVZZcGpLQVVTYUZWdmlmMHJMOHBVSEU5?=
 =?utf-8?B?QlNpRVM4bGdackRkZmp2bWlYUnVOTzBnOTduRnpZdnpvR0R1ZUZhQXdTVTMy?=
 =?utf-8?B?WU5uQkRhcUxaN2h4Y0czR2c1NTVaTktRUWtoZU5hcDdVQlVManl4OERmcjJu?=
 =?utf-8?B?dGVJa0dPTTk3YmluSWpSWlU4MnJsM0xCd3NkamJ2eHovL1grcnBxdEhoWHVx?=
 =?utf-8?B?U09kWnRnS0N6dzdJNURKQWZ2alZsME9pNm95WFhqNU1TTnJNSG15NG42MER6?=
 =?utf-8?B?UGJJczlCV05FNFBQUUU1TkdDVkpMZHBnZ3dvZ3FudUxhSmJLYmxkVm0zNWVM?=
 =?utf-8?B?bHFoaDZabWZjK2ltcTdmRDBDOE96d2M4OEdvNnhXa3hvdS9EeFFVSDVlQS8y?=
 =?utf-8?B?TjVPTEpXdzJBbmoyZ1dKREMrZlBVRVM1TmJEWEZDbEtvS25zSEN4RnptVjh2?=
 =?utf-8?B?UXgyUFRZMEZJM2F3eDVmMVhsa2pnWk56UUE4eE9QbDkyMXhUZWpTeHRMTkcv?=
 =?utf-8?Q?290g7S15i9HZWw3O7yBmxjh3hKfOedOHxzAiU=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B2B93B7E2178F647BE31F17165527A6B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7951
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C5.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bcbec10e-6580-40fc-5043-08dcf812ae1d
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|36860700013|376014|35042699022|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T1hpREtVeVRuaU9FZlZsdUpYdjMwT1FhSlhWNHpHMm9ZTmlCdURMQmcvMHVH?=
 =?utf-8?B?UHNrVkJLQytvaFU5ZWtlNU5WYi9YWnpKd1duLzFtK0V1TFJ2T0FoM3hiK2pG?=
 =?utf-8?B?VUg4SlZZSGo4WU5PcTFIa2lkcEp5N0w5NWdQV3FFbW04WnJVYnIrMGYrWHJx?=
 =?utf-8?B?ZkR3S1hqTnZpSVF1d1ZXeXlLdkdkVm5STnFEQXFueElsMmFIcklDVzR1aU8y?=
 =?utf-8?B?OG1UQlNMeEs2QXZJZG9EZlhGSVNlSE1kUk1SeVpOS3N5UzRGL1lDMFUzMzBn?=
 =?utf-8?B?R2VzdXQyRWVrcER0YzdzZVhKSCt6N0lSZlVjWnEvVWM4aERXSWdoUGowZHdj?=
 =?utf-8?B?bktlTmhzdnJqTXVKNm9UZ0NCb09HcW96c2xCTUo1eDVoaDBlM013aUJmZDJU?=
 =?utf-8?B?YjB3OFZFcHpMYTJuRExDSEJ1WFB1NTBHY2hmZGU1YTQ4NElnZmFuVm9uUVht?=
 =?utf-8?B?WE1jaktTRWoyU0FOQkFXOUJYRHc2UW91a20vbi9UMUVKTnlvc3ozVXNSZTdV?=
 =?utf-8?B?UXplaWFBUldSUEROTU13UThOUlpyUmhmQTV5S0JKb1E0eW83Z1ZmLy9oVy9R?=
 =?utf-8?B?bHFpZk1NM3U1cUFHU2E2MVJuNGUxaUo4cUpMc0EvOFREZk8yTEtKU0pXUXpq?=
 =?utf-8?B?c1owd2FmYzlsNzAvWExPUEM5VEtXZE5PMFI3c09vUVdwTFhKNE0rVXg1VnRz?=
 =?utf-8?B?Q05KU0JXK3NYREtkcCszekN1RkFxdk16b0NMS2EvTTk3ekp2RnlZc0tubDlC?=
 =?utf-8?B?TXc5a2FRaTNQRU8zS1lPSks5cDk3UzVwblhmRHc0N1BHUzV2d3NsbzRJdm5X?=
 =?utf-8?B?eWJGUU9HQ3dyQUpxZzVYZlI1REpFTXBFMEtackYvdmJBS2Q4NWQ2WlJOVXpP?=
 =?utf-8?B?blJGL3dwZWZWdVd0NmhxYitLa201UEZCUnZsYnRacXhSYmRFVG8reVBJSHlv?=
 =?utf-8?B?NzhWR1R1OFB4Vkg3a2dHZ3UvY1lUL2xTM01jdGJqRkdrOXR4ZmhHam9IVllD?=
 =?utf-8?B?RzNJZnFGWXUxRENFanBrK21wU3JkY1I0OE1SallIVXFrSWc5VjlncmN3NVlC?=
 =?utf-8?B?YlBMMU1IcG1EYlZ3TlFxaXZLaDdFMHo3Y2V2MzNuSEFoRm9kNWpRTnJORkRs?=
 =?utf-8?B?elNlUEVPLzhNKzZpcnRvc2NSZWZCa1VuUXNGa2pXWnhwL0k5UnNBNmdOeHVT?=
 =?utf-8?B?c3hTVTBWSnpOR0FkZU94SEI1UkRuUWpRUDc0bmNHQWFqand5T1dLUGJTWSto?=
 =?utf-8?B?QVQyenA4dVFvY2lMREtVNmpkd0tLOXZENEdBM0JCRGszV0hMK1ZJN2JkRyto?=
 =?utf-8?B?dDJxTUFKc0lhc2R1ek4xN2drMkw3cElZNC9tZTNwMklZUUF4UTJvSXRYUzZi?=
 =?utf-8?B?Tm1kWGR6clg2Lzc4YXRwUG5OUTQ2MVBVSXhBOGhrWHhPZW9xOUdseGpmQW1O?=
 =?utf-8?B?Vms1dHNCM29LSjdvcHZ2UkFrUkRUeVVhZWs4SWt4enk5TEM4VnZPd3ArQXBH?=
 =?utf-8?B?OTk2eEtkcVNLRDY2Z1AyMHh0M0VoSVBBdmU4RmhYalowY01wZFBueHROTUMw?=
 =?utf-8?B?UW9PRHJ5c3puR29KaWt3T1JKMzZDWmgwTVZsb0t2S0d1a2E2M1l1VzlrVFRB?=
 =?utf-8?B?WHFkQmZtNm9kdk8zQ0FWMFhwMFZDd0krWkxnWkJZQlozZWVtdmlhU2JuTG9z?=
 =?utf-8?B?ME1vTk9yQjhmaThBWkE5QUFWSkxPeDdtcXRncW5hekJ0bVh1STE0OTZOcmMz?=
 =?utf-8?B?ZUZpQXVTWGx4M2d6aTN0OG9PM2FhbUw2VWNhaW1IL1M4Q3VLS3RUS2xGcmRC?=
 =?utf-8?B?TVNVc1VZWnBUalhpOUdoclBzK0NuTkhrc29obWx2bDZ0Vzcvb2pQUjFTejFw?=
 =?utf-8?B?OFNVZExNUEhqaUExeUtodHdqSkJaZFlUMkhsZUx4a0VTa0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(376014)(35042699022)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 12:10:38.4282
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 07eda950-310a-42c0-ec14-08dcf812b380
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C5.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7951
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 12:10:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13469

T24gMjkgT2N0IDIwMjQsIGF0IDEyOjA1LCBNaWtrbyBSYXBlbGkgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPG1pa2tvLnJhcGVsaT1saW5hcm8ub3JnQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiBPbiBUdWUsIE9jdCAyOSwgMjAyNCBhdCAxMTo1NzoyOEFNICswMDAwLCBSb3Nz
IEJ1cnRvbiB3cm90ZToNCj4+IE9uIDI5IE9jdCAyMDI0LCBhdCAwODowNSwgTWlra28gUmFwZWxp
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxtaWtrby5yYXBlbGk9bGluYXJvLm9yZ0BsaXN0
cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4+PiArIyBSdW4gb2VxYSBydW50aW1lIHRlc3Rz
IG91dHNpZGUgb2YgdGhlIGJ1aWxkIGVudmlyb25tZW50DQo+Pj4gK0lNQUdFX0NMQVNTRVMgKz0g
InRlc3RpbWFnZSB0ZXN0ZXhwb3J0Ig0KPj4gDQo+PiBTb3JyeSwgYnV0IHRoaXMgaXNu4oCZdCBh
cHByb3ByaWF0ZSBmb3IgdGhlIG1hY2hpbmUgY29uZmlndXJhdGlvbi4gIFRoZSBidWlsZCBjb25m
aWd1cmF0aW9uIG9yIGRpc3RybyBjYW4gYWRkIHRoZXNlIGNsYXNzZXMgYXMgbmVlZGVkLg0KPiAN
Cj4gT2sgYnV0IHdoZXJlIGRvIHdlIGRvIHRoaXMgZm9yIGdlbmVyaWNhcm02NCBpbWFnZXM/IFNv
bWV3aGVyZSBpbiB5b2N0by1hdXRvYnVpbGRlcjINCj4gb3IgeW9jdG8tYXV0b2J1aWxkZXItaGVs
cGVyIHJlcG9zPyBJIHByZXN1bWUgcG9reSBkaXN0cm8gd2lsbCBub3Qgc2V0IHRoZXNlLg0KDQpJ
cyB5b3VyIGludGVudGlvbiB0byBydW4gdGVzdGluZyBvdmVyIGltYWdlcyBnZW5lcmF0ZWQgYnkg
dGhlIGF1dG9idWlsZGVyIGl0c2VsZj8gIEFyZ3VhYmx5LCB3ZSBzaG91bGQgYWRkIHRoZXNlIHRv
IHBva3kuY29uZiBhcyBwb2t5IGlzIGV4cGxpY2l0bHkgZm9yIHRlc3RpbmcgcHVycG9zZXMuDQoN
ClJvc3M=

