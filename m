Return-Path: <hongxu.jia@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC80CAC592
	for <webhook@archiver.kernel.org>; Mon, 22 Sep 2025 07:05:37 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.45895.1758524734612935149
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Sep 2025 00:05:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=oGk+a6Y8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=13607bc8d8=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 58M5hTSo4002163;
	Mon, 22 Sep 2025 07:05:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PPS06212021; bh=fqbbxDBvRjktZRjzGkSkiw
	Nsldy4qlhsZVU4TIWr6Iw=; b=oGk+a6Y80SZp4X4LvvABbzV9QdT4Zx/RIzCVyR
	4LMFyEyaNJIklw+reX3G6LIhqetiA04kLUs499fPt2uGQHSA2zLHhukgshvGmw/G
	pIGK9ELa9mL2PCJg1xO7SM1yvdFjS8jvBpKgwG2kOEbe0TcY4SbbVJAROYhhCOOB
	6jT8TyvLQPzKkwf+4RRkwM7lqjkLsVxiZ9liIsv7E5/67cIaJq1SZGniiHbpXokF
	cboksDS9MhOLkXMiexmTi2MwaiEu2R06TF3pGsHxX8C4ciqOsCFcPjURONUzy9TA
	wjL7nAWYNPk9iScp/M1Nkw5TEJ3g7Y+LY7GuG8nliGdoo7Pw==
Received: from byapr05cu005.outbound.protection.outlook.com (mail-westusazon11010031.outbound.protection.outlook.com [52.101.85.31])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 499hg1hhgy-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 22 Sep 2025 07:05:32 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eE2rzsuEZuSSfmHgYq7iXvbYlzwHkAwpWGoebLlaA7hRacPkpuruyiK5PSmo4ai4EPQmXB3ru5qf2hnvBcASrNBbCW8h+I2Fna5vDgmbLzifdOa35Qso9KqZ2G7ewJKwoLvmdnX0X12uzHqPLk5JcgLCM5cQ0e+2qwcPnH8MqD3cFRKbIbBGdd3oTBpBLY3SJzQcnGsE0WCV5R+pPYXiC/Fh3SKcYOTT8kUsft9VduBWrtSgN9U68Z6kLwolRqCGjujah5HXzOttofv/OYQ6pd4iMdkgZIblL4ixIlyr/rc9qep1dmpA8r35/uvlZT/iKTm/DZa+8215t/fUp4mojw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fqbbxDBvRjktZRjzGkSkiwNsldy4qlhsZVU4TIWr6Iw=;
 b=rD42BgDqO1SXDZjoxs+PHThopKugxnIDgWkG/mA+DRwuYbQkl5OKNEIe1GYhmfOawlnuZ2+Oc1UOndp7zHU3rsB94O2zxzLsViOkryt0fruXbhxklRcaXDOEW/N+rmL8jCoYUGE6s3Fqf544XWBYjBgu/C1Dsw5GwTlNoMFsb7n8picx3cQStbZwt2htZUYxCMRYHNN06Fcol2KSUPmm46Y9RBIsvjComEovwIUvce82hDeTWMfxoqqP2aC8BxkKdhrCHfEcKtN9qoZm6Debly/nBFpdA1JVx8wCGctC2Qfa7ElsDMD7WCUBsdFpULUcylArnHAaVFssHN/HGNHdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH7PR11MB7608.namprd11.prod.outlook.com (2603:10b6:510:269::20)
 by MW3PR11MB4521.namprd11.prod.outlook.com (2603:10b6:303:55::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Mon, 22 Sep
 2025 07:05:30 +0000
Received: from PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e]) by PH7PR11MB7608.namprd11.prod.outlook.com
 ([fe80::ef64:bc9f:eb8c:e6e%4]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 07:05:29 +0000
Content-Type: multipart/alternative;
 boundary="------------AWUPk2M7g0JjdM0Jb0fYSEzn"
Message-ID: <66e212e0-9ff6-498c-9073-c035f2632384@windriver.com>
Date: Mon, 22 Sep 2025 15:05:09 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] meta-tensorflow scarthgap commit sha change
To: ajlennon@dynamicdevices.co.uk, poky@lists.yoctoproject.org
References: <EHVw.1758123487737695311.tSlM@lists.yoctoproject.org>
 <CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com>
 <b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk>
