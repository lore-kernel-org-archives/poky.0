Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1301FC3ABC3
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 18:38:27 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.83])
 by mx.groups.io with SMTP id smtpd.web10.57802.1747075099403081118
 for <poky@lists.yoctoproject.org>;
 Mon, 12 May 2025 11:38:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=BqXnc3/X;
 spf=pass (domain: cherry.de, ip: 40.107.104.83, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qfB3MDpXz5xUnTIibqY4VgpedNZRR3npOCfGVts49enoBtQvfe3g+jPVwbqItNdqjcPKq658AfxiMTSWGzhlJJ8WvK3pKnQg/8dihGPOXqdXUcppAUZM4uYK1JpuURlj23sDcPGOvTjHT44fHT38MW2n/DqQEfX5jTcyvumnFY5If4jIZOwBiNDqnzrDuuAr3F/lHImv7ngM1C3rsrV2Z2tEUfw0uM7S/qERWIfOXEWCCXlA9uAfVyXoI7Hbw2nhO/voXCruL2aNGr80VF+zZ3z1fJw5cpAIIpYx2/NPAJGfssV5TOhZ5gYH6E2Vhr3Zjj3GqC0xBN3nEDPCLvcvoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gmJf9rSosAw5glS8BOtk+sZzBn7ORPbqAnZ0MVGoAeE=;
 b=Mv2klFeHXo8cB+bke6m+UuBB2ikSLHIX5gIcrVUfRRCHhL1qAJ8A4Fc7Lju3/q20GQ7NmF2PAeIgdII4csATjSdLx7Wr5Z1mmWdH8EHO5cfrJL+V1WHXr9TrOwavRZBAvvKWMkY0+bfIYtgFfSTdoMMax//Hd5m6C5H/3WLCqfzqv4rT/IBy4kcsktmSvo11pRAXRtVAqnPPbIiN6er6gnJK4PVuDxGxvPCFObEC8SOI/qneyuumFtN9LD9EnN6cSFRcOaCNrOX+pDkLI5SMWeMYSiIawhr3d2edqnpbD+HnxmI5ZCUftKPpSv3JOH2T7sSmSv+V+EJTLsyfU4basQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmJf9rSosAw5glS8BOtk+sZzBn7ORPbqAnZ0MVGoAeE=;
 b=BqXnc3/XQDNMLZVOMktu4HbKuF7tZLx2/NV4YxWki0wsRyW/fe2CR/ELF5Qz6SiW6eMlcuEnhPAG/AEA+RBTZcFsGymAAV6hOb2kKHSkH6stHwcWQ3Uk1B3Cu/69HLsN8VjANr3wUUVo2Vnm0DyabyRFiBTnMRO4uZJO7tLZKis=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM7PR04MB6888.eurprd04.prod.outlook.com (2603:10a6:20b:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Mon, 12 May
 2025 18:38:14 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 18:38:14 +0000
Message-ID: <a48d3489-b00b-4dce-a520-4f24eb7d7349@cherry.de>
Date: Mon, 12 May 2025 20:38:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Patching a patch from a vendor
To: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
References: <CANNYZj9GwH4w-Zg2571wz2bdJ+hPyBxPf6w18Zy+mXypFgsEJA@mail.gmail.com>
 <1013.1747073432355760356@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <1013.1747073432355760356@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0175.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::12) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM7PR04MB6888:EE_
X-MS-Office365-Filtering-Correlation-Id: b81ab450-5a06-4a78-d168-08dd9184279d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VVovQkFPdUx1OVRyWnVpYXQ5SnN3K2pXbEdvUFpKVUltMm1wcTdNMyszQ2xD?=
 =?utf-8?B?MjhGMWUxUW5jUWpyQm8rdW5LVGZIc01rV3k2VzBCQytkZXEvdmUwRmU0MVF1?=
 =?utf-8?B?QVhjaHo4TnJWQkF1K3lIK0t4dC9nemdTVUFzaytIZXBmeTEra1YxWHNtRzlC?=
 =?utf-8?B?VGptVGp2MHZBUjZMaUJMZWw2OTJiSG50aU5KUUtBbnJEdmZnckFaRnB2ei9i?=
 =?utf-8?B?bXpXTjdaUG13SDVNb3d0NFFpbXZTV2FkRFVNdndCWGtNS3pvRHVyVkxZL0tK?=
 =?utf-8?B?VDZyVTRzVllnVFVwS1JBQW0xV1M5Kys1WklIeVFpQ0JpNXNrV3ZUVWRicTVt?=
 =?utf-8?B?Nnl3a3JwWTVQWUVldXlITEZ6TUdvaXhlNGhtQU5ab3dOanN4TjJEYWY3UVY3?=
 =?utf-8?B?SzllRXBCVGd6Q3hiREMxdmd4eDkrZEFwdVlQeHllcmpGRzJtQkQyVkRJc0V3?=
 =?utf-8?B?Z1N1V0ovdnRuaXNqWUlEQUthSUdlUEFLMUlVdkV5Q1psSTB1US80cGpOMDc0?=
 =?utf-8?B?amNzY1k4ME1mMmYzQlAvKzdpQytoVEQ0bDZsejVGeUFQSThzb1NBaDg2aENu?=
 =?utf-8?B?aWVoaGVkS1FlWWZDZnU4N1UxeDFlSytPMlNHS1RzbzNhYmFqeGhJLzRiREpR?=
 =?utf-8?B?RlZqdTc2NllUZ05PZ0lxNytEN0ZBUjNVTllJQnlyT0I1bjdyU2RNM09oTnhj?=
 =?utf-8?B?aGRaZml3MS95aldyRnpFU1Z6cVJDNit3bDVxSzJrYXl2SEs5NEwyZmxPc1RG?=
 =?utf-8?B?OFV6dklhWmJqTWdBSW1WMWlzV2tzVkI4YlJRM2tFSzhGQnh5MmhOUFUveVlY?=
 =?utf-8?B?OUp0ajQyR0dkNTg1eUZMbjNpSXlPTTBpbzVpRmYyM01jRFpmVVJDVE5wOHBt?=
 =?utf-8?B?dU44N2pBQm9wYWhveWtJbklzOUNmdnAyWEp6T25pZDhuR3NpSkZpWHB1cGpD?=
 =?utf-8?B?TjVpbkpFVWJZSkU5RjVmU2hRU2ptYmlNUE1EbVAzMlNXTFI0NnBUeWhiTWVi?=
 =?utf-8?B?MkpQcjB6dnRSWCtTS0NtNnRyUDJqRm01c0MzWWVkT2VBc0FuVlJzMEpjbGEz?=
 =?utf-8?B?WGtBZjRLbHZnTVFHY0xQaVFxYys1T1o1RU1qQ1NnTnNaZnJPMVNhRU92bHla?=
 =?utf-8?B?Mkw4c0QybFBVei90VHZWbHVaUHVSSS9SRy9FQ0ovdEZ6R2t4Q2pZbE5MSUQy?=
 =?utf-8?B?SXVaRTBqYUt0dm5BbStzUDBTRnVIcmZoY1p2MDVTQ1BFMEZsdUtBSFJuSndR?=
 =?utf-8?B?cGdMcUJhelpUdzFmL1lGODJHcEtKd0l2cTRwWTRWRjFTRjE3bHlBL1ZnSmpO?=
 =?utf-8?B?WG5jeVhNS053dHBFdWFMcUJOb2R3eTdOdk82bldoVlRWcnpWTzhlQVJBdEZh?=
 =?utf-8?B?L2dTOEVJYmZSaWN3cTJvczFCUEd4QXIrVHpKUVNrRngwM2lxTFNrWDh1dkZR?=
 =?utf-8?B?WnZjUnhMY1MvaWg2UGRzTmpRUzl1Y0tBdEJEcDlnWVkzbFl1ZXh3SW9XWEVH?=
 =?utf-8?B?TTV0dFFLeGFWZEd3TG5RUUtMNGFUM1U4TWNlempSVWYzWFI2Mkt5NDJxNVNm?=
 =?utf-8?B?b2tVcmJwOUo4bDVLckJoUHlUR2VsaVRWRER6TTBEYnFGeW1ya0NSR0wxQXFZ?=
 =?utf-8?B?Ny9VYzdZOFNBaWR6MXZ1bGhjY08wVVZqL0xQU2hKdlpUdGYzd1pTVGlkVGRX?=
 =?utf-8?B?Nm92eFpjb2ZlK2lMRjBxMGpNK1BFYldzK2hsY243Qzc2VXhVUDRmVTlVNnV6?=
 =?utf-8?B?U3ZHSll2NVJaUzk1ZUZQcXBxcG5JM0FaMTA0eUpEWHo5YkxyWDdtUWhQQnQ0?=
 =?utf-8?B?eWhPc2FRU290UGhHQ1FCMnNaRXJvWmVMRFdPZnlTMXFqRkRrWHVQZnNOYk5w?=
 =?utf-8?B?S0MrS0ZoN0tzQjdYREhTUzltU1loZzQ3Z2puNWJ4a1BlY3ZlN3FXQ2xyUk5q?=
 =?utf-8?Q?BOhRBVWNmHQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RmZud0Z5cHcwa1l1bThhWDFFVm9rc1BXR3VVQVZIaW1pNWMyWUdNdXVqWWRz?=
 =?utf-8?B?ZnhNampQVnlvQkZ3R3JzTm1iaHFoTGdFSWtvUnpSZkRVaGlkd3B0Nld3bWhp?=
 =?utf-8?B?NlMvd2d3alJ4UzJBazBCQlk0V3d5MXZ1LzhaSjYyS0srUkNUMDdpcmlmQ25B?=
 =?utf-8?B?d2JLbnduQ0ZjQXh6R0lpaUxZdTlsemgyNTJWT3d0SVlaeGNYLy80SGtOMDhH?=
 =?utf-8?B?LzNYeGlGNndlWm9qeE9vSGhTTVRRa0FjZVFERktkZWNXcVAvWTF3L0FsT2ND?=
 =?utf-8?B?ZGl2Sm5ySmNCdS9MWmhockh0bDZROFRObWJ5akFoUWtmQU9OWGpUVlBiWmdn?=
 =?utf-8?B?WkFEVklrRkpGcDV0S1UwWXI2SjNUOUZSQkRJVEtaYTQ5dzk4c051M3pEVExR?=
 =?utf-8?B?cFZRNGFBcFJVWVBkZUJ6WVV1ZldJVEZ6dFRlYktCYVc2V2VDbHhuWU1zSTdj?=
 =?utf-8?B?MHAvaWxuK0xvMTAxWE1mbUh1OEZFd3luSFMwN3Z2R0VMSjJ3cUtTOVNMR1FJ?=
 =?utf-8?B?QXBRODhRKy9iSHhkREc1VThnaUNpZTB1Mm84RXpadmhDMVNIUGcxUkxnV3Jr?=
 =?utf-8?B?c2gvR3RmMVcxK2grOUw4QktHS2RZekNCekpnb0dDSnZscndKRndlL1NHTkt0?=
 =?utf-8?B?ejh6KzZRQnFtUlRMcUgwLzI1cElNRDkyazJEQnFPYjRKWWgvMjFSN29ML2FF?=
 =?utf-8?B?Ky9SSWpxVWRWMEE3NGJ4RUJxaXZ6NzlqNk5KRVlhNFBUTU1zcVU5M0gvZTJC?=
 =?utf-8?B?eWE2OHNSeG5BMkpvRHNkVmZyU0dha1VFNXA3a1RnV0hxdnB5cVlHWU9ucnBh?=
 =?utf-8?B?Y3ExUXBaYW5LSmxzem9YTi9JeVczVkw5aUtHcUpzallyVnhwWVhTdnFpUHlv?=
 =?utf-8?B?ZzNtekZUZGxxNkJvUkFZZ0U3eTFyZTFqa29NS2lpVnFYR3piWCtBQ3o1ZDF4?=
 =?utf-8?B?MU91VUJ0bWRxMWxwL3N6NTFCT0w2a25SZkVndlZPUHZFR0ZaTEN3dXhjUVFX?=
 =?utf-8?B?MHVmSS9SY1h5ajZpd2pYRjJIMUFXaGlpTy9oYUpEdGh3d09IbjdSMWNaZ0V0?=
 =?utf-8?B?UkE5cFh2Vks1RDc1VklwRllOSzNJU3J2UVBWSm92azFidklPVTZNTFVSZzIr?=
 =?utf-8?B?VS9RNUw3Uzh2emFRQ1BFb3VVRUkwYUVBRDJTZm9OVnhBeDFlMm0rRDVZT2k2?=
 =?utf-8?B?b3MwMXV6VVIyZ1p5dU56OWxoMmNTZGo4VStZU1hoOW1pM3FFZllGSWkwSjhN?=
 =?utf-8?B?TkpMY1RJL21DaWFobFpVb000SWJYZFdjZTAxaXdRUG56Q3VyMHlDeG94NUxE?=
 =?utf-8?B?Q3NSS1JSdTZqMkhhL29OT01DTk1wZWJKMnJEQ3ZvdDNDSmtYV003dlNISmFr?=
 =?utf-8?B?dzBwTHhDazg4UTF5dXhZbGJ2YjlBL3Q3dUNQVUtMcTNWVGQvSnZiWjJaMWQ2?=
 =?utf-8?B?MWNUOWhLVXQ1Z0hiSm9rOUJJWHRJbG9MNkRpU1YyTVh6MkZlSnlwQlZpVWlB?=
 =?utf-8?B?QmYxc2lkMTE3cHZFNS9JckJPUTNtMy83Mll3VDN2Wm1wK3ZiV2pYaFY3WXVp?=
 =?utf-8?B?YmtVV3NsbEFYLzh4SENGN3R1aGcyYmlKRDIwMDZHdjc2WERWMGl0R0xhZ0tt?=
 =?utf-8?B?aDJKcmhQUDNrQXNBN3k2TjVpdExUUGdnbFdLczZWaU1kR3U0WXgvQkxQb0lm?=
 =?utf-8?B?aUZaeTRnTUlkWUorQ1ppYU9GamFMWXg3Q0J6SmpUN2dubXBORnRjS09vODdp?=
 =?utf-8?B?VTBXVmVqbWNIempiOUlPSGZaOHRlbkNaTXM2eHRLMVIvNzZGenJoQmQwUUEv?=
 =?utf-8?B?UDV0NVlxM0FNOTc4S21xVXRpYmRzZFVGaDZla0FZTWZZak5xdFVzVkN4RCs2?=
 =?utf-8?B?VnFzNkY1YjAwdnNhN29TWnpDc0hwRVVxcmRHSWJSNi9Kc3ZpZlRDbUFEaFlN?=
 =?utf-8?B?NmVYVENadGorS1QxNGR3M1NJN0hEaE5NNkJOMHlxZHFqU0Q5YnJ2bllVblU0?=
 =?utf-8?B?WHRmMGx4QnhxVEc0SE92UGJib21FYjNvSjUzU0U1aWNlWVEzR05XVFE4U2ZH?=
 =?utf-8?B?SzQyT0J5UXEzYnJoc0toRlY1SFJ4UWFJdU1CNnVwd3FmV2N6bWt5UXBoRHNy?=
 =?utf-8?B?cGVTcVN6OS9VREVzK3pQN0czdk5aN1lUTDJDSVlzb21Wa3l3SS8vSkFKWVVS?=
 =?utf-8?B?N1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b81ab450-5a06-4a78-d168-08dd9184279d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 18:38:14.7378
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sFMn1+/Oq4Lr5jIdwDVqVojtRkJwjHyzQhe0F6nwBP9I3QWgStEbT8gVgDAqVjhpNoNubmaSvsorMo2HtT5csBDV3vb3JmGKE7HLtCtSt6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6888
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 12 May 2025 18:38:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13615

Hi John,

On 5/12/25 8:10 PM, John via lists.yoctoproject.org wrote:
> So this is an NXP product and their 1st response to any of my queries is to ask for the processor for which my response is T1024RDB 64bit. They respond that they don't support Yocto for that product beyond dunfell. Since my customer's requirement is to get them off of dunfell and onto scarthgap, I have to work around NXP. People keep telling me to talk to them and NXP has made it quite clear that they will not entertain any questions about that product as far as Yocto Scarthgap is concerned.
> 
> I am more than willing to share my fix (if I can figure one out) here but needless to say, I don't support NXP beyond my personally tagged version of "I'm-Too-Old-to-be-Wasting-My-Time".
> 
> I'm unable to come up with a bbappend patch to replace an erroneous 'require' statement in an 'inc' file. I need to remove the "require" statement from 3 recipes (again, from qoriq which is NXP) since the required file no longer exists.
> 

Depending on what you need (which is often not THAT much), you can 
simply "steal" what you need from your vendor BSP layer, and include it 
in your own layer and just not use the vendor BSP layer.

You can also do what Alex suggested of simply forking their layer and 
fixing stuff as you go.

For the "require" part there are multiple nasty ways to do it, I would 
simply fix the recipe to not require it (and since you cannot undo a 
require..., you need to replace the whole recipe).

Cheers,
Quentin

