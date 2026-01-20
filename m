Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 000A6CA5FB3
	for <webhook@archiver.kernel.org>; Tue, 20 Jan 2026 16:53:27 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.35])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11044.1768927997838912052
 for <poky@lists.yoctoproject.org>;
 Tue, 20 Jan 2026 08:53:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=IOTR6r4Z;
 spf=pass (domain: cherry.de, ip: 52.101.65.35, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=et+1X2qSDuj+bgTID8XNEDuFBA9kjpRhXqcZCMdKj0ujAv7LpDFzCmHx41LGLmzVXUHeDK8n7CxGLL/cmJk/fPy2DM8njHzTnD2PLoTht+WVJHi9YYztLswf3h6fpRoNCb5kBrBpphJ77jYMhV5+s0c1EnowTMKFjUnQs7W9JBK7COClSUJOCa/4gZXXQNahmgd19Rt8qO7l+TLCBMd18uhQtU86kTl6djCIdfjyjifCzI3JaWTWVV2AWpRvHejUoGs6cWBbwmGpFVjzrZ9SdHjSb1e8CfiB9h/K+A4R3Dgwe1fZ4YXmMgRKwtQgCnnIj4oJ8yryvvsdqN6kbEI93Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYwe0Ot2s2G7UoI9+BUH9FK7vusfQ0xTgYalqBFo3v8=;
 b=toU+MlcpmR6LkX2pbN8j3sm6kfKyIsC/w3QFQNNeKKo9gBGz2QO6WmamNzGlLoLVsLUUC6D/fEdC6nXke27InfAJczasnOU7xWASwbbNZKk0Y09tqqwtUkr08Wb+8utFQEQUY5PlNTsguX0b8bu2/t8WUMA/1P1C3BtLm5pC/0WoAjR7mRnrZ50iO/XIYDhhtguNe/vaCNs86YQJRvYudhhyI8k0Rgs326zRZvd5M+nUNqkvsnpwnbA9crfqc9P83PbCzwI54zgZ3pkZzplAV0tCfc6PrfHrcpzJjd1+/ZOMWOgGes5bReNggyLZ77X/FLAuHxy4fR7qP4wyCKZNdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RYwe0Ot2s2G7UoI9+BUH9FK7vusfQ0xTgYalqBFo3v8=;
 b=IOTR6r4ZgeE5OPYYP9vicwJmLL7y+9gU5aarrJxHsx3jleCj9u/2uR/Ws6/hLpvl8kJ6ZRDg8AocEQPLlLGp3NgtTGIN/NGYNPS8b7YyE9eNCGj06RUFB6LlBsGkufPD87fXJ943VttdvYXC6VozrNgrINw1VcFvpcsTQG6DRvc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by AM0PR04MB7186.eurprd04.prod.outlook.com (2603:10a6:208:193::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 16:53:14 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%6]) with mapi id 15.20.9520.011; Tue, 20 Jan 2026
 16:53:14 +0000
