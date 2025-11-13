Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA8ACD98DF
	for <webhook@archiver.kernel.org>; Thu, 13 Nov 2025 20:42:13 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2855.1763066529039265979
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Nov 2025 12:42:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=LFtxrJ28;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=341270beba=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD8iwcF4111020;
	Thu, 13 Nov 2025 12:42:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=lDjYrUVvkBCHk0k2SJb07j
	Iwp7B234BkIymz5bK3j24=; b=LFtxrJ28Qh8VhQZc23UBoUuJZWcttEJNRwalzT
	u3J+PmY+Jx8LU+brxLwnjkrwjrkEr+aeAhkeT5KxXsyO0Jw8Xb3ysT4IeikeF7SP
	tdqNJ276fCEm+EviWSYwfBJIuKH9aKkYkBaR07r04lt0qAbx4zB7wNtB4cdCo+M5
	fhnHEpsgE3IGH4XKDoZSg6VUK0e6KfdaORqSPc+dhpRgLu6jf+DV6SDXYPppQ1X/
	vC9njP7BdCUwfWxfCA91I7Q100umvF8gcsNvI6guaWNNHNY0VzoPtYe0wyMB+CHh
	XP3b2+E+fRauDF3DkF1EuaOVUjQ8KfsCQRYdFc4JC1FUSChw==
Received: from ph7pr06cu001.outbound.protection.outlook.com (mail-westus3azon11010064.outbound.protection.outlook.com [52.101.201.64])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 4aa68jqt6j-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Thu, 13 Nov 2025 12:42:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q0YN+twC+Vk7RP6m969RE/sehpwJJIoYqunTpr6AkQ3U0B8hYYRlztDmOlPlDEOx4/5zJfT1GF7jBbgYNXbqS6/JINC8zp2XQ/KPgZnXdBNdTXFJ5MzBm3t/HCudgVetJ1sJtO4ZY15KkVRiNdpqwfaKmzMqanAgOOm+x4rzTXdsVX9CTXVLwDT7tSGYzzqFRerXOgcV6dXppYFyz2oeM+QhHTDMlUtW6apUiSn4nAlSho4pwhjb9an/Pl/BoO92UFx+qLdVl5ZtzUNz5D6nFAC1cM/EeP8FrxK45VMTKNxgLA82Hi94ypBvuDAgSbrO4/0HKy0+6FupNIsVlVn+UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lDjYrUVvkBCHk0k2SJb07jIwp7B234BkIymz5bK3j24=;
 b=PlzbgCKvlgZ2x1UXqHwVNTy90nUwdI1k/jjM+vtJh9QE7uXJ7/caDb0zkpUX/wqODhjlFUNVFec/lTy+bEFfTYbryWHFiV6GZXAasUmaGVPdmI1UZgF9QoQLdKGxcRvv8a3V465+abRPlL0dVYDcKvOZZ+N+dUfPUr2lw3x4TR0EGhhX1jX6Myodst1MxgJpbLqjI0No2F6cH8DD93V23ZvLZV9H+g9nLO0Mqg+dg/N8q8aMMyCG77Cb36HUa95L00tG2Q/ioumwlbFD2X5U7cjgZj6esZT/Qz5guZmAogdw8RgJKGW6FE3GbTd0wpcEEaxtbxIDE4ez6mREc8ZEpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22)
 by PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.13; Thu, 13 Nov
 2025 20:42:04 +0000
