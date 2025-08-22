Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 095B0CA0EEB
	for <webhook@archiver.kernel.org>; Fri, 22 Aug 2025 16:18:32 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.13])
 by mx.groups.io with SMTP id smtpd.web10.109.1755879509787965595
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Aug 2025 09:18:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=lnn9353n;
 spf=pass (domain: cherry.de, ip: 52.101.84.13, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mAc+gdYoX6dIz2+4MUqTn4C0TqW8qop6cr6Z8qcHNuE8Y4V/q5a1NfMVtVyROom4+9zVFCFpcTyxleueTBnQmchJT3wNTNlP6BrN8tunI6iOf8voCl6F20Z+Uwujc75eAkXgOyQF4i9aimM0pstGfbKnmqZNHN6ff/dcDY8Ap/SCzTFaANxyDWPgBuqlutqvfPhxgWGGT2ZMiihPdm8X6Vm5RS/DPK4BUk0CPAeheQldD20hUPyl1ODQgWIaizZIHy039AtflvCMhnnlYlhHgUzlQBE0w2C/fYzdw4H9uitj1T4lSsoGteVjYZCixWZWL+5BQbMAFvE/XicXb7R5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LYJh27pq2Lr0YXzN3nzgAcZWys6Y93PgUIGXuYV68z0=;
 b=l2zXQRi/rK/HjITbVulvXr/ZEJGeNZpDXFcvx9Ft1WeWnIUc0uWAyqG7ck7Ib1ZeB6loqVaUn99PsoTYXjQhRu1jUE9iGr/2tkj/47Rw8RTlLiultf6A2dvKG1MD9f8r/6EiLaOJ2UHOeWr41ZeoApzXfUVWrPiKBiBDgcZU/+tPBCeP86GGW7N3So49QCDnJS8TH97meFknJPzk3pFx29UfZxWroJ/hEHT/2F7x/gO9Gadqv6nw9jzi63IMdtt9ubMCp31VYDhdSXZjB9ldNAudRm/hjP/Wyor74H8fLssWVdtfvFt1TYeb4d54uLju6jJgpQ/zXsxxh2buOKkHsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYJh27pq2Lr0YXzN3nzgAcZWys6Y93PgUIGXuYV68z0=;
 b=lnn9353nP/6sCKgklHWuj5GzLpJTEHAFBe+CajanLTyEbDAxM8Qod+QRIkNNCuij+m9Sv37g0Hu+/z3+GINUnw7sxnZB7383/MxUGx/7XZnpeJEuLeys6akP8oty1gT250omxZFTG4pTFiTQzyIYi0Etj5bRNLqg/1WZXb+pzAs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU4PR04MB11457.eurprd04.prod.outlook.com (2603:10a6:10:5ed::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Fri, 22 Aug
 2025 16:18:26 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%4]) with mapi id 15.20.9052.014; Fri, 22 Aug 2025
 16:18:26 +0000
Message-ID: <947893f6-22ef-4227-92ab-23ced6d6b2b9@cherry.de>
Date: Fri, 22 Aug 2025 18:18:25 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS
 variables?
To: Trent Piepho <trent.piepho@igorinstitute.com>
CC: poky@lists.yoctoproject.org
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org>
 <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
 <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
 <4cd6ace5-0185-409d-8797-277ce6209f8e@cherry.de>
 <CAMHeXxMJ1NWKawm4R=g+UJLJ82+i6tFCeajqSDBXskngtU3LBw@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAMHeXxMJ1NWKawm4R=g+UJLJ82+i6tFCeajqSDBXskngtU3LBw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR4P281CA0386.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f7::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU4PR04MB11457:EE_
