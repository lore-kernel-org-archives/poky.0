Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD79EE14C1
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 17:51:43 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.55])
 by mx.groups.io with SMTP id smtpd.web11.5772.1694022702276965981
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 10:51:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=5ZZZmDOo;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.237.55, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGWwBxivOfpzwX4oRw5b+p1rLj6BLPXzg3lHpshDmOgiTQGs1W7DDA9rJQgqmK7QV0nuAbuAPjkf9ulq1Br+qPVlKgDPiIT1u8PYJxDUi5FtEH1RA0WveNoegNdvXOdikhbuogKar/vto4WiBQ52AbStG5MJVhkV/rFUPA7EvC87IbDpMW80GnEy0aebiUipy0Dc6nFsCzmrjvggRpQbecrM/PLPly2sRic3XGnupWBU0sdUHngCl8iC1MUAbl1GoWOP+UjFvuJ+xwGehmyxRtjkHg2cwqrlXXdeD2dRMFqZAYX5+ubXGBzbiH2oFB4ES9OkHBPBdbRgMVkGzaJyBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7S86I0CluMSORp99kTTe+WzqFuVruVJYfFRqrCjgTgA=;
 b=VLq3zFOMP0cBNxmDVFvdqpx+LYAutsEDlJZp1j5K0TJB0gIUakh6ve71aEJFbXgyLUPlgMV3DzW5s6txM3AIY4yErcEl3ItzW7Ouai+zhw/dsS+dLHTNduImY1C/kvuRtY1/BmpSb+VP1IqBmOnPximJ8UjWXshJVkoyd7tBYNSj3Vlkac90mrU/3BUGdkhYRIvxhPSwPOyETzRAEIhAFNcY43I+nUee8ZVi+w+vtWOHaJwpwYbvcJXoa3rFMyboRSljFX3fDjim8XUxhg6d24t4LgMkRS18+iVPau+iKa1PLhcZPhxo0Wnxjlynut2mjt2Cgg84r3Y42XlpxWq9Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7S86I0CluMSORp99kTTe+WzqFuVruVJYfFRqrCjgTgA=;
 b=5ZZZmDOo8GMb2kvOBvkR4PaYu2HvlXda6QN3d1FhHqq837fABS4PEdccp02smN9qRB/i98DRIJuxS1BuLwaPXXUVGTypEsFaSWzXrqZXmzDRBjzOxriUfaLT8sB0rl/x2Jxh/1/qSUQfktkG0xyaa94ty1UlaeUyrjtIVAf0wnA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SA0PR12MB4367.namprd12.prod.outlook.com (2603:10b6:806:94::13)
 by SJ2PR12MB8010.namprd12.prod.outlook.com (2603:10b6:a03:4c7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 17:51:38 +0000
Received: from SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c]) by SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c%7]) with mapi id 15.20.6745.035; Wed, 6 Sep 2023
 17:51:38 +0000
Message-ID: <41b6f047-226b-c342-705a-7af856b85753@amd.com>
Date: Wed, 6 Sep 2023 11:51:36 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [poky] langdale libxml2 dependencies for testsdkext
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org,
 "mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>
