Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74714CA1005
	for <webhook@archiver.kernel.org>; Tue,  2 Sep 2025 19:51:10 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.10])
 by mx.groups.io with SMTP id smtpd.web10.87065.1756842667246824266
 for <poky@lists.yoctoproject.org>;
 Tue, 02 Sep 2025 12:51:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fPfaqg5r;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fPfaqg5r;
 spf=pass (domain: arm.com, ip: 40.107.130.10, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=odieBmCTEmjyA8+NIW6pNB3J7qJxb2Ok2fZgwnuNLeUIfEIZBTO5FXtNpY6teobKn0ictmSaskoJWue0PR89jeyiliOC3ztK6uPG2KBdcOINr8gxrWVstPnk6c5ARjhG2MNHIp8CfSD3fDfumDraAvUQP+iTdiujM5f7j4FTNU5PXsPD0TPVVKz+mXNRq2GFP64xGOUkoidvExA3xX/BIFf2hTKlo4MEHPDyyFUcERHeqRoQjmC9Dl7v2M0pOoiErpoOEt8sLduPGnyAkSHnB4iQzMPlfozhGONeiz8ducEiH8/7byb+4kp2GL2TAqflat03vUqlAs5YGK0MCEGuNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cF2q0KMDJVutjrRHVMT9UKCoB69pBsyveqXkyHdbWuY=;
 b=KqBML3Dp3HKLPTYXkq0tPSHAFYsrSbgYrsGmwKaZob2Q1yGT17olyMAdok7ntmCmV4zl2Ee8CYzAeDyAFpEypiBHM+VJCmjZnhPXR5pGSQsFqlC63VKQjv2eIL6C087XClgl1SQdk5BWXbxlZwUeNLVH+MPouwB7Ol0zV+RZXgr89DR8EAURNSSxIZl+sKYY6Ya+eMkt303Ikd/ik/dXbrMOqiBwfeDi26Ypzi7zJ9l4szuZ0Y9AfaCdL/7wy1d5xXXnd8pPYhu16xFYzdwUvCbjVQ6St21CbhRgG99dYvwT9PCE5EJk7MHg5QThkCJ99Zd4msVdlhwRcZJa3W0n3Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=gmail.com smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cF2q0KMDJVutjrRHVMT9UKCoB69pBsyveqXkyHdbWuY=;
 b=fPfaqg5rjLe42Z/qEdL3qjr15MRSZVuMge2AePIVqF+fIUtEpdb8ktrJZC6+akvQRTpqUfdxHdZdD22ezugLQEV8SsOLnFcgaAnJb2h18Q7zySqw0TR8jJfwojenUQqJosrlWvqZ3MG45p3liZq9RsNxXB4wiKTO2FDR236P4tc=
Received: from DUZPR01CA0338.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b8::8) by AS8PR08MB9980.eurprd08.prod.outlook.com
 (2603:10a6:20b:634::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 19:51:01 +0000
Received: from DU6PEPF0000B61C.eurprd02.prod.outlook.com
 (2603:10a6:10:4b8:cafe::88) by DUZPR01CA0338.outlook.office365.com
 (2603:10a6:10:4b8::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9094.16 via Frontend Transport; Tue,
 2 Sep 2025 19:51:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 DU6PEPF0000B61C.mail.protection.outlook.com (10.167.8.135) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9094.14
 via Frontend Transport; Tue, 2 Sep 2025 19:51:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Guctk2SiWo7FzS0id4r+8zAFvel/Xzh65rmAdKo+b8QuxQJ0Sk6p9HZ1JbAWJbIMWYgezJm9B1h+7Ux5Mluu7jxpFzxn1/IDeiUmFJ2NdSqlhrx942gKaBpH+mbY0RPyTbhNLJh0nRwOgCNQJT5yROQ7G+a0ThIqPdlf9+FkaU7RE/kIZoc1XV46wgMkHPvpqvXsF+YB7tti7hrvAvZt8LvQX3Gtpx6kpYNWE64hZrQHOTTUkhdF+iwwd5gEwIrkSKS6zzhx4o8q478q+1jslUKKEr/w1LWBfMgqzA9gnzYSSvosLakyryJEq7E+WUdZRsu9nz38xU6h86JOfQXJnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cF2q0KMDJVutjrRHVMT9UKCoB69pBsyveqXkyHdbWuY=;
 b=jjU/rDhRgWgg4SBn/PBlM5+PwBrFXhw6U+KRW61FosBsr1mWuGv3VXSRzIK4NF1BhLl2IydKq1XqxVMgxgoZrlUtsfuyaGy9E1jTI0GdEGwMJpOolCNkR2ttbq46tBoVXIBv75fsRydwaezFlhqxoXpntAUd1Z00KFGVIjx2WqdGZMh8dacXvnyiZQzOh8MvABN9y8c/a5jPS+9eN8q8ZGMa6w84zuJaPFlgcvG39u0TOUfCbRI4Cj49L1Dhw7HijzZFupk+Y/kU8w6kdENTUUWS/Qr3XbBIwHpJPZu/D4cm5szh0ZjvicI+6rdkZBtseoo0JSaRQzQi2ieg9oTmKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cF2q0KMDJVutjrRHVMT9UKCoB69pBsyveqXkyHdbWuY=;
 b=fPfaqg5rjLe42Z/qEdL3qjr15MRSZVuMge2AePIVqF+fIUtEpdb8ktrJZC6+akvQRTpqUfdxHdZdD22ezugLQEV8SsOLnFcgaAnJb2h18Q7zySqw0TR8jJfwojenUQqJosrlWvqZ3MG45p3liZq9RsNxXB4wiKTO2FDR236P4tc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9905.eurprd08.prod.outlook.com (2603:10a6:20b:565::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.21; Tue, 2 Sep
 2025 19:50:27 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::7f73:806a:3493:7d50%4]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 19:50:27 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "frederikbraendstrup@gmail.com" <frederikbraendstrup@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] fix: use pkgconf instead of pkg-config
Thread-Topic: [poky] [PATCH] fix: use pkgconf instead of pkg-config
Thread-Index: AQHcGNrTOPH52wJdbUy8ZjUJc2rug7SAU+UA
Date: Tue, 2 Sep 2025 19:50:26 +0000
Message-ID: <D0247B27-A9E1-47E9-94F2-46C804B541D9@arm.com>
References: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
In-Reply-To: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.700.81)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9905:EE_|DU6PEPF0000B61C:EE_|AS8PR08MB9980:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c761fb9-3b42-4bbb-cc65-08ddea5a0b58
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|376014|366016|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?ZkdBc0lpRnRZcU5yWWR4S0VibVBzZmhBZzJDaFptcTNRYnMrWTJJdUlCelpa?=
 =?utf-8?B?aUkvZGt4WmdxOE1VVi9KUFE0S0E1U0lnLzM3cWF3NEJIZ1pyOCtZN1lUTVd3?=
 =?utf-8?B?MVB4Sk1qOTQzQ3dhUGk4d1dRMWp5VHFKN0NBTUFpY016U2o4YkQyanF2NTZ1?=
 =?utf-8?B?d0lSSGY0ZnhXU005YjZVRHZ4cHk4WHhtQW93ejljeVFYZnpZV3FRZGtrZ2FH?=
 =?utf-8?B?c1Rla29Sb1I4ZHJZdWxpd1BtY0NwODNock5IU21TMUFtdEtXRUdhdEZNQ1Nq?=
 =?utf-8?B?UFZNZDQyMmR5WllEelVqb3lkMjE3bmdTd2hpRlJYVDI3eG1NTmpkbDVSTFBx?=
 =?utf-8?B?QS81bk81R2FtWkdkM2hDd2k2UXdEMG8wL3N1M2RPcmFLQkZlTGx1TXJSVGRx?=
 =?utf-8?B?TGNMT0IrVFJod1lGLzhCOFVOYW9YT0o4cGpJSERmS0F1a1lOcW5heVBqL3I0?=
 =?utf-8?B?YlBsbmNZRHczcmkyMzRHQTlGQ1NRMGhwV0kzRWgzWk8yK0d1OERGMVFqU2g4?=
 =?utf-8?B?SEp6czBwSTBCdTg5eTI0ZkE3S3p1TG9aL1paTjRyeloxZWxpVzd0T3c2QUFS?=
 =?utf-8?B?ZHJmSlgxRHIzVXIyRFpzUUhwcEVOTEVkenY2Mmhic3RDa1JuVjBna0Z4ZW9L?=
 =?utf-8?B?blA1T2R3L1R6Vi8vTk1IVFZhRVF4UjN3MDc5WWJuOVZ3NjRTcW5HdEJUOGVC?=
 =?utf-8?B?UCtSUmt3NFhWNDdjMmhEZ3JoUEtPNG9wWGMzazNWZlk5bkFubmI2T3dTWVJF?=
 =?utf-8?B?cWcyMEprKzRXc251NlpOR2lJWTFGeW8wOUk3VTN2NEdhODArSWlqWVJhQlF0?=
 =?utf-8?B?TGduUjFlZHZsM0E0bm1Wb3JJYkVTV2pQMkQxcEEyd0pIdjNVc1pNUmJxaGYv?=
 =?utf-8?B?R3JaNGZFL0tsS0x4dm1oaEZmOTIrOFNSUjhsVEtRdHdyVDhOVHB5d1FxNzdv?=
 =?utf-8?B?OXUzMGZuVlFFRm1pTVdscEZWS09ybkVZZkd5dzFoMGRVbGpFaFFsbytFOHJV?=
 =?utf-8?B?YmVYSVJMVTZmdHAzQmlKcEdmRkxDaHZVdlFWOXlxcDZpdkRHOFE1YWJXQXA4?=
 =?utf-8?B?eXNWT015eDFjV3hCYXpWM2pBZ3NHcFJQVkREMHNwZjdRdjdGQ2FVN0REQ0k5?=
 =?utf-8?B?OTZsUjU2UzQwM0hPbVpoMmxEc3lFV1RJQ21nbEdONUhvbGF4SmpPR2VMUWhL?=
 =?utf-8?B?OENHSno5MXBsWmtNS0t6aXZJbDhnZDFSNEZsQWlmOUw2UU1KTXBrMTdWTlNS?=
 =?utf-8?B?UFVSV3lKOTZsOVpOWnhMcjk5THovcUFGQ2lEQXp4NS9EbEY2OG0ra3JWdk5M?=
 =?utf-8?B?N1NhWE9DMUlNeGVYVnZlSVd6VElJNUNlLy9wVHdCYU9Id2RzTTkwYVpxVWQr?=
 =?utf-8?B?ZDV6UmpOZUVtWWZtZVNGTWhJc3Ywc0NjUkdBaU9zeVpmbDZXM2pZbVErc2xW?=
 =?utf-8?B?SERkUmVNOVZkdndvVWorQ0Q1WEJCYXROVjkyNHpQdFpZZmRmVUlFeklzaHBp?=
 =?utf-8?B?VnpkN1hjYzlTN0Z3b0dEUXFZWDNRMFJISDlzVEphdCs1YUtQMWRVM1R0UU51?=
 =?utf-8?B?MXJ1UnN3cm1MLzdtc3MvUDJlV0h3MnAvK0NIY3Y5Yk05VmdhKzYrUUlJNXdV?=
 =?utf-8?B?c29sZ01hZTVQSW0rY1dENDFmMjdHVUk5WkRsVmk4bS9TZitiNm9FS0xETGlS?=
 =?utf-8?B?ZkxuWmJ2ZSs1YTZxK3dlWmdvT05DSWJzNzBFUjJ3YnNSL0VMdXQreTRwZHlr?=
 =?utf-8?B?MGlNREdEZzJnU0dMRDQrQlUzRnpoWUxZdTFWMXdOWXBpNlN2MDZLcU5tM3I3?=
 =?utf-8?B?UDBmRHdCWFhVM29IelhXVk1nQnArL2wrc2s3VU5NaS9kWFdrbDh5NitmckFM?=
 =?utf-8?B?NTR0VVhwZEtHaFk4Y3kzYnhlUWhpd0J2MWVRdWxKSEx6MC92WlZrNXZFNFJu?=
 =?utf-8?B?d3U1NTRDOUxKYmRlVWZzcllHSEhMb0RneVlWQ0RjM3FNYTRWeGVRSER5S01M?=
 =?utf-8?B?dnY4b3pHc0tRPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1438AB2D117A04DB0329226E53942E4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9905
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	c0c82fd7-3de9-45b2-3356-08ddea59f6d5
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|376014|82310400026|36860700013|35042699022;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SHlyNkJGZ2VsSEpJS3pIaUhSK3JvRW1GdFAxNFNVV1FxTkMrdERESTZIVWpx?=
 =?utf-8?B?cU84bGp5VkhqbGNnYzh5b1kwYXdvazVJRk1taXJYMjM4TXhlSzBycEtYVWZu?=
 =?utf-8?B?VmlZZkFpcTYyditDMVgwL2ZpN2U1UzFuY1ZmZGxIMy8wbHpMTCtDYmxUMTB4?=
 =?utf-8?B?UDIxYWx5SG5ZczJZNnVraDdwOEg2SytLbVJETzVtNGJBaUJIZ0ZJNWdoSXBw?=
 =?utf-8?B?OURnRzcxZ2czQ2RlbzVoUHJRYzQvajA2S1JITUhIVnlQRS81SWoyMVdkUUR4?=
 =?utf-8?B?YnhERTR5NkxiWmNubE1CUmt5eEZvVGRYMzdJRVF6N1d5aDdoT3VoQlFGYVhZ?=
 =?utf-8?B?ZUhuYytxZWJLSFVIdHZja1JWaVcrUmFOcG5pRUx5cTdsdzV2OERlNTZWSTJT?=
 =?utf-8?B?T2RLMUpwaHNNVUl0eld4OGZNb0VndTEwUG5LYUo1QUthek5lS3ZRMDJpNk9j?=
 =?utf-8?B?b3JuN01PVmxQdlZmcXROTVphTHRGVS9EaTVmTElCYXFVY1E0KzZFWGxNczBO?=
 =?utf-8?B?VllnVDdFcWRzMEZFTUlFVmRaQTNVbnNMTnpQTk1PZFB3MVFZMGFwNnFGdi9p?=
 =?utf-8?B?Q1hxMkNOT2dwa2tLZnNtK0VOZlNhZFdubmhlaXlzS21WbjVuSms3MFVoZTAv?=
 =?utf-8?B?bXNnSTBaQ1Y0a3dzMG1zV2pEYkNzckhxRGR6RUUyY2k1WEpVNGtqVHFWUXZn?=
 =?utf-8?B?KzF5YkVETCtwMUduMTE0QlkwNzBYVHA1eWxBYnNEMms4aWo2MWVudy9XbHJW?=
 =?utf-8?B?RlpFN0wyOHUzR3pwZ2dOM3dYMXdXK29ZQ2FLbnhEMVdiekFXUW1qamRheEJt?=
 =?utf-8?B?K3FFdmNBL0ZaWk82UjJqOEJkS1M1VWlwMGpFYTg2ckdlZWFKby9qeGcxK1Np?=
 =?utf-8?B?eGxFOW5VcFYrK3E4UFd6MHBZSmlaK0Y4VHJReThHQzdZZlE0M3FnOXFMYkQ4?=
 =?utf-8?B?YXlxdjFUQ25RV1JRVmNTbE9PQkhkdExWUER5S2JlNmlNeUo0Tk54eTN0d0kz?=
 =?utf-8?B?RGgwaGs2eHdpTm43dG9QaXJ6MVBoK0tjU1VTMWtXL2JaL3J6SkxlWHZNeUQr?=
 =?utf-8?B?bnJBbjVuV1pMOGRZYml5RFRZMENFVDFpWVVWS3ljYzQvVnE4V3YzOU5WR2h5?=
 =?utf-8?B?bGl0REZNclB4OE1JOGkrQWN0NWtKaGpBNnljVDlYSDAyTjhPZlI3RUJZSVhM?=
 =?utf-8?B?QWdYN0t1dHVJcFJKU25pNllnWUlrbUhmQmd0MDRKSTNyaHJWeUM0alRoTzdj?=
 =?utf-8?B?VTJLaUt1cGdLWk1ub1A4dXR6WE9TbWFFcmlyNFRXOGJTYlFmZEdWNEpJN2tZ?=
 =?utf-8?B?a29sK2pUTWFibXpaV1ppWXlCSjFuS29lcUgzWlhTaFRsZTk5Y3lHVzlOS3Yw?=
 =?utf-8?B?d3VJaFpMMEZ0bStGcStpZGgxbDJLNFhacDZhYUx6SlU1M0RvRXI2N3lwY1Fs?=
 =?utf-8?B?alIxbWRLcmNOLzM5cnhLRFpRenZQV2NqR0dUOWFTeHk4U0RxQlpJc2pHSnpp?=
 =?utf-8?B?NHVhQURuL1NTNzQ5aFZyMXAyOWdVb2pyVlVtM3dvcG1zWDFDb1JLdm0ra3BR?=
 =?utf-8?B?WE9ybWE0QmtZRU1YODdFV0dtWmtEZ3F6RzBLZ3F2OElYWjFWS0l4UkhMay9C?=
 =?utf-8?B?aitrOW1USk1nb00rTTY4aUZNWTdZTS82MjB5TzhuTld5dUVmYS92d0hxQWFT?=
 =?utf-8?B?SU1DUzNHdDdXdWtjb3MvZklEdmJPSzJ1WEFZdGhSVlduYmQ0NDhseUhRRkg4?=
 =?utf-8?B?ZW0yUnQxSXVjZEFiQ2toOGZOZ2hWQUhGbGlyZXdzazV4d3h4bzFIRERqWGlJ?=
 =?utf-8?B?cmFCUUNuV0pkYm5Dc3dacDFlRTBmU29mS2hORkFRZlMyYVRyS2YraG91Q1dO?=
 =?utf-8?B?M1ZMWnJySzRuQmVhQnR1R2h1WEN0ZTVUS2t3YXJCcTY1d25LWXYyQXltUlBl?=
 =?utf-8?B?bnpoWkNCcEFZVWUrN2R3ZEp3Wlk3WElrdDJwbHAvQWk1WXRtL0VMWHJ0Y05p?=
 =?utf-8?B?akRCZzRVeHdWU2NQbEZMbTlhSjQ3aXBnSTFSc2FTMElyS1pVWDBDL3RsVGNC?=
 =?utf-8?Q?jSMm5P?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(376014)(82310400026)(36860700013)(35042699022);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 19:51:01.4256
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c761fb9-3b42-4bbb-cc65-08ddea5a0b58
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9980
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 02 Sep 2025 19:51:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13741

