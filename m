Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.66])
 by mx.groups.io with SMTP id smtpd.web12.12190.1648480179042176645
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Mar 2022 08:09:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@detectomat.com header.s=selector2 header.b=uZm7xo9r;
 spf=pass (domain: detectomat.com, ip: 40.107.22.66, mailfrom: harald.brinkmann@detectomat.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3/yyi6fBzVYZjPIFba7ok2TTggsa58PERj37W7nVFgog10+UVd9CR+erbFjHJNjROsRtWJq5gvL2ynhScaAhY2g934V7J5Daf8BIl+HeEROII16rFcy7pIdNQ+C6E+h27TziDLZltAdRaZxjEweqZ2NzD1WHQz1knbMxZiDzwG2x0Z3HNBwunqgflUOXpvL5m6yf5KN4EjZSF1dTFovAe3PNV88eJOQCKkjayOhlsVCbQcSns9WvaZa4QMB6lJl8QTTfxg0DrDYRcPSyB/q9/w4w68GG53UqYxjG+Af+VKnDT9Oi1vQ3dOofBJmaFZabniLQWJOdOCyK5SzjBfq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QEeDg6eUJ3w7hk7RR3lt22q+XhVOmXCIYwo6FUYNDiE=;
 b=YQZHZYKZciXXEBx8N+2Gaq8MhglmpMETLzImoATBnF/ddy4gncEiLM80w9quF8juHM9CNR+l4wb0RTNIEABDaFlBABHgbBseGZdvaob2CDpGgvjB9rE8W4EWvs5zfSd1VWxfgZiqzA5bZxWgAHzoXqhApAHgfnrOsNlZhRjgdfbChgISAmFTohKqiUl/XCe7dtb8n7mdDGCJwFq9hSRxFp2UU34tzdHvAf7AT8emog+HbCyWU0c6y+fZvLMSw5o0rzm1LALqM2cWQri99xcK1j859taHao74jCBsKYK6J07tRB2QOJBqUUmfhy40sMJsNUfSqSWavUdg4cryc2NsBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=detectomat.com; dmarc=pass action=none
 header.from=detectomat.com; dkim=pass header.d=detectomat.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=detectomat.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QEeDg6eUJ3w7hk7RR3lt22q+XhVOmXCIYwo6FUYNDiE=;
 b=uZm7xo9r0VJTj1q6Fg3V0Db0dTUHoZNjlgr/Ow4YSDkl3m3omI82RanvguD0iPIxZ+LwpAl4uktBxNg0cb1LNsDGROyJ3lpQIYwhi79KDMplcgO3CKczIr6gcXoznwiGSlr2GwhRqTbWHwLMiIKEXlob3xxCoOkryrfxqgngQ+E=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=detectomat.com;
Received: from DB7PR08MB3851.eurprd08.prod.outlook.com (2603:10a6:10:7a::24)
 by AM5PR0802MB2594.eurprd08.prod.outlook.com (2603:10a6:203:99::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.19; Mon, 28 Mar
 2022 15:09:36 +0000
Received: from DB7PR08MB3851.eurprd08.prod.outlook.com
 ([fe80::f15e:10ce:ccc7:924]) by DB7PR08MB3851.eurprd08.prod.outlook.com
 ([fe80::f15e:10ce:ccc7:924%7]) with mapi id 15.20.5102.022; Mon, 28 Mar 2022
 15:09:36 +0000
Message-ID: <7f88405e-275f-43eb-6ace-ec86e803b48b@detectomat.com>
Date: Mon, 28 Mar 2022 17:09:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
To: poky@lists.yoctoproject.org
From: "Harald Brinkmann" <harald.brinkmann@detectomat.com>
Subject: Sporadic pseudo abort when fetching two repositories
X-ClientProxiedBy: ZR0P278CA0175.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::17) To DB7PR08MB3851.eurprd08.prod.outlook.com
 (2603:10a6:10:7a::24)
Return-Path: harald.brinkmann@detectomat.com
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ed26702-0d9e-4100-3430-08da10ccf83e
X-MS-TrafficTypeDiagnostic: AM5PR0802MB2594:EE_
X-Microsoft-Antispam-PRVS: 
	<AM5PR0802MB25949155287608F6C327C448E91D9@AM5PR0802MB2594.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NIonPQeczlWvYNsCMO9kz92LFH4h9S9GTD0SOvKmA9h7Z9RrJTcDH0bGxIchMDDuiCPA1zl62+h5xO3+o9FsKF4aQY3MAPF4Ir5fJ5TCcpoKF6y35V5Uj836uN8Z3SiMNWqC6QgdSnLvLTkhW2+6DgKP8OsG0DPLz5rNvEqwWO9+7GhUvdkFcYmBdEIgRlxHavRDxUiHG5MKdkL5H9NIC2+npQsJL0WbUEemzd/GVSm/+1b3Lb4AWa9UtCsdooOAdrVxM/0u7BmABE8ZyVGUyVO5lr1VkXm1zfKyqqIDGxCnLFzATAfJMpgLW05Mq9QYKUORqpuSZGm/48Wc65dz8i1k3ih3jFsyjaqBNIpVP7wzDNtFnXIfToF55xYkxFn/3oYhpg5EHXG5SDEci4YCYKPpqfKq4bPaTpLmWWnYFFG6X87GKAMbRhYcUomiTQUYvfug8CPhvLouGmqFnQQoxZzrwP/Nbr7mFTtCGAELAjpr1wR71Dua5v4N27C3Yl5G+9IoN26pCpgfEDgbIbeafQpqNx3Su+ak5fkaZTxrrZR9EktL7aLIYoLfA991E8DSmsUjzUf4T9/0coHFHvfROA6qbRONE01IkZKBfydsDv5+A586gefVR/w7S2N1uVqT4lY4TJ39kOEPiFE6wueX0TrAIN+IhrGiNdBgPanX433YBcdUjDe6Xq7+sjWI0RZMf78g9En3kmP/vtRELzMiql0vgftCbMLA27G8FpSRhCcKtpUaNaA0bxpluadAff+WZfuF79P/XJwr0+08SgYCUg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR08MB3851.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(6512007)(2906002)(26005)(4744005)(5660300002)(186003)(2616005)(8936002)(31686004)(6666004)(8676002)(36756003)(6916009)(316002)(38350700002)(508600001)(38100700002)(6506007)(52116002)(66946007)(86362001)(66476007)(6486002)(31696002)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OXVOMFRWOVlmVk9yV25VSC9waWI4RTVlS2t2WnJYQ0lXUUluQXFYRDBKYy9M?=
 =?utf-8?B?c2J0Tm5CSlc2MUxjalhGcEg5UDNHSlFqdTN4UFF1S3NtbUhqMHZKM1dPTURX?=
 =?utf-8?B?WUJUN3hTOXc3NnhWT2RjRWV1WHRGdVVRUUlmY0FHMUJIRWM4RFkra3JoazNi?=
 =?utf-8?B?UTRGdXNPQzVlc3NNY1dKckdKU0VIYlFrM3gzVXQzS21DRzlCenh6bmtmWFF1?=
 =?utf-8?B?OGEycE5yU3FYV0JUSGRRc1NoUHA3a2lXbUxnMnNUb2d6OG1vSUxySlhGNjYw?=
 =?utf-8?B?NmpmbTA4UGVmSkozdSs0bjd2ZTJJUGc1WE5NbE5ENTZxRDF0RUpxbUQyYVk3?=
 =?utf-8?B?cmFsd1lvTUoxL3pKcEk3YURnaGFUaC82OEI5VDRFU1YxcnZ6SlVxWUtEVE0z?=
 =?utf-8?B?VjdwbndseWwwU2NPNXQwL1hLQkJBRDlXRkE1ZitNOVNjaW9zanlXRWswWlpZ?=
 =?utf-8?B?TmwyQStnVlBnN1JCVGxHTWNHS09VTEViSE9YUjlBdFNNQUR5a2QzT2kxcUVK?=
 =?utf-8?B?WUE2M0NHWDFaN3ZiQmJhcFNDN3ZsWmlVNmZnRjFVbDNkd0NmeWZycHZBUjVw?=
 =?utf-8?B?RDhaYUttTTZFTzdvVmxYamJiUjVidHE2RFYrZk12bnFJVjVSRUpCQkpQNG10?=
 =?utf-8?B?WGVNcGlNVU1OaTdLVURoVVV5MDRxRXIwRmdCRWxITnllQW5IQWFxNXZCUnZu?=
 =?utf-8?B?dFFsYnpRQzlESWNLYXZiUzZUd1FwQU1vMnpsNHJ6MkhRUDM0KzJXZ08wTis0?=
 =?utf-8?B?cXdEcEwyWElvdTBiNVZrWHhNbWZPaEg5VzRNZnYrZVNRRGZWOERlR0RwWFZO?=
 =?utf-8?B?dVhQUUZHRUhsR0syUFNiM0c4RDJwdDBnUUhaRlNkRmlSNHlKTXFBQjJiQXlk?=
 =?utf-8?B?eVZsd2t3UUxHZ05mMlRCQXR5RXJNeFVUeFRlTU52M2RUUEQ2VkQ3NXQxTzJs?=
 =?utf-8?B?R1JqT3hNbzNvazk0M21xTzNCWGxzN2hNTjVUTDlTd2I2L1VXTldSQ1pab3Ba?=
 =?utf-8?B?VjFnU01kc0tTVkxjU2MvcGx2ZHUzcWNXQ2R5TkYyQkZLRzNKN1JoYWZDd1RJ?=
 =?utf-8?B?TUNMZ3dQZURWUlFKT1hLVUhzYUVMbUhMeVRLNHVoVTkvWVNnYXdvYXRpeFo2?=
 =?utf-8?B?QVRWQlB5clg0UEVNN01STmhvMlM2YkFPcGJNQlhYU1B6eVMzdzlpUjlwVUxN?=
 =?utf-8?B?VVlrRUJ5WENZUGQvUGxXZUxhbzJzMFJDYzZvRVErSVRTWmNzSWhVSzA0a0Yv?=
 =?utf-8?B?VlNkYStaVW9FZHNJbXJSaE54bWV0ZDgvTGFNQTBpTWJncndGTVQ1RGJHRGtD?=
 =?utf-8?B?WFNoZ1JwcHd2R0t2RW9LeS8rZGZ0WnBHbCtmN3d3cm1EWVR6cWxUNGtiTUlq?=
 =?utf-8?B?WmNRbjhzdmk4ZUtUejVCWDlMUjhSZ21qdkZ0Y3VlbS9LenFjTFVoUGVEZ3dH?=
 =?utf-8?B?aGdGaFBNUmVoY3QrallkU3dyMlM5SXB1ODFjdGc4dUFqRVBCQ1NHWDFYRWZm?=
 =?utf-8?B?TkpOUUNZSEJVZDV4Mnc5a3g0c1h4Yks1S0QvanNZQjkwTGY0M0NUZkhCVVBo?=
 =?utf-8?B?eTk5cmJqci9KSGJ1RHgzdzdKVHBOMURYcloxa1pocU9SOHNZdlY1VExaV0FI?=
 =?utf-8?B?c1JQUHN5ZTdDenQ0K29lNTByajFjdGUyQVZva3g3S2ZLMzJ3YXFOdXdacUdS?=
 =?utf-8?B?ZmEyNnZPU2ZOSGhEc1pzOElCekI0MTlhckxacEhtUDVpTFNiVjBlbWd6elZC?=
 =?utf-8?B?dnFuZUtyRkovcUNFSHFCTWo1TGtseTNSS1pWL3p2Q3huYUEwZ2xQMGhJRVkw?=
 =?utf-8?B?RVZJaUZQVXpydFE2UmNscVl4Mk12Qzc5Z3RhenRURGhKV3pTUi9QMURWSmkz?=
 =?utf-8?B?KzkxcTZPbFpqUnFkMFZqaS9KR1psOVVoR2NKd3laVUVuZTM3M053YWlvL3ZV?=
 =?utf-8?B?b3lFR1BOelI3TkhiYm9aMjBqMDF0bWJxOFNYNjBXVGNFaXUwZWQrT1doM2xo?=
 =?utf-8?B?UlhYM3VFQlFzYUZIRDl2bEgwc1BpN2hoRnE4Nkl6NEdtUFBmU1ZWOUp1WlUr?=
 =?utf-8?B?UFlEQnV2U2syZ1hTYi9Zc1J1SWVzVlB0WjBuaUF3RlltNGQ4MXJnUlBROTNm?=
 =?utf-8?B?UG9MQW92MmluWmFxRTIraGRGc2xnaGlrMFdneHU2Y0NiVkJVempwRkNOUjUr?=
 =?utf-8?B?eUNwd20wdFdCYnRkaWpQQUlwai9RdEJIZGFRT1pha0htcGc3UXR1S2RUY1Rk?=
 =?utf-8?B?MnNZZ1VvMWw1UEJEdWdZRHBGSk1KUDdFWmlOQW5yYVVhd0RvQ2xNRE0vMmlB?=
 =?utf-8?B?T3lNOTYxczNYOEhNZ2JRV2diZFo0Q2NiR3FDcHAzK1ZPOEJiNi91ODQrMUhY?=
 =?utf-8?Q?XWcbq2cp+hARdQwvbpufLskCZ0dmnQyBZLKcS?=
X-OriginatorOrg: detectomat.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed26702-0d9e-4100-3430-08da10ccf83e
X-MS-Exchange-CrossTenant-AuthSource: DB7PR08MB3851.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2022 15:09:35.9294
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 07587bd1-3a09-4971-a5a0-370e32888812
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PjDZbIQdM25Sy2cChFZkwh0yzV/42ilBkSE3kBY3VS+NgooAHAP9ewPVfi3EzxpcQyrbVxIaipZGuzjb5KjEMK5pRrVakqPh9KC7fardfIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0802MB2594
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

I got sporadic pseudo aborts with one recipe that fetches two repositories:

>path mismatch [3 links]: ino 26608444 db '<builddir>/package/usr/src/debug/<recipe>/AUTOINC+540ff2dc1a_e526a4fce5-r0/foo/file.h' req '<builddir>/tmp/work/core2-64-guf-linux/<recipe>/AUTOINC+540ff2dc1a_e526a4fce5-r0/foo/file.h'.

When I saw that base.bbclass adds ${S} to PSEUDO_IGNORE_PATHS,
I also added the directory to which the second repository is cloned:
>PSEUDO_IGNORE_PATHS .= ",${WORKDIR}/foo"

It looks as if that might have fixed it. Is that plausible?
Does it make sense for pseudo to generally ignore all source directories?

-- 
Harald Brinkmann