Content-Language: en-US
From: Hongxu Jia <hongxu.jia@windriver.com>
In-Reply-To: <b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk>
X-ClientProxiedBy: SG2PR02CA0063.apcprd02.prod.outlook.com
 (2603:1096:4:54::27) To PH7PR11MB7608.namprd11.prod.outlook.com
 (2603:10b6:510:269::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7608:EE_|MW3PR11MB4521:EE_
X-MS-Office365-Filtering-Correlation-Id: 98ccc16f-7663-47ac-88ea-08ddf9a66a33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|4022899009|366016|13003099007|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Sk8xVDFNa3lhaE5WWWVXb2x4aENmRFdBVHFBTytLbC8yNWdRdFE2dVlFU0lN?=
 =?utf-8?B?WGpDU2lZbnZMeEhqcVJXRVNib2k2VUd0NnNjcmdYSzJ2eTJxU3JLU2tPblF4?=
 =?utf-8?B?TGdrNktQVXZUR1ZWd2RjMVc4S1ZaTTMxdVlyT0YreGZBOGdkc1YxMjFWejJ1?=
 =?utf-8?B?TEhhYTU3cGw4ZUl5RW5hNy9QcVF2VmxDd25jMTNVb1F3WDE3Ull2eGRkc214?=
 =?utf-8?B?YXNwNjlvWlluaklMcW9teVI0dGcva3cvUGVVOUNvaUpLdzQyaUhUYU9pcmhE?=
 =?utf-8?B?RFBraFVod3l3WjZaMWI1Q2NWWXNBL3hwR1NlQ2w3bitwSHFYYWFqSXdXUlpY?=
 =?utf-8?B?SCswZmg4UFF3SEFKazZLYk15SmFhTHNkTWFJODJRS3diM1JrY0tUY3JGWFoz?=
 =?utf-8?B?OEtZd0ZkM095aURMVmdBM204b3BGNGl5NDdRTm8yeldqVFFGVnVnNmtpdDFH?=
 =?utf-8?B?b2w5NUxqaVN2Z0tDUHBoYUFZZUx3L2xHbTNsUXVLRTUxeDVjUHJxQktsL2dO?=
 =?utf-8?B?UTBaODdEWkRYaTRzRzZnVTIzN1B4TW9hOWZhdFJoUkVkdVc5L1o2aDRoY21y?=
 =?utf-8?B?ZzBJdHJLalJYVHZ2c0lieW9KRk55K3N3U3RHM3hJb3gzbVhFaGdtcWZlK3ZQ?=
 =?utf-8?B?bisyRFpFeHZOTVEwZHZSL25hMmJWOXBSUXhtTDBnUUNjdWNCUjdaQjhYZDg4?=
 =?utf-8?B?TU5CcFViVTMxandVdEUxemw5elRPTDlqd0hLMDNzNy9LWitlQkZISUR2S1Ey?=
 =?utf-8?B?OW5RYzBrV3ExVUpIVGlKZU1EZ3VtdVgvNnR5ZXRTVTg4Rk4yak5mSTlSeDlW?=
 =?utf-8?B?ZzBBM29LeTVsdnRSSDhoaEc5S29RZUQzV2JMazJSdHpUSnk3N1U3Zkt2Mkxt?=
 =?utf-8?B?WkR1M01JV2JycmhLVVFaOFkwOVQrME5hTFlnb2NyNGd1a3cyWkoraE1sSHBV?=
 =?utf-8?B?YU5PVGxDcSs3RFl0TmpSbEhjRlpLMDZsZDlBZ09rVnlUWmVMQ1B3VGpuekox?=
 =?utf-8?B?MjhDbWdLejFxd0RSdmkzUUQxOUVHSW5idWlNMlBodURjRTdpeXp6eXpXcDB2?=
 =?utf-8?B?SHVSVVFaa3Q2MXVBQzBZWlFFcFd6SHVYaVVVelordUZKNjBpZlZ6YktUREpN?=
 =?utf-8?B?anJJLzNoaHppNUpBZlkwRjNnNTI0RXFOZmkzbGs2N1dSbmdOYnZNOXhkdEZw?=
 =?utf-8?B?Z2tWVnl3RFFSYnh3Z241aXIvMFB0YzVpTGFLNC9wUExwTEg4eUpsUmdySUM0?=
 =?utf-8?B?MWwrVmwzMUJEMW1OKytsdzBvNWRMZGc2UDNnZHhsd0ROa3A2Y1N1bmdEaHUx?=
 =?utf-8?B?aDBER3B2eE1QRkJDR2RTS3BoRXBoUFMvQi9GRHZ3VnBVN2MxekpBMEZWaFRX?=
 =?utf-8?B?MFBrVjY0ZTRDM3ZkMExESzRKbStTeEF0cTJrZk4yYnhodnliaVg3MDN4Wk9j?=
 =?utf-8?B?UVpyVmI3bGtIbUZ3S3VDQkhBSlJZRDZtcDBUZWEzV1FuNWxpamUwMnNybk1s?=
 =?utf-8?B?TlRENjhuV3I4QVhZYnV6a3lic0ZrcDVIWVJORkZrSzBCckY0bzZwQmlNcXJY?=
 =?utf-8?B?Qmx5aURxZ2tEbmd0V1E2U3JiYXM4UXVaVHN1R09FSVJaVk5DV1dCUFJORUlX?=
 =?utf-8?B?Q2xYaStjZXNHYUMvQTNMdkF1dm1VQ1hzTk1MTmNnQ1FTbmRDRE9pZCtyOENs?=
 =?utf-8?B?T2RqSFZQU2tsUmRpeFFEa2EwdGsrdHBYYUR0RGdCU21jeHYyWlhWZzA1SFNr?=
 =?utf-8?B?Q0VTZG5UQnk4b2FaTXY0UVNjVHE5SnFMOCtCdisyOTlUYUpXUGJ6SlJVTThv?=
 =?utf-8?Q?z8/K+8msVjBjoitw2jE2jtFW7HMJDdUoOi+FE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR11MB7608.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(4022899009)(366016)(13003099007)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YnBQZlladERzYWxibnJZQnB4b0ZLc0dxSU5lUUNTY3hVaktzZnpPRHJSSjlq?=
 =?utf-8?B?YmcvSW5Kb1ZYbFhQZTRZcHI2VWRZNWc4MnZvanNDaSthNHV5VS9TYXlMWVpk?=
 =?utf-8?B?VExJWmJadmxEQnBFSHU4R09QUG9zb0trWkptSk56d2pvRHM4WDV1OUdiM3lY?=
 =?utf-8?B?VEZHdlRWMVZVYlFBWUE1SkdoU2F5cnlYMWVLREJOVlh0T3pEOXkveTUxcnly?=
 =?utf-8?B?T1daUUdKTW11UDN3emQyUnphUWV5WkRCMEltUEZhSjVuYmo5ZnFJMERuZHNx?=
 =?utf-8?B?VkdTUXZkQTNQL0djVE9wVnFqZXNiRHFKQ1piSjc5djdkd3Yxay9LMkJUQ1Yw?=
 =?utf-8?B?OE9iTlJQZnYxU2RQdWQ4M0twRjFxTmhEdGVJNWxid2RXR2hQQ2krMXNCRFlI?=
 =?utf-8?B?TkJVNVYrMk8xcGFUbWJBRGtjVWVHWXd4a1F0YlNGd0ZLRENKZUR1T1FVZmJq?=
 =?utf-8?B?YmppNWQrK21TT0lkUERqd3pXYXJFcUZYdndwbVhjSml0VVBCdGhEMUFaTFU1?=
 =?utf-8?B?cHd2bmNXYVBGbFE4NzhhRHZJQ3F6dlpvUWhTcmI4ZjY3cy9JT1U5dUU5RTFp?=
 =?utf-8?B?TURocnJIdTZ1MmZSM2NsSG9HS0N6UnBmcW5RcDgwUUtSQXl2VmgrdE9ETzRS?=
 =?utf-8?B?Ly9HNWVaR1Q2dEUyK3VlRHJ2TFhYdFRuMlJ4aGdCV3VrMUJLVHNhclNuejd2?=
 =?utf-8?B?M3dXTHJJU2x6Y3Zhd2svNHh2YWF4VXdWbkZ3TnErT2k2SlBiNDlzQ1lpeEFU?=
 =?utf-8?B?RU5kSkJOWCtUa2svbG1zZ1VhNlAwUmFZamF6RVlLdE9URTdjZ2xSSG5VRWRF?=
 =?utf-8?B?cERBa2huSU1VdXd2MzgvUlVBUExSQlNHaXlNckVseFpnOWc2NExKRjYvaThq?=
 =?utf-8?B?VEZ3R3BCbUxPQU1LK1F2VE5JRHBKdTR3UFdQUENRSEZ4NDdYS1RIYnE5dW5U?=
 =?utf-8?B?TXhsUm4vdllDSGZwYXQ5dWRYZUF3MFhVYjdQTXhWblkrRUhULy93d2NYenVM?=
 =?utf-8?B?SXhSdEpTOWZOZUlFZFJGSDJiblBmNkI2RUVWazBHRVB5M1k0ODVXTndGcjVO?=
 =?utf-8?B?MTRoZjlRTm9FbkdIbWV1TkluZGE1akN4dWVEY25GYjRHVUhRck5TS3dtdS91?=
 =?utf-8?B?Zkh3bGo4SlZaV3d4UFVEcmFxT3VwdUpDTTVpaC9sbVNaRU95MHdCR2dmeEpT?=
 =?utf-8?B?dzBmdmxscXVjSXZHTUM3Tll1NDZhU1pPNDlNMzE0VjdXYXlucXJzbGJaek9X?=
 =?utf-8?B?WjVaRy9oeEJpWTdERkJkNHpINVdjSkczZThaSDhoL1VLWXlPZndodEVVSGIy?=
 =?utf-8?B?RVZFUnpWU252VUNpM1NkdXQremVIK0pOVzM5NThCQnFaNlhIUzZFSm1tN2Nu?=
 =?utf-8?B?bEtJNnFEa3BjUTR3dGdibFhreEx3Mkg3U2lXOVlOalI4OUxtT0k4OWNPclVN?=
 =?utf-8?B?bGZ3UCtNQTJ0SFEveVJ5UUM1Rnd2ei80bjh3WXZPaXVoZ1NLQk9hOTRsc1lw?=
 =?utf-8?B?WU5BYWJyVG5oaitFU2FxR3gwVlJZQU9UeW9hRWlnVlhHbThiZm5vQXJPNS9r?=
 =?utf-8?B?ekt5QjZHenB0QXlOYWV3T1BoRnZ1QmhGa09QQkdOYlFwczZQNmV3K0FZVGFR?=
 =?utf-8?B?T3ZJc1MvUURydHg3Y203ckg2RUt6b0lrRXcrSWxjTHVlcXBPTzFaZTUxVC9j?=
 =?utf-8?B?V2lFV1V3R2k1ZzlPMEFOa2ZGRVZaTzZ3VTI5ZmdSODJuc01ESmJjYWtxY2dX?=
 =?utf-8?B?YWJINnRjeUZjZVEvTEFLajJkY0ZKVUxRblNhUUI2eEJEblRQTjA1V1RURDdz?=
 =?utf-8?B?c2o0TUI0TktQNERaa0Rrb1d0NzNGaDFpb0tRYkxSV0NUZ3doTVZjQ2tUMlRa?=
 =?utf-8?B?cVFoaUZyS2pXeDJMYzVYZUcwMUk1akRnYnlNOE8xOWI0WHM2djEwMVc5SVZL?=
 =?utf-8?B?ZXM3UUs3Qy9HZWh2bjNaTkFKd2hjTzZBUHBMV2poVjhhMDArVkk3dGJNSW14?=
 =?utf-8?B?aVpVVTdXZVFpUFdxcWJjNlM1VDA5a1lXdFhNRUIzcFdEeUtPSkNuNE5FTXN6?=
 =?utf-8?B?KzBadlZWMWRvQjNML1VnalFHcUdlZnNadHZCc3BNYk1oY2M2Uk1peStmdkdo?=
 =?utf-8?B?eXdGWDNmNmVQRHlMM3JFY0pESS9SYlY0cG45SnR0NWtkMi9Mek5pZGY5SVV4?=
 =?utf-8?B?OVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98ccc16f-7663-47ac-88ea-08ddf9a66a33
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7608.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2025 07:05:29.9654
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WYET3uLtZn/2Wmc5MwSRR8wKcxumKyITALqyI1fygYzchhzc+gg+tghu+U6XN0UiO7BvJZAvOGQ5L4+XqjgxrebYhSX3FLXrpBlQu2H0ZCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4521
X-Proofpoint-GUID: KHYeX94nxPA13focSr5Dyln3vC8riMbq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA2OCBTYWx0ZWRfX1Kbu+RQ0ZcxY
 8QauaCVLnmsUDlTSOYAe1EJ/NAu8sFcH6vySzmZlO6rd3MJc6yZl5hPz9eBm+oeCJn2RTymHBYX
 TGj6jJhQuKu8N4UyvzUlAu9vIF465aZ65ZZSUExNmH4Pr/gL3XiaNI8ku9IT0CIhQqRWfrSBVyH
 MAshEHgnMZGWx1BvlHNwxBhZMOpC9PXzwrRduAwZP9m9I20sa/P/MKQJsVgrZ5fxWR2rK93lc+z
 N+f+cZnRpENpqMFwvabB5gcTxNlL6MPL0WH9sQuhh+D6pNMcLFhWwZko5AJCe7psDNwV+YKSnjj
 EuwFjU4nWRTurd70wsYZKdkYG33jXPyofGjVhAvSKUfcDuJ5Fbp4DVvuptwGNY=
X-Authority-Analysis: v=2.4 cv=Yfi95xRf c=1 sm=1 tr=0 ts=68d0f53d cx=c_pps
 a=mGKQszq4vdWEHw2ByKFqMg==:117 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19
 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10 a=iGHA9ds3AAAA:8 a=t7CeM3EgAAAA:8
 a=BYNZGEX35MoZuARpNMsA:9 a=QEXdDO2ut3YA:10 a=SNa3F-D_AAAA:8 a=pGLkceISAAAA:8
 a=TMPnc3K-zAfNdyPapx4A:9 a=TBTrh1u0q03HmPQE:21 a=_W_S_7VecoQA:10
 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22 a=FdTzh2GWekK77mhwV6Dw:22
 a=m-6B9EQt0yvAGLXpEccn:22
X-Proofpoint-ORIG-GUID: KHYeX94nxPA13focSr5Dyln3vC8riMbq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 phishscore=0 clxscore=1011 impostorscore=0
 spamscore=0 suspectscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2507300000 definitions=firstrun
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Sep 2025 07:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13753

--------------AWUPk2M7g0JjdM0Jb0fYSEzn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/21/25 14:31, Alex J Lennon via lists.yoctoproject.org wrote:
> **
> *CAUTION: This email comes from a non Wind River email account!*
> Do not click links or open attachments unless you recognize the sender 
> and know the content is safe.
>
>
> On 17/09/2025 16:43, Martin Jansa via lists.yoctoproject.org wrote:
>> Unfortunately yes see 
>> https://lists.yoctoproject.org/g/yocto-patches/message/2202
>>
>> On Wed, 17 Sept 2025, 17:38 Sourabh Banerjee (QUIC) via 
>> lists.yoctoproject.org <http://lists.yoctoproject.org>, 
>> <quic_sbanerje=quicinc.com@lists.yoctoproject.org> wrote:
>>
>>     Hello all,
>>
>>     The meta-tensorflow, scarthgap branch seems to have undergone git
>>     commit history rewrite!!
>>
>>     Earlier this commit "tensorflow.inc: add write permission to 2
>>     more directories"
>>     SHA was c382865 now it seems to have change to 1a0c74c.
>>
>>     Is anyone else observing this issue?
>>
>
> Yes it's broken my build here too!
>
>
Sorry for the error, I will make sure it doesn't happen again next time

//Hongxu

>>     Thanks.
>>
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13752):https://lists.yoctoproject.org/g/poky/message/13752
> Mute This Topic:https://lists.yoctoproject.org/mt/115293519/3617049
> Group Owner:poky+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/poky/unsub  [hongxu.jia@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--------------AWUPk2M7g0JjdM0Jb0fYSEzn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/21/25 14:31, Alex J Lennon via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk">
      
      <strong>
      </strong>
      <div style="border:solid #9c6500 1pt;padding:2pt;background:#fcfc03"><strong><class="msonormal" style="line-height:11pt"><span style="font-size:11pt;color:#000">CAUTION: This email
              comes from a non Wind River email account!</span></class="msonormal"></strong><br>
        <class="msonormal" style="line-height:10pt3"><span style="font-size:10pt;color:#000">Do not click links or open
            attachments unless you recognize the sender and know the
            content is safe.</span><br>
        </class="msonormal"></div>
      <div>
        <p><br>
        </p>
        <div class="moz-cite-prefix">On 17/09/2025 16:43, Martin Jansa
          via lists.yoctoproject.org wrote:<br>
        </div>
        <blockquote type="cite" cite="mid:CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com">
          <div dir="auto">Unfortunately yes see <a href="https://lists.yoctoproject.org/g/yocto-patches/message/2202" moz-do-not-send="true" class="moz-txt-link-freetext">
https://lists.yoctoproject.org/g/yocto-patches/message/2202</a></div>
          <br>
          <div class="gmail_quote gmail_quote_container">
            <div dir="ltr" class="gmail_attr">On Wed, 17 Sept 2025,
              17:38 Sourabh Banerjee (QUIC) via
              <a href="http://lists.yoctoproject.org" moz-do-not-send="true">lists.yoctoproject.org</a>,
              &lt;quic_sbanerje=<a href="mailto:quicinc.com@lists.yoctoproject.org" moz-do-not-send="true" class="moz-txt-link-freetext">quicinc.com@lists.yoctoproject.org</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              Hello all,<br>
              <br>
              The meta-tensorflow, scarthgap branch seems to have
              undergone git commit history rewrite!!<br>
              <br>
              Earlier this commit &quot;tensorflow.inc: add write permission
              to 2 more directories&quot;<br>
              SHA was c382865 now it seems to have change to 1a0c74c.<br>
              <br>
              Is anyone else observing this issue?<br>
              <br>
            </blockquote>
          </div>
        </blockquote>
        <p><br>
        </p>
        <p>Yes it's broken my build here too!</p>
        <p><br>
        </p>
      </div>
    </blockquote>
    Sorry for the error, I will make sure it doesn't happen again next
    time<br>
    <p>//Hongxu<br>
    </p>
    <blockquote type="cite" cite="mid:b2ea8729-2eea-4baf-96b2-6485f9ea267c@dynamicdevices.co.uk">
      <div>
        <p>
        </p>
        <blockquote type="cite" cite="mid:CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com">
          <div class="gmail_quote gmail_quote_container">
            <blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
              Thanks.<br>
              <br>
              <br>
              <br>
            </blockquote>
          </div>
          <br>
          <fieldset class="moz-mime-attachment-header"></fieldset>
        </blockquote>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#13752): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/message/13752">https://lists.yoctoproject.org/g/poky/message/13752</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/115293519/3617049">https://lists.yoctoproject.org/mt/115293519/3617049</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:poky+owner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:hongxu.jia@eng.windriver.com">hongxu.jia@eng.windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------AWUPk2M7g0JjdM0Jb0fYSEzn--

