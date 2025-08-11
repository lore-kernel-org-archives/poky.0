Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47259C87FD2
	for <webhook@archiver.kernel.org>; Mon, 11 Aug 2025 12:29:56 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.45])
 by mx.groups.io with SMTP id smtpd.web10.46911.1754915393078816789
 for <poky@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 05:29:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=A2BCeqZA;
 spf=pass (domain: cherry.de, ip: 52.101.70.45, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cgzXbpTGxiQfLmjWpPM5U155iSy/ZwnQhp0C7Phyk5hM47NAQSQ85n/aHuSt/NIL4g6jfs31/WcbOc7VDEBwNtx/EjSgS5cUHgVcCYJAxEOVa7Hfm3/t6pevLyGrVlHxtIAP+FqcLyj0Ph9nKYvCFaRCLW1B1cTQ/wwY8kF+jGERk/6HaMI9KLMxCP9sFKuH5RuxPzPpDQgOstRg68Wr8+oxSKJRubTutt0KWlBN3XPNovCyQWzcwwnoLOD721Jt9x9P/sAgPbkHwtImF1WqdCzDaSTDAAyqCGeGZ5hucaLP7XQJymz1hFy851l8PMtxydvvU/ObZe8ACwOgwRDWtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6Bpb8ZXvoEfmVqa7saCFW/R2pjdlFDAmakNKvBSHBI=;
 b=Tr2owOkl/2Y+GTLUPuRgx/GLrrja/zY/MCa4gxk8+rLMU8NArhAST2WyFyR5SqaLJMsBA5TNEBZq9O27cRi9oMEtrrrcWvi3sjt1aGZOVW+CR7wCd9XTSo+/iM7ur00zoZ2HhlnZdLcwzV1fw3Dr+/8KnrZmmwFUvXXxkisxa0LcsWVfovapb3akFV23OBE5e3ZSniLeW7AS5ujn6Ks9VdR7xsvR3qX50wTKk7uGfOdHKMJvD/OxY3hAOtL7Vz1EQCOGKXfOsut4h4y7dBFrBxJqztnqTS0HNmHmk/CsUkdhv2iTMKeTR33IyZAc21QId1APu4xMRtKuhfUJb7Zfyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6Bpb8ZXvoEfmVqa7saCFW/R2pjdlFDAmakNKvBSHBI=;
 b=A2BCeqZAzP/kr4DqohlarynrpMAW8lM2gsQ+zmv9rJrgQhGnjO/aYVRlDwgwokbqfsh6Q3X3G0TmMSsJyw3IMGY5bSZLJkBS/TDppfaONRvDA3RukOwvwdMp954cHKWeu/cDF6d4SFOatrEs2/K4JlTfMzScfG8TI14TkmG2ha4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7853.eurprd04.prod.outlook.com (2603:10a6:102:c0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.9; Mon, 11 Aug
 2025 12:29:47 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.9031.011; Mon, 11 Aug 2025
 12:29:46 +0000
Message-ID: <4cd6ace5-0185-409d-8797-277ce6209f8e@cherry.de>
Date: Mon, 11 Aug 2025 14:29:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS
 variables?
To: trent.piepho@igorinstitute.com, poky@lists.yoctoproject.org
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
 <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
 <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR5P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::18) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7853:EE_
X-MS-Office365-Filtering-Correlation-Id: a8ca1d61-0faa-4751-10e9-08ddd8d2c1ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|10070799003|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?yWjZajKTBeZACfuZ1MaeoBm7a39556o5LeuhXUDD7BCnr+2i2+neLrm1IdsI?=
 =?us-ascii?Q?mTV7u+0HB3yiN+Uq1QfQfM4qkvbMLE1OqGppRzmxROuD8UX/nu+NNp8A1Szq?=
 =?us-ascii?Q?6/LRXzbLZ+PIcAuU1fFQt7OxzCdok4D/X4mkjdMMJBNoyqn0+IAY1GEGbHoK?=
 =?us-ascii?Q?vtunG3hCVIElplmeDAw72yPr/DAYezX83146mojXUMydxbU2EKxc4fo3fnkj?=
 =?us-ascii?Q?MZlnb7GNGCx6YT+EqftoLQL8GJ5A0+n7jqcixTZhRUZZs4NrZAO9iPzCJlb7?=
 =?us-ascii?Q?ZiggJFxtPKRK5GMbkmdgRvJxL9Eia39jZro+me6RPCa4BUus7bQkY7HiEEGk?=
 =?us-ascii?Q?l7eMeqYRPdSvOujXVuXZsovrZdwutqdkgh27QsDnr0ZQ+6LJ369Z8CpRs+69?=
 =?us-ascii?Q?SBhTtT7o5JCycAKgTinbbqvinGqclsUpgt7t9OykufSep5lnxAD9qHnNeSmx?=
 =?us-ascii?Q?zw7+fNL0TKXlhpjLqLhgzkpvmSTBsK1INLyZaEiWby+W6cYL7CpsKoxHF3X4?=
 =?us-ascii?Q?bT32zASnDPKiUTaQeE3/lYdqvbNTOK2cTpODIoGRRK5KohVC9CzNkCS4zER0?=
 =?us-ascii?Q?izq5GCa/W4ewy02rnA8XqOcS3s1IZ5inUaEqQ4luErIeUTRXBmLqbHby4D4R?=
 =?us-ascii?Q?/1SpvkXy0snkSKqDfaXEtYkeGZRIJ2yIQDosJ078GJFb46or1iP7Y1iVRI1A?=
 =?us-ascii?Q?LzNaU4HpwErWzn7zebgxFaVchwi0uMEDGF6gJoKbQzg7Cot60sdr2DP7BWZ+?=
 =?us-ascii?Q?vLASnf+VIsy2VafthAyc/DikS+4T5XEfS0fTV0mpnZnEpOhw+RBg3KMW9XZK?=
 =?us-ascii?Q?W1sDhatMfCSnZmfIQwv7dxENXs9L59y4ARoIF/6uvEwIPvfg4RH0ZTh21MI6?=
 =?us-ascii?Q?9dNUQOvTgqhNf0ang9m6mgL97UcraZk2PanUgDXlN6HzImI8qyTptgH6tnWx?=
 =?us-ascii?Q?d6IlmW8A4g821KEFM9ceA0JbaCeSLZ3XOnNbTSdeycbBxL4NVyPAYoNpsd+j?=
 =?us-ascii?Q?zJPo6UpYfY9DmqJKQ0Og84HvI+B5KTf+ZQpQ0SHD+HPqDLgp20Kx7D3B5J4X?=
 =?us-ascii?Q?kFRDj8AEwUaDvhnsj/RXNIzZDI7/ZFoupTkKz4jUdLUzMivCImBrRfYv4T14?=
 =?us-ascii?Q?S0pao/VuEhIZhWItbjcezPaHE2jWoq/p/mZ5qi+3SSvbC9vldHhY8obfsaFv?=
 =?us-ascii?Q?Pn7xCGUjp5tgetNpNiGXU/XGrQXxcrgXea0E0VHK1n7yVAM9kcsQCiQlcdf4?=
 =?us-ascii?Q?JrMHfLw6C6YnxQkz1FMV5jvIj1TB3avQBqa+sCfB5GQAYaSD7gIL6VPrn4UG?=
 =?us-ascii?Q?Wd2saT5SE9Owsn5X0O2SW3tw6YD6BedWW328udsSMwcb1OgAiJndtjdTR0Uc?=
 =?us-ascii?Q?FvSUhTojFXp3XUyONucTi95je3/VVw1XVt5kurgOQ8A2j09mslD8JdPdIvH0?=
 =?us-ascii?Q?KgFUkgXmYZg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(10070799003)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?k2cnzom8njS6CYrsN8kn6fwfo1fxb/8UTl6mkIP/bMc2G0mRaKx4HFWu3zcq?=
 =?us-ascii?Q?Q6HWzBGJ6K0NSN9w8wzzUY8bYVbAgzJ70mv/UdolQVbrYV5twJ/L8OSdoY/E?=
 =?us-ascii?Q?fAq4FnEPZeibrSzSEj9CpV5VqDLW8F++Tlf4JW1ogGq/SefXDOvEHwaunZb/?=
 =?us-ascii?Q?2BYQH9BrtTxtuXzdpi1xK2Tg9+5NfL8wYGzCI6Po0iWe/FrdbS789znEeYW9?=
 =?us-ascii?Q?ycfwjSLZtxsON/LhnnV4FBwnLZHiyfFd08lx48kO4sNLJyx2pFAUB2O3lgh0?=
 =?us-ascii?Q?Xfs1/NrS7WYdCqQMAqzJRLjavi4xi0OVYi18siyTuy1kfTf8VJEYLsSxLo7B?=
 =?us-ascii?Q?kOEkT7gIMsuVr+t4D9l/E9RlopbwPGwOk3KHRm7C7ss6P42ei6T/ZeLC3PB3?=
 =?us-ascii?Q?SAh9sCN3DWihhKjmX83OkOyYNdbNMg5rBC3QqszbIu9Qe2tqAJ667mjurOte?=
 =?us-ascii?Q?O3RwUd2HLT3/zCb45w7D4DG7JhNpn1xbHTOW6H+QePCXFicKr2UiYjtkeXdN?=
 =?us-ascii?Q?d9DaO57sCxui45Yh/Py7a3unxyOdXKLYnY6OhOLeHhuqmn5K3PDXaOYoL2q9?=
 =?us-ascii?Q?DdZ91jOoknC8YWTqceN4KqvHL5BNLXlT0Y4ktB86Kj11hz5pmYrO2GnSy858?=
 =?us-ascii?Q?0WRFl5Mqa+nUDejcVtbypGMgm65fZNbGO8PpRuQsVl9NIXF3gBNFFW2OjeM1?=
 =?us-ascii?Q?GE1oTLoctaGA3Aebiv4yV+gxa4ositvL+3PVmcb5RySeL/6K+SUrbiMtALd0?=
 =?us-ascii?Q?7KUU8W4CXDqkm1DxNA23JqsX/rl4YUIXS59p+Rx2/X6nX9h1nJXj/ISMwUH1?=
 =?us-ascii?Q?lrQQNggKwcx8vJnmtmlpXycAHXL4+AgXRjMxZL3NceYQUkaFYx4YO8OP6EtU?=
 =?us-ascii?Q?6F8ddu+0B6KujBveD7Um5A5oVFASp53DSYPRBHz7shBKNPFdNtLoA6Ih2nLx?=
 =?us-ascii?Q?BCnq4zz10y/Sc9QDMSnnusGb2SliqhnyauWfLONRjk0THsHquRQdXh8sen4c?=
 =?us-ascii?Q?tq07nvT75/vs05h3yBQXJS/7guIULN0qDXIcA0JY1Yi+/u7BVAuXEiYaq53n?=
 =?us-ascii?Q?D/iMWL2uJBevLePQqljCTMB1XcbFG3/6JPs/dVDc0P9xvBgvsjhhZjMr7Vm8?=
 =?us-ascii?Q?7Ofdh3l4KLGkMv+Xmwrp3NXbiLAWAeOFviVtkD4diisi469DJFxr+I8E16FN?=
 =?us-ascii?Q?hnDKMBnJ9qbzIlLuXvZ+0F2r7xXkXNkX0aqKnzYVF4PL7irh+HCjb3Q2kQjw?=
 =?us-ascii?Q?AZiE8ejhQFllTsTWnxGoQNzS5qgrGqMnmelN8M3XI11tjMTwBhIveKpDuAd4?=
 =?us-ascii?Q?3+13nIGkPl5wuvr4F1LXIwi0vdNGjkcKEjx2KplVzG9nNixnxNE4f0SSpHyH?=
 =?us-ascii?Q?vMv1NQJOZ2hSXqEdRFIW1uuRtcREv8ATscH3unGVIH7f0gqcWxxs8KITYQHB?=
 =?us-ascii?Q?XES2QopdBSbZF4Wc6gdlzUO5M0U6CGAbhE2gJTtfVf20c737zSQRyzo+DjDf?=
 =?us-ascii?Q?Y6gbiEO3hq92NeiliwPtNt2qqyyfACnVUkoDXPC+OsyuPxnal6JROK5JZ3XS?=
 =?us-ascii?Q?WiSax1bmBHjBeG2gj3fRKRl1sCLNrhRaglM+YE0zsp2fjExpjeNGUgDv8p4Y?=
 =?us-ascii?Q?ALOWfdp8fbhmOZjfEc1SNiAsEyDXOhXJqbaNCjJs9Mak29yX6E6Rho3uOO+j?=
 =?us-ascii?Q?EY0t9g=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a8ca1d61-0faa-4751-10e9-08ddd8d2c1ec
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 12:29:46.5746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IEZoRJY/pclwj2dpLKHGpJZ1p3gZC1NjI30cOtRnmbuTIAOdu2sV8E3vC/d3LdTruSDPQIWsfLpGULcEGI0d4kzuYDuvZidTMfSGErJB50o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7853
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 11 Aug 2025 12:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13720

Hi Trent,

On 8/4/25 7:19 PM, Trent Piepho via lists.yoctoproject.org wrote:
> [You don't often get email from trent.piepho=3Digorinstitute.com@lists.yo=
ctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSen=
derIdentification ]
>=20
> On Mon, Aug 4, 2025 at 3:15=E2=80=AFAM Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
>>
>> On Sun, 3 Aug 2025 at 08:28, trent.piepho via lists.yoctoproject.org
>> <trent.piepho=3Digorinstitute.com@lists.yoctoproject.org> wrote:
>>> Setting VULKAN_DRIVERS in an bbappend or machine conf file to something=
 like "intel" doesn't work, because the append actions still append to that=
 value all additional drivers.
>>> Trying to remove other drivers with something like VULKAN_DRIVERS:remov=
e =3D ",amd" doesn't work either, as remove only matches on word boundaries=
 and the list is command delimited, not space delimited.
>>
>> VULKAN_DRIVERS is basically internal to the recipe. You need to set
>> PACKAGECONFIG for mesa to include the needed set:
>>
>> VULKAN_DRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
>> 'freedreno', ',freedreno', '', d)}"
>=20
> Not sure I follow what you're saying.  If I add the above code inside
> a machine conf file or via bbappend, I'm stuck only adding new drivers

