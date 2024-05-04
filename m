Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CEAC4345F
	for <webhook@archiver.kernel.org>; Sat,  4 May 2024 01:39:22 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.5723.1714786754116781436
 for <poky@lists.yoctoproject.org>;
 Fri, 03 May 2024 18:39:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=e3U4dJZ0;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=58543f3449=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4441U2Xi011051;
	Sat, 4 May 2024 01:39:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=6ya1/KX/m8hCR3f3QcN
	oiGnbAwoHJwqmklBpCsrGPbE=; b=e3U4dJZ0W5mVq8F8dCmpDB5jBt2XfzxKqiY
	RSpm1Ji4Ek5vdfaoq+lamvv9bPTadvBoBrgkWfMk6AxPyS2kh2ovAr9XRtbvLprC
	3n3yvUpTuvL5t4CLipKUqddCCjzDffiUMpqAVNAc9VPb1dFAKX6xZjr9Tv/POic+
	KMhx9tUtd04e5W/VToxaNRDVdyW6eMF0kylGbYF+9LsxQmMUXQey0h6rVWVCOnu2
	YsBqLyhpxwKJUZNWOhXoZ0FjJ0Do+aTN7ZCIkNmtSYWeuQhuOepKQB9fnOXslyyf
	tItmXms5dg+J3oeeTU5aatflXRWncIV5HezHqorU0vxCTmtDZsg==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3xwa7x016y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 04 May 2024 01:39:12 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MIddMNynCNL74u1wt/XoaFd+3fm1s96WOSrg3J3ihvTwRd/tlw3cxumBVdNMMEU0c+En7gYGdb1aXEDEQIFpROllUhtTT/dvuJBB9RO7dOTZb+KeGd5HB9lEwCCVsUTnYxq6eP+IRqVFp04UiXWoSjdicWEts0ZiLZXLWZN4K9SPAYCvhdvu4ZXpHH/OqoOvV75rxH9uzuyUxaBFqMdJsaYqmypWzkO+CPwrc8Mtkc9cZZg0HQ/NVWPSWKtytKcLFCXBtv6Toq6b+eRJqFedRw3BoqZcKhnLzUjZwL5e61orCZGX4jzSo4qTTc/TaRXW2hYjVRckfGa7Zi8A9DA92w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ya1/KX/m8hCR3f3QcNoiGnbAwoHJwqmklBpCsrGPbE=;
 b=bn5lwSnmpEr5xJ6LOw8qdzZ9F5VSFbZPnd11mEVG9FtvhjygEEnEiFIIqFF+2NRlfggxumD+DqROtsMBjxWS0YtMdXHevd38/oxI9ZEMdLdkaKDR/pgw8pIl8gwxUXA6c7XGpTbHn77AtN3xGpcFnuRdEcwo6cWyZ7CmpMtiSwpMh90xpHTlczn9wF1Ur5WRAQxNRRFU68VwWyydotCfSIw2ZWOVaJhLfWOkmNYcoWXNW1Qj7RheDLeunsgT4i4dADqAetnss0UCvWrlBvucJP/bZvlHKpXkxrp6b+tlqpvw3qdXY3+LkmvaHfWzH/fLQMWrS7lJ2f9qJgTXJgAbRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com (2603:10b6:a03:42e::9)
 by DS7PR11MB5967.namprd11.prod.outlook.com (2603:10b6:8:72::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Sat, 4 May
 2024 01:39:07 +0000
Received: from SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::c141:cdae:82f5:1b89]) by SJ0PR11MB5920.namprd11.prod.outlook.com
 ([fe80::c141:cdae:82f5:1b89%4]) with mapi id 15.20.7544.023; Sat, 4 May 2024
 01:39:07 +0000
Content-Type: multipart/alternative;
 boundary="------------Us09QbPEWPlpchxUKg2vpElT"
