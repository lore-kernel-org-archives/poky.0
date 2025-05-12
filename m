Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C00C3ABCB
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 16:36:36 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.66.28])
 by mx.groups.io with SMTP id smtpd.web11.55170.1747067790691302749
 for <poky@lists.yoctoproject.org>;
 Mon, 12 May 2025 09:36:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=We17JOGP;
 spf=pass (domain: cherry.de, ip: 52.101.66.28, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ix2+2TIR8DU70N4vnbNvZMdpjD3Vl9iPP33GENzo+CLes6APwncovh81RmQn1Pcc4ok96k6D+YTUrwd9KMH6fe6YdAUIed3jn/nNtE6YhNk4kDp/k+qYx0GlNooHcQx1H4zpndq3hGvD+K/LOZxibkziQsRw/42o5bBOR9IMKp0ct2SsxReY79aCn3rBSvha3I/j2vJmM49eNimr0sLASJUlVCI6xpHRktK+rhU7jMVFg2UnG7YhRhQyhgKtYArKFckO/mANOasZW2UbAzCF6Dc4JHFrZyRtMrr2LSU/h04QXZTnPqmDvPcb5CVQJwVwrJpIuCnngwd7mnUQhDL0hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAgIehVjvRlXXYqqcrcfwpbfVO6nEepkWt0mb8jXnSY=;
 b=gRs5sACyljmcaiLnKxQrMuIvClV9rQs9WJRcV115otEvd6iZrX8g+d81rx4VH+I0KBq0F82qBVeQdnOEQ2jyD2UACjsynzxyenYy6Wk2jzUKXa4OUm6P9dW9404rdWXVw9ZROhrqvGIsWTIFSl4D7UhR8w44smzxlbf51cM6aGMfKlTheW06a7ngtrsfAyT90lVmlA7zGhzn3BQRbejNcjn7zTv9f6yGyCsYlrJgb09e9sKzQLmwpWHzM/VQuH/D0J20UuPOC3rUGToUEgd4CY3ufb3XqMjxQXMsVY8Jv7V71eqSydmA6qGmFV0mA6cwkPeE471id1oLV0/Ciy1M0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAgIehVjvRlXXYqqcrcfwpbfVO6nEepkWt0mb8jXnSY=;
 b=We17JOGPwJju8GgtvS1qTPzDNy+elSHhu4xQ1YSs2I+u1YNDAb2JYxs7FFbjZXFjd0P2086SodKaGf8qIU57sfrQeUFqtcK8VdLbkqum6qeAkfdgRprJ9bN2UTxLy4/mOP1wabCjhNX42JFWH3+ji9oRaoy/zcjhnIP1cWXI9ws=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU2PR04MB9114.eurprd04.prod.outlook.com (2603:10a6:10:2f5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Mon, 12 May
 2025 16:36:26 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 16:36:26 +0000
Message-ID: <df69e075-f88a-4565-9ea0-0ba23a88328d@cherry.de>
Date: Mon, 12 May 2025 18:36:25 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Patching a patch from a vendor
To: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
References: <wTK0.1747066830015306452.2L7F@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <wTK0.1747066830015306452.2L7F@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0009.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU2PR04MB9114:EE_
X-MS-Office365-Filtering-Correlation-Id: b8acb2c6-ae8d-48e9-4ac1-08dd917323a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NGtxZTZUdU8xV0V5UjY0MCttNFdIb1lvZ3BvSUNOWEU4MlNqV2JVei8rRHFB?=
 =?utf-8?B?WXNvWGtWb3pWNjRBZ2Z6VEl3a0tYSEJEVDBaTkJWQjJxbHhqeGhMQWhQWGFT?=
 =?utf-8?B?SWx6VUN4QU5sekNKT1I4ZVZGaFBxc0VCWmdUbms3NXA1MUszVnN4VFF1b2tD?=
 =?utf-8?B?L2ZKeTdXcWpUR0lVNmJUeHpvS0d3TlVNUU9ZTklIa3BXTzFqSEpoSWFleGxi?=
 =?utf-8?B?QVNNemxodDMrN2RGYkRDZVcwOGRPeWZJMHRRekYzUmNWdnBLcU41YXdYbDBS?=
 =?utf-8?B?SFZFK2JWT0lrS215Ti9DcmhYUmQwUXQrWVFCYlg4YWRtWmpFL0lScDkyNkhG?=
 =?utf-8?B?c1FtZ0swa0xFSk85WGY0cmJ5dFY5TERpV1ZJcXFIbXVIemV3bEVIK3JidUxT?=
 =?utf-8?B?VXpRMzVkTkNzeldQVmlNd21JSmphYkxZTi94ektNUFJVQWVjdmhTTEZOUkNF?=
 =?utf-8?B?bG5RajVZMDgvTUJubTNWWFNLSmRRRjFRbzBMdVFTL3dYSEVDVWJRaVNxc2J4?=
 =?utf-8?B?MlFkUEhJZWVqTlRMcXJjWU9BY1A5d1pxVFo2ZjdNWXVqblY3b09hNzQzNTJz?=
 =?utf-8?B?MFdTZldvTWNVWitqTE1Ed2t1cGRDa1psdENZcjdJREROdi9uY3BEOFFhMEJU?=
 =?utf-8?B?YzJ6a3NLeDBscFNzazlBTXVJUDNJaGNqd1J1YjNJbnAyUkcyL2VmeTZyQXpV?=
 =?utf-8?B?SG5xcndPclEvNXdFeXJZKy9KS2t0blFWNCtZbUFLRXVoYktjVjRHRU5sbWdo?=
 =?utf-8?B?TGt3ZG4xRDNVR3NuOEhKZ0xwY09nVldUdWNudUtUZUtIaG9aZ3JWZm53c2ZW?=
 =?utf-8?B?WUsxVVY3RTcwdklUdXlzWHpzMzhNeXI5M3pTQVQ3MHM1ZDQwN0x4VmIvVS85?=
 =?utf-8?B?dE5YdjZPalZ5NlpiREVCVWZoZGtsSGZ1d1pjUnlaVlFrTis1UDZCY1VUWGNJ?=
 =?utf-8?B?cFBjSWJnNll1ZjlCNnZmWC9BdzZ1K1ZuNjdJSk9GMXR3V0JqQ3lBTXZNVDhj?=
 =?utf-8?B?L0ptMFlFc0dXTGxRcmdoazVocW8zK1hRYnpZUmtPd0ErNjh0azV3dC9YTGFw?=
 =?utf-8?B?TlM4czJyTWVWZm1hLzc2NWxkM29nWmRaWHltYWpBaUYvVWVwNFJoUnMrV2Y1?=
 =?utf-8?B?Zjg3NTI0RGZ1TDFlRGl6K2RsME5URkYxWTlqYm1scENObmxJb3hZanZ4MlNx?=
 =?utf-8?B?S2NFR1o5b3J5TGthbWYyNTNVbDNKMjkvc0hSRzFoSUhkczI0SDRJdUdPbjd5?=
 =?utf-8?B?WFFvN3YwLzgwZWQ5WmhJVlRSTTY2TW1yZ2UxMk00U1JObktrTkRVUU5ONnF4?=
 =?utf-8?B?OVBJU1pROFowVmFzRjlVNWhlaC9xeGNxU3ZWdDhFUUI4b1Zja1JRazdLRzNa?=
 =?utf-8?B?MTNDcWhjT0R3SnhtZDExOWdXc3dyUG5KSXZPbUNXZ09lbXdsSnNxMGtnTU45?=
 =?utf-8?B?cTBqenJnOE5KcXJ5NzJVUjVGZGY2QW1XcVFQVjN3TWdJbUJKWUMvUlpvZE1U?=
 =?utf-8?B?QllTTHVrcGhNbU9TaXF5TTlJQUR1dzMyZmt5N2krdnRWTkRtTUpDRXZTR3NV?=
 =?utf-8?B?TFo5SzZUOG55NWg0czlGTmZXL0R1WDZNcEpEUW1PSGlWMEF6Vis5NGYwVzVH?=
 =?utf-8?B?Y2ZkeGIrM0Q5Y1lJb3NiL2czdVZKcjdPTlVjaHhEbmk1Nzl4Y3hjKzF2c01K?=
 =?utf-8?B?K1g1a3FtMzJTKyt1dGxKeEF1bStRVUdqbmdtYk8yUjhYVktSaDhXVFUzc2Nu?=
 =?utf-8?B?emhoSDk1TjNZVStzRlBkekR1WnRMLy9BRG1Zb3VucGhDUjdVdWttTGI0blA5?=
 =?utf-8?B?Ym96Yzd1SkUydEF6ZUV2Mmo2WXNqQ1ppdXhzT29qYis0VlA3ZzZiQnRvbWJU?=
 =?utf-8?B?b2xMZHRlby9RMjgwMFJLMHlkaWN4YnJUVmU3TTM1a0g4bXhwNUIxWlZNRmEy?=
 =?utf-8?Q?Rt8vA2Yz4cQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QldIODJLbkdCSlZPZk5wNUhVV3lNd3ArZCtsbGVaZEpxQ0FCMVV6TDlOWWg5?=
 =?utf-8?B?TlN1ZENkM0gxckd1aDJjcDNCUFJNdUJsR24waTB2VXc4RmU2QmNDR3dVNnZE?=
 =?utf-8?B?SlZKdjFpWWM5TDA4RVBoTGZmUG1iQzNROHBYb1EyK0FiSVpTR0lpY014REQr?=
 =?utf-8?B?UXhqRndiYTM0Q3NEUVJDclE2MkVoUS9TWjk1UTVlaDdOTXZWMDVscXVDN1Z1?=
 =?utf-8?B?NUEyK1llbE5ua01oRWJGbnZOLys2cEc5d3BGbEtOVE9BWDkzZDVmM2FDeE1r?=
 =?utf-8?B?Ylc3bE9pVkx6K0kvVHJJNzI2R1g5T0FGUHhyWVc4eTJXWW83QWRBL1EyQXVP?=
 =?utf-8?B?NXdaRy93Z1JwVGQvOXJFbUkvczNYQm40WWpHeGhlMU52MzZlamlNNkZGMUlE?=
 =?utf-8?B?TWtQbDhkWDNPTE1KWG1PVXhwL21qSVVBQ2NMSVVhaGFpYVlvNDhtUjR0UnZ2?=
 =?utf-8?B?bzZDL1JFd2pCV01BaWt5VTBVUlJsM1dJdTNtTXpEYngrekJmNW5kWllvSXlE?=
 =?utf-8?B?L0dUckgvV2U4QVppY250aXp5R1BYUXozYVJ6N2dXVHNEYzdjRTQ1anN2Z1Ji?=
 =?utf-8?B?ZlRuOVhLVTdneWNxczdpbWpKMVVFa0RQYkRlbHlUcERlMzBhYm9nRENzVzVE?=
 =?utf-8?B?SVloL0x2Z29iUFBNeHQxaVNTQUo3L0FMNTQzNlkxOXpOR0ZOT1J5Z0l4QzY5?=
 =?utf-8?B?MlNHNGFwUU5hNXl6c1AxWUxOcVJqT0tnbktBR05KMDFkeVdCcGwwR2NodlI3?=
 =?utf-8?B?VklMYld0eWpMNDF0K3pVbS83S3VLWmJTajBXRzJsUS80TEpGK01ROE5LQnho?=
 =?utf-8?B?bC93R3Q2TFhiR1ptbWRuNm5yUFA1Yzl5TWRQYStvM0RQSXhBYkZEeEVjVUor?=
 =?utf-8?B?cDEyb1hhL3lXenpwMDczaVFVZk9tMEI0Q3FjTjIxT083MEIwOVJBcGRpTnhJ?=
 =?utf-8?B?ZndRN0o4OGNTOUFmZnZvRVpFZVlYaHBXSW5QYUMzK3FGeU1UNWlZc2pZdGhy?=
 =?utf-8?B?MkVIZzhRVVRsOVJVbjBiajRsQTFJRnhYcmVmM0tRc0dRZFl0QkJrOUVUd3RG?=
 =?utf-8?B?NEtwVkRZVXVCUXhKOXlueU9FL0lqL1JZOFpGSHkyUnN0UW5UVUJ4diszcGVD?=
 =?utf-8?B?UWFneC9KYzQ1dWhTRGhMLzZhU215SnR3cjdJSGJ0MjJxOUlPT0tmMjEyTk5F?=
 =?utf-8?B?bHFzT2RNaTlCWXJyMG1Hc0xHTFJkNFYyb2Y1ME5FVnJ6RUhFWWk4d3VZcFdr?=
 =?utf-8?B?REtvZXJ4MjBUWXh5aGQ1N2VBR0RrWkV1SDZzdXZNU1JvMkUwVUZ5VzQxTEJF?=
 =?utf-8?B?UG9MNTFGb2VFSXBMcEtJSU05WUhZcWVsUGpqa3lvWnFraGFpN1pVSVFPRFd1?=
 =?utf-8?B?cG1xYnF0U3JRK2ZKdFNCcnd3RWhTL1dzMVBRUHBaL2FmdU5JcVVkL2l2VmFu?=
 =?utf-8?B?VWpEVnlhTVZtY1NTbkd3RkZ3emZKMldOZ1NjUjZkOHNNRk1TQUV2bWw3bUpx?=
 =?utf-8?B?Z1VrYXlub3dUY3VsWWZydVhuT0Rla0syK1M5UVllelFZUk5zR09VRlB3VVA5?=
 =?utf-8?B?YUFnYkN1VUVDaTR6SzZ3NTg5OHZNcGtOR1JSRjBHOTdnQ0FzM0hHU3BuMHBM?=
 =?utf-8?B?T0p5clM0QVRSSC9tTEpLcDU2S3daWHdPWlJtNU5QUHVsNll0WUNpVlVienJF?=
 =?utf-8?B?MC82MkM3TGtPOW1pQ2Z0WWx2N0diWWtHd0xqN2RjRUhaN0FISXVrWWh0OGls?=
 =?utf-8?B?eXU0RVh2M25uaGQzbi91c01WR1BmUk8rRm9UTHlKVmpCMk9EUjlwZ1FyZWxq?=
 =?utf-8?B?SURKQmJWb1lxTWtDamIxSkNVOU1rWWdUK29OdnhjVmxDQ3JyMlBvblNGUStL?=
 =?utf-8?B?RjUvNUdEemNKYVdWQWdia0ZlNkpoaFVNeDVsZnZKRUQyeEp6bVhLTmFxbWJW?=
 =?utf-8?B?aFM2WVJFd2YzRXJZRHFoUlBGTk54b2RUUCt4MHFnbkJVc0JoRXh3ZitzRmk3?=
 =?utf-8?B?QjdHNkl6NnRMNnZrOXVvc1BpNXl1eS9vOUhlbk1WNVlwU0ovcUs0UzRqUTBo?=
 =?utf-8?B?eEdaNWlOUFZJUmlwQ05DOWZ6c2h0RzJIQXBoOGRhbWpPeERoM3E4SnJ1UXJ1?=
 =?utf-8?B?dWtoRXpLTFU3bUcrYzNqWTA4d3ROdWNzTjZ6VURUOHZIdHRiOTBDQm05NnB5?=
 =?utf-8?B?OXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b8acb2c6-ae8d-48e9-4ac1-08dd917323a4
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 16:36:26.2920
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KS14kqu7nSxJpDeoywJqSa0OlkOvveNMQ/Ov98GtNZMScTXaIzAXcR4lp/7EzQpSg5dtz5jsthEDSFc4eizXdhYvwd0hgkNs1B/tDmy1ftk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9114
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 12 May 2025 16:36:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13612

Hi John,

On 5/12/25 6:20 PM, John via lists.yoctoproject.org wrote:
> I'm using Yocto version: scarthgap.
> 
> I have a situation in vendor's repo, that has patches that needed to be changed (one of them is as simple as adding the "Upstream-Status:" string to the top of the patch file.
> 
> Is this a "thing"? I don't want to be changing the vendor's recipes and patches (it's the qoriq stuff under NXP) but I need to fix some obvious errors.
> 

Don't patch patches, replace them.

Have your own bbappend in your own layer which replaces the patch with 
what you need.

A simple

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

in a bbappend that can be found by BitBake in your layer.

Then add your patch that replaces NXP's patch with yours, in a directory 
next to the bbappend.

Or even better, contact NXP and give them the appropriate patches so 
that you don't have to carry those in your own later.

Cheers,
Quentin