T24gMjkgQXVnIDIwMjUsIGF0IDEyOjQ3LCBGcmVkZXJpayBCcsOmbmRzdHJ1cCB2aWEgbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyA8ZnJlZGVyaWticmFlbmRzdHJ1cD1nbWFpbC5jb21AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+IA0KPiBBcyBhIHByZWZhY2UsIEkga25vdyB0aGlzIGlz
IHByb2JhYmx5IGEgYml0IG9mIGFuIGFnZ3Jlc3NpdmUgbW92ZS4gQnV0DQo+IHBrZy1jb25maWcg
ZG9lc24ndCBidWlsZCBvbiBuZXdlciBHQ0MgYW5kIENsYW5nIGNvbXBpbGVycyBkdWUgdG8gYSBs
b3QNCj4gb2YgaGFyZGVuaW5nLiBUaGUgb2xkIEsmUiBzdHlsZSBDIGNvZGUgaXMgZGVwcmVjYXRl
ZCBhbmQgY2Fubm90IGNvbXBpbGUNCj4gaW4gdGhlIGdjYyBkZWZhdWx0IG1vZGUuDQo+IA0KPiBw
a2djb25mIGlzIGEgbW9kZXJuIGFuZCBjb21wYXRpYmxlIChhbHRob3VnaCBub3QgbmVjZXNzYXJp
bHkgYnVnDQo+IGNvbXBhdGlibGUpIGFsdGVybmF0aXZlIHRoYXQgaXMgbWFpbnRhaW5lZCwgYW5k
IGhhcyBtb3JlIGZlYXR1cmVzDQo+IHRoYXQgYXJlIG5vdCBhdmFpbGFibGUgaW4gdGhlIG9sZCBw
a2ctY29uZmlnLiBJJ3ZlIGJlZW4gdXNpbmcgdGhpcyBwYXRjaA0KPiBmb3IgYSB3aGlsZSBub3cs
IGFuZCBpdCBoYXMgd29ya2VkIGZsYXdsZXNzbHkuDQoNCkRpZCBhIGNvcmUtaW1hZ2Utc2F0bywg
YW5kIGFzIEkgc3VzcGVjdGVkOg0KDQp8IG1ha2VbMV06IEVudGVyaW5nIGRpcmVjdG9yeSAnL3dv
cmsvcm9zcy9idWlsZC90bXAvd29yay9jb3J0ZXhhNTctcG9reS1saW51eC9saWJ4Y2IvMS4xNy4w
L2J1aWxkL3NyYycNCnwgbWFrZVsxXTogTGVhdmluZyBkaXJlY3RvcnkgJy93b3JrL3Jvc3MvYnVp
bGQvdG1wL3dvcmsvY29ydGV4YTU3LXBva3ktbGludXgvbGlieGNiLzEuMTcuMC9idWlsZC9zcmMn
DQp8IG1ha2VbMV06ICoqKiBObyBydWxlIHRvIG1ha2UgdGFyZ2V0ICcvL3Vzci9zaGFyZS94Y2Iv
JywgbmVlZGVkIGJ5ICd4cHJvdG8uYycuICBTdG9wLg0KRVJST1I6IFRhc2sgKC9ob21lL3Jvc2J1
cjAxL1lvY3RvL3Bva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3hvcmctbGliL2xpYnhjYl8xLjE3
LjAuYmI6ZG9fY29tcGlsZSkgZmFpbGVkIHdpdGggZXhpdCBjb2RlIOKAmDEnDQoNCk1vc3QgcGVv
cGxlIGRvbuKAmXQgYnVpbGQgd2l0aCBzeXNyb290cywgYW5kIHRoZXJl4oCZcyBhIGRpZmZlcmVu
Y2UgaW4gYmVoYXZpb3VyIGJldHdlZW4gcGtnLWNvbmZpZyBhbmQgcGtnY29uZi4NCg0KSSBzdGls
bCBiZWxpZXZlIHdlIHNob3VsZCBtb3ZlIHRvIHBrZ2NvbmYgYXMgaXTigJlzIGFjdHVhbGx5IGdv
dCBhIG1haW50YWluZXIsIGJ1dCBpdOKAmXMgbm90IGp1c3QgYSBvbmUtbGluZSBjaGFuZ2UuDQoN
Ckhvd2V2ZXIsIEnigJl2ZSBub3Qgc2VlbiBwa2ctY29uZmlnIGZhaWwgd2l0aCBtb2Rlcm4gY29t
cGlsZXJzLCBiZWNhdXNlIHdlIGJ1aWxkIGl0IHdpdGggbGF0ZXN0IGdjYy9jbGFuZy4gV2hhdCBm
YWlsdXJlcyBhcmUgeW91IHNlZWluZz8NCg0KUm9zcw==