X-MS-Office365-Filtering-Correlation-Id: 573f621f-be47-4680-12d4-08dde19785d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?SQWBzzkw9i6DlcgwieuM1O+k49ikvhyZvUD0Dap5G+vMuxftBurlblZVQyWj?=
 =?us-ascii?Q?eAkWjfwU1n5sknOBH9x5cLeGS/PC/BA+lTOVz/qD4vrnB0MBryp3IHXvPaVq?=
 =?us-ascii?Q?zWGTQIcBduvnXlN8exOvv+geSYciW5Bsl0IS3tLrzEX/I2G5tz6OT8pM6313?=
 =?us-ascii?Q?4QmECqNVcEFFEZxp8ScQj3s9TejVWOyOgsfdWK5C9QziDcmVv42gfJZDtbn/?=
 =?us-ascii?Q?/4IdfTUEkLblKP2xWc1BQtCnC/T0VF882LhxesIpUMB76yd5FKf/9Lv09Cgl?=
 =?us-ascii?Q?44+busjb98RlMgDAgm0dq9sCdLBB+fmSQllM9v/zY2l6ZZpFIbgdkx5pvPXY?=
 =?us-ascii?Q?t7BUceYkcIfzLKjfvm9MpagCSmhUbekHqD8+rZh1SkNJqLDnQoVRgWIZQRiQ?=
 =?us-ascii?Q?OJMpv1ohn57Ds3KFKPaTIgwBci8TS9JJBqc5o9lKy6JQWD9efecTtQgTj+Ql?=
 =?us-ascii?Q?Yxblq/yvxvScIA5J1KtIMojPdCeczoWBKK2a9YyblH45IuIYSpRDLBdkXQtd?=
 =?us-ascii?Q?wqnmyejRCsNxMRvPHng7zvoPE8L4xGbkjxtwysIJy8FUr56Gx0umAkhuYYVX?=
 =?us-ascii?Q?no+TauOwc72HiEweRCRlME1AUca1cY6Phwig2Dn27BUE8e7LkNJxhSaTGiKc?=
 =?us-ascii?Q?7CgM1pS9679zl+RbfK9iT+YzYXaAggz7vb5e6wCY7PHFeuBveRMjSidne0XL?=
 =?us-ascii?Q?lOjj4aZQs01l8TlO7JOGyRiaJr0ha8FDdla7odavWuXLB8dtylPLcc7Y3581?=
 =?us-ascii?Q?pJzImS4e8dF9snSWseiOp/THG0bGFAPiOAZrqtrkB6K32rL+NKmf6w/FZYZH?=
 =?us-ascii?Q?pxCvBoOvT5af4BddUpJgmhHhzX3a7+iEClU+rHqmf1P5fhGAVT9fzld8dBEa?=
 =?us-ascii?Q?ostay32iBmrG53Y9g6+D3yphuWrbman6IwNDXXBOACtNyhee5IKq9OuRrqUZ?=
 =?us-ascii?Q?0A+CK8xR2o2p7XMw3oVeJ5/5fThFOtYo05YnonenexaGR0oVq1Z49lb/WdUB?=
 =?us-ascii?Q?obDMGhirwwKuu93JpLjCnJKX6DwfLO/zPztlH6MtyHK2NUSPmMNkGpsOmIrN?=
 =?us-ascii?Q?c8qdtHILiLL8WHjOqX4Pq+k7qZXxY562nXyAGpKGfyShjOob7A/OA9vmb+92?=
 =?us-ascii?Q?BL/PBdeb49xdb7BgJUFpeCFDFwAvADwvK70CpvHbeTnibFz1CWz3wMU4Xz+C?=
 =?us-ascii?Q?S2JQelTdSADSvB9DGPwBwXe77IgOl0HNHWaEKzzUPJ06M7U9tO/XzNndgMxq?=
 =?us-ascii?Q?xEXIRgwtlTUzfsMr7XweYbwA/bYBWghbSRhxN7yGICaO21NAE1Yk4C+34fGc?=
 =?us-ascii?Q?Tm6bZrQhYr8UZ7RaYkavX2MKecsNUE4VbrVQ1B5P/MEp/RiJy01R6bnyoHLr?=
 =?us-ascii?Q?U0xpY3siDAA6cOFhbishIQRSjQxG/40RM9hYemeaK1lrV6DihHOtr1ZsX2t1?=
 =?us-ascii?Q?JXtRhzK1R1c=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(10070799003)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/ahNw71MA+qS3USaN7hEFqXKHWNygNPLQM99ND099JAXJXOyOoTwOf4irETG?=
 =?us-ascii?Q?ywYEE5GpKH9TdSBjKKZRAWIvthKb5hrXww/mWVHS9K67LJpbg9fDj/Yz4rLB?=
 =?us-ascii?Q?CMBP2O+jUgssWfb4uAOY6OvNurDqUHdUZ/vweXaWAPagrH/pBhKJTdN0CQ7J?=
 =?us-ascii?Q?rzmceHbYNeCs7c/EA3F166RVxR1qgWR/Oyw9feOtUp7acf9Qp11/4E1FyPjf?=
 =?us-ascii?Q?g7qE15sI+x+gOvW9XR9uTRJ+V/nPuGwLiH5YGtPRQnWlHH9K6bd2+/doxg7E?=
 =?us-ascii?Q?AcvbWbPSUuRZUQDB1SHm0Tvqp81qktPqvEgccFgGNZFv/ha9gOrw0mMAGdLb?=
 =?us-ascii?Q?dD0w2GBMRH0iCV47yiM/8FGRalW4O0r8WMkutMcDGOB7esyWoEz70aEGmsTF?=
 =?us-ascii?Q?2XMxD28YYGZkAEB4VxOgZXeN1RsjQfD/o6n725Sc1VTuVKW9X/1ll21HJ4z6?=
 =?us-ascii?Q?ujNsxx8ZJ8igalIh+PUOf4weU/anxafLeQ5mplUhLeS/yNBq/l4kFKRMlFPK?=
 =?us-ascii?Q?U8SeRiSOJUp8c07C+sO7iP5cFuKcar7bZSec5oycKtqLUr67rgWeB13Sr/Ol?=
 =?us-ascii?Q?zqpgwKpbXcCZSTPHLmKeS6/tqUfqCN0kWkpd/lsgHBXgEp16uPf8jKAnY/xe?=
 =?us-ascii?Q?QaVsyJhU9OIvow7rbEyBWqeIikokxss1IGl0ViEoGNaiFm4yHFEOE/lyYr6K?=
 =?us-ascii?Q?edhrdreiQAfHk9Ffk6AytXMitwxdwuZDBI7UXlthU/F71kVLB7FP2QbtpxeG?=
 =?us-ascii?Q?5Otpdhf+YRpgYwOAK/EsXY7wXTsec93HKXMFsXrF5oOX3XHWfLGQQl9l53Ti?=
 =?us-ascii?Q?DrWWd4hBSo1weL0HIiTTu7GbpdJx7rK/s6dx2NaZxt1c1kruwAZp0UvFFQWe?=
 =?us-ascii?Q?UdMXaKTmjrKaiPRd8nFjMzqrMYOO0Z2CCZdicAs5Tk1TI1P4CVAPhXLXq/8a?=
 =?us-ascii?Q?XuOCfftx0+E8aJzoKYdAnI3fn9JCTUSxJDoH/oHbdxrfTGUhcJIGDM17sqUr?=
 =?us-ascii?Q?MBTaOeqpQTIxPnpaKWSxdMvq4b4FzR/zBB0RT4200b66olijNomKjJTknWDV?=
 =?us-ascii?Q?imLxArNf8LwbFrxU9ZT6lfBGpCrSO9UWcjllYgP8CwiSOkTg3O/t/S5+eK6G?=
 =?us-ascii?Q?VtCwgr0tkXYlhEbh07i4AhUDzBl9GLoNkc/PLdXS9eA4rYx541gk5ZnOt0lW?=
 =?us-ascii?Q?7uwOvjUfwJz2NMZQhyKjmx8OOFIJr8RQKMSZwcSGr88NAZhm/9KCi9np9AQ7?=
 =?us-ascii?Q?EQGxJXmny+vHouE34bUie0svEaP1vaxOgPQMAravV8/fT/l8RyzqwXLeqkFH?=
 =?us-ascii?Q?4Wtgf3mlOm6g8lB20sRapWZLa2R2QAF0RuaR0RmH780EMR8TY7hEkBry3Q0K?=
 =?us-ascii?Q?eiNr7MKlVdZFfWxAQ2eQr77uDCc2cHsRYH/9Bamh4Lu7yDrazONv675qGWrt?=
 =?us-ascii?Q?cAA3R60uJm2+jv3Xrfa55OFKYvd3xZ3auTWc8Fa99DLLsWSPU0Lawob4vENt?=
 =?us-ascii?Q?Fcd/9ocY3ck6y9yteR9F5DuUuD8BqcHNotLKvToLjDOpyIISSBvM++aUDEca?=
 =?us-ascii?Q?Ov7BJfR+WRg5OSPuoAUj0VKKr7QlcLXd5Cz5JGbzBc1X1qLrPvmFQZpKbdPL?=
 =?us-ascii?Q?OWAW8sJ6y/Jkbng7hidDiKnWNlyq9suPiRDsUvnNIBrnylM9tqK6glcHoTH1?=
 =?us-ascii?Q?CqOVCA=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 573f621f-be47-4680-12d4-08dde19785d2
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2025 16:18:25.9886
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VEj6mgxsXNgrRsxaZFKUToOtYbxF11doQzUq+K8x0zSxMYSkVuoQX/DT9NUVI+DXamN1P1G/jAfgJFtvszYPeFeN8hWmuJZRsGfg9jsjSx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB11457
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Aug 2025 16:18:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13728