Message-ID: <34f7765a-22da-4b3a-95a0-952f7c47186b@windriver.com>
Date: Fri, 3 May 2024 21:39:05 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Failed to spawn fakeroot worker: Broken Pipe Issue
To: bhstalel@gmail.com, poky@lists.yoctoproject.org
References: <OGzg.1713784502488483155.cwqW@lists.yoctoproject.org>
Content-Language: en-CA
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <OGzg.1713784502488483155.cwqW@lists.yoctoproject.org>
X-ClientProxiedBy: SJ0PR05CA0077.namprd05.prod.outlook.com
 (2603:10b6:a03:332::22) To SJ0PR11MB5920.namprd11.prod.outlook.com
 (2603:10b6:a03:42e::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5920:EE_|DS7PR11MB5967:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bd73c01-d2b6-46ef-f9aa-08dc6bdafd57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?aGZ2dTVVMk9TejV2VWUyZ2xwM29nSDRjaC9HVVlJdkVGaGRjL1c0YkVjVDRI?=
 =?utf-8?B?MVZUcXdWTTIvZ3hDYkNJTTBCMFYyZk54MXVZUy9oOGFYKzJyMDZPUWZ5S29l?=
 =?utf-8?B?Q0U1TEV3VzBQN0RXOGxkekxhNHNiSTlTa2FBRFNvV0ZKQldwNExEM20wVTU2?=
 =?utf-8?B?cDVCaVhIVFI5UE9iU1REMC83MnZGQVdvNTVVd2tpcVJLY1lkdzREaTVVaFhH?=
 =?utf-8?B?L3hUWTlja000MXpNRzBYNEtkcDNDTWFuNGtNV0VPV2R4T21tVndVc0lqVitP?=
 =?utf-8?B?Wk94MWlhVHBic0NsbXhRQ3psbk5vSmJpQnpRVzg1UVlBZkw3NjNxQ1dRZ0xJ?=
 =?utf-8?B?Mzc2T0M2ZXFYWnNRaDVxcjgyRTdKU1p4bS9uV241QUhvTzFmWURXdG9OR1Vp?=
 =?utf-8?B?QXY4TC9nRVV0dis0Y3VvWnI0K3BROXBFK1h4a3hEKzBOQU81QW9vamtWTkl6?=
 =?utf-8?B?T0VsT3RBdWZmZ3VtTUxqK3krTU1UTVFWNklVelVBekJ6WGJ0VENMNUYrMFZ6?=
 =?utf-8?B?cGxtaTJPOTdKQ1BtQm1uc3BVVXJGb1A1WkpoUlJQaVFSQkdMaWNyUmViNFhk?=
 =?utf-8?B?VEZNWnp3V0ZkdzBrVDJaS1hzbms1eUVVUWJnallzWk1tZ29qNnNCWU1SbmZ0?=
 =?utf-8?B?VUZGb2Zuczg5WW9HM2s0b0FYZzJVY2hyZnliNmtDMERzTnZCcDA3VThLQ0pS?=
 =?utf-8?B?dUo4bU9wckMxN1BPZ29qbW55V0ttS3E5SFFwWStiTG1pZDBEYTdNL1BiRXRK?=
 =?utf-8?B?MC9YTDJYYkpPb09meGR2MUdRaklLZStzU3JuVXBGejFncCtnVk5PS2lmTXpD?=
 =?utf-8?B?ZlFnSDFGTlkzNll6c0I4azR2Tk41OWFpV2REY2xsekpmaWVqNUprVTZZN0pZ?=
 =?utf-8?B?L2J6L1lnSzJWa0ZMQjAxSVJCRXcwMXowdjJ5L1ltblZsM2k5YlRIbUtkMWZL?=
 =?utf-8?B?U3M2MHVXWk12d285UEJ4K2JlWWFXdEYxaSs0RHJZeFBkOWZhbS8zUGI1eE9q?=
 =?utf-8?B?NnRnZkJ5SG51NWNza3dMNUdkUHM0SG5rT00reXg0TExlY3VIRDhzMkNVNEZi?=
 =?utf-8?B?U1dQd09iUmxURHp5eTE2dlorNjRwQ0JSdytCdEQ1UjJXT0Z2Y09jZmtkaFNK?=
 =?utf-8?B?VzhMc0RYTWZoSTByeE5vVkF5UnBsaGlRN3dVZWJldnlrVk56Z1I5cDlmQ2RI?=
 =?utf-8?B?aVUwV2wxR1lSbVR5Rnl2enBFRFRWcWRMUFJYUnBYOHNqMkhOa2JmT2s1QWQw?=
 =?utf-8?B?cG4zT0dtaW81NlZPcW10eGgvckR2RjQyMUVpbjlBQ2FYMlBKNi9SZ2JLYnhJ?=
 =?utf-8?B?T3Fnb3ZOMk9wL3dCNkRSMDcwWmlJZzl5c2l1OFczM05yT0d1OEZBL3NNRWpP?=
 =?utf-8?B?Zlg1dENHNFpnOG9FN0tZZTVJZGxLelhNczhibU9URThvdTlGdFRvM3JXaTU3?=
 =?utf-8?B?SFNPWHN0am5DTStCVGExUTZnRTZ0OUpFcWN4bmozN1BjZFRweXlKKzVER1Fr?=
 =?utf-8?B?Zk9DcGRIRyt2ZmtFN1B6bUZ6R3RiNG1jbGRpTXh3TmJXU01XU0VWOEhmYmxo?=
 =?utf-8?B?Yno3NUJ5TGNOSWhZSVYydnR2bXhRWkRHWkI1UWZtT3VmNDdyNFFub01XS3h3?=
 =?utf-8?B?MURRUkloUUhMU3VDMzVRSklGVGU0U3BLbUVXTTBsYkgxSmpiUVZ2VmdCS3Vm?=
 =?utf-8?B?VWU5TmVQSk9mZVNpV1lFR1VieTlKU3VtOXlyQ1BlYmN6MkVaeFhyb3dBPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5920.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXVkTTlVZFl6Q05rb2R1VWVjRWhJd3AyL2Z0S0xtQTZNaFBlbmhkQWMzeitV?=
 =?utf-8?B?eDFGSVR3dVo3QytNM2ppR2N1K0RjUC9KTE1UbCt5TXdzVG5aNWRld2k3TkZz?=
 =?utf-8?B?aDdreU12bTJJaTkyTjhuUVFOYlQ2R0p6MTluTXpaZDRvVU12TWlwV29JOFpl?=
 =?utf-8?B?eFZIaEVPbk1sZGJ1V044NXE2V2lZalU5ZHZBNFdTMUtLdlAvZmVSM2JiMEdH?=
 =?utf-8?B?TjhDS2t3cllBRWU2UVk2b3FNcnRuT291SWRnUUhQcGZwOTYyUm5LVWxocEpu?=
 =?utf-8?B?NjZabWNtSGF4U2llUGxRQTBPNlQ5Z2JGcXJCcUlKNU4zdUtSTkplVE96T1Rp?=
 =?utf-8?B?S0Y4bE1SaGhneGtad0tLMGp4ZmlvQ3hlWTczRmxZcG9RcVo0NEZrK2JONnB5?=
 =?utf-8?B?c1RMWmRZdXpTMG1KMEtOeFVkVmpEbnlxYmR6YUZpSFhFMWl4ZXVJTXEwSlRS?=
 =?utf-8?B?T3JTbm9ncU5VQU9QMStJQVdxVTJaR0VmSmQvY1ZGK0M2MzZ4TW9aaWU0SjZM?=
 =?utf-8?B?SGw1QU9VbXcxRHZMbkZZejF2Y2ZXd0ZlNkMrTW1YYi9PRTZEVnd3aU96SDUw?=
 =?utf-8?B?N1BZT2xvR1MycmszU1F5eXpWRWpEYTVPQ0dtcTVjcEx0TCt2YmxPTFhOK0dC?=
 =?utf-8?B?cWxHUFlNcVBob2d4L0E3a2lNZ2ZkSEN3V2F3YjBQL3F5MlREcDg2eHZCZ3l4?=
 =?utf-8?B?eTduQmtKU01nTjRQMllmcVB5dnNhejhKOUFhc1FGOEVuQmJCUG5JMTFOdG4v?=
 =?utf-8?B?aWlZSFZRYm9PaFpZTjBDRy80aTR5M1JhenRONlVVaThoYnd0OEEvM1hrczMz?=
 =?utf-8?B?OTJOT1JrOHJOTkVibmZZQ0JQd1ExR2IzdHh2OWZ5cmcweGJRbUJvYnM3d29E?=
 =?utf-8?B?Vk9Hd1ZkTTZZU05oaXN5NmlvTXR4UFV1cS9oTmRqeVNRa2s5VGZERVlUL091?=
 =?utf-8?B?ZEtKVzUyMjJ5ZmxmU3NNWWNEbDA2TlJwOWFJMzNOcmM5Nk0xZFRjM01HZWNp?=
 =?utf-8?B?LzRteUFUNXVtME5VZkZvdnNrRWE5ZC9DdjMrZGxrVUo3ZDFKSHIrL1EzcU9l?=
 =?utf-8?B?YjN4dnZoWU03ZjVBbVhyNnlHc0xGZXZ3ZWNuWGJpcy9SYmtuNGw3WDk3K21v?=
 =?utf-8?B?RWcrR2p2ejVsWW1GVm0yOU4wT2lMY3IrYVRhaXQ4OFRtbDhyQ012d0hpWk82?=
 =?utf-8?B?eHBKUzZudzM4YzI4NFE5ZlVpMWs0aEdzUXZaSkRyamVpdm9kUG91ektiZ0w0?=
 =?utf-8?B?Rmc1Y21jRXFGY1ZvUFYxVk9DMStmb21Fc3FKZFlQbVhyZWM2YjZkL25ZL1Ew?=
 =?utf-8?B?VCtiUytOVno0YVA4TFczc2JESEFoZWp0QjIrTEJTdFFTMnEwUHRzZ0xtZjV2?=
 =?utf-8?B?RndncktwWnBhRWk1ZitmekxERVVUd20rOVVZODlZM252QkJPbG5QTC9lKzRr?=
 =?utf-8?B?Qmo0bmE2RGp0SmladWRRYmRsdzQxQWk1TGFUN1Y2cXhlU0NHRlRSeEZVeEFR?=
 =?utf-8?B?L0tUL2pDZmNtZlZDaG1tQ1hMSy8zODN6R2VMdXlkdzV2QlloQ0tWV3NNaVlW?=
 =?utf-8?B?R3V2QVk2VUhFRFBJL0xlOHVEZ1JBbmZqUS9lczRXb0w3V2tpSGwrZkhGelV2?=
 =?utf-8?B?UXV6Z0ZZT3J1RCtGQjNoTUYwWWZrTjViMnZ2THgwM0hrZFlsRTVOT1piTFVv?=
 =?utf-8?B?SWxsYUpKcjFVbTNEd2h2QXYybncvSWFQYWgrOTdzKzQ0VnBoc2I2S245V01k?=
 =?utf-8?B?ajU1ZUFLN2NXZ3kwRkZkVkRZbzNvUnFjVDV5dVBvL01wSk1CRVdIVjNySU9n?=
 =?utf-8?B?UlRLVkwrdzdMRzJTNWJ2TEZ5cjEzZWdmeHBITzhTM2xEVTdjbnM5QUZBbnAz?=
 =?utf-8?B?dWh3SVlWMWdPcXpUR0VGOUNUVktaWVVvdHNTem0vWk9ScDF3TWgyT05jRERy?=
 =?utf-8?B?MmVBV05WeVZ1Y2xmMkxYbGtYZWlNWE1wWko5ZFFRS2NEVEN5QThObEtPQ2pl?=
 =?utf-8?B?amEyNWFHOVRXdjBlVjl1YS95SENqRmNTNll5dmk3L1hHTlhjM0NmRmRXa2ZF?=
 =?utf-8?B?TkNwR05FbFh5c2ZYVnBXbkhObTZNVXFOTlh1bjZldXZBdjNuQUl5L3hjZXZa?=
 =?utf-8?B?SndZL0ROM1FpKzVqRnplRzZLMG1rMUFWbmZxOVhDeU9RZnl4aDBET2FMa1pq?=
 =?utf-8?B?K0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd73c01-d2b6-46ef-f9aa-08dc6bdafd57
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5920.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2024 01:39:07.8229
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLP/rTo6xid+jQXHywJ4fhjLgrazOGdnn39HA77IEe9HFKvjfmnCaNcpyQ+bzwzE8Rnoeg/X3gxy79MqGDfhhlRTgugBfzghWpwKERBtU4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5967
X-Proofpoint-GUID: K6NdOSzUWjbFny00Y1Z01ZNyXAA1ZDdT
X-Proofpoint-ORIG-GUID: K6NdOSzUWjbFny00Y1Z01ZNyXAA1ZDdT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-03_17,2024-05-03_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 mlxlogscore=999 clxscore=1011
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2405040010
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 04 May 2024 01:39:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13347

--------------Us09QbPEWPlpchxUKg2vpElT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 4441U2Xi011051

On 2024-04-22 7:15 a.m., BELHADJ SALEM Talel via lists.yoctoproject.org=20
wrote:
> Hello All,
>
> I am really confused with the following error:
>
> *ERROR: Failed to spawn fakeroot worker to run=20
> /home/talel.hajsalem/Documents/FinalGit/easyocto/test_output/layers/pok=
y/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_5.4.bb:do_ins=
tall:=20
> [Errno 32] Broken pipe*
> *WARNING:=20
> /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2229:=20
> ResourceWarning: unclosed file <_io.BufferedWriter name=3D31>*
> *=C2=A0 return True*
> *WARNING:=20
> /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2229:=20
> ResourceWarning: unclosed file <_io.BufferedReader name=3D32>*
> *=C2=A0 return True*
>
> Everything is owned by my regular user, and I have nothing changed in=20
> my setup, suddenly this error showed up.
>
> I even tried to clean all sstate and remove the entire build and try=20
> from zero. I even restarted the system.
>
> Any clue ?


Hi,


Hopefully you've solved this by now.

What command did you type that produced this error?

Did things work well before? What changed recently?

What branch are you using and can you reproduce the problem with just Pok=
y?

What can you tell us about your build system and what else is running on=20
it? It seem like you might have exhausted memory.

../Randy




--------------Us09QbPEWPlpchxUKg2vpElT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2024-04-22 7:15 a.m., BELHADJ SALEM
      Talel via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:OGzg.1713784502488483155.cwqW@lists.yoctoproject.org">
      
      Hello All,<br>
      <br>
      I am really confused with the following error:<br>
      <br>
      <div><strong>ERROR: Failed to spawn fakeroot worker to run
/home/talel.hajsalem/Documents/FinalGit/easyocto/test_output/layers/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_5.4.bb:do_install:
          [Errno 32] Broken pipe</strong></div>
      <div><strong>WARNING:
          /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2229:
          ResourceWarning: unclosed file &lt;_io.BufferedWriter
          name=31&gt;</strong></div>
      <div><strong>&nbsp; return True</strong></div>
      <div>&nbsp;</div>
      <div><strong>WARNING:
          /home/talel.hajsalem/.../layers/poky/bitbake/lib/bb/runqueue.py:2229:
          ResourceWarning: unclosed file &lt;_io.BufferedReader
          name=32&gt;</strong></div>
      <div><strong>&nbsp; return True</strong><br>
        <br>
        Everything is owned by my regular user, and I have nothing
        changed in my setup, suddenly this error showed up.<br>
        <br>
        I even tried to clean all sstate and remove the entire build and
        try from zero. I even restarted the system.<br>
        <br>
        Any clue ?<br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Hi,</p>
    <p><br>
    </p>
    Hopefully you've solved this by now.<br>
    <br>
    What command did you type that produced this error?<br>
    <br>
    <p>Did things work well before? What changed recently?<br>
      <br>
      What branch are you using and can you reproduce the problem with
      just Poky?</p>
    <p>What can you tell us about your build system and what else is
      running on it? It seem like you might have exhausted memory.<br>
    </p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <br>
  </body>
</html>

--------------Us09QbPEWPlpchxUKg2vpElT--