References: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com>
 <CANNYZj8qZu8awmqezKOLoX94OY+0THXdcG5Z5PDZwDWM02PfHA@mail.gmail.com>
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
In-Reply-To: <CANNYZj8qZu8awmqezKOLoX94OY+0THXdcG5Z5PDZwDWM02PfHA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::27) To SA0PR12MB4367.namprd12.prod.outlook.com
 (2603:10b6:806:94::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA0PR12MB4367:EE_|SJ2PR12MB8010:EE_
X-MS-Office365-Filtering-Correlation-Id: 78863fd3-3805-4d42-bdea-08dbaf01eba4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	e7Fo1/mUBKk4O0R/31DDDY4cfrLiALlz3E7GRShkplHixDwXcw8ZGbZrEpVWUQcGAbDTXjaCSX0ks7gcDJRJM40bRbcEkQr5D72+D5F+2rR6VzKM1z6nMShkhPdgkY07MPhP1LQEPbwhLBoGU0Nh2xe7v8ilAeXD0eEq7wPpGoaFojx6SHPVBmx9KrGEwmiIlRZNL9LhysUCrZz6zs9/kTgwC9ZJYaSvCJoKO4YhWviP4oyPU+1B6tvwU3P51yVhlYlRSruidLq+Trwicerx3rb2iuvVb2cWO7kWHCEx1IO2ili8U9QTykqF+HgzQIODafzG5PzYua9Mx5S76uRBSu9CeuBaQ8/p8XWKQ6LlAMSedpzJmzvt5Ewpokv+0R/DHlSh3LltVljAD9gLIRiFJmOTFMwS/c6APN5vEecE2UBMORbKjDxTmpreXiD/d91VqTsvOiDTwX9QNoFgwTqt7hBcJt9Mhfn/2YdpUaljmMrR9321ilCtBWJTUXjMI+hyBgz6r4yOeoVXPIA+ftaBfIRrEeiUyqLgl/uiEGJ7Eo97G+2dCpPOKTTnyFaYLXThrm+4Kdu/Owuw2PJ6LRCKGx2vKAZp8gcOhTWi9bUnVWlMbf9G1WjDCkftTlBAv9VO
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR12MB4367.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199024)(1800799009)(186009)(966005)(8936002)(4326008)(8676002)(478600001)(66476007)(66556008)(66946007)(5660300002)(83380400001)(31686004)(41300700001)(2906002)(31696002)(316002)(86362001)(6916009)(6486002)(53546011)(6506007)(6512007)(66899024)(2616005)(26005)(38100700002)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZkQwVzhWcFdrdkhXRy9BOWJ5NVBUNnVOY0VlM2J2aUJNSDc3VmlyK1NaWTJi?=
 =?utf-8?B?eUpmKzhpZFFZdVdtRzRWTHNDR2FkdE02KzEyei9FT1ZNZllORDFsL0VBMm5z?=
 =?utf-8?B?ejJ4TW9vdS9OWlltNWtiRFF3am54eHpuNG96MW5YTkY1NjFndEhtSHhHVlV6?=
 =?utf-8?B?d2RwRnQ3dU9KQlJiK0R1RCtXWlZOb2h6Zks4NWgydWxDVGlMMVMray92aUov?=
 =?utf-8?B?ZnQ2cTdYbUZFYnkxK0pYeGNncUFhK25ZcE1jR3ZIZGdQbmthRHlOYUY1YXpn?=
 =?utf-8?B?RDhMVkg4YTRndUp5ZmdzaUU0TkplT0pybjJyNUNENjMxMWF4OUJKcWJ3a2ly?=
 =?utf-8?B?ZGxYT3ZyZWtqd0dqTlZJZUZtQXk2b3dDU2RYbDZsRWxMRG93SzRXMDVRa0x5?=
 =?utf-8?B?QmhLQ2VwdlJLZjFmaEJkakNIc3pzdHNCNDNta2c0Rkh5RWQvclZ2NmtNeTBq?=
 =?utf-8?B?Q3ZHV1drUVlrQ25mWVRWWnQ0RDZJa2FmSi9kVFllUnZ5ckNmZkk3b1hoZDd4?=
 =?utf-8?B?MzJVajRZTEh0a2NBbzQ2QVY3MGtVQ2VWVlExL3NjWW1tOEJYZ2QvOGhtOFRQ?=
 =?utf-8?B?cWdFM2xJOVMwTjNMUHAzTEg3MnFUZ1AyNFFONUF1YTJMOUN3emRJaXQrclM1?=
 =?utf-8?B?N0gyTnA3L011YlY1Rm1sT3lBV3lkZUUvY3AycjkzYU4wc0RmSWMyK2xJOTZK?=
 =?utf-8?B?Znc1cVRCOE03ejhVZ1FFQWtYSVo2V29ReUt3ZFVodmFwUnlURFN0NGNFWksw?=
 =?utf-8?B?VmxwUEhEcm02bUVDUmFKNmRvdjJ6eXVaa3NiYXBHVVlYa1JnNHpWeW9INUY5?=
 =?utf-8?B?NGswWE9XdnFmTjZaMm5nN2lJeEh2VHJLemlaVGdNaEc5RE00ZUNONmM1Kzlq?=
 =?utf-8?B?bVZCNFVLZGErZEQvWFJISkFrWjJLbXlVaWZOS1NmZzQwVTdEdlk2WHdweTZI?=
 =?utf-8?B?ZmNSYkVFNzZkc0FZMmt4ZWFVVUlNRzVNWmpoN21OelVoOTdRRm1PK05IeUdi?=
 =?utf-8?B?MHZBZTdxdkNhN2NuN2ErMEJFZWxBbkxKeFNrWVZ4aWxkTVFrOWs2ZXpkaHh0?=
 =?utf-8?B?R1ZocU9Gc0RuQ0kxWHBhd2lBMm9HQWllZjVoTzlNejEwUjJMY3U3VVhreS8v?=
 =?utf-8?B?UGFHQ3l2U3drRXJvakpVNDRwUHlWMzFaNmVweHhGWWhYZEVxWk8xNUhRRURV?=
 =?utf-8?B?NGlpRXhiK3dLWG1acEwwY0lPR1cvbjRhTWxCeXY5NFMrRVBYcUp2KzU0bEVW?=
 =?utf-8?B?WW9qNWFJaERwMnowOTdjaERoY0xXTUh4VXc0ZEtwZ3dkNHVNV3pjb0I3SGkr?=
 =?utf-8?B?aVZjUnFKbzZadUxkNU5zV2RhNm1WSTVsNnJQOHkwb3BGU2tKTmNobmN6U0s0?=
 =?utf-8?B?WHNnNkpNTEhKcU9EcGxkdkNEU3RyVm56Q09ZUzNxV2RvWEQ4czZpTkVHUG5G?=
 =?utf-8?B?bTR3NGFtQ1ZobWZHdk9FZWJ5TzJMcVM3MFE5V01iRk5BNW9Rc29LZXp2SmpY?=
 =?utf-8?B?UU5yeXpwSC9CZGYwdEFrNm1kaitFWkZRZ2JQeng3c0FXbDFNWDN3YVZKUWl3?=
 =?utf-8?B?SkdLOC9XRmRWMWVPUmdKVlpwTUs4c2dFVzZjRGJZM3RLRVB3dHh3eFBaVHVh?=
 =?utf-8?B?alBxWWRwVTh4M0JYdnkvS1lIeTJidWdwSGhwUTEzd0pFekx4Q0tMR3h0RHpI?=
 =?utf-8?B?VUx0SEdiamVBRmU4UUxTY2tLdzRZSy9GVUlCVGFBRzVtV0g2aHRXY3AyMngr?=
 =?utf-8?B?emUyanBSMWhUaFhNSHRwL3RxV1JFUmR5WnZtUjJvVUpLNzN6ZDl4ajI3czNw?=
 =?utf-8?B?bjdqM1VlTUJCd3FreXM0eDcrSHA3VXFQWUc4dDZQSjgvci9iWHJGVHZFN3p0?=
 =?utf-8?B?b29mMldJR2ZvS2tVQ256cTE1clJLdHdvcGU5OEhqU3BUV3EvOW8rUG56YnAy?=
 =?utf-8?B?MlIyd2FyRnJrekRkeWJIN3h1TWo1aDRBNzNHTkVwZVFxdVVjclM2Y2NkS1Jj?=
 =?utf-8?B?NVFJSGRFeTdzUGE3aGhhdHdFOUY5eXVQQWU5VlpoN3Q5V3pZQ2J4dzVZb3k4?=
 =?utf-8?B?NEIzWWtVQnhnTEJtbmFCQk1lcUkyM3hNOHI2V1hQKzJWVER3T3dZdnJzQWNJ?=
 =?utf-8?Q?OtHxdtXonamzT+3RpBKx531UQ?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78863fd3-3805-4d42-bdea-08dbaf01eba4
