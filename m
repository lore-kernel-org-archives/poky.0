Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3755FC02181
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 18:06:45 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.65.48])
 by mx.groups.io with SMTP id smtpd.web10.19347.1737742002185654885
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 10:06:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=ZGkflVK8;
 spf=pass (domain: cherry.de, ip: 52.101.65.48, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V/XHaHsiFtD+gpYRqbqSHKqaBW+Ey4VxOyEYZPro3cQoT2rDrJwXLP5V6WHtS7CEI9m3xS9/iTyGxFDUueNlL1IOoZtZvxWc73hPVErut96NgP6aDpLc6EWrIUt0AB4eLoNxQ5T+UfBNtuUh7NtcaA42724PAcJNPW3IiBHYpU5+Twpy5ZA2IPzNAKrYbxJHUecUab0A2NdAGLJaXwNf+IlNZlMXVmtvwhN7hW+HLw5gdh73J6vDTKK1qjGTeT3iLw1RZa/BCvmxgZBXuTha7X4/CgoKlLvPv5yHIhTbzLqH8O9Jt0wugk6s1aVI39JIU/GTuzmuoWRc+9OVJj7tbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A2EM7xTskZw6/MyUsBBIGukyNJIHMVs0TUSLEHedxxM=;
 b=Hrq4JU9yW5sUmvTRrgWt/kvdfCUNWQDmbuoP+4q4knwZANdOrANu54zGEA3oPZuc2FyM9Z5cy8IXnfgXNIFd4LDFy5LBRPI7pp5VGVbjlfIzbxfGWAEJJR+h2t7uW66CkHNzcCmhP/GGcTK/ZiNS1Gh/IMbJuAw6WXCUrhMS81W4fqKiimPWiLtQ0J83sBqOoY3zll+Snrm9UHED3eckmoZBLxaOqj0MdrarzRkbp9MaN3AkjfDc1f/dKAngtIyIW+N4z4ZNgfB99CnGGeuNTQqam63J3HaDvviRy3IRnfo23dF1+ocfoQhDSgxh62NVJSvbJaX/bZuUGcmgzGslwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2EM7xTskZw6/MyUsBBIGukyNJIHMVs0TUSLEHedxxM=;
 b=ZGkflVK8QDbXt+avKfFUp+IuWoTkH3tRaXkCRaIk02Ki0ZZtkxDY6so4CnukLetKLDlWrL5oqY368jzxuiKabEyZPXJaiLyDbHPyTsFeY/0IZgDh00r6FEhBnPsHRRWBYjo5+lXnI/0m88oCpB2AVKUoQxKLwhc694p4ZX4A7gk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM7PR04MB6790.eurprd04.prod.outlook.com (2603:10a6:20b:dd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 18:06:38 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 18:06:37 +0000
Message-ID: <056bd5b1-c64f-47d7-91ba-15aa0dca4dd7@cherry.de>
Date: Fri, 24 Jan 2025 19:06:36 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [PATCH RFC] add basic support for b4 contribution workflow
To: Richard Purdie <richard.purdie@linuxfoundation.org>, foss@0leil.net,
 poky@lists.yoctoproject.org
References: <20250123-b4-support-v1-1-4841f52eccbb@cherry.de>
 <1b89daa292508bd4aa9621616b7164b1b0523be7.camel@linuxfoundation.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <1b89daa292508bd4aa9621616b7164b1b0523be7.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: VI1PR0202CA0030.eurprd02.prod.outlook.com
 (2603:10a6:803:14::43) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM7PR04MB6790:EE_
X-MS-Office365-Filtering-Correlation-Id: 46849362-5580-44dc-825c-08dd3ca1d897
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Y05oNEU3ZEVFa2Q4SEI4Y3ljUTJNbTFpNUMzQWp2b2dYeDNBR0gzZXZaaW5L?=
 =?utf-8?B?VDlYWnlsbzQybUhiTU5telVFNGYzbHh5aXJTbFFaTzhibER0UW1kN001dk92?=
 =?utf-8?B?VVJIOTcxM1BhR0gwbGlGK1pxa3RiVFB5RDRRM3VBTFYzbXl1Wnl6bjBDR0s3?=
 =?utf-8?B?cGM4Sm9aTHhQdTZXUXhMWFBZUWZ1SnRBU0x0OWtTNG9ycFlHV0ZLWkgxaXdY?=
 =?utf-8?B?NUNVM09ObkRNSjFEdFI1YlFDdHd3RnQzS05GazdLaEI2MmVKK2R3QmpwK1dy?=
 =?utf-8?B?dkg1eVVrK3duQ0k5UUNSUXFuWGZucE1qdzFhRCs4UngyTVlQd3ZHK0o1d2Fw?=
 =?utf-8?B?bXVPamFvcHdIM0xhdWVVWGZEMnFnYmlaWm9iMkUzWWJCRDJpeThLdkhWQlI3?=
 =?utf-8?B?OUxQRm8ydkoza2tFOTNKZ0dyZFJIUndKcWdWUDZrN2VWN1p5blpsMUVXQ3Jq?=
 =?utf-8?B?eDc2MHNVaVRYaS8zZVNRVjNtY1ZKNkYxK092a3NhVTcrekJTSFl4S2FFT2c5?=
 =?utf-8?B?U1FtVHlHbTdpNGZjaVRvVC9MU3RnSDBDQlAxZml1RFZIeVptSS9DaTVUY3g5?=
 =?utf-8?B?aDNER1VCWlV3TXJSYlQvSlBNRXIxNWJJSG9zb0NqYVVPNWhDTk91SzFKR3hS?=
 =?utf-8?B?bUNqT1pzQzlKR0VOL2g5TUtyMFFYVUlIQTdFZmhXa3piUEFCdUZtd1JnM0dh?=
 =?utf-8?B?c3hTLzg5OUhxZTNhQk55M2FueDRPR1R4bGdpdnBlcHVWcGhYTWhWeGwrSDkr?=
 =?utf-8?B?eFBzNTNOUHBiM2ZTM0g3NVQ3S3R2N3dKK1BpMUtaV0hucmgyOFo1c3hLbGQ0?=
 =?utf-8?B?ZmlndEJjQUZRbkNXSm5SL1lrQ2JQN0k3WnM5VzYzVkx0R3BVd292NDBvcllv?=
 =?utf-8?B?c2c4Q3NBR1RodXIzcUI0QkduV2VFc2FyQzcyMVdrSHQ1WExaWVVVMHBISXFk?=
 =?utf-8?B?Q0JWTDdkZTVvZmUyUUlRUUdLMzluN2VVeitsT09jQ1U1VkhTYTk3UEdaY0J1?=
 =?utf-8?B?MUlaRENEZkMrUjlYSE1HMjhpZ0N2N1hMb1FUNFpUZWdjaVpwYnJBeXh0OFZt?=
 =?utf-8?B?dkx6Z2VreHhGTkpUekliQ1A0eGRIc3BacVBUbVZQeUVhVG9QZkZaTW11cEpz?=
 =?utf-8?B?d2V1U0JKdHVrdDVxMGZ3MDFDZVhXSHQzUitjajBxSStINklyS2RENThJMFlv?=
 =?utf-8?B?dmlybVp6UFZLRFVqRlpVOGUyQVV2MGdCSjdtTDZyb2Y2M05tbGREL25oOFg0?=
 =?utf-8?B?Wi9zbHloSStxZTFHYXdXdHViRjdIeElxWmNWVHJaaXk3S2dlSm9kN2tPQXRJ?=
 =?utf-8?B?Vys0UUZ4dTlCQkN0dUFEMDlCUXk3Y2M4UC9ndHorYmxsRUdUb0R5NE1NSzhT?=
 =?utf-8?B?aTFBYWN6ZERSak9UTnp4bEp3Z0J2eVcxcnFaV2M5V3NlNG0wcTN0aitXUWpZ?=
 =?utf-8?B?bzU4NDFWOWZ6Yk8yaEVYcC94K2hRTEZZYzY5bWRWVW0xenFCYXp2a1JqNVoz?=
 =?utf-8?B?dGtPME9mUWpDNThIYkVJc2NDS2FYWkQyYlhYbm93cmNrQ2p4Tkg1ZHhoMTkw?=
 =?utf-8?B?UjFiek9Yczk3aDRUbm5LMXUzdTNWQVl4b1Rpbi9JaVgwdzk1SVhnY0g3b1Ur?=
 =?utf-8?B?eE1XQ2NkdTJ1UTBmcVVvek8vek56WVZkbURnanA2K3ZFaDF0aWV1UnZXL3F6?=
 =?utf-8?B?UlBZOXFwRnBxRHBYVnJERDljSUVlT3pvc05UM1JKNHA2UW5XTGdrNkxKb0Nr?=
 =?utf-8?B?QXYybFdaVG10eFJVQnYvNSs0R1FYbkRMbmlaQ0FWak93YnZFQ0tPYTc1Mld4?=
 =?utf-8?B?Z1NNcWYrNFJJU1huMGtkdz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTV6VzlOZDdtWnRTb2pScm9RN3R3Yzd0b1pHQzU2OFpjL2cxY3VSTkl0T1Nu?=
 =?utf-8?B?aVZ6V0tZWGQ0WmN2RjZZR0thMUVJNVM2cHVhY2JkTldEdG5rZjNVOXVFSE1Y?=
 =?utf-8?B?NXlpZ1VETEk0ZXozMHNBK2QyVjVBZEZJNUM3YmdBTkhnNGd4bXpzWEFEMmdo?=
 =?utf-8?B?Q3FjVGp4bjhaOHp4SThTTlBlS2trYUdqRFJBVDBnUVFmK2VQMWpmTVphcGkr?=
 =?utf-8?B?QkRyMzFGSWJCeHRQL1ZpaVdhN3Q5TWN0L1pBOVdoVXRrSDhOVnpKOVJKUkZT?=
 =?utf-8?B?cW5TT28yMUZSTG1QeVEvTS94MjNYVkxzYWxxYXhtOUwwWWUrR2RBQkhRM2hM?=
 =?utf-8?B?UVQvZ3o4dGIzZWFUNUwvWWVGWnRnVHZxVDdBaDkxVUJNcjJuZ1V4a3JUbnFj?=
 =?utf-8?B?ajI3eXJTSXkyUTk0b0FrcC91eXZJdjVTKzdqSFpNVFJzcy9XVTZjYzhtOVQr?=
 =?utf-8?B?c0FmZzlpVkdCcTcxMWlDSjJSMy9YMjh1MzdvVlJMWllPanNORGMzNVRTV3Rq?=
 =?utf-8?B?QXh2NE1SSUpLcHU5VmdzYXYwY0U5QzZRUUdsRUdYb2tocTB2UDd1RStsV1Vs?=
 =?utf-8?B?a1YyZVduTFFySDNtMHhiVkhyNmQvNGZrOUlGVjNHL2MvMG5jcjZjQUNOUWYy?=
 =?utf-8?B?bXFld2dQZ09xQTcwVUF6OTllbVhpZWtoMzlFdithcUFuVVZKWGV0U0wxZ2Nv?=
 =?utf-8?B?eWU4cVA3SGpNdFJJZTJuZ1N6VXY1eUtOdmxEbUR1L09GVWVkY0VodTc3eDBx?=
 =?utf-8?B?dG4yVmZjTUpQS01qNWdQM2tjRlprU1RDdFhsQ01uTGNndkltWlZOcnYzSzJJ?=
 =?utf-8?B?cFhUS2xzdVBjb0VVQ3M5SlpVTVQwdmJXdlRjZ2QyOEV3MkU3eEptdGJsQVR1?=
 =?utf-8?B?MGVtVUFiQWR2TEhvYldmd2g4dHpNRjJLVWQ5Undteks1MndsMWtmQnlucDVu?=
 =?utf-8?B?ckFkbnlOTWFCZTZuOVdCVDIrb2dVejMzSElzenZYMUthWWl6NkQxSzBiQzhv?=
 =?utf-8?B?U055V3dSN2JZdHR0dno4ejhMNmttRWZsUkRsdGdmM1RFM25BR0xPQW83Ujlw?=
 =?utf-8?B?RkN1VnRhNisxTVIxTVRBcmlwclpjalU0dzBjbExhOThneHJKSkMwajBHZWRC?=
 =?utf-8?B?a1phRDFGTVhHaytxQXhtdGVvM1JyZDc5NXJzdWdSL0xrZkdHaGxyMnM1N2JF?=
 =?utf-8?B?NlZObUE2eStCclZkS2dyeS80T2Y4VzdiS002QksrSTF0TG9TRVhJMlNtZUwx?=
 =?utf-8?B?MHpxQmlMSFRPMDl0STRlZXpCWFhrN3hRbS9WNFdkc1dYV05aMzlvVTIzMHha?=
 =?utf-8?B?d2tJeXVVUmdGa0creE93dUVNL2pMTytPQ1ZtRnVCelhqekF1SW10aFBHU1Zu?=
 =?utf-8?B?VmZHZkYvYis0Wllub09ybkNnc0F1TW9xbllLelJjckFQczFkMjRtRGptellS?=
 =?utf-8?B?WUd5aUc0RGNDSElGbDIrRU53K2lFYXE5aTlIQTBGSmRmVW5HUUJKamM2RHhy?=
 =?utf-8?B?dlE0eDM0UlRXbmZhbWcxRjErUE8yL1VwR0F3ZGNiOFNzWS8yU0RrQ21UREN2?=
 =?utf-8?B?TkV6ZnRYVGxmcGFTVm9YQjkvRzI4d0tGSG5NaEs2Y1I5ZVJlbWwxcHYyYm1q?=
 =?utf-8?B?S1d4TkxUaTFLWksrL2QvY0JBcUhNMXUwWGR6bDJ6T0MxTXhkcVg5Y0xpT1VG?=
 =?utf-8?B?TUlEZW11K0V0NHB5WEZkTWtqQXJWWVhJV0ZlNTZ3Q3FacE1DRUIxcklldEdS?=
 =?utf-8?B?U0xYcFhHWjdqQTNBWTNmYm5Kb0VYSk44aktJUmlQYjZuZXVCM3JmMW8wcFBC?=
 =?utf-8?B?MGFmMHhxb0dnWkFBb2c3aHd2b2hRMzJvV1Y5WituVGpPK1RBTkFHOVFhalFG?=
 =?utf-8?B?V2d3eUVwUDNLV056b1FFQmVRN3I3UTBBOVA3elpKRXZSVHN1NGQyU3hyQlFX?=
 =?utf-8?B?dzNXNTZXUkZSN3pKQUlrOUhDN2g3VE94c2ZraXdabkcvZzNLU0tsMUNPMU5l?=
 =?utf-8?B?RHRYWEh1OWpTcFJoNFBsUmhJRU9lQjJlSUpROURmR3RaS1d2MkpESm9ZZTR3?=
 =?utf-8?B?ZGlZQnUzVW8wRU9PRFJ2RU9ycFZjWS9vUG5PV0FaV3VLaEM3dTQyL1NNK3lw?=
 =?utf-8?B?bVRselhVU29VaGc3dDdYMjNFbFMxVmsrZzZVczhITzVVdFJsTWRtcHlsa2tV?=
 =?utf-8?Q?GmbD62WVeuyRm6bdPfue0cc=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 46849362-5580-44dc-825c-08dd3ca1d897
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 18:06:37.9332
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJMvUZvvrulyMpDNdZ0NqJJAgpbPUotUz4if1fj6hnDy4H+Ln9KabJy9VpJFmW0yiM5V0AG5cQKWFAl854d49mCoCYzzB1Ntqxq7EHiR4gw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6790
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 24 Jan 2025 18:06:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13514

Hi Richard,

On 1/24/25 6:48 PM, Richard Purdie wrote:
> On Thu, 2025-01-23 at 16:44 +0100, Quentin Schulz via lists.yoctoproject.org wrote:
>> From: Quentin Schulz <quentin.schulz@cherry.de>
>>
>> b4[1] is a very nice tool for mail-based contribution. A config[2] file
>> exists to set up a few defaults. We can use it to set the Cc recipients
>> to always add, in our case the mailing list.
>>
>> This also adds a wrapper script that is called by b4 to check that each
>> patch in the series is only for one project. Indeed, poky is actually
>> a "collection" of multiple repositories, namely BitBake,
>> OpenEmbedded-Core and the Yocto Docs. One patch should therefore not
>> make changes in multiple of those projects otherwise it cannot be
>> merged.
>> Additionally, a check is added to make sure that a series only touches
>> files from one project to avoid having to figure out which patch is to
>> be merged by which maintainer in which project repo.
>>
>> Moreover, it is not uncommon to have people develop patches for those
>> projects from within poky. This wrapper figures out which mailing lists
>> to send patches to based on the files that are modified in the series.
>> Considering that patches to the bitbake/doc/ directory need to be sent
>> to both the bitbake and yocto-docs mailing list, this wrapper handles
>> that. A limitation of the script (lsdiff actually) is that it doesn't
>> know how to handle empty files, but those should be of rather rare
>> occurrences.
>>
>> Note that this script requires hardcoding of paths that are handled by
>> different projects to map files to projects. Anything not mapped is
>> assumed part of OE-Core.
>>
>> [1] https://pypi.org/project/b4/
>> [2] https://b4.docs.kernel.org/en/latest/config.html
>>
>> Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
>> ---
[...]
> I'm not against this but I would like to:
> 
> a) Put the script into OE-Core, just so that we don't have "magic"
> things in poky.

It is very poky-specific though. I don't have anything in mind right now 
but I could imagine we could need a b4 wrapper for openembedded-core at 
some point as well. b4-wrapper-oe-core.py and b4-wrapper-poky.py could 
coexistthough and be pointed at specifically by each repo's .b4-config.

Don't mind it, just find it a bit odd.

I haven't checked if b4 follows symlink, but if it can, would you want 
.b4-config.poky in OE-Core too and then we do the same dance as with the 
README.md in OE-Core/poky?

> b) Perhaps name it something a little more poky specific

b4-wrapper-poky.py? b4-wrapper-poky.py to match README.poky.md for 
example? My brain has already decided it's the weekend so not very 
creative right now :)

Cheers,
Quentin