The above code already exists in mesa.inc, Alex was just pointing at the=20
implementation and why setting PACKAGECONFIG appropriately would add=20
what;s needed to VULKAN_DRIVERS.

> and not able to remove those the recipe has already determined.  While
> it is possible to turn off, e.g., freedreno by PACKAGECONFIG, it can
> be done for neither intel nor amd.
>=20

VULKAN_DRIVERS_AMD =3D "${@bb.utils.contains('PACKAGECONFIG', 'amd',=20
',amd', '', d)}"
VULKAN_DRIVERS_INTEL =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel=20
libclc', ',intel', '', d)}"
VULKAN_DRIVERS_LLVM =3D=20
"${VULKAN_DRIVERS_SWRAST}${VULKAN_DRIVERS_AMD}${VULKAN_DRIVERS_ASAHI}${VULK=
AN_DRIVERS_INTEL}"
VULKAN_DRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',=20
'gallium-llvm', '${VULKAN_DRIVERS_LLVM}', '', d)}"

So in order to have your intel and amd vulkan drivers, you need "amd=20
intel libclc gallium-llvm" in PACKAGECONFIG at the very least. Removing=20
other should just be a matter of not adding them to PACKAGECONFIG in the=20
first place.

If you don't have this code in mesa.inc, this means that you're using an=20
older version of OE-Core than current master so it'd be nice to specify=20
which one so it's easier for us to help you out, especially since mesa=20
has seen a fair amount of changes recently.