X-MS-Exchange-CrossTenant-AuthSource: SA0PR12MB4367.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 17:51:38.7610
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nkvnec9VIB9H8NqdVXFdqSgnP8Qzqqq/7ElZqMVwi9FpCeLuuNqxJnTE3pkn/0h1EG1wq2jCjVnRdrHAURaRWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8010
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 17:51:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13151

Hi Alex,

I understand that community doesn't support and accept patches for 
Langdale release. My question was, Is this a bug in langdale release as 
I couldn't find anywhere documented in langdale release notes 
https://docs.yoctoproject.org/4.1.4/migration-guides/release-4.1.html. 
If this is bug in Langdale release, Can someone point to the patch which 
fixed the issue in master/mickledore?

Thanks,

Sandeep

On 9/5/2023 11:48 PM, Alexander Kanavin wrote:
> Langdale is no longer supported, please use one of supported options:
> https://wiki.yoctoproject.org/wiki/Releases
>
> Alex
>
> On Wed, 6 Sept 2023 at 05:38, Sandeep Gundlupet Raju via
> lists.yoctoproject.org
> <sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
>> Hi All,
>>
>> I'm running testsdkext using langdale and observed libxml2 dependencies
>> as shown below but when I tried using master it worked as expected. Does
>> anyone know if this a known issue in langdale and also point to the
>> patch in master which fixed this issue?
>>
>> $ time MACHINE=qemuarm64 bitbake core-image-minimal -c testsdkext
>> Loading cache: 100%
>> |###############################################################################################################################################################################|
>> Time: 0:00:00
>> Loaded 1662 entries from dependency cache.
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION           = "2.2.0"
>> BUILD_SYS            = "x86_64-linux"
>> NATIVELSBSTRING      = "universal"
>> TARGET_SYS           = "aarch64-poky-linux"
>> MACHINE              = "qemuarm64"
>> DISTRO               = "poky"
>> DISTRO_VERSION       = "4.1.4"
>> TUNE_FEATURES        = "aarch64 armv8a crc cortexa57"
>> TARGET_FPU           = ""
>> meta
>> meta-poky
>> meta-yocto-bsp       = "2023:c572c1a1e0ea573e64a2864d8893800104d36a67"
>>
>> Initialising tasks: 100%
>> |##########################################################################################################################################################################|
>> Time: 0:00:00
>> Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match,
>> 0% complete)
>> NOTE: No setscene tasks
>> NOTE: Executing Tasks
>> Extensible SDK testing environment: cortexa57-poky-linux
>> Needs cmake
>> EpoxyTest class: SDK doesn't contain Meson
>> GalculatorTest class: SDK don't support gtk+3
>> No perl package in the SDK
>> No python3 package in the SDK
>> RustCompileTest class: SDK doesn't contain a Rust cross-canadian toolchain
>> Traceback (most recent call last):
>>     File
>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/cases/devtool.py",
>> line 74, in test_extend_autotools_recipe_creation
>>       self._run('devtool sdk-install libxml2')
>>     File
>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/case.py",
>> line 22, in _run
>>       return subprocess.check_output(". %s > /dev/null;"\
>>     File "/usr/lib/python3.10/subprocess.py", line 420, in check_output
>>       return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
>>     File "/usr/lib/python3.10/subprocess.py", line 524, in run
>>       raise CalledProcessError(retcode, process.args,
>> oeqa.utils.subprocesstweak.OETestCalledProcessError: Command '.
>> /scratch1/sandeepg/yocto/2023.2/yp-ci/build-ci-upstream/tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0-r0/testsdkext/environment-setup-cortexa57-poky-linux
>>   > /dev/null; devtool sdk-install libxml2;' returned non-zero exit status 1
>> Standard Output: NOTE: Starting bitbake server...
>> NOTE: Reconnecting to bitbake server...
>> NOTE: Retrying server connection (#1)...
>> WARNING: You are using a local hash equivalence server but have
>> configured an sstate mirror. This will likely mean no sstate will match
>> from the mirror. You may wish to disable the hash equivalence use
>> (BB_HASHSERVE), or use a hash equivalence server alongside the sstate
>> mirror.
>> Loading cache...done.
>> Loaded 1662 entries from dependency cache.
>> Removing 1 recipes from the qemuarm64 sysroot...done.
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13149): https://lists.yoctoproject.org/g/poky/message/13149
>> Mute This Topic: https://lists.yoctoproject.org/mt/101186330/1686489
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

