Return-Path: <niko.mauno@vaisala.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC465CA0EE0
	for <webhook@archiver.kernel.org>; Wed, 13 Aug 2025 10:26:00 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.110])
 by mx.groups.io with SMTP id smtpd.web10.98053.1755080758095190981
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Aug 2025 03:25:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vaisala.com header.s=selector1 header.b=XEAzyexR;
 spf=permerror, err=parse error for token &{10 18 spf.protection.outlook.com}: limit exceeded (domain: vaisala.com, ip: 52.101.72.110, mailfrom: niko.mauno@vaisala.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJT4nssaB2F0RRQRHr3Pdp23qBtkFuLHMbmEHx415ec5Y6u63olsnhAlKi6WWETkgARQ9ZSxs8ydV/exlWmzjMEjLWvkprrhyOq9i2UuMkUIdgQ48Qf/yQ68nu0ZbqDwDidn4dJSpnA/78tO5D/YK//r1ex1IpcSDwMeAEaYJvljW5Pbu7MDEq4X3Ahdsoq31g+4KvbVb8oSzzS51eiXMdtwOnWmbPhfn4rdICOsUnm5o0ksYSBLOeJ7naPm/qtbq+jm27xMMLCyC/ksGoPt+W2Us6tNHW7/401FzgQrkrMY6ozdl3/KrEdG6l5RzwZ5jot1Ekrvnek6FGlTH3rqyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FbbrH58tMpe+oe2xkUP9bQutOJ6MJI6CIOUUHw7vZ8s=;
 b=Ltc1ZtFvHJvzNJg8725cCTddWb9LFxAsk1O5j0enOfb4AT6X89bwI1Q96sdhOYOLbnHittx8KPiakNyPCfakN8erkFUEanREeRZ5JgpLZQUpT3L/o2joHEFZZzQ8z38ouq7aP2U8MoBUg/ODV/4mryKmczpK7l1ZI9dqe94ENI1vHXZGT+Caun3Ft4IYyjpxIihYA5v1bbpLQnUlA1xyznh6yHx3lVyl/2y1vgyzeUHH58BbfPqXM4uPCanz2p3WlyIKfisR4PFXSvMvhK20JgEPv3isiPwFaGrFhejKc/OG9XJD2cMj4qQn9bH3JTAlwK9OpnagzyH+btFO/0prKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vaisala.com; dmarc=pass action=none header.from=vaisala.com;
 dkim=pass header.d=vaisala.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vaisala.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FbbrH58tMpe+oe2xkUP9bQutOJ6MJI6CIOUUHw7vZ8s=;
 b=XEAzyexRpxawQy1bAiVZzIZI0fpm1HxDHeGSxHBirQEkemEVmoIr2FRIvKmsLjMAFF4jr5Tyk7EbK9JAx4ZVtNtBEx0q3j+J9lX0D+3xz2bhwLYCdgEJmpTJE7amibUsWZ2vZ+aglx9PYl6V6Cldlp9wA5vqdz5AUqKJINTXWmPmOA1CnyVNMJ7YFTVn4fy79o5Z89LJriWkDe3JcdgOq5HBxhQZOeDJjQVU/8ACnS9FwwSHlLEIIAROUmpHRKbz5sjQeC5oEHtjwhH/3F1pZOWn8vcKhU/kRUxi0Km+Mz9rGgaX5YLHmNSzInSC7BqrP3RKMimVRRi+lguvG0Ji4g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vaisala.com;
Received: from AS4PR06MB8447.eurprd06.prod.outlook.com (2603:10a6:20b:4e2::11)
 by AM0PR06MB6370.eurprd06.prod.outlook.com (2603:10a6:208:1a1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Wed, 13 Aug
 2025 10:25:54 +0000
Received: from AS4PR06MB8447.eurprd06.prod.outlook.com
 ([fe80::af93:b150:b886:b2bc]) by AS4PR06MB8447.eurprd06.prod.outlook.com
 ([fe80::af93:b150:b886:b2bc%4]) with mapi id 15.20.9031.014; Wed, 13 Aug 2025
 10:25:54 +0000
Message-ID: <ba03d0b9-3311-4010-8ebb-5e2df1a41d3b@vaisala.com>
Date: Wed, 13 Aug 2025 13:25:52 +0300
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] dnf5 and libdnf5 target release?
To: alex.kanavin@gmail.com, frederikbraendstrup@gmail.com
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>,
 =?UTF-8?B?VmVzYSBKw6TDpHNrZWzDpGluZW4=?= <vesa.jaaskelainen@vaisala.com>
References: <5rcV.1754383432133968918.mcg9@lists.yoctoproject.org>
 <31515.1754384245429990929@lists.yoctoproject.org>
 <CANNYZj8hzb=MyNgG5uAd-HAqXkhrYphXasph=RrivhKLH30jxg@mail.gmail.com>
 <opg62v3xde6auwtpgveacv7urixrsan2kde6z6xwtdup7igocf@lom5oqfooe26>
 <18597ADCBAD905F0.18889@lists.yoctoproject.org>
 <CANNYZj9S-qXZGgN6WrZ_EhZkYYZ4yfrKs4W4GE6a1dtbO3i5pA@mail.gmail.com>
Content-Language: en-US
From: Niko Mauno <niko.mauno@vaisala.com>
In-Reply-To: <CANNYZj9S-qXZGgN6WrZ_EhZkYYZ4yfrKs4W4GE6a1dtbO3i5pA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: GVX0EPF00011B52.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:144:1:0:8:0:c) To AS4PR06MB8447.eurprd06.prod.outlook.com
 (2603:10a6:20b:4e2::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4PR06MB8447:EE_|AM0PR06MB6370:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e19b35c-b88a-4f71-765a-08ddda53c8e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NlhxUlpvYW52ZTdHcHdkTTVZVGpIS24wOFRmbjVOalVpV0Myb3VFQi9VdTND?=
 =?utf-8?B?OUowVmVYVi9jcmNOejBsWGltbE5hb3JaOWp4YWVmWmRQRHJFbDR6UEU2emVK?=
 =?utf-8?B?ZndHNjVIRmxkWHFYOURGVHlXeVh6enNDMFRBQnZ2cEFSaUdhTHR2V3FWRndG?=
 =?utf-8?B?ZmxJRlVOMDlNOFFVQXF6QVB0TVhxRTRtRlRZSHpORkpoLzVWSkxNNVJKbDNp?=
 =?utf-8?B?K3kzYmg0czJIMXVyT2R4azVrSGhRS2FGVEgyK1F3dkQyU3liUlNvWElPd1BP?=
 =?utf-8?B?MmZlRzhDNk53cWppdnlxQkNMZHZGclR0SitQUU9xc0laYkk4T2VKcHdsODJi?=
 =?utf-8?B?R2JZU1NiRmpiMVVicU5XMkRMOGdMcjlrMFpUUnVpL2ovVkh3RWJXaXBteE9U?=
 =?utf-8?B?eUVWVlZkdEg4YUY4MHBTVFZScWVQZ0lzaWdYQkNROFhWU0NJM2IxZW10WWVT?=
 =?utf-8?B?VVQyUXVUYUQwMGt6MlN4VDRTeGNEa3pyWFplMzBLZTFRdDNFY1hIM2oybDly?=
 =?utf-8?B?ak5rdUVDWnBiTXJ4U3NaRnV5WjNaSW05bnJqRnFWUmJ5T1IyT3hCMWRwaEw1?=
 =?utf-8?B?YTJXU1JCN3hOOEk3eGtOMng0VU9mSFY0QzMzekIyVjVNeUdDZ2NmWTBRTWVX?=
 =?utf-8?B?Q0JYMlYzNjIvV0xXUTFmQ0ZxejZqbGVWNUVTMWgwdHYxdnhZK0lCUkt5MkUr?=
 =?utf-8?B?ZjR4OGVsbWs0aVFoL052ampyZGU1ZXJsWitHOXo0SlJhRmd1RzBDb0E4THkv?=
 =?utf-8?B?SkZNc2ZVRUdvdkN6Zm1mOE5DS0tBbzNyTExrSTZ3blJPZ1lhVDFRNDlRR2dL?=
 =?utf-8?B?TVZqemVvckxJbnFkQnhFZXlTalpCSGtWMFk0YWplT01UNkxFYzE2QVJvMy9v?=
 =?utf-8?B?dGd0QWRjNExsU011S0F1UDBBQXdhOXFDakEyOGp5aHlrNS9ncXJHemFESGJN?=
 =?utf-8?B?TkpjaTljclZNMllzNytEQzZvbnJmU0dSb0ZWZFJTVUlCOXNZV3h1dzU0UVNq?=
 =?utf-8?B?eWlZWklVNkVtVm9odS8rZnNqZ2RYVUMrL0VkMlFNRmsrOHAwbyt0Zkp2QUY1?=
 =?utf-8?B?R2NtdVlySkNZcVlFSUVVNU1zWlJ2bE03cEhQeGFsR0dPZkNwd3VVR055MzZu?=
 =?utf-8?B?bnA5RmtwdGhmUDdsaXlJT2M3ZFI0Mkw1WitnU0ErYVlvWC8yc3JHNDJrTDgy?=
 =?utf-8?B?YWh3U01NWjhYR29XZ0pNdG94YThWeTRBMGxFbDlmREJRMTlWMmR3aUhMQ1JI?=
 =?utf-8?B?SUlaL2p3dE1lZmt3bXJpaXFOdDZGUStRRy9sVE1RcGh2eXBiY3c3QXhqcUQw?=
 =?utf-8?B?NDczaUtTNENKRUNVWG5lKzdlVUoxcDFiVll6a1o0bEUwMWtwNDJTVFcxb2xx?=
 =?utf-8?B?TGk0THJLN05XTW1xMlM0enZTeEtFR3RDTDgyUFFXNFh3bTZYVUp0eVpkVVpU?=
 =?utf-8?B?UFRhNDVMYWEvb1l2bTNEUzdSamdHRDZQRndWK0FqSUdkMGtidmVNV2dyOUtm?=
 =?utf-8?B?bkM5MTFVVlkySk5rWWtRbXMwV1lJVEdBYVNvU3hITkJ2WXRLRHJKUFdMdmJ3?=
 =?utf-8?B?UFlkWm9SeFVGcU1aK2hWaW82enV2d3oxSG42NXhlY2ZoNEpBb05vT095MEZU?=
 =?utf-8?B?cWZZQmFST1BlMzBQMCtqaDFZRk9qcG5HaEZwdjdzOTdtblNaQW5GenNLUzZx?=
 =?utf-8?B?MldodGFwaStaMmhSalA0MDBXVC9IaHZFZjBsLzFHT1dGVWFHQ3I4Q1hKa0sw?=
 =?utf-8?B?aEhwOEtEVjEvVUhqellWZHBNUkpRVW9ETk1rb3h5U2RnanExWnZON2Z5RmlJ?=
 =?utf-8?B?ZlN3d3dZeStMU2RUL2pKUFpWY1FsbFZGcmM2Mi9Fbi9uMmpsYktoNUw0UE40?=
 =?utf-8?B?NHordWcxYm84aEpJTUllY3BOVUFvMFIyVVNFYTI3NkdTQ1ZsS2gvc3Y1a2xv?=
 =?utf-8?Q?fdZK2LPegjc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR06MB8447.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2hTbzhSeGVSTE1MTUFlK1JLZVFRV2lMM0xUMGlhR0xjWUlPMTY0empTS0dC?=
 =?utf-8?B?OGwzNXZDc2MrUTBYOTVWUEI2bWFkdS9XaGF6RzYzSVRlT2tYd2lrQ3B3cmIr?=
 =?utf-8?B?cElFOFFyZUF2bDE1WXdwUEZjT1JLbm9MNnZpRStwV3hGRFR6YWVNclkyTVhw?=
 =?utf-8?B?WTE3TWpqTnV3dDlsQ21oeDBQUHpkQWc1QkwrM2NiTEZXWVVId3ZoNlhiVStO?=
 =?utf-8?B?cXNYazllN1ZKUkY3N0hCMm9OTFdGSHFUeGEzaURkY3o3Rnpma0IyUUVmdTli?=
 =?utf-8?B?eHhyZi91cGh3dWRRNWE5dzk4TisrTnJqa2RhR2dXai9JeFlqNWoxczMxV0dE?=
 =?utf-8?B?TXpoQWlZQzFnZ3NCRHhGcG1sK2x1Q2l6UVJNcmVUOHRHclU4K2VqRmgxQ1ZR?=
 =?utf-8?B?LzRscnFleWFLdEUybytlYWVuNWM1c2hTejF3RVJHYUhNYVBmbmFldXN6Wmkr?=
 =?utf-8?B?R3JnSTUrMTBPT3lOdjhWWTN1WHo0eXFYdnE1Q2FqSGJ5bU54R3FXc2RoaUsr?=
 =?utf-8?B?amFhdnNJUTdnSk1XWm5JK2diR1FTN0dWVExQTUNxc1ZmZmZJREFoT21aUHRI?=
 =?utf-8?B?Q3dKaWRxUjlDaUQyNm93T2MyRys3YjlGMTlwTUs4ZEtDSWoydGdzUHdvczM5?=
 =?utf-8?B?K0lBQmVweFlTUXVSbnl4clBwYWNYWEtEWFVycVlzMStXM2VXay82TWtjUEJP?=
 =?utf-8?B?RTFTcGRiZDY0cVJYRHB6R2tYNldvL1gxak1XY1V5TFVFSjdUUERvd1Vra0hx?=
 =?utf-8?B?WWF3QmttQzZWYnBvWm5qaGlWbWs2em14VmpjYmZwcDhrM0Z2cFBrcjByOFpD?=
 =?utf-8?B?eFpvTmpZRXFQMXBwQ082dWZrTDgyZ0pSMmk3L1lSbmZuQjIvWS9uSkF4RVNv?=
 =?utf-8?B?VTFrMDAyVzVoZDZRNG0xZ1ROOEkyQ3BGUXphbHBxSVdvbW9XYStmb3ZSTk9R?=
 =?utf-8?B?NTFSODN6SWxFZDhPMXJReHg0WmliWGl3Y3NvVFhvWUc1MTBPV1cyUzNEZmhz?=
 =?utf-8?B?amc4eWY3SHpjWnBzWmwrSUt3VUVLT2dBMlBQa2R0QXUwYVRKNHptRXhTK1pj?=
 =?utf-8?B?QVFMd3ZSL1NGVUl0NGpSMG15MGYrZTNDYVhqQ0p3cUlqYWk4WFFSRWFRdVE5?=
 =?utf-8?B?KytzemhLaTVYZm5YR1BNakZDNlJVY3ZvdnZ6R1FWWFdjVDIyNUpzZVNESFI2?=
 =?utf-8?B?VU1rZ01iU05hbC9ZMVU4c3VVS2xYa2Q2VjRnVUVWS3lyTEFvOXJRTElaaVM1?=
 =?utf-8?B?ekc3SDVvREgzYURSU3pGYzczQkYyUmsxWE5URHNVQVNsL2tMR005N2RBTnRh?=
 =?utf-8?B?VkVWdEN2RENjU05kUlNjLzFzODBGRW9JcHJMUExWK3lvVEFxYnMzVm8rWXpC?=
 =?utf-8?B?OTlhL1hZeisxeVE5d0FpVXVuQ3krMS9lVlhpRjZJWWZLS2ZGZWJYc1NocVkw?=
 =?utf-8?B?aXhSNnhvblloOUJBY0tjMGlNTHhRcnp4NXdhcGw3ZXNPTnhBZ2ttaTErQXRp?=
 =?utf-8?B?ZlFFdDEwRkl1NUJIVkhsQUFvWGJFRWI0dUFMSGVtLzMrRU1NcHpsdXl4MXQx?=
 =?utf-8?B?YjJSeTVWaGlRS3BKSGRNaWVoNFlWY0JYTWtta0ZrbWMxOTdrN2xHQytWVkJp?=
 =?utf-8?B?d0pxSzZGUnNPZGF6Mm1aWnQ1dGQ4R2tlZ1hDTTZXNzh0dFdWN2hpL25Qb3Jk?=
 =?utf-8?B?VDJ1VjZ0cnhuMkJvMHNuOHJSMThHZzJRT3FHU1UweU5HZkQzNUpBQmQvYjFm?=
 =?utf-8?B?T0MxRzlEdXBZWnBRNU0zbzBZK1krV3lnUFN0c3B3VjRXQ2tDTmZiaXFtOWtz?=
 =?utf-8?B?UjVDL3hJbzFNRzVPcXRVaWhkVmtWaUNiL0twSDJoTGRuWGI1ZEpOSVIrMkZh?=
 =?utf-8?B?VGVHUldTblNGdVBGajcyV3B5TVFmaER2ajQ5Sm5WU3FFVnYxZDc0VmVUbFg3?=
 =?utf-8?B?UXI0Ulh2NXB3WkgzYm1hcEc4OG5rMngyVU1vK01WcXJ5VGZ5UG10MXh3L0RM?=
 =?utf-8?B?ZlVFQnJ3L3lldEt1SnRXenNRcTlSMmVTcm9UbUUrRzh4MERDQTlQaGlxQjIr?=
 =?utf-8?B?TTN5SzBJaXpuZExVc2UxUkI1cmhRdDVnN0d1Rmt2eU5xWWt6a1UrV1dOUXNp?=
 =?utf-8?B?c2JSQVptR29zYVUvT3ZyQWZZZGcrRCtad2h4ajB2NEhVWUJJNTg4VjVZTUdX?=
 =?utf-8?B?emc9PQ==?=
X-OriginatorOrg: vaisala.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e19b35c-b88a-4f71-765a-08ddda53c8e9
X-MS-Exchange-CrossTenant-AuthSource: AS4PR06MB8447.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 10:25:54.6145
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d7393e0-41f5-4c2e-9b12-4c2be5da5c57
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pgu2M4JlCbYRF15AB2oMLZDDwV/bQJrkTOR3Olh0ysfEzDxvsPaIMeFTQoPtPXhPeLL8nnkEVjZUyAuwwCtPqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB6370
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Aug 2025 10:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13723

On 7.8.2025 15.47, Alexander Kanavin via lists.yoctoproject.org wrote:
> On Thu, 7 Aug 2025 at 14:10, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
> wrote:
>>> I'm planning integration with libdnf, but the github page for libdnf
>>> says that it is being superseeded by dnf5 and libdnf5. Are there any
>>> current plans for what poky release that will be included in?
>>
>> This is not how yocto works. Things happen only if there are people
>> with sufficient interest, willing to invest time into a certain
>> subject. For dnf5 there curently are no such people to the best of my
>> knowledge. You are welcome to develop the necessary changes, and they
>> will be reviewed and tested.
> 
> That said, some years ago (way before dnf5 was ready even for fedora)
> Ross had some preliminary patches. If I remember right, we quickly ran
> into missing options (as compared to dnf4) that had to be added
> upstream first, and that's where it stopped.
> 

On related note, about 5 weeks ago we briefly tried out if using dnf5 would yield any improvement in do_rootfs() turnaround time -- which it didn't (later on realized others seemed to also have expressed their surprise on lack of dnf5 performance improvement over dnf4 in some online discussion threads).

Just in case if someone intends to start working on dnf5 + Yocto, in case it's any help, our dnf5 spike delta can be found in https://github.com/nikomauno/poky/commits/dnf5/

BR, Niko