Received: from CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552]) by CH3PR11MB8496.namprd11.prod.outlook.com
 ([fe80::cdc3:a646:2a93:9552%4]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 20:42:03 +0000
Content-Type: multipart/alternative;
 boundary="------------irDO4DkW7F81BZHrmQ7rBKaI"
Message-ID: <41027ba9-d341-4a09-957c-6fea234e6aea@windriver.com>
Date: Thu, 13 Nov 2025 15:42:00 -0500
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Problem building poky
To: "davepregan@gmail.com" <davepregan@gmail.com>
Cc: "peter.marko@siemens.com" <peter.marko@siemens.com>,
        "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>,
        yogesh.tyagi@intel.com
References: <CAHzZjuM04xDPTVo2u4p4wDv+HEAzGSd4mp0gNSoLU_QrO6AYfw@mail.gmail.com>
 <AS1PR10MB56976B057310779DF98EA661FDC2A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB8987CD1BE4FBDEE6FD120D068CC2A@IA3PR11MB8987.namprd11.prod.outlook.com>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <IA3PR11MB8987CD1BE4FBDEE6FD120D068CC2A@IA3PR11MB8987.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:a03:80::18) To CH3PR11MB8496.namprd11.prod.outlook.com
 (2603:10b6:610:1ba::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8496:EE_|PH7PR11MB7122:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e902088-7b2d-4ed8-5bf2-08de22f51a42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|4022899009|376014|1800799024|366016|13003099007|8096899003|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?K04wYzJ2bHlTZTEvZzFmaVB0R3p5QVpsaDNLNXRFQUcwckFqR3krZ0pndlNj?=
 =?utf-8?B?TGloT2RJeGNhbkdkS3JOR3VxNjY3WFlEUHNzSkJ6TGE4d0ovVUVQQlorM2tU?=
 =?utf-8?B?NG5LY2ZqQ21KelU1bmtPMUVnZjdtMFJ3NzZUc0s5WjV4dTRxRDNxdmF1S25t?=
 =?utf-8?B?ZzR2ekJ0eTVueVRqU25JOGUxZ0dnQ0xYMldNTVkzdlgxbTNMS3QvckZiTE00?=
 =?utf-8?B?Y0JyRFJZS0VNVmsyZDZrMk5pc0xPRG9ua29VL2ZLQUdBTjRvdXFIWlQyUjV6?=
 =?utf-8?B?WjMrVFBoK1Y0MlF4amJRRXVsTlVtUkhKRTVJSEpDamlWcHZ6UkhVWG1wQzdo?=
 =?utf-8?B?Vy9OQXdIZ0prWmwvV2RJcWFNY0dQTStPQzRGalk4YmZVWTZSaEp0ZWhoTUo4?=
 =?utf-8?B?Q0FKSXd3TnJyQnBqcnFZTE10RFEyZk5lekVscTVLTnhKZGhTOTdITERkaTk1?=
 =?utf-8?B?aGFLaDhScUU2NlhDMWVRSUpXR1dzdXUwUUd0b1k0dnZFc3AwV205TWxIV3ZO?=
 =?utf-8?B?czVKQVp3Y1VmcFZVVVZXZWE5bGkxc3hJemo4dlkwdXRrK291UGtiL2RFYTR0?=
 =?utf-8?B?c3RXbFFJK2JQMmhEblhhWFRxc3dIMXc5VGs3NlF5WW1xc2hLQkMxWGNhY3lR?=
 =?utf-8?B?YXJpRDdqNzhmYVZ6a3MweExZYmhjUlhacE9pckJ3b0hZT1UrNS95SFduYlZl?=
 =?utf-8?B?bVE4bzFNUStTM3NyQVZ6RGJ2V2o5TFFyNEFxKzI1V0I2d2NGL3hTRDk5aVhP?=
 =?utf-8?B?ZGFteENLMVAvUERuRHpSU1F2anQyVy9DSjFBZWN4UnRjREJPQ0NJMUlPa0Q5?=
 =?utf-8?B?ZGw4YVVpemVSbTV6YUhTZ2FyZUMzWWhzVko5ZmRhVWlqY2p3TUI5VXUzYlZ2?=
 =?utf-8?B?dEJKa2E4WXF6eXhpOUNLbjlmOFkzc3o5YWtGZWR4bDU1RTBUdk5WdmtiN051?=
 =?utf-8?B?ck5PVEsxa2FvVnIyUHlSU2NTRzQ0UmJMR0pLUnllTGt0Y3IwblN4aCtVK2Zx?=
 =?utf-8?B?eHU3TEo5djkwc3dtM0Vnc013UXh3OXF6UTRJd01ydVB3SDBWa3MrNzA2UC8x?=
 =?utf-8?B?NHZmZkpFakhYb2pyVERqRWx4bEdHMGdtbzRjSjBtU3MvZjNYekNzOWVJYkdy?=
 =?utf-8?B?cGVDeDEvY1M5R2ZNY0g0MUQ5OHlDWnhlZUNoamxhNEk2c1p3cytqZjhvaUNW?=
 =?utf-8?B?MldDTFMrQzQwL2I2WHhCOE5oU2xjb0VYd09LSnRnWnFMQjdnT0hDVWV0TW1T?=
 =?utf-8?B?SWhMMDgyZS9YbWtSYm9raEZNQmovbnYvL2hhbG53dVZRYS9DYW9yMjQ4L2Zv?=
 =?utf-8?B?VTUxZHdVN1lzcUxHeU41bHRoZG40Qi8vSHVVbmlhbTJiSk5uL1UrbENyM3l6?=
 =?utf-8?B?bXRkckZIR2UzakpnZVhENVNkdTlaRGFaQUJoeW0wVVdwb3lqbUZhR3JTcUpW?=
 =?utf-8?B?Z2RHMW5NTUtkb0o3NGUwRUlaL3ZrQVJ2bldCZFBWbEJWa1lHc0lMdVl0UXI2?=
 =?utf-8?B?M2pORVVDOHorS0hvMnV4M0Uwcld2NGJHanJNNUVRYlE0TXA4THV6eGlUQW1W?=
 =?utf-8?B?R0R4QlFlL1VrTHVDN2s4NlZ6VmZNK3pscnNwSjdMU3NDQllWYlVSMzcyOHFh?=
 =?utf-8?B?T2RqZVcvK3dqbVBIQjdHTnpTV1NBOWVnSDVyN1psRWUvUStpQ2lsZ0hLRkRF?=
 =?utf-8?B?MXI2L1RoWGg2SVV0ZUhpcVZGamZtcy9aM2t6MGNtNFM4NUh2b3M0WFJIUlE1?=
 =?utf-8?B?SFF4L0NjT3lkUU93NERqOGhWSUh2WFEya0RxTDJGMVM5dWhsT0tRY0RUMG56?=
 =?utf-8?B?SFBLckFycFhBTUZ6amtQTS9LTDF2MnJsUXlZMUU3MGh5TWhsNDl6R2tueitT?=
 =?utf-8?B?Qzl3VzBuaFJ4NzFFYUFTWXhoMWR0Nk0vNEs4ck83M29aMHp3bmd6VFU4QlZn?=
 =?utf-8?B?RkpDY1JPZDFhaWkvZGpiblFkQTlRVnNlZEt1OGNneWdIdGp2ZlJvdFdOWXA3?=
 =?utf-8?B?UHB3ekZoRGd3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8496.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(376014)(1800799024)(366016)(13003099007)(8096899003)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTdEVmRnL2graWlzNFl1S2J3QUQvN29nSXBHdnNRcHNNMmZJTzdsZDg0a3Rp?=
 =?utf-8?B?SWh4dS9MUmRUb0oxRlNuT2RObW1EbmtydFpSZWVsTU1KK21OUEo3cldDVklS?=
 =?utf-8?B?WjFVOFExai92T0xOM2JselNmNkFuc1o5MnJQWkt1OExXR3hnZUlqdnFZZk1i?=
 =?utf-8?B?am1RUmlLa1EySi9MV3dranRRazJrZE9LaDdjUjZmTXZid3V6ZlA5d2dad0Uy?=
 =?utf-8?B?bGZWdVNOS2M1VGFBSFgrTWlOMnUzNnlCRmdqak85MnBZdWh6RU5oY1kxSHRM?=
 =?utf-8?B?cGVrQnBNVDE4cVBtTFp3ZUwvc21KYll3NUZKdE1PT2w4YlJDdkFia1lqVy8y?=
 =?utf-8?B?MEN1VzM2cG9mUEp0M3JyQWcxU2E3L0hoUWtXbWdyZWNsK0gzZVY1SjYzOGRy?=
 =?utf-8?B?VEJ0MlRIMFQzSGhtY28wU3VoWFhXdzdqdndMaEkxWWFOVXNzdEpDOVE1YW50?=
 =?utf-8?B?MW03OXJPVTFJRkNISFJzZHMyaTNZT2hkQVZ2V21TcFpIZjk4ZHVsb1VEUWRL?=
 =?utf-8?B?MGI0QkYvNlluSjg3ZHRZb1dja0dkU2hLNnFlR0RobFFCOTdFL09iL2krbUlC?=
 =?utf-8?B?MEZDSFJNYkJSdTdkWW1SWUJ3SzZxOFYrRFFyeFUvMmRpNk1HaEJuWDdRU0Rj?=
 =?utf-8?B?VjFtc1RrbEJ4TEhtK3NrNlJrYmxlODBWVFU0bFkzQ0c1M0VpT1VTTnJ6MUw2?=
 =?utf-8?B?Y2ZOZ0MvdVprNm1QbFdQTHF6THVyRHJ0WTlicFpvVEFzZXFiWkJ2TEpDaFRp?=
 =?utf-8?B?TGpzZE1OT04zSnVNVVhvd3V5OTU3V3dzQmtGUldXYXpHRndSZ3N4ZkxoblY1?=
 =?utf-8?B?L1E2b05EeWVja3kvNU90dmx3cGxCNXk5SmRFYXFrYjlVeGlycU9tNkJGZ29R?=
 =?utf-8?B?ZUQvc2hMMThidHRCYUkrTUpOdUFyR3lRQmRKM29nUHRrUldqY01qM0J6VVFv?=
 =?utf-8?B?MXVva2NXTHZhTUt4ZmhGZE8yUHovU2xKaHRWMkoyNmZlOTRLWGRoMDdkLytK?=
 =?utf-8?B?cTNMNzJYS1I4T29XSjhNcW1ZN0tqN3FZRHU2QllNT1FJNWJNTjlrZ25BWSty?=
 =?utf-8?B?VkV6MWV3SWhiQmNEUWY2dG9hY3ptT0hBbDlrT3NHRjdhVHJlajJEd1hTaUJ2?=
 =?utf-8?B?WVZKSjFRWVRHWUxNTzl5VlJJeFcvNHhRQ1VxTUhqdHJZOWNZMmFpRjJXaERH?=
 =?utf-8?B?VVJpYkYrbUVUR0txYjgvQmloRWNhdnd3SSsxUTZIRXI5NnNmc2dKVmIxVjgz?=
 =?utf-8?B?cFQ4R21qVndnRHc4R1ZtT0pIdmV1cWlNTEh6MjVoT3h0TWdqUFRURUx6cGNY?=
 =?utf-8?B?Z0p2YWcxVzZYTnYrN0s2TWU4VFVXUnkzWWd4ai90K0FxME9qOGtZOCt2Y2ls?=
 =?utf-8?B?MTJodlkyN0I0dGp3eHNkendPUkkxd0hqNi9iNFNpNFB6bENXTmtCdFhnM0pw?=
 =?utf-8?B?UmVlUTkxdjlyWWhVTWlqS1hUUGZQbGJwNmY3RTZpVkJzUWJ2UGlLdzlGTXJG?=
 =?utf-8?B?aklnL2VvQmZEZ0gxUWw0MTc2dnVlbUFaZzRxR1NNeHA4YVFvSk1XZ0Y3ZU1L?=
 =?utf-8?B?WGE2U01sZnNkMnFadG8rMWhIL0d0dHJGWEFZaU5mME1xSmczb3NscUNKMHBr?=
 =?utf-8?B?Q2E3c3pvSlBQRyszQkNKVFFreGhsTS9wdG95bGFaaWdVY2RWRDF3RXNNeHl3?=
 =?utf-8?B?RUg5cUp6WitEc3pTZzE1c3ZXdUl1TXFHd1ZWNk5xMkQ2cjBsWDFBb2l5NCtE?=
 =?utf-8?B?b1VLdDBETzdoYWNjdzNaZWQrUFJzWk5MUnhkMHRwVEM4eUNQbHlWS1NSODJ5?=
 =?utf-8?B?cnVCUXA0NGplM1VJZW5kNWVVRXp5a0lYSWt4VnVZWHBJWm9nMWZQYzFOY25x?=
 =?utf-8?B?bExCVDQ1RHFPKzZ5S3FXcHM2c2d0eDBRaHdOZ1VwdC9rQ0FPU0dBQlM0cTZ5?=
 =?utf-8?B?R2VpekRQY2JyVmRXZkIwZW9HUUxiYStwRTZ2OXVHMzFoSFBid0xiSlIva29t?=
 =?utf-8?B?VEhRN2t6N242V2ZScEZQYXJYdW9zQXM2SVE4aUtFeGhCVHRXT1hpNktOSCsx?=
 =?utf-8?B?UFFrV3lEMmp0S3BPaVFuajQxaFgzdHF0VzlHV0s4bS91UnV2eTBFVnZqWDZM?=
 =?utf-8?B?cFcyRFZLUE9NQWFsVThuSmtNamNXNUgxMTgyUHVxTDNNcjliTTVGUEQrVktV?=
 =?utf-8?B?Smc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e902088-7b2d-4ed8-5bf2-08de22f51a42
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8496.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 20:42:03.7958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ml8kuSau+dPwxTH0To6+Q6QTe5PipNciH4FN2yaW3NZW9ILIlCZFq8dxPph3cl6SDpDPDUrvXPU1Xk3rOSGDk5XGOlSZqazPrx/x4ieoufE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE2MSBTYWx0ZWRfX/snZmqbygPAZ
 MCYshA4csLKa/ox9qmIky5NXlMGJCTQzHJ8D1jlttczzcJv7vcgpJFtsTv8MiHr3Afv4B/VNcsW
 50zu2Abt0PKXR0CMYmkhY0lonwXoJu5qA+BHqLpZmy9pHUubAAbWkHWcjSOZvW2GWnT6cdaHKhs
 H1DkjKq7UrD73BBDjG1QIrOxdgN1ftxcYbZaD+CRkeTlo3U8j4+KWMniJnvYHO5fl5FMttUf1N6
 hlU0f8Di90jDbjt8FbGuD2b1XawZBCD73kQrEfKCC/EeJ5dSvGdINYhlIzbD6GJ6yLuG+OpuuT0
 /QPSidBFecRLeb6HeR/Gk+kWTdoD9td1lsWltsJY9/IoceUCaGojeJPE/YaHB0bhybq1OfmIgc/
 hEW7XOzPveGZft4D7klGxOvHAJbtsw==
X-Proofpoint-GUID: juE-cEoi2ftlf9iy-zmCfged8nim4HbR
X-Proofpoint-ORIG-GUID: juE-cEoi2ftlf9iy-zmCfged8nim4HbR
X-Authority-Analysis: v=2.4 cv=ef0wvrEH c=1 sm=1 tr=0 ts=6916429f cx=c_pps
 a=98eAHdF884nMI2WayFaxAg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8 a=rT40r1i1j-y5RaZCJB4A:9 a=QEXdDO2ut3YA:10
 a=pGLkceISAAAA:8 a=UqCG9HQmAAAA:8 a=1YZQD8mGi4fL2IBJwQ0A:9
 a=BeCBfqAw6haWfQYy:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10
 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_05,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1011 spamscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130161
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Nov 2025 20:42:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13792

--------------irDO4DkW7F81BZHrmQ7rBKaI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2025-11-06 11:04 a.m., Yogesh Tyagi via lists.yoctoproject.org wrote:
> Also you can limit the parallel builds as per the resources available on your system e.g.
>
> BB_NUMBER_THREADS = "4"
> PARALLEL_MAKE = "-j 4"
>
> Thanks,
> Yogesh

Did that help David?

If not, please tell us about your HW.

You might also try to build core-image-minimal
since it will be less demanding but it does only produce an
cli-based image rather than poky's X11 UI.

../Randy



>> -----Original Message-----
>> From:poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
>> Of Peter Marko via lists.yoctoproject.org
>> Sent: Thursday, November 6, 2025 5:09 PM
>> To:davepregan@gmail.com;poky@lists.yoctoproject.org
>> Subject: Re: [poky] Problem building poky
>>
>> Most probably you PC run out of memory, some essential process got killed
>> and your object files are incomplete/corrupted.
>> I'd suggest looking at your CPU count vs available RAM and tweaking the
>> concurrency settings.
>> I'd recommend to have at least 2GB RAM for each available CPU you give to
>> the build.
>>
>> Then you should delete the build directory (as it contains corrupted files) and
>> run the build again.
>>
>> Peter
>>
>>> -----Original Message-----
>>> From:poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On
>>> Behalf Of David Regan via lists.yoctoproject.org
>>> Sent: Thursday, November 6, 2025 12:18
>>> To:poky@lists.yoctoproject.org
>>> Subject: [poky] Problem building poky
>>>
>>> Hi
>>> I am completely new to linux and so will make rookie mistakes. Apologies
>> for that.
>>> I have set up my pc as a dual boot and am running ubunutu 24.04.3.
>>>
>>> Due to limited hard disk size I have connected an external drive which
>>> has been formatted as ext4 and have installed poky on it.
>>>
>>> I have followed the Quick Build instructions for poky on scarthgap
>>> branch using bitbake core-image-sato to build
>>>
>>> After a while it errors. Here are the last few lines of the log. There
>>> are quite a few undefined references reported.
>>>
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:175:(.text+0x4b0): undefined reference to
>>> `PyEval_RestoreThread'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:175:(.text+0x56a): undefined reference to
>>> `PyEval_RestoreThread'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>>> Modules/pwdmodule.o: in function `pwd_getpwnam_impl':
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:219:(.text+0x5cd): undefined reference to
>>> `PyUnicode_EncodeFSDefault'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:230:(.text+0x5f6): undefined reference to
>>> `PyEval_SaveThread'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:258:(.text+0x687): undefined reference to
>>> `PyEval_RestoreThread'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>>> Modules/pwdmodule.o: in function `pwd_getpwnam':
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/clinic/pwdmodule.c.h:43:(.text+0x71c): undefined
>>> reference to `_PyArg_BadArgument'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>>> Modules/pwdmodule.o: in function `pwd_getpwnam_impl':
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:258:(.text+0x751): undefined reference to
>>> `PyEval_RestoreThread'
>>>
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
>> /media/<me>/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
>> 4
>>> -
>>> linux/python3-native/3.12.12/build/../Python-
>>> 3.12.12/Modules/pwdmodule.c:258:(.text+0x7a2): undefined reference to
>>> `PyEval_RestoreThread'
>>> collect2: error: ld returned 1 exit status
>>> make: *** [Makefile:1316: Programs/_freeze_module] Error 1
>>> ERROR: oe_runmake failed
>>> WARNING: exit code 1 from a shell command.
>>>
>>> I would have expected this to build without any errors as I have not
>>> modified anything. Part way through the build my session became
>>> unresponsive (mouse not moving - I was using it to keep the terminal
>>> alive) and the terminal stopped and returned me to the desktop.
>>>
>>> Could somebody advise on how this can be resolved.
>>>
>>> Kind regards
>>> Dave Regan
>>>
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#13781):https://lists.yoctoproject.org/g/poky/message/13781
>>> Mute This Topic:https://lists.yoctoproject.org/mt/116150887/3616765
>>> Group Owner:poky+owner@lists.yoctoproject.org
>>> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub [randy.macleod@windriver.com]
>>> -=-=-=-=-=-=-=-=-=-=-=-
>>>

-- 
# Randy MacLeod
# Wind River Linux

--------------irDO4DkW7F81BZHrmQ7rBKaI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2025-11-06 11:04 a.m., Yogesh Tyagi
      via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:IA3PR11MB8987CD1BE4FBDEE6FD120D068CC2A@IA3PR11MB8987.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">Also you can limit the parallel builds as per the resources available on your system e.g.

BB_NUMBER_THREADS = &quot;4&quot;
PARALLEL_MAKE = &quot;-j 4&quot;

Thanks,
Yogesh
</pre>
    </blockquote>
    <p>Did that help David?<br>
      <br>
      If not, please tell us about your HW.<br>
      <br>
      You might also try to build core-image-minimal<br>
      since it will be less demanding but it does only produce an<br>
      cli-based image rather than poky's X11 UI.<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:IA3PR11MB8987CD1BE4FBDEE6FD120D068CC2A@IA3PR11MB8987.namprd11.prod.outlook.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a> <a class="moz-txt-link-rfc2396E" href="mailto:poky@lists.yoctoproject.org">&lt;poky@lists.yoctoproject.org&gt;</a> On Behalf
Of Peter Marko via lists.yoctoproject.org
Sent: Thursday, November 6, 2025 5:09 PM
To: <a class="moz-txt-link-abbreviated" href="mailto:davepregan@gmail.com">davepregan@gmail.com</a>; <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a>
Subject: Re: [poky] Problem building poky

Most probably you PC run out of memory, some essential process got killed
and your object files are incomplete/corrupted.
I'd suggest looking at your CPU count vs available RAM and tweaking the
concurrency settings.
I'd recommend to have at least 2GB RAM for each available CPU you give to
the build.

Then you should delete the build directory (as it contains corrupted files) and
run the build again.

Peter

</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a> <a class="moz-txt-link-rfc2396E" href="mailto:poky@lists.yoctoproject.org">&lt;poky@lists.yoctoproject.org&gt;</a> On
Behalf Of David Regan via lists.yoctoproject.org
Sent: Thursday, November 6, 2025 12:18
To: <a class="moz-txt-link-abbreviated" href="mailto:poky@lists.yoctoproject.org">poky@lists.yoctoproject.org</a>
Subject: [poky] Problem building poky

Hi
I am completely new to linux and so will make rookie mistakes. Apologies
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">for that.
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">I have set up my pc as a dual boot and am running ubunutu 24.04.3.

Due to limited hard disk size I have connected an external drive which
has been formatted as ext4 and have installed poky on it.

I have followed the Quick Build instructions for poky on scarthgap
branch using bitbake core-image-sato to build

After a while it errors. Here are the last few lines of the log. There
are quite a few undefined references reported.


</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:175:(.text+0x4b0): undefined reference to
`PyEval_RestoreThread'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:175:(.text+0x56a): undefined reference to
`PyEval_RestoreThread'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Modules/pwdmodule.o: in function `pwd_getpwnam_impl':

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:219:(.text+0x5cd): undefined reference to
`PyUnicode_EncodeFSDefault'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:230:(.text+0x5f6): undefined reference to
`PyEval_SaveThread'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:258:(.text+0x687): undefined reference to
`PyEval_RestoreThread'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Modules/pwdmodule.o: in function `pwd_getpwnam':

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/clinic/pwdmodule.c.h:43:(.text+0x71c): undefined
reference to `_PyArg_BadArgument'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Modules/pwdmodule.o: in function `pwd_getpwnam_impl':

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:258:(.text+0x751): undefined reference to
`PyEval_RestoreThread'

</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/hosttools/ld:
</pre>
        <pre wrap="" class="moz-quote-pre">/media/&lt;me&gt;/linux_extdsk/dr_ext/yocto_build/poky/build/tmp/work/x86_6
4
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">-
linux/python3-native/3.12.12/build/../Python-
3.12.12/Modules/pwdmodule.c:258:(.text+0x7a2): undefined reference to
`PyEval_RestoreThread'
collect2: error: ld returned 1 exit status
make: *** [Makefile:1316: Programs/_freeze_module] Error 1
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.

I would have expected this to build without any errors as I have not
modified anything. Part way through the build my session became
unresponsive (mouse not moving - I was using it to keep the terminal
alive) and the terminal stopped and returned me to the desktop.

Could somebody advise on how this can be resolved.

Kind regards
Dave Regan
</pre>
          <br>
          <fieldset class="moz-mime-attachment-header"></fieldset>
          <pre wrap="" class="moz-quote-pre">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13781): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/13781">https://lists.yoctoproject.org/g/poky/message/13781</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/116150887/3616765">https://lists.yoctoproject.org/mt/116150887/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
        </blockquote>
      </blockquote>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------irDO4DkW7F81BZHrmQ7rBKaI--