Hi Trent,

On 8/11/25 7:12 PM, Trent Piepho wrote:
> On Mon, Aug 11, 2025 at 5:29=E2=80=AFAM Quentin Schulz <quentin.schulz@ch=
erry.de> wrote:
>>>> VULKAN_DRIVERS is basically internal to the recipe. You need to set
>>>> PACKAGECONFIG for mesa to include the needed set:
>>>>
>>>> VULKAN_DRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
>>>> 'freedreno', ',freedreno', '', d)}"
>>>
>>> Not sure I follow what you're saying.  If I add the above code inside
>>> a machine conf file or via bbappend, I'm stuck only adding new drivers
>>
>> The above code already exists in mesa.inc, Alex was just pointing at the
>> implementation and why setting PACKAGECONFIG appropriately would add
>> what;s needed to VULKAN_DRIVERS.
>=20
> I'm using Scarthgap.  Should have said that in the beginning.  So that
> code isn't there already.  It could be added in a bbappend, and would
> parse, but wouldn't have the desired effect.
>=20
>> So in order to have your intel and amd vulkan drivers, you need "amd
>> intel libclc gallium-llvm" in PACKAGECONFIG at the very least. Removing
>> other should just be a matter of not adding them to PACKAGECONFIG in the
>> first place.
>=20
> I'm using scarthgap, which is different here.  The intel and amd
> drivers sets don't use PACKAGECONFIG.  It seems this is just a
> limitation of scarthgap's mesa build that has since been fixed.
>=20
> In the current master-next, nouveau and svga are :appended to
> PACKAGECONFIG by default, rather than being explicitly enabled.  But
> since it's space delimited instead of comma delimited it's possible to
> remove them.  But it's not possible to add a machine override with the
> PACKAGECONFIG value set to the desired list, as it's using append to
> add them.  It's only to remove options from the default list.
>=20
>> GALLIUMDRIVERS_IRIS =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel li=
bclc', ',iris', '', d)}"
>> GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG', 'galliu=
m-llvm', '${GALLIUMDRIVERS_LLVM}', '', d)}"
>>
>> So you need "amd intel libclc gallium gallium-llvm" at a minimum in your
>> PACKAGECONFIG for this to build properly.
>=20
> There's an additional line later in the file:
> GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
> 'intel', ',i915,crocus', '', d)}"
>=20
> So that PACKAGECONFIG will also include the i915 and crocus drivers
> along with the iris driver.  I'm trying to only include iris.
>=20
> I'm not using amd, but it seems to have a similar issue: adding amd to
> the PACKAGECONFIG will enable multiple amd drivers and there's no way
> to edit the list via :remove or other layering techniques.
>=20