Message-ID: <9a3bed30-b48d-4fd3-9e39-db2e1cab4c02@cherry.de>
Date: Tue, 20 Jan 2026 17:53:09 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [poky][PATCH] README: switch to released documentation URLs
To: antonin.godard@bootlin.com, poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20260120-update-readme-urls-v1-1-c622c6a74df8@bootlin.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20260120-update-readme-urls-v1-1-c622c6a74df8@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0428.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d1::11) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|AM0PR04MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 373384d1-30fc-4ba0-99ee-08de584466de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aWNTK0FxMGVRKzBwendRTFdINkd5eU5vYVAzeFpJcm5mSitMVEVsV1RHdy96?=
 =?utf-8?B?RG5qQkQ0YW9XVkQ0cHRxbUMxZ3NkVEJjMFJINmJja0Mzb0doZVl4K0Y4bFBt?=
 =?utf-8?B?SDBlMGFDMnFiZGhNQlJuamp0dnkyVmJmcDRSY05aZ1BuZm5TdWNqY3Fvcnl3?=
 =?utf-8?B?dFBZWnI4M0sxdnhENzAyU0d0TFMwMzlGai9oVktTSEw2VHdMNWk5dDBQRzBq?=
 =?utf-8?B?L2xMTVF6eXlPVGZ5VlBkNzMyNHI3QVBlTi96cFZ0RG40Mnk1d2NqYXF5azNu?=
 =?utf-8?B?TVBLNjJ0NXlGSkRRSFRRVGpIUndqWHplbFZnbm5taWU1Mm1GMUlMSnhKa3dR?=
 =?utf-8?B?WkgvZHBidXBqRnZSeVlnZ2Nyd2hMc1N5TjF5d3M4ekd4cy9IckkvUEI3UE1N?=
 =?utf-8?B?cmRWcnJqMUR4YWxQQTQ0c3hKeEJRaXE3Y0Jic0FhOXVmeXpTR1BYUWVpRUtz?=
 =?utf-8?B?cDh6RFY5TmJIY1o0SmxhS1BSKzR5K2FIUGx3ZmM5RWw0RDZ0REloSmQyUXJp?=
 =?utf-8?B?K2U4MFJYeWFTZ2daUG10V1NTaE1CcFdkUTVnR0pFTTV5QnY2RGRYdVowM2xi?=
 =?utf-8?B?SEtxNk1CWWY5ejNJVHJqVzFBaW1XczV1dWNic0Y3Y21uTmJqTkhTdGc3NS8x?=
 =?utf-8?B?dHcvbVAycGRxNXZwY2lGME0rMVVRcDBVZTNiQ2t0VXpwcUs1SXNoMUVFVS96?=
 =?utf-8?B?WlF2T0hnekRtZWpuSUN1R3J1UzNSamtSRmY3dzV6a0ZxTmxzVmozQzhsYWxM?=
 =?utf-8?B?bHpjOWhnS1V4U3BOMUNoYXlIVEM0UmZIY3h5VWFrdEZFd0VCWDJ0ZGxIL0pz?=
 =?utf-8?B?bmNKd1lzamJBU2ZRbEtEMjdONkNBU2pwejFiL1cwcmx0VlB2cDR4dzkzVkxN?=
 =?utf-8?B?SjFkZnR4NEJsaFN3aElwOWhuUjRpWFRBaTVTUlQ5ZWZkSkl0QWl4MnBTNWJv?=
 =?utf-8?B?TFZDT0x1M3ZRT0h0R28vaWtVSEJOUzUwT3RGZUpUeVVZa0JRNVM5SXNSdzUy?=
 =?utf-8?B?d3NBc3FmMDFSRWI2VjFaQWE3UHZ4K0RPck80ZlNpRlJYRHhEeklWMTJ5ZlVh?=
 =?utf-8?B?R2ljb3c0TjRjdnBRV010N3M1M09JcWNFeWhTTHhsTUtCbW9FYk5ZTTNrdmNG?=
 =?utf-8?B?NzdSUjZSMUZnN0hlbVdjVHhETUU1S2Y4NXkyNTYrc25qNTQ2TEdWaHJWUGwr?=
 =?utf-8?B?R25aVUl4NUVNVHovLzNsdmxRRXM2ZnRWVC9rSmVJK2RkTndGWEtMUlVLWlZo?=
 =?utf-8?B?bzRGYXkxbHFEK1pSbHc4ajVINlhJZ0ZzdnppWXBTNjhiWVovSGhhZGx1dmVY?=
 =?utf-8?B?UEM0REtGaVBTNXRiTXFCZGE4L3JyQ1U1VmRXVnNVUjlZemxmRVZHVUZ3dnU5?=
 =?utf-8?B?cnhYNzBHazVheCtiNURBckp0T1VaNVNBSDRKM3ZQUmdMV0FsNVRZMlIxWjE1?=
 =?utf-8?B?VmxPUUphcFJLWEN5b0ZDak9NUFZBSy9Qb3VheEZBNUF2Rm8vUlc1UkFXLzA2?=
 =?utf-8?B?Y2JyQ2VTYmgzRjM5SThoc3RtNllHOW5lRkhkMmV6M0NXY2lXRFV1Wm85Z054?=
 =?utf-8?B?TGdGTkZpcWxmWVJrdGRkcVYyMnNjSEFnZ1F4VDdxR3dabXZSc2owTDRlSWZi?=
 =?utf-8?B?KysrUzBvVWVlNm85RU9EQ0ZGWS8yY0lBeVhzQlJXVHVwTERuYXE2cjdCcEt3?=
 =?utf-8?B?aG4xbFdmL0F2bk5YMlR1MGovV3c1V1RUL2RNZ2pOQmlrLzJpVHFtVFdVNUUy?=
 =?utf-8?B?MG5SbVBwK09uWGhMV1VScWhPWGhVeU0rRVVjTlBzMW9HaUF0S091bngrUkdT?=
 =?utf-8?B?M2l4MFk0NFR4YXdEK3Vab2pQYnNqVVJZcDlDejdPemhrcmRkQjk5aUd1NmVP?=
 =?utf-8?B?K0VsL0F0Sk92VW1haTF6RzdBL1JQTmZ4VFFGTXBSZXBac25zUFJvV3ArSVFK?=
 =?utf-8?B?bHVBdXM5TXJlNjlhUW1XZE5jYkxkdHdUZ2x6citBbEZSdkhQMWxESWlLVzg3?=
 =?utf-8?B?TGduVjlMRWVkcXFUV2xpRG04em5BcUxyb2FaV2JWWHJveW51VDN6ZEdsb0xX?=
 =?utf-8?B?bTVLMlNQRU1oWFl2ek9rZVFTNGhjazRoQ3RZZkptbE90OXJtSTRITWY4YnJ0?=
 =?utf-8?Q?3m/w=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(10070799003)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aU9wMDlEUkl2YUd5UXcwZVBiL1owSTRvRVRhUm1wTHB1a2NlZWV0Ym5wclcv?=
 =?utf-8?B?Z2puQlJSblpEQXVTb012SlMvdndwcksvWUI5WkxYWmZmZWt2ZVlrWEdvaHR4?=
 =?utf-8?B?Ynl6ZWxzSHRGc3Z6Q1h6djE4KzhxQnZ4Vmg5ejlFSDV1UDBDdHRkUEd2SHhU?=
 =?utf-8?B?ZTRFdHpFVVpMVUs0eEZtZlJzMDdLYmcxZ1psRWc4UWFjSWVycU04WEpHMEl4?=
 =?utf-8?B?NTJYOVBSTDRKcHV1V3dwR3ZwT0hrTDY0M1NLSWo5U1RoK0VQQWxPaU9VYnRz?=
 =?utf-8?B?OCtNcGg0M3ZGdFRTUEJBMnNJRXQ1MTlZK3BhYTBtTDltZURsdjFPQjBUUlRG?=
 =?utf-8?B?Q0FQbUpUMCt2SForT2xSeDAvTGUxd2pTMkpvcWlGNzZCa0gyN2RuVmJub0p0?=
 =?utf-8?B?NEdNdlFaNCsrSWxaaXRaZU5KV3FnaGV1SXY4RThEQ1g0NUFHMXBnNU5hSVBY?=
 =?utf-8?B?dmVBZU5vUThhT3R3WlpLSjVzMkpMQTc0aDhoYlNHZS9kVjBlUE1QUE80d3ZJ?=
 =?utf-8?B?QlFOQUNZNHptVGJaTVlPQXp1ZjlMRGxLT1psWjVudGFNTDZyT2hSRWZLRUdT?=
 =?utf-8?B?RFoxLzI4OC9IVlR2dW9WTzV2UytyTTNlOGhMNExRcGlMbDFjbEZudi9DMzdm?=
 =?utf-8?B?QnZLNnlJRVorSS81Qnk0UElBUUlxM0ZaZGczMFcxWUlTcit3ejkxeHJJT0ZN?=
 =?utf-8?B?M0U0OUVVZUtKWHZNb29rZVdCbW93MFd6RW1VYjZldFJYRitERGlDcVpIamVn?=
 =?utf-8?B?ZGQxcG43a05BdGF3YTN5VE5QWmM5SFd2YzRvZ1lrL3VGQk1yazRBUS9TUUZB?=
 =?utf-8?B?bkRScytlazluVU82Q2l2aHZScnVITnlteVl3NlNQTmxyU0luVVhGSHZCMkRO?=
 =?utf-8?B?cjQ0eFBnZlN6ZDdReUh6aVZvVkY4WGZROXo5Sm1PcjVnMHZMSjBoMTFqNjhj?=
 =?utf-8?B?S3pma1JTeFdvMmNBRlFCZGpEbG90WEJJaU1mUzdmWlJZWEg5MGljZ2xocXhu?=
 =?utf-8?B?UzFRb0p1NmdKYndVU0xxQWJZcVJxbXZLNUlNL3hiNUhOdXNpWTZwVHBCaHpU?=
 =?utf-8?B?cnU1RnB3Tk5lejFweU9VZStrYzY3dCtCVjMzZUNVelZJM0plaG5nampaTmNI?=
 =?utf-8?B?djd2OGp6YTlReFFoRWVhQjBHSmpUOXB4SkNUSjFqN1l1aWVsYUNmSTZWNTRG?=
 =?utf-8?B?STNQR3lHak1vU3k2Z1dMUjZPRW8wYnRvUDd0YWxSSm03MTROTTFUcXFCNFNs?=
 =?utf-8?B?T1daaEcvS2U0Y2h0V0hzRGtOUm9IMlIrY2REOTc0NUZYczdTdWJKaEhqUmxM?=
 =?utf-8?B?SVdEcVMwZU9sRmNxQjRUcUxMT2FDN3BEaTVLVis0dXlVSUxsRHhrekExRVV4?=
 =?utf-8?B?V1lrT1hGZ1o3SmxvUXBVRHZZVnNZMUNSTDJCWWh1MFlQL1ZUSlZQU3J5aFN0?=
 =?utf-8?B?TVVUTGY5WVlERkZFQXAyZ2k3QjNLN2dPSUF1RjNtZU5LUjFXdTdjMS9sWnNu?=
 =?utf-8?B?ZmZoK3dJR0tzWnB1Y0MzdjJ5ZTFSaTZ5a3pSTVl0UmgrYnNZK2luYVY0SGxD?=
 =?utf-8?B?Z3R3MmI0R2wzV042TnZFWGJseXRHSDdFWTdjWHdGeFpNWlZFdktKZk8rZElY?=
 =?utf-8?B?ei9OckRkeUtJWXZzS1U1bUx6eHFWNEkxY3hVcjJtTjdRRnVydkhtQUZVQmYx?=
 =?utf-8?B?SEpvdFNFMzU2cS8rdzRRSjg5OWx0VzlCcC9GVU43a3MwTkc3eFpsZ3FYTmds?=
 =?utf-8?B?TXhqUWo1d3ZVQ0E5YkRxbXdVNGZtSUU0czlOYVpyT1REWnRNV3lsdlBYN0Z0?=
 =?utf-8?B?SjZsNUlJL3cvUXZpb3hTTjNZa1dGLzVqSXcydWYrSWUySlg2OHIvM3ZBRE9Y?=
 =?utf-8?B?eWxNeHJhNHExcnhwYnZlRWNTbGE2bGtRNlhleHl1RTJ1eTQ2NHJCWkJWbDlY?=
 =?utf-8?B?T0hFWndFdjY4MDVzTHZyWW1qWTJNWjJhcmZhZFhESGd6TWtEQ3cwUktCZ1JU?=
 =?utf-8?B?RHl6VHQxaWVFT3hLZFNtN09Oc2FVeEJSVzVUNlFHajlzZThJUytNU2VHSE9O?=
 =?utf-8?B?eWE4N1Z2UjVoL2hCNDlRSTZLQ1NUa2ZlMXBoSy92dmdxWHYxa3pmSFRhK284?=
 =?utf-8?B?SVJrVU5JNENGaS9CbEhidGFXVDBoc3J5Q1o0anJIOVphSHh1UnlIeGJJUFV0?=
 =?utf-8?B?S3Arbkg2T0xIeWVFQjAxNWU5RmZncS9yaStDL2pvN21EYXJqUGZEdm5mY2lE?=
 =?utf-8?B?SndpUnpiVGpIVWZ1c0RQUGo1eWJZOXYvVWRjejRxN0k2QTJQa2doTXJucVRW?=
 =?utf-8?B?VWt2L0J4dmJ4Q0dzTm1OK2NSOTl6MFhHOVpuQ3ZPRVF0ZG9IMkh3eVM0djdv?=
 =?utf-8?Q?FQDZvEBfnMSwF4y9ERZauYdsXksjjiCEWY9w/?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 373384d1-30fc-4ba0-99ee-08de584466de
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 16:53:14.1971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AaCFp+i4VM9UqL/XbjMz2SaZLzxfdsxBIsbyWYffOz//sCLC0bh988KqLdjc7bHM9B1nQMyY3de2Vd5r7KZUp9GLzRc8zslcdQCrS0Og+nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7186
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 20 Jan 2026 16:53:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13826

Hi Antonin,

On 1/20/26 2:17 PM, Antonin Godard via lists.yoctoproject.org wrote:
> Update the documentation links to their released form, as those now
> contain the bitbake-setup and poky-manual-setup instructions (since
> Whinlatter).
> 
> Also: long live Poky!
> 

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