> Or are you saying that the mesa recipe should be modified to work
> entirely this way: allowing *all* drivers to be configured via
> PACKAGECONFIG?  Ditto for the GALLIUMDRIVERS configuration, which has
> the same issue.
>=20

GALLIUMDRIVERS_AMD =3D "${@bb.utils.contains('PACKAGECONFIG', 'amd',=20
',r300', '', d)}"
GALLIUMDRIVERS_IRIS =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel=20
libclc', ',iris', '', d)}"
GALLIUMDRIVERS_RADEONSI =3D "${@bb.utils.contains('PACKAGECONFIG', 'amd',=20
',radeonsi', '', d)}"
GALLIUMDRIVERS_LLVM =3D=20
"${GALLIUMDRIVERS_LLVMPIPE}${GALLIUMDRIVERS_AMD}${GALLIUMDRIVERS_ASAHI}${GA=
LLIUMDRIVERS_IRIS}${GALLIUMDRIVERS_NOUVEAU}${GALLIUMDRIVERS_RADEONSI}${GALL=
IUMDRIVERS_SVGA}"
GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',=20
'gallium-llvm', '${GALLIUMDRIVERS_LLVM}', '', d)}"
PACKAGECONFIG[gallium] =3D=20
"-Dgallium-drivers=3D${@strip_comma('${GALLIUMDRIVERS}')},=20
-Dgallium-drivers=3D'', libdrm"