OK so I believe we can improve the situation (in master, not existing=20
releases though).

A first step would be to get rid of all the :append we have for "final"=20
variables before they are used in PACKAGECONFIG by migrating them to use=20
.=3D instead (or +=3D wherever we need a space).
I'm thinking of VULKAN_DRIVERS, TOOLS, TOOLS_DEPS and GALLIUM_DRIVERS.
Something similar for PACKAGECONFIG as well, I don't like the forced=20
append on x86/i686 machines and on native build.
This would allow users to override whatever they want from a bbappend by=20
using a simple =3D operator.

We can also use intermediate variables where we have :append based on a=20
PACKAGECONFIG value, e.g.:

GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel',=20
',i915,crocus', '', d)}"

to

GALLIUMDRIVERS_INTEL =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel',=20
',i915,crocus', '', d)}"
GALLIUMDRIVERS:append =3D "${GALLIUMDRIVERS_INTEL}"
or maybe rather
GALLIUMDRIVERS_INTEL =3D ",i915,crocus"
GALLIUMDRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG', 'intel',=20
'${GALLIUMDRIVERS_INTEL}', '', d)}"

then you can simply decide to build only crocus and not i915 whenever=20
intel is put in the PACKAGECONFIG.

However I don't like it too much that we'd be expecting users to=20
override those variables. It would be a mix of configuration through=20
PACKAGECONFIG and specific variables (which may be renamed between=20
releases for example).

