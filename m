Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26B2BC282D2
	for <webhook@archiver.kernel.org>; Tue,  4 Mar 2025 15:44:56 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.55])
 by mx.groups.io with SMTP id smtpd.web11.24954.1741103095145263751
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Mar 2025 07:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Sxa0ZCWX;
 spf=pass (domain: cherry.de, ip: 40.107.21.55, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YtM3DY2MiT/Odgbr5Fv9RRFbkE+vhXNovfoOg/EtWG/A+G5MWNJkCU7oTxDQ3AqsMViKPqf0PLBfa8BryNO3uydZQH6u/7lSVV9c2K2SfPilV/OH2UyHuO8Fnm0grnVONDtloIbvXt3vdcm5FR5hjPQilJVw+0TSvUNawJdnTg3WEetE8TwRvb2KtduzG947WaU6O2Plv+e4j2ItOXqLpbv3mXGNxXDyuw9NFpUgmAM/4QBOi2l54OlZF+iotIt9M6rYxBLfaxmdbg+mobzcIVwme9kUbvP8nWNyD/zWjGTbYW9P1TRw/RXccqEJSsGIumBrKtL8a9Mk+R+zDx0tHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HiB7OYDL2KCTYqDdmi5N/GP+1E5S8iXPm5vNR0PpC1g=;
 b=g08W/xm+XDnPXC9roGBIIqhnSkN1Znvn2uw0EoBE708NTf4WjZKx2U8EAhPB4SVVZ59c1WRLRRU4gVBV7QdQBSv1Hze+keF7nk3mtksj3pVLZl7IsmOh5DswJE7Tiviw0uNdwjiUvHI7mfHZHcbHOMZYQcpHLmDkke3s59sI8RijEqSlLpUQBQxUEf8V1PDEeiKSaapeR0iEM/RqOL+QlGeQsVoW+OEiVPtbaRABC6c5N3EiM1x6/rCji/bwzflADlTQkTqq10OgF9R9McUn7bSexpku1u6so9Jd5rZdi5CET60QoryOaK2q5e20cpo6Zax+lrgaEwccfeIb3ojhcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HiB7OYDL2KCTYqDdmi5N/GP+1E5S8iXPm5vNR0PpC1g=;
 b=Sxa0ZCWXvk9hjvp5Y+1J9I9jffRiqpJv+gMfN840gk2qhjJlnxJfwOs8KTTQDp7faiyexk5fTwk5pGVHAy/KsjL1g2am+PrCSHRJdYaif0kArMFP7C4rkqUiUj0L2YLgUSMMXUncaliw3G6SNdQ6vgiHgJ7DOpVWP03fdNnpZK4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU4PR04MB10670.eurprd04.prod.outlook.com (2603:10a6:10:58d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Tue, 4 Mar
 2025 15:44:51 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8489.025; Tue, 4 Mar 2025
 15:44:51 +0000
Message-ID: <f46a8f8f-2251-439f-9e2e-c706f9796478@cherry.de>
Date: Tue, 4 Mar 2025 16:44:50 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Creating a hash of a password for my recipe to add a user
To: alex.kanavin@gmail.com, jdowd@slashdevslashnull.org
Cc: poky@lists.yoctoproject.org
References: <npf1.1740865335355684020.Dc5N@lists.yoctoproject.org>
 <CANNYZj8UTJwUsg=f1CsXYO8rjNUmdaTprwEZWaOfiyn9bfXAmQ@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CANNYZj8UTJwUsg=f1CsXYO8rjNUmdaTprwEZWaOfiyn9bfXAmQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0214.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU4PR04MB10670:EE_
X-MS-Office365-Filtering-Correlation-Id: c0f2cc7c-c0bc-46dd-0612-08dd5b338026
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cVZteTNxSTN3YmtueTE5dXQ1N1dGSnlJQUlNUXgxRzBpUVNhV1ozYytsQ0Y2?=
 =?utf-8?B?T0hUTWpnaXB6OWcxTXMyVTN1dnhRZ0x3eUVzYVRPaDdBU2d6VXRHYkwrZEhK?=
 =?utf-8?B?czgwYW52L01tUXlNcnpYNTZqNUxVc3RjWHVFNm1iVytmUmtLWUcwK3pIenYy?=
 =?utf-8?B?dnhBL0szeVpFMC9pN2FKMExST1luM09Ub2VGYjVxblhaNktNQ3I4TERtanFj?=
 =?utf-8?B?REMyM1NjbjE1K1dIUDVZcGlKVDRmK3kySStadDlwMkZSSzJvNmtBTWZjWWlL?=
 =?utf-8?B?R0JlWVluNERjdGMwM2hjL0c4ZkxTK1o2cU5VUFdrTVdVcFNJRDZBV1J4UHRM?=
 =?utf-8?B?MDIrK0JaVXRrKy9nVHI2MTV5Yi85dE8wdVpaQnk4N2E5QnRUN24wV0t3ZGdt?=
 =?utf-8?B?K1dnZ0R1NDB3dHhvNnNhdks3MGFjNXBNZnBTUkdZcEpqcC96dHpvbW5CRjJu?=
 =?utf-8?B?Wnd0bEV2OUxLY3BJQmoxcmkyODFhVWV1Tm9FQnNud0FLQkR4RTZ6RzVyL0tn?=
 =?utf-8?B?UmFiZHdySFFocFNheDFHQThKMUpLODhKVDNnTWx2T2Fvc0llSjNwdHhIcENo?=
 =?utf-8?B?ZlF2UDd3aWxLY2VBOTBoQ05hSXhGQzJKNHhXMnRNL3U5K0VDUHl4dU55OStm?=
 =?utf-8?B?Q1RjZWhwbng5eDRPUlFoOEF4RFZET1o1SXRTSENFbkFsMnNNVlVRZGhPQlpJ?=
 =?utf-8?B?bytWY01HTjNmUkFCaDVTV2ZlR0tCd3dqdVNNT1hOa1JLMHk2VmY0OVJ5K3ht?=
 =?utf-8?B?UEhIN29pQm9oZSsyQ0ozcFc3NVRCVkxaMGNncXJNbGlTU1NqVFJ5STBmY3ZT?=
 =?utf-8?B?alQ3Y2NjeDVZWC83Z040RWRPR2RadExsbEQ4OHpXcFZKVUxCV2FMSExOYmNZ?=
 =?utf-8?B?Rm5uL08zNWtXa1M3Um94dWZ2OTlCZGNQdmFCSkNlQUc5aVFGYk0yVFRvNHdP?=
 =?utf-8?B?L2xmSjFVMmVxWFlqRnQ1UllXd1ZFa2lScUJFd29CUnNGVXU3aU5Qa3ozMytk?=
 =?utf-8?B?V3dNb2dLam1OREVIY3JGZFN0OXgyVkI0VWVZTzhTdWVUUnBUVFdSQ1dwM1k4?=
 =?utf-8?B?YjZSZTBCSXIzaEltM1lFRGEweENNejh6eG1BT2pYZjltKzNNL1B1Z2lHYlgw?=
 =?utf-8?B?UG1pRDU1cC9GTCtnVHNpVmk5Vjl4clZVWm5maHRRbjg2cU92eERMdmRoOFYx?=
 =?utf-8?B?T21kenYvSXBRcDhDaFdtQ0k2QXNLTCs1aEVUU2lzVmNnSWRpUHJ6bXNSdkRK?=
 =?utf-8?B?ZkFWVWp3aDNtSzlORHRtNUhBWVJhS1FNMkNYMkdFbDhod0s5dkhEZHhVd1Qz?=
 =?utf-8?B?TWV2b2xuVHRHUGEra21vdkJQQmhsdGlWdGc0ZnlNNXNwTDRxKy8xSzRlcTZy?=
 =?utf-8?B?RkI5dVh0OHhJeU1IZ2ZaaDlSRDdJQndseWoyRWtCREgwZExhYXMwTjdFUEs0?=
 =?utf-8?B?ZDVPYSthcFVVdWZ1V0Y1WjJEcndwMUoxR0o1RnBTZm5QalVCWEg2bWZFcHNC?=
 =?utf-8?B?YzFlK3Z1U3JSR3QyUXIwS1Blc3FURTVCUUIvNFcrYUpoV0ErUlA3OHVsM3R0?=
 =?utf-8?B?WEtuT1RTWkwwRFpQUE9ML09IVnQ4NUFaWmwrRFpGYmduT1NMazFvSzMxYUt0?=
 =?utf-8?B?K0FUenNmZHVQZ205NXZjeW5CMWFhblJvNm5VYXh3T3Z5Wkh3Q2laSEpITEtR?=
 =?utf-8?B?cFBSM2xRdUFUMzduWGd3UUl1bXl0clJwSE15YmVaLzRVanE0TG16VUpBWi95?=
 =?utf-8?B?OVQ0dThFUThzc05PUmRBMWVIWnZGUVRLeGtvOTdhOFNYRTVSdStqMWtOTDRk?=
 =?utf-8?B?S3lYUGZlUnpzTUlFNElrN29TdzQ4OGhyaWZvUDZXS2JIZEJUZTlSSG9NWUk5?=
 =?utf-8?Q?Qzj2cuJzvCkTY?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UWRKdHg2ZHJBT0pSeTRSNm9rQjFiSzUvK24rUmQyekNwRXlIUUFkOWswK3di?=
 =?utf-8?B?dkN6N0ZKQTNkNzRuMENDaldLbVYwVEdqR3IwYmFmMUdvb0thQnJEZDVZS2NX?=
 =?utf-8?B?SHIxdlpwTTd2Q3cxcG5zYk9HbXJDcmxpOCsvRjJRSnIzbkM2VFRjN1NhMFor?=
 =?utf-8?B?bG5LMVRPSlZWNGIxdCtpaEZGSk5NMGFQS2xSYzhDclpxckFmYnFhVEJKcVhs?=
 =?utf-8?B?bXZBMjRCU0hUS1NmQlpsbnVrTVg1SVlET0tJRkgweldYT0ROd3h5ajh6OXkz?=
 =?utf-8?B?MXloUHEyUXhleDA2OGZtTDZJWGhCME5aZ3lkYjNqK0ozeEY3V2J1eGdLOTMr?=
 =?utf-8?B?VThyU1RYK3hwdFBXTWV4RlNKUzJGUWNPRnhxNEdob1NQbFpDS0pSVG0rYng4?=
 =?utf-8?B?MnBrNkMzY2tUd2YxZHZSTmExWTQ2UXRZUkp2YWdoc2JPVWlyVkZSaGY3MkxE?=
 =?utf-8?B?RDZuVVhBdUFOejJlZ0dMWWtvVXZJWTRNU25ITy9rRmpsaVIybHlXMFhNcGEy?=
 =?utf-8?B?MFBUcDFYQWRiUlZabmczemxpbm9LL2FIbzdQSW5sK1R0UXVtSGV6bnZ4ZXZu?=
 =?utf-8?B?UVdTdWVqSEdPV0RVdDhpVk9tMUw5eWMybjVBV0hkRHE4UFBLZit3R2hhZGlE?=
 =?utf-8?B?eHllOWs3dUZrbFU5UkVuRzNqdjYxcWpDdUhBSU90bEc2MWVHTERQK1NpZU5J?=
 =?utf-8?B?d0RMaEErSHVRdjlnS0Jldm40YjZiVlB4TkpRVS9Uemg3cEdBZ2gzTGJhRFdD?=
 =?utf-8?B?RTdKVW9BYUFxZEloWkUvT0hZZmlQalFtbW8vWW1xMWhwVWs5Ti9oZG4vTlA2?=
 =?utf-8?B?ZDVWaUliMEVEdTZXVmJFaUVXb1MxV0pRSzkyNFc0My9lbXpSMVJZSUdNQXNQ?=
 =?utf-8?B?RTJOUG1RQ0hKNVMvaHlXZDZIN3Rxem9EdGE2T093Q2p0VDV3eTh4L0ZNeDNU?=
 =?utf-8?B?QSs1Nis3dElzNGc4Y2pBMFlqTGdSSlRJQTJyay9qd0lRbkVhYW8zdDJuOHlm?=
 =?utf-8?B?QWhjSnlKeG1sUVFqam9Tek9jdCtLU3psOWlCOUNoNFdXQnk4elAvVkNmTmlk?=
 =?utf-8?B?M3U5L0hRN0ZraXBRRGFYdXdGczFFWVIrZHN3bGhlZFJLRkdTbU5tK2xRdE1E?=
 =?utf-8?B?OWRnNVhMODVSODdxYldmSEZ6OTVubGhQZytTTm9tYlh2M3g5dWtLMkJtK2x2?=
 =?utf-8?B?ZVFhRGo0SWUyS3dENklHU0ZZbUhqOUFSV1grcURPajJPMzkveFRMd0F2Rnll?=
 =?utf-8?B?OGY5VVpRaGNsMTkrdDEwQ3hPS3FxaW5aTDFWNCtnZmpQK0RVMUV3SmpOanli?=
 =?utf-8?B?MzBWQVoxZEJMWHRRSmkvWkdnSWNhb0lLR0tTYms0dmNMZGkzQktqTm9XdVNq?=
 =?utf-8?B?L25jc1V5dTNRN096SllucEZQb211RXl6ZnowY1JtY1ZkWEN4V3VHOGFibk1x?=
 =?utf-8?B?dTh6YW1DcDh3WnROc3FoTkxrTkt3bDBBczJTRG9mVk5meGp5UGhvckRlOHNx?=
 =?utf-8?B?cDFYR3cweWRNVGJ0RVF1ZDVTQW45SHR2OFlXdWVDRkQzaHJJZHlXeDFSMW1h?=
 =?utf-8?B?Y1pwWVhMeUNqTHdHT1ZiTlhpNTlOcHRyMGFBeDNsUW4yNStYNXFVeEM0alVQ?=
 =?utf-8?B?NWxwcVc0eTJnaTllc0lmTXZQNDVvdStQUmFNenNxaXRNUW9NelpTM1Y5VXBt?=
 =?utf-8?B?MWxweGhoOEV5SkZ6WlA2c2dkT2J4dStSNUphZGJMZkdLbkJDOTJUek4welcx?=
 =?utf-8?B?a2xZR2FYeUp1aDBJajJJMmxvQXg1TUQ0OFVZOXNKQTEyM0NndnlONUQvSVdj?=
 =?utf-8?B?aUdRYUpRQVU4eFkrNWlDUjN3NGxSTmswTUkzTlBmaDJkK01rZmhoS3JuNVBM?=
 =?utf-8?B?NjUxWDdYSzdHdkxlV2t2WlRNdFJJNVMrc05RUUxCTEpGakh2eEozQ01Jcmla?=
 =?utf-8?B?L2JCRitPYXI0OGx2RXc3bVl0M3JqQVFYem50bEZZTFZVUEpEQzJsdC8yUk5z?=
 =?utf-8?B?M0d5VXJmZ0lVdURzeGNoWDFPL29IaWNYZ0pDdTA2T0szbng4SG5nRjVqQTM3?=
 =?utf-8?B?N0NSU0ordmFYeUQ1U0xreHhCUlluczBFaU03SjlLbXFFeTdwV3R0MWsvbzJv?=
 =?utf-8?B?ZGhpZGg1SWNoNHpzejl3N2JDcGlnN1dZVnNob1ZpSUFXdXpTbGdYS2dXQy9l?=
 =?utf-8?B?UFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c0f2cc7c-c0bc-46dd-0612-08dd5b338026
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2025 15:44:50.9397
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: avGWJWjpt7O8JlGNXWTKFJpaUfDjZ9QdYrR1LB5MxI01m4VP6tfpT6XiDsU1bgt3aoxZB/NTWCTtgwFq7vzxsJULvZBg7IBHRzDlI6jIBgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10670
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Mar 2025 15:44:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13554



On 3/4/25 4:26 PM, Alexander Kanavin via lists.yoctoproject.org wrote:
> You probably need to study the logs for the recipe (in
> ${WORKDIR}/temp) to see what useradd command line actually looks like.
> Possibly something gets mangled?
> 
> You can also experiment with this on the target (e.g add more users
> and see if you can login as them).
> 
> Alex
> 
> On Sat, 1 Mar 2025 at 22:42, John via lists.yoctoproject.org
> <jdowd=slashdevslashnull.org@lists.yoctoproject.org> wrote:
>>
>> I tried the extrausers class and I didn't get any errors but I also got no joy. Nothing was created on the target and I moved onto using the adduser example from the meta-skeleton directories. I have joy now, the additional user is created and I can see the user's home directory various entries required in all of the relevant files. yay!
>>
>> However I have this line in my recipe (ignore the underline):
>>
>>
>> NEWGUY_PASSWORD = "\$6\$zap5cUSDzKQyKfmL\$g8RRKqDw8U9BlmQFO2GLDPvcGe5mWSnwhMtYbDeKpPEDULJ2yLUhI6oHP4xq/p7fbE2SftFy4bvPd.ZsHVS55."
>>
>>
>> I then have this to set the parameters for the added user:
>>
>>
>> USERADD_PARAM:${PN} = " -d /home/newguy \
>>                          -m \
>>                          -G tty,audio \
>>                          -p ${NEWGUY_PASSWORD} \

It's single quoted in the meta-skeleton recipe, so maybe consider doing 
that as well?

>>                          -U newguy \
>>                        "
>>
>> I can't login to the board using the password I created using the command:
>>
>> mkpasswd -m sha512crypt <yeah right... nice try>
>>

We do document how to generate the password in the docs:

printf "%q" $(mkpasswd -m sha256crypt <your-pass>)

With <your-pass> being replaced with the actual string you want to use 
as password.

I don't know if sha512crypt is supported (maybe, but I don't know :) ).

Cheers,
Quentin