So you need "amd intel libclc gallium gallium-llvm" at a minimum in your=20
PACKAGECONFIG for this to build properly.

> If the latter, is there a reason to not use `VULKAN_DRIVERS .=3D "${@=E2=
=80=A6,
> ',driver', '', d)}"`.  It seems like as soon as recipes start to use
> :append internally, they get harder to layer via bbappend and conf
> files.
>=20

We could remove the use of :append indeed as this is very likely=20
suboptimal in terms of parsing time and doesn't bring much. It's not as=20
simple as jsut removing the :append, because of a few :override=20
mechanism there but isn't rocker science either. However, I really don't=20
think you should be modifying the variables=20
(GALLIUMDRIVERS/VULKANDIVRERS) directly. PACKAGECONFIG is there for=20
that. If it's not precise enough or is wrong, then it's something we can=20
change in the mesa.inc to make sure other people benefit from it instead=20
of just keeping some changes in your own layer.

> I did find a workaround to configure the mesa drivers.  In a mesa
> bbappend, set the configure command line arguments directly:
>=20
> PACKAGECONFIG[gallium] =3D "-Dgallium-drivers=3Diris, -Dgallium-drivers=
=3D'', libdrm"
> PACKAGECONFIG[vulkan] =3D
> "-Dvulkan-drivers=3Dintel,-Dvulkan-drivers=3D'',glslang-native
> vulkan-loader vulkan-headers"
>=20
> But this unnecessarily duplicates internal code from the recipe that
> will need to be kept in sync.  IMHO, being able to select drivers via
> package config would be a better design.
>=20

You should already be able to do that so please help us in helping you=20
by telling us your PACKAGECONFIG (in your recipe and returned by=20
bitbake-getvar -r mesa PACKAGECONFIG) and OE-Core version you're using.=20
Note that this shouldn't be working according to our recipe as intel=20
drivers should be requiring libclc. We may have a made a mistake here=20
though, but something we could fix with the right amount of information,=20
context and testing :)

Cheers,
Quentin