I'm assuming it makes sense to enable all drivers (gallium, vulkan) and=20
tools for a given hardware platform. e.g. when I enable panfrost, I only=20
need to enable gallium, vulkan or tools for the panfrost drivers and=20
tools to automatically be included without having to do more. This is=20
useful for extending mesa based on DISTRO_FEATURES (e.g. vulkan gets=20
automatically pulled in when DISTRO_FEATURES contains it). I'm assuming=20
if you want to support panfrost and your distro has vulkan enabled, it=20
doesn't make sense to give the user a way to disable panvk (the vulkan=20
driver related to panfrost). But this gets more complicated once you=20
have a PACKAGECONFIG which spans multiple drivers, like intel or amd for=20
example, where we have i915 and crocus for gallium drivers, intel for=20
gallium-llvm driver and intel for vulkan driver. I'm not sure what's=20
best there. We could have a PACKAGECONFIG per driver if we wanted=20
something like ga-i915, ga-crocus, gallvm-iris, vk-intel, and=20
tools-intel (if there exists one in the future).
This seems very verbose though and one would have a LOT of PACKAGECONFIG=20
to select. We could have a meta PACKAGECONFIG called intel which would=20
automatically pull in ga-i915, ga-crocus whwnever gallium PACKAGECONFIG=20
is selected ,pull gallvm-iris whenever gallium-llvm is selected, pull=20
vk-intel whenever vulkan is also selected. "intel" itself wouldn't do=20
anything but simply include other PACKAGECONFIG. Honestly I don't know=20
what would be a good interface for users to configure mesa here. Maybe=20
you have some idea or recommendation?

I think removing the :append in favor for .=3D is a good step forward=20
though. It would allow us to override the drivers automatically selected=20
by PACKAGECONFIG.

Cheers,
Quentin

