Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D606AEE14D3
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 19:41:17 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.52])
 by mx.groups.io with SMTP id smtpd.web11.275.1694029276191748522
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 12:41:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amd.com header.s=selector1 header.b=Ic5TBOA4;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.237.52, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMNIqtoEauYshbJ+XDkxFf7tj8efZsMB6MxOjk0JRV0vyWi4xjcdyCmNasJHFV1IpbtPYwUak3PGL42gLVYjaWZZAf4OGCc5ieIKXAL8ViUm8dRRlaQ87nbllgmU1Pl3TP7VlOfnlD26hFQt+iFrfi8CqaCrR8DNYSE8+vGdUzjdD51bk4QSgPUw6DVUMVrh53W8IsrSVc8sljywWexJVXiE2vtw1b9LcLs5XHc0B62Ba964QHhSAGghhQQ3HECO5gbxEUTlyxhy2D96+o9dRFLGzSN57sTtlFmfaYt3u1Kc7SuehQa7f3ejs868hTfhUNoqyth+aV5HPFAoNJ18mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hz7PjQvgnUDWmoyQmDaI6L2R1Tp682VJ44O/HsVbfS8=;
 b=iPX3ofPL+AFk9ZAJVdaXXh+OmXb5oLmnQuSJgDiHmCBjOU+HOrW2avAUxOVYQk/Obi7yQAKfh0VpOXmzSsyDN6jYYZ9LnIX8uANW9YEqmazY26Upv5DXhz5es4qrbXhdwZlcG3Z12olirI4gGU2BWxy0aCnGatVkU1gjbZ+fC5WPEAxVbhqS04vH4jRTZQ+GyoIgH6dQjs3+p53eu1NlcSRiH7cV6QA1D/xBVdXv2i+/eozUt9VJ83L+LFRjz1DxElbrc6HxvjA2Q7/+apnG7XNbss0vA8Zi8pIa9XCon1IJO9PUxfz3UH7wlKXfA26GlP3ML9FTYScTms9fclq+aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hz7PjQvgnUDWmoyQmDaI6L2R1Tp682VJ44O/HsVbfS8=;
 b=Ic5TBOA4XuF1lXGK9z7/vfMWU4EykjolJzQx9A77Tlqd6ZAQ6No5lk6aoAOZa1qOHqznnk6ubqSsxp8T0uiCPCAof4cnnjAbZ62+HUz5PwHjNu/IiUuHdfyz5Xno4XP4ayASQRR4U18TWx5Tq6UVmq5pY/DuYoAtpjbfZmncF20=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SA0PR12MB4367.namprd12.prod.outlook.com (2603:10b6:806:94::13)
 by DS0PR12MB7653.namprd12.prod.outlook.com (2603:10b6:8:13e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Wed, 6 Sep
 2023 19:41:12 +0000
Received: from SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c]) by SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c%7]) with mapi id 15.20.6745.035; Wed, 6 Sep 2023
 19:41:12 +0000
Content-Type: multipart/mixed; boundary="------------aJ7hjMZ9kilyB86z7r1Tno0V"
Message-ID: <0f6155f3-34e8-6182-8e52-5d77d56caf63@amd.com>
Date: Wed, 6 Sep 2023 13:41:10 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [poky] langdale libxml2 dependencies for testsdkext
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org,
 "mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>
References: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com>
 <CANNYZj8qZu8awmqezKOLoX94OY+0THXdcG5Z5PDZwDWM02PfHA@mail.gmail.com>
 <41b6f047-226b-c342-705a-7af856b85753@amd.com>
 <CANNYZj_-8jm=Q7YXcSCrp0YJw=J_rObYkKzPPYHO2bDHviW+-g@mail.gmail.com>
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
In-Reply-To: <CANNYZj_-8jm=Q7YXcSCrp0YJw=J_rObYkKzPPYHO2bDHviW+-g@mail.gmail.com>
X-ClientProxiedBy: BY3PR03CA0026.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::31) To SA0PR12MB4367.namprd12.prod.outlook.com
 (2603:10b6:806:94::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA0PR12MB4367:EE_|DS0PR12MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: b25743c3-9f84-4a7d-89d6-08dbaf1139f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JbfEeIfq2iLuK4j0Ws5tFZcCINzXvYo4NDj1gNl1Uj4ceSckDiOlqDNwGxy80x2Hc3nNsuT7kHiyc3AHmHFVZYdGYQG9XoaeMjGRpr6KahrKPsw8NE3Xl0o78n+R+wihz7KDLZnwgJyF2eqb/J+VDx3WXWvgWQRmHnuE5co6AFe8tcw0EqZnZJXeIkrLrmn/NnUZH9b6YdY7qysrw/5smUDuZjkhgNV9PVxZ064pACfO9Ga+lTRy9ACJBW612W8mpgj9F/p2xAHtegU+tVTHURUp7ieE0FC158s7gXL1BudyDW5LOyWH8ol2An9Jebx+gtRiiBENCUjOWFjQn4/J9UIporQgWzkSc1xIs5F3fR5kMarAQguRsWbilup9HtT6Ks7zb+VqPcGNlZDg0wlgrjwu1qLYcvEYf2dObUz87T2Kyv+B8kcdmpf4/czYcdFy9KS/89bS0cUgN2UFClP2cNsx6Skk8AcZF/nTBK96/VUy+uyruhxoTzFFCPyqeBxSKb94YcvQugHDKnO0X9wcNqRL2JjqrHmw0szHXczeGmeKAMwoWyL+nNIOjwP6Gvj6nPxJDbJsxtjPpXtlHLhvCvFRLjjsAe1k2+ho+CbZBg7VV68Q6t2gi14wk+0ZWREzy4MOVvjf0V0OAKCW+ZKq8Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR12MB4367.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(366004)(346002)(39860400002)(396003)(1800799009)(186009)(451199024)(41300700001)(235185007)(66899024)(33964004)(6506007)(53546011)(478600001)(966005)(6486002)(26005)(2616005)(6512007)(38100700002)(21480400003)(83380400001)(66476007)(2906002)(66556008)(31696002)(6916009)(316002)(86362001)(36756003)(8936002)(66946007)(31686004)(4326008)(5660300002)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THVkQ0ZQVkFYb2J2dno1V004ejBrQ3MyZjBZUVRERE9ab1hRYlFweHFHRXBs?=
 =?utf-8?B?WE5pMmNaWkZlYXlTaEZZL3hDY2J4TGg3ZXQzeE0xdDdJaHJIS2o0djlKSzNp?=
 =?utf-8?B?WTltK085MDJXa0p3NVg5YnhYaXhVcFNaVnhUdjhqZUp6L0ZrYndtbW1yZ2Fk?=
 =?utf-8?B?TE5nVlNLSmtxUDR4WHB5czYyMStXbUF5Y0Nwc0FwWCtRZEs2QnZKNEpDZjVp?=
 =?utf-8?B?cUt2ZkdvWVV3WWs5RWtaUnJRb0UxOFJOaHA5LzlwYkd1S0lWR1g5bjRlTnhK?=
 =?utf-8?B?eXBmREhlTmUxSmRDNW12R1JiQXlwZ0w3eVRuYnRTNElsUEZUZzNxOC9STFBQ?=
 =?utf-8?B?eCtlNnBqUGdOOEtkL2VEWHhhQWJlMEV0NVczbllwc1B4aFB4Q3FadWZmNHZh?=
 =?utf-8?B?YzZOR09YK1VkY2FFYkcvUFBiZnlkaEM3VGVvcWNzdkdPQTJnNnRUdUVNVTBN?=
 =?utf-8?B?eC9RWDcvUlZvN2gySkd6NXk1akc4QXB2T01ldnJQdTg5WkJFMDYyaHFMWmFh?=
 =?utf-8?B?UnpVc1JiMTN2S2xQRUIyRDZ5U0VRWC92SHdnM1dBRkd5Y0lCWDFDVVVkckNx?=
 =?utf-8?B?dTVQaEF6L3dOOXNPWkszMTRMQUJBSG5TQUhXZE40OXdHWE1xd0w5K2tPN05Y?=
 =?utf-8?B?aW0xdzVRZDh4bkQvUWc2ZUZYM25TcW9JOFQrVWJvUTZaU0xiclN6aXhwcWM0?=
 =?utf-8?B?ZHY3Ykl0R1VlQ0tUVXR3ZlFDZXhSU1Y4VUNwZW1LUkZSUmtEN1EvOC92T01H?=
 =?utf-8?B?cituMVNOU1Z3dUZLbm1ubTBxY2k2YkFPVWJmcUdhTU5XOUlSL1JuT2ZteTFm?=
 =?utf-8?B?ZFFkQkphUXRSZFBYSkNRMU9XZ3lHWnNOa3R3NHdQYzB1U3BCWVpZTHRIa3Rh?=
 =?utf-8?B?eFBqUy8wNU5pRHRYdjdVSXl0QU1IRU9QRVN3dlN6YnlaNG1BSGRMbGc0RVN1?=
 =?utf-8?B?SVVwKzlHcVRIRVUyRU54blJoSk9hdUVTbXNxYnFIazRxWXNsVjZqc2JQSG9v?=
 =?utf-8?B?cXdRL1F0Skl1R0VwYy9iNGwxVjcyUlgrZmJrd0kwNXlXU2ZGdWlzb1dQQjNk?=
 =?utf-8?B?ek9CZDlYUXBUQjZDTnY2eFdYVXZsb081V0tpQ3o0d1FRNFVPNjRkVSt0WUNo?=
 =?utf-8?B?c2tYUkpFOFk3Rlh0VDljNVp5MmF3QUkrVnRpaExnaUpuV015ZXlxeE04Mlpu?=
 =?utf-8?B?RXA4R0F6OEt1eDRxZmlmU0laVnV0UzJOV0Q1NHVNOTg2cDNqQUJkV05TWksz?=
 =?utf-8?B?Vk1wWDZ0ZGM3OUdJZzZVdVpzTXBOZ2FjOU13Nlhodkl3Zm5vZGNSKzJ1bGlN?=
 =?utf-8?B?RnRVdzg3ZXFpTmxBVVVNY3ZGUUloSFcrNDNlbWZ2dHZsQWhOdCs4QzJUeUI1?=
 =?utf-8?B?dld5UUlKVTdyTXhxbU93S3ZCN0tjMDFpNnNJWHVvWVdLbWNXZllSeTMwMVdB?=
 =?utf-8?B?bnU3VjlxY3BsREhZMDNKS3c5aFhhdjV6N0txYnpMOTJmdHZYTHUvUEgxVUZy?=
 =?utf-8?B?RHd1YUVlSFVXYllISVRGN1R6VkszeVNabXMrRHVBcU4rT0pCN1E4cnoxMmJR?=
 =?utf-8?B?U2JhQ1RTQnR6UXFPeE9VTVZ0MGp1ODVqcHplNUJxUm9CQWhKZVhuU3Z3a3Mz?=
 =?utf-8?B?ZWtSdHZCalZqcXE4K0dHNlZHYkt3c2ZMN2htWXB2VVhWZ3RZTzRxOWpCNWlq?=
 =?utf-8?B?QWluNG52VU9vZzZPa29IaGt6VWhPM3BhV1JIWXlsaUw1ZEU3VTgzQnQyNjVm?=
 =?utf-8?B?eHVMT1RvQ281OGV0VGZuNjc3MmhVWWxrN2Y3eFJIbm02UGlNUTZTczU5dUVH?=
 =?utf-8?B?U0xVbW9UOEcvNWtrdzRRVHVFSURGcG50a2h2WllJbElRMGpaNEgzSlJRWVdR?=
 =?utf-8?B?dUpFbURaWWZrcjVPSHI5QUtJaEE2dk5mN0RucFpNdWRaNHhlYS8yclErdFVx?=
 =?utf-8?B?QVlHMHNzd1pneEozZ1dsN0VoWk9FNnAzTVcvSU9ueFJTNXgya2Y1elpnc2FE?=
 =?utf-8?B?dnVQK2h3RWZiV0hNL1gza0Y3anRtNis0YXMxUGdsMEpSOGZnd2dHUTNLeDlw?=
 =?utf-8?B?eHF6dkk4Q1hLWWpPS0RSZ0dOSWZDNVdUdGVTVjJDOHF2TTlKUWlVV0VLMTN0?=
 =?utf-8?Q?KBgrehW8y+E5zFdnFDBmgtc+4?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b25743c3-9f84-4a7d-89d6-08dbaf1139f7
X-MS-Exchange-CrossTenant-AuthSource: SA0PR12MB4367.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 19:41:12.6870
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iitp5C6w9JeRq0u/j9ttlHpMxXyXfM5xvzGI8g8EIMprdvLYWb16041B6C9EUORBvxAWvmIempn0fjxnLJFpYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7653
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 19:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13153

--------------aJ7hjMZ9kilyB86z7r1Tno0V
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Alex,

I can reproduce this issue with stock yp poky langdale branch(see 
attached logs).

To workaround this issue in langdale, I've included libxml2 package to 
target image(IMAGE_INSTALL:append = " libxml2").

I will take a look on this commit id and also try in Mickledore as well 
and see if issue exists.

Thanks,

Sandeep

On 9/6/2023 12:13 PM, Alexander Kanavin wrote:
> The test you are running is regularly run against all supported
> branches on the yocto CI, and was run with langdale up to the point it
> stopped receiving updates.
>
> On the other hand, c572c1a1e0ea573e64a2864d8893800104d36a67 is not a
> valid commit id in poky history, so you have customizations. It's also
> possible there are further tweaks in your local.conf.
>
> Given that, it's difficult to give any meaningful help. You need to do
> your own research: first try to see if the issue happens with a
> pristine poky checkout of langdale branch and default local.conf. If
> it does, then at least there's a reference point for the failure that
> someone else could reproduce, if they're interested in helping.
>
> Alex
>
> On Wed, 6 Sept 2023 at 19:51, Sandeep Gundlupet Raju via
> lists.yoctoproject.org
> <sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
>> Hi Alex,
>>
>> I understand that community doesn't support and accept patches for
>> Langdale release. My question was, Is this a bug in langdale release as
>> I couldn't find anywhere documented in langdale release notes
>> https://docs.yoctoproject.org/4.1.4/migration-guides/release-4.1.html.
>> If this is bug in Langdale release, Can someone point to the patch which
>> fixed the issue in master/mickledore?
>>
>> Thanks,
>>
>> Sandeep
>>
>> On 9/5/2023 11:48 PM, Alexander Kanavin wrote:
>>> Langdale is no longer supported, please use one of supported options:
>>> https://wiki.yoctoproject.org/wiki/Releases
>>>
>>> Alex
>>>
>>> On Wed, 6 Sept 2023 at 05:38, Sandeep Gundlupet Raju via
>>> lists.yoctoproject.org
>>> <sandeep.gundlupet-raju=amd.com@lists.yoctoproject.org> wrote:
>>>> Hi All,
>>>>
>>>> I'm running testsdkext using langdale and observed libxml2 dependencies
>>>> as shown below but when I tried using master it worked as expected. Does
>>>> anyone know if this a known issue in langdale and also point to the
>>>> patch in master which fixed this issue?
>>>>
>>>> $ time MACHINE=qemuarm64 bitbake core-image-minimal -c testsdkext
>>>> Loading cache: 100%
>>>> |###############################################################################################################################################################################|
>>>> Time: 0:00:00
>>>> Loaded 1662 entries from dependency cache.
>>>> NOTE: Resolving any missing task queue dependencies
>>>>
>>>> Build Configuration:
>>>> BB_VERSION           = "2.2.0"
>>>> BUILD_SYS            = "x86_64-linux"
>>>> NATIVELSBSTRING      = "universal"
>>>> TARGET_SYS           = "aarch64-poky-linux"
>>>> MACHINE              = "qemuarm64"
>>>> DISTRO               = "poky"
>>>> DISTRO_VERSION       = "4.1.4"
>>>> TUNE_FEATURES        = "aarch64 armv8a crc cortexa57"
>>>> TARGET_FPU           = ""
>>>> meta
>>>> meta-poky
>>>> meta-yocto-bsp       = "2023:c572c1a1e0ea573e64a2864d8893800104d36a67"
>>>>
>>>> Initialising tasks: 100%
>>>> |##########################################################################################################################################################################|
>>>> Time: 0:00:00
>>>> Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match,
>>>> 0% complete)
>>>> NOTE: No setscene tasks
>>>> NOTE: Executing Tasks
>>>> Extensible SDK testing environment: cortexa57-poky-linux
>>>> Needs cmake
>>>> EpoxyTest class: SDK doesn't contain Meson
>>>> GalculatorTest class: SDK don't support gtk+3
>>>> No perl package in the SDK
>>>> No python3 package in the SDK
>>>> RustCompileTest class: SDK doesn't contain a Rust cross-canadian toolchain
>>>> Traceback (most recent call last):
>>>>      File
>>>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/cases/devtool.py",
>>>> line 74, in test_extend_autotools_recipe_creation
>>>>        self._run('devtool sdk-install libxml2')
>>>>      File
>>>> "/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/case.py",
>>>> line 22, in _run
>>>>        return subprocess.check_output(". %s > /dev/null;"\
>>>>      File "/usr/lib/python3.10/subprocess.py", line 420, in check_output
>>>>        return run(*popenargs, stdout=PIPE, timeout=timeout, check=True,
>>>>      File "/usr/lib/python3.10/subprocess.py", line 524, in run
>>>>        raise CalledProcessError(retcode, process.args,
>>>> oeqa.utils.subprocesstweak.OETestCalledProcessError: Command '.
>>>> /scratch1/sandeepg/yocto/2023.2/yp-ci/build-ci-upstream/tmp/work/qemuarm64-poky-linux/core-image-minimal/1.0-r0/testsdkext/environment-setup-cortexa57-poky-linux
>>>>    > /dev/null; devtool sdk-install libxml2;' returned non-zero exit status 1
>>>> Standard Output: NOTE: Starting bitbake server...
>>>> NOTE: Reconnecting to bitbake server...
>>>> NOTE: Retrying server connection (#1)...
>>>> WARNING: You are using a local hash equivalence server but have
>>>> configured an sstate mirror. This will likely mean no sstate will match
>>>> from the mirror. You may wish to disable the hash equivalence use
>>>> (BB_HASHSERVE), or use a hash equivalence server alongside the sstate
>>>> mirror.
>>>> Loading cache...done.
>>>> Loaded 1662 entries from dependency cache.
>>>> Removing 1 recipes from the qemuarm64 sysroot...done.
>>>>
>>>>
>>>>
>>>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#13151): https://lists.yoctoproject.org/g/poky/message/13151
>> Mute This Topic: https://lists.yoctoproject.org/mt/101186330/1686489
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
--------------aJ7hjMZ9kilyB86z7r1Tno0V
Content-Type: text/plain; charset=UTF-8;
 name="yp-langdale-testsdkext-ubuntu-22-04-logs.txt"
Content-Disposition: attachment;
 filename="yp-langdale-testsdkext-ubuntu-22-04-logs.txt"
Content-Transfer-Encoding: base64

MDkvMDYvMjAyMyAxMzowMzoxOF0gL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9i
dWlsZC1jaS1sYW5nZGFsZSAgJCBjYXQgY29uZi9iYmxheWVycy5jb25mIA0KIyBQT0tZX0JCTEFZ
RVJTX0NPTkZfVkVSU0lPTiBpcyBpbmNyZWFzZWQgZWFjaCB0aW1lIGJ1aWxkL2NvbmYvYmJsYXll
cnMuY29uZg0KIyBjaGFuZ2VzIGluY29tcGF0aWJseQ0KUE9LWV9CQkxBWUVSU19DT05GX1ZFUlNJ
T04gPSAiMiINCg0KQkJQQVRIID0gIiR7VE9QRElSfSINCkJCRklMRVMgPz0gIiINCg0KQkJMQVlF
UlMgPz0gIiBcDQogIC9zY3JhdGNoMS9zYW5kZWVwZy95b2N0by95cC1tYXN0ZXIvc291cmNlcy9w
b2t5L21ldGEgXA0KICAvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL3NvdXJjZXMv
cG9reS9tZXRhLXBva3kgXA0KICAvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL3Nv
dXJjZXMvcG9reS9tZXRhLXlvY3RvLWJzcCBcDQogICINClswOS8wNi8yMDIzIDEzOjAzOjIzXSA6
L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZSAgJCAN
ClswOS8wNi8yMDIzIDEzOjAzOjI0XSA6L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rl
ci9idWlsZC1jaS1sYW5nZGFsZSAgJCB0aW1lIE1BQ0hJTkU9cWVtdWFybTY0IGJpdGJha2UgY29y
ZS1pbWFnZS1taW5pbWFsIC1jIHBvcHVsYXRlX3Nka19leHQNCkxvYWRpbmcgY2FjaGU6IDEwMCUg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgRVRBOiAgLS06LS06LS0NCkxvYWRlZCAwIGVudHJpZXMgZnJvbSBkZXBlbmRlbmN5IGNh
Y2hlLg0KUGFyc2luZyByZWNpcGVzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDowMDowMg0KUGFyc2luZyBv
ZiA4ODUgLmJiIGZpbGVzIGNvbXBsZXRlICgwIGNhY2hlZCwgODg1IHBhcnNlZCkuIDE2NjIgdGFy
Z2V0cywgNTYgc2tpcHBlZCwgMCBtYXNrZWQsIDAgZXJyb3JzLg0KTk9URTogUmVzb2x2aW5nIGFu
eSBtaXNzaW5nIHRhc2sgcXVldWUgZGVwZW5kZW5jaWVzDQoNCkJ1aWxkIENvbmZpZ3VyYXRpb246
DQpCQl9WRVJTSU9OICAgICAgICAgICA9ICIyLjIuMCINCkJVSUxEX1NZUyAgICAgICAgICAgID0g
Ing4Nl82NC1saW51eCINCk5BVElWRUxTQlNUUklORyAgICAgID0gInVidW50dS0yMi4wNCINClRB
UkdFVF9TWVMgICAgICAgICAgID0gImFhcmNoNjQtcG9reS1saW51eCINCk1BQ0hJTkUgICAgICAg
ICAgICAgID0gInFlbXVhcm02NCINCkRJU1RSTyAgICAgICAgICAgICAgID0gInBva3kiDQpESVNU
Uk9fVkVSU0lPTiAgICAgICA9ICI0LjEuNCINClRVTkVfRkVBVFVSRVMgICAgICAgID0gImFhcmNo
NjQgYXJtdjhhIGNyYyBjb3J0ZXhhNTciDQpUQVJHRVRfRlBVICAgICAgICAgICA9ICIiDQptZXRh
ICAgICAgICAgICAgICAgICANCm1ldGEtcG9reSAgICAgICAgICAgIA0KbWV0YS15b2N0by1ic3Ag
ICAgICAgPSAibGFuZ2RhbGU6M2U5NWYyNjhjZTA0YjQ5YmE2NzMxZmQ0YmJjNTNiMTY5M2MyMTk2
MyINCg0KSW5pdGlhbGlzaW5nIHRhc2tzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDowMDowMQ0KU3N0YXRlIHN1
bW1hcnk6IFdhbnRlZCAxNDI0IExvY2FsIDAgTWlycm9ycyAwIE1pc3NlZCAxNDI0IEN1cnJlbnQg
MCAoMCUgbWF0Y2gsIDAlIGNvbXBsZXRlKQ0KTk9URTogRXhlY3V0aW5nIFRhc2tzDQpOT1RFOiBU
YXNrcyBTdW1tYXJ5OiBBdHRlbXB0ZWQgMzc0MCB0YXNrcyBvZiB3aGljaCAwIGRpZG4ndCBuZWVk
IHRvIGJlIHJlcnVuIGFuZCBhbGwgc3VjY2VlZGVkLg0KDQpyZWFsCTE5bTQ1LjM1MXMNCnVzZXIJ
MG0xNS4xNTZzDQpzeXMJMG0yLjU2N3MNClswOS8wNi8yMDIzIDEzOjIzOjEzXSA6L3NjcmF0Y2gx
L3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZSAgJCANClswOS8wNi8y
MDIzIDEzOjI0OjE2XSA6L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1j
aS1sYW5nZGFsZSAgJCANClswOS8wNi8yMDIzIDEzOjI0OjE2XSA6L3NjcmF0Y2gxL3NhbmRlZXBn
L3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZSAgJCB0aW1lIE1BQ0hJTkU9cWVtdWFy
bTY0IGJpdGJha2UgY29yZS1pbWFnZS1taW5pbWFsIC1jIHRlc3RzZGtleHQNCkxvYWRpbmcgY2Fj
aGU6IDEwMCUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyN8IFRpbWU6IDA6MDA6MDANCkxvYWRlZCAxNjYyIGVudHJpZXMgZnJvbSBk
ZXBlbmRlbmN5IGNhY2hlLg0KTk9URTogUmVzb2x2aW5nIGFueSBtaXNzaW5nIHRhc2sgcXVldWUg
ZGVwZW5kZW5jaWVzDQoNCkJ1aWxkIENvbmZpZ3VyYXRpb246DQpCQl9WRVJTSU9OICAgICAgICAg
ICA9ICIyLjIuMCINCkJVSUxEX1NZUyAgICAgICAgICAgID0gIng4Nl82NC1saW51eCINCk5BVElW
RUxTQlNUUklORyAgICAgID0gInVuaXZlcnNhbCINClRBUkdFVF9TWVMgICAgICAgICAgID0gImFh
cmNoNjQtcG9reS1saW51eCINCk1BQ0hJTkUgICAgICAgICAgICAgID0gInFlbXVhcm02NCINCkRJ
U1RSTyAgICAgICAgICAgICAgID0gInBva3kiDQpESVNUUk9fVkVSU0lPTiAgICAgICA9ICI0LjEu
NCINClRVTkVfRkVBVFVSRVMgICAgICAgID0gImFhcmNoNjQgYXJtdjhhIGNyYyBjb3J0ZXhhNTci
DQpUQVJHRVRfRlBVICAgICAgICAgICA9ICIiDQptZXRhICAgICAgICAgICAgICAgICANCm1ldGEt
cG9reSAgICAgICAgICAgIA0KbWV0YS15b2N0by1ic3AgICAgICAgPSAibGFuZ2RhbGU6M2U5NWYy
NjhjZTA0YjQ5YmE2NzMxZmQ0YmJjNTNiMTY5M2MyMTk2MyINCg0KSW5pdGlhbGlzaW5nIHRhc2tz
OiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjI3wgVGltZTogMDowMDowMA0KU3N0YXRlIHN1bW1hcnk6IFdhbnRlZCAwIExvY2FsIDAg
TWlycm9ycyAwIE1pc3NlZCAwIEN1cnJlbnQgMCAoMCUgbWF0Y2gsIDAlIGNvbXBsZXRlKQ0KTk9U
RTogTm8gc2V0c2NlbmUgdGFza3MNCk5PVEU6IEV4ZWN1dGluZyBUYXNrcw0KRXh0ZW5zaWJsZSBT
REsgdGVzdGluZyBlbnZpcm9ubWVudDogY29ydGV4YTU3LXBva3ktbGludXgNCk5lZWRzIGNtYWtl
DQpFcG94eVRlc3QgY2xhc3M6IFNESyBkb2Vzbid0IGNvbnRhaW4gTWVzb24NCkdhbGN1bGF0b3JU
ZXN0IGNsYXNzOiBTREsgZG9uJ3Qgc3VwcG9ydCBndGsrMw0KTm8gcGVybCBwYWNrYWdlIGluIHRo
ZSBTREsNCk5vIHB5dGhvbjMgcGFja2FnZSBpbiB0aGUgU0RLDQpSdXN0Q29tcGlsZVRlc3QgY2xh
c3M6IFNESyBkb2Vzbid0IGNvbnRhaW4gYSBSdXN0IGNyb3NzLWNhbmFkaWFuIHRvb2xjaGFpbg0K
VHJhY2ViYWNrIChtb3N0IHJlY2VudCBjYWxsIGxhc3QpOg0KICBGaWxlICIvc2NyYXRjaDEvc2Fu
ZGVlcGcveW9jdG8veXAtbWFzdGVyL3NvdXJjZXMvcG9reS9tZXRhL2xpYi9vZXFhL3Nka2V4dC9j
YXNlcy9kZXZ0b29sLnB5IiwgbGluZSA3NCwgaW4gdGVzdF9leHRlbmRfYXV0b3Rvb2xzX3JlY2lw
ZV9jcmVhdGlvbg0KICAgIHNlbGYuX3J1bignZGV2dG9vbCBzZGstaW5zdGFsbCBsaWJ4bWwyJykN
CiAgRmlsZSAiL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9zb3VyY2VzL3Bva3kv
bWV0YS9saWIvb2VxYS9zZGtleHQvY2FzZS5weSIsIGxpbmUgMjIsIGluIF9ydW4NCiAgICByZXR1
cm4gc3VicHJvY2Vzcy5jaGVja19vdXRwdXQoIi4gJXMgPiAvZGV2L251bGw7IlwNCiAgRmlsZSAi
L3Vzci9saWIvcHl0aG9uMy4xMC9zdWJwcm9jZXNzLnB5IiwgbGluZSA0MjAsIGluIGNoZWNrX291
dHB1dA0KICAgIHJldHVybiBydW4oKnBvcGVuYXJncywgc3Rkb3V0PVBJUEUsIHRpbWVvdXQ9dGlt
ZW91dCwgY2hlY2s9VHJ1ZSwNCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMy4xMC9zdWJwcm9jZXNz
LnB5IiwgbGluZSA1MjQsIGluIHJ1bg0KICAgIHJhaXNlIENhbGxlZFByb2Nlc3NFcnJvcihyZXRj
b2RlLCBwcm9jZXNzLmFyZ3MsDQpvZXFhLnV0aWxzLnN1YnByb2Nlc3N0d2Vhay5PRVRlc3RDYWxs
ZWRQcm9jZXNzRXJyb3I6IENvbW1hbmQgJy4gL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1h
c3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAvd29yay9xZW11YXJtNjQtcG9reS1saW51eC9jb3Jl
LWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RzZGtleHQvZW52aXJvbm1lbnQtc2V0dXAtY29ydGV4
YTU3LXBva3ktbGludXggPiAvZGV2L251bGw7IGRldnRvb2wgc2RrLWluc3RhbGwgbGlieG1sMjsn
IHJldHVybmVkIG5vbi16ZXJvIGV4aXQgc3RhdHVzIDENClN0YW5kYXJkIE91dHB1dDogTk9URTog
U3RhcnRpbmcgYml0YmFrZSBzZXJ2ZXIuLi4NCk5PVEU6IFJlY29ubmVjdGluZyB0byBiaXRiYWtl
IHNlcnZlci4uLg0KTk9URTogUmV0cnlpbmcgc2VydmVyIGNvbm5lY3Rpb24gKCMxKS4uLg0KV0FS
TklORzogWW91IGFyZSB1c2luZyBhIGxvY2FsIGhhc2ggZXF1aXZhbGVuY2Ugc2VydmVyIGJ1dCBo
YXZlIGNvbmZpZ3VyZWQgYW4gc3N0YXRlIG1pcnJvci4gVGhpcyB3aWxsIGxpa2VseSBtZWFuIG5v
IHNzdGF0ZSB3aWxsIG1hdGNoIGZyb20gdGhlIG1pcnJvci4gWW91IG1heSB3aXNoIHRvIGRpc2Fi
bGUgdGhlIGhhc2ggZXF1aXZhbGVuY2UgdXNlIChCQl9IQVNIU0VSVkUpLCBvciB1c2UgYSBoYXNo
IGVxdWl2YWxlbmNlIHNlcnZlciBhbG9uZ3NpZGUgdGhlIHNzdGF0ZSBtaXJyb3IuDQpMb2FkaW5n
IGNhY2hlLi4uZG9uZS4NCkxvYWRlZCAxNjYyIGVudHJpZXMgZnJvbSBkZXBlbmRlbmN5IGNhY2hl
Lg0KUmVtb3ZpbmcgMSByZWNpcGVzIGZyb20gdGhlIHFlbXVhcm02NCBzeXNyb290Li4uZG9uZS4N
Cg0KU3VtbWFyeTogVGhlcmUgd2FzIDEgV0FSTklORyBtZXNzYWdlLg0KSU5GTzogSW5zdGFsbGlu
ZyBsaWJ4bWwyLi4uDQpXQVJOSU5HOiBZb3UgYXJlIHVzaW5nIGEgbG9jYWwgaGFzaCBlcXVpdmFs
ZW5jZSBzZXJ2ZXIgYnV0IGhhdmUgY29uZmlndXJlZCBhbiBzc3RhdGUgbWlycm9yLiBUaGlzIHdp
bGwgbGlrZWx5IG1lYW4gbm8gc3N0YXRlIHdpbGwgbWF0Y2ggZnJvbSB0aGUgbWlycm9yLiBZb3Ug
bWF5IHdpc2ggdG8gZGlzYWJsZSB0aGUgaGFzaCBlcXVpdmFsZW5jZSB1c2UgKEJCX0hBU0hTRVJW
RSksIG9yIHVzZSBhIGhhc2ggZXF1aXZhbGVuY2Ugc2VydmVyIGFsb25nc2lkZSB0aGUgc3N0YXRl
IG1pcnJvci4NCkxvYWRpbmcgY2FjaGUuLi5kb25lLg0KTG9hZGVkIDE2NjIgZW50cmllcyBmcm9t
IGRlcGVuZGVuY3kgY2FjaGUuDQpOT1RFOiBSZXNvbHZpbmcgYW55IG1pc3NpbmcgdGFzayBxdWV1
ZSBkZXBlbmRlbmNpZXMNCkluaXRpYWxpc2luZyB0YXNrcy4uLmRvbmUuDQpDaGVja2luZyBzc3Rh
dGUgbWlycm9yIG9iamVjdCBhdmFpbGFiaWxpdHkuLi5kb25lLg0KU3N0YXRlIHN1bW1hcnk6IFdh
bnRlZCAxMzYgTG9jYWwgMjUgTWlycm9ycyAxMDcgTWlzc2VkIDQgQ3VycmVudCA3NyAoOTclIG1h
dGNoLCA5OCUgY29tcGxldGUpDQpOT1RFOiBFeGVjdXRpbmcgVGFza3MNCk5PVEU6IFJ1bm5pbmcg
c2V0c2NlbmUgdGFzayAxMDYgb2YgMjEzICgvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFz
dGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4L2NvcmUt
aW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvcHl0aG9uL3B5dGhvbjNfMy4xMC42LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0
c2NlbmUpDQpOT1RFOiByZWNpcGUgcHl0aG9uMy0zLjEwLjYtcjA6IHRhc2sgZG9fcG9wdWxhdGVf
c3lzcm9vdF9zZXRzY2VuZTogU3RhcnRlZA0KTk9URTogcmVjaXBlIHB5dGhvbjMtMy4xMC42LXIw
OiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN1Y2NlZWRlZA0KTk9URTogUnVu
bmluZyBzZXRzY2VuZSB0YXNrIDE3NyBvZiAyMTMgKC9zY3JhdGNoMS9zYW5kZWVwZy95b2N0by95
cC1tYXN0ZXIvYnVpbGQtY2ktbGFuZ2RhbGUvdG1wL3dvcmsvcWVtdWFybTY0LXBva3ktbGludXgv
Y29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC90ZXN0c2RrZXh0L2xheWVycy9wb2t5L21ldGEvcmVj
aXBlcy1jb25uZWN0aXZpdHkvb3BlbnNzbC9vcGVuc3NsXzMuMC44LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3Rfc2V0c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNldHNjZW5lIHRhc2sgMTc4IG9mIDIxMyAo
L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAv
d29yay9xZW11YXJtNjQtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3Rz
ZGtleHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvbGlieGNyeXB0L2xpYnhjcnlwdF80
LjQuMzAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZSkNCk5PVEU6IFJ1bm5pbmcgc2V0
c2NlbmUgdGFzayAxNzkgb2YgMjEzICgvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVy
L2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4L2NvcmUtaW1h
Z2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9tZXRhL3JlY2lwZXMtY29y
ZS9yZWFkbGluZS9yZWFkbGluZV84LjEuMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5l
KQ0KTk9URTogUnVubmluZyBzZXRzY2VuZSB0YXNrIDE4MCBvZiAyMTMgKC9zY3JhdGNoMS9zYW5k
ZWVwZy95b2N0by95cC1tYXN0ZXIvYnVpbGQtY2ktbGFuZ2RhbGUvdG1wL3dvcmsvcWVtdWFybTY0
LXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC90ZXN0c2RrZXh0L2xheWVycy9w
b2t5L21ldGEvcmVjaXBlcy1jb3JlL3V0aWwtbGludXgvdXRpbC1saW51eC1saWJ1dWlkXzIuMzgu
MS5iYjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKQ0KTk9URTogUnVubmluZyBzZXRzY2Vu
ZSB0YXNrIDE4MSBvZiAyMTMgKC9zY3JhdGNoMS9zYW5kZWVwZy95b2N0by95cC1tYXN0ZXIvYnVp
bGQtY2ktbGFuZ2RhbGUvdG1wL3dvcmsvcWVtdWFybTY0LXBva3ktbGludXgvY29yZS1pbWFnZS1t
aW5pbWFsLzEuMC1yMC90ZXN0c2RrZXh0L2xheWVycy9wb2t5L21ldGEvcmVjaXBlcy1jb3JlL3ps
aWIvemxpYl8xLjIuMTMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZSkNCk5PVEU6IFJ1
bm5pbmcgc2V0c2NlbmUgdGFzayAxODMgb2YgMjEzICgvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8v
eXAtbWFzdGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4
L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9tZXRhL3Jl
Y2lwZXMtZXh0ZW5kZWQvYnppcDIvYnppcDJfMS4wLjguYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdF9z
ZXRzY2VuZSkNCk5PVEU6IFJ1bm5pbmcgc2V0c2NlbmUgdGFzayAxODQgb2YgMjEzICgvc2NyYXRj
aDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3Fl
bXVhcm02NC1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9s
YXllcnMvcG9reS9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvbGlibnNsL2xpYm5zbDJfZ2l0LmJiOmRv
X3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNldHNjZW5lIHRhc2sg
MTg1IG9mIDIxMyAoL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1s
YW5nZGFsZS90bXAvd29yay9xZW11YXJtNjQtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwv
MS4wLXIwL3Rlc3RzZGtleHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3h6L3h6
XzUuMi42LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNl
dHNjZW5lIHRhc2sgMTg2IG9mIDIxMyAoL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rl
ci9idWlsZC1jaS1sYW5nZGFsZS90bXAvd29yay9xZW11YXJtNjQtcG9reS1saW51eC9jb3JlLWlt
YWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RzZGtleHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLXN1
cHBvcnQvZ2RibS9nZGJtXzEuMjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZSkNCk5P
VEU6IFJ1bm5pbmcgc2V0c2NlbmUgdGFzayAxODcgb2YgMjEzICgvc2NyYXRjaDEvc2FuZGVlcGcv
eW9jdG8veXAtbWFzdGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5
LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9t
ZXRhL3JlY2lwZXMtc3VwcG9ydC9saWJmZmkvbGliZmZpXzMuNC40LmJiOmRvX3BvcHVsYXRlX3N5
c3Jvb3Rfc2V0c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNldHNjZW5lIHRhc2sgMTg4IG9mIDIxMyAo
L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAv
d29yay9xZW11YXJtNjQtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3Rz
ZGtleHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLXN1cHBvcnQvc3FsaXRlL3NxbGl0ZTNfMy4z
OS4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUpDQpOT1RFOiByZWNpcGUgbGlieGNy
eXB0LTQuNC4zMC1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdGFydGVk
DQpOT1RFOiByZWNpcGUgemxpYi0xLjIuMTMtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9z
ZXRzY2VuZTogU3RhcnRlZA0KTk9URTogcmVjaXBlIGxpYmZmaS0zLjQuNC1yMDogdGFzayBkb19w
b3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdGFydGVkDQpOT1RFOiByZWNpcGUgbGlibnNsMi0y
LjAuMC1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdGFydGVkDQpOT1RF
OiByZWNpcGUgZ2RibS0xLjIzLXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6
IFN0YXJ0ZWQNCk5PVEU6IHJlY2lwZSBzcWxpdGUzLTNfMy4zOS4zLXIwOiB0YXNrIGRvX3BvcHVs
YXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN0YXJ0ZWQNCk5PVEU6IHJlY2lwZSB1dGlsLWxpbnV4LWxp
YnV1aWQtMi4zOC4xLXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN0YXJ0
ZWQNCk5PVEU6IHJlY2lwZSByZWFkbGluZS04LjEuMi1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNy
b290X3NldHNjZW5lOiBTdGFydGVkDQpOT1RFOiByZWNpcGUgeHotNS4yLjYtcjA6IHRhc2sgZG9f
cG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3RhcnRlZA0KTk9URTogcmVjaXBlIGJ6aXAyLTEu
MC44LXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN0YXJ0ZWQNCk5PVEU6
IHJlY2lwZSBvcGVuc3NsLTMuMC44LXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2Nl
bmU6IFN0YXJ0ZWQNCk5PVEU6IHJlY2lwZSBsaWJmZmktMy40LjQtcjA6IHRhc2sgZG9fcG9wdWxh
dGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiByZWNpcGUgemxpYi0xLjIuMTMt
cjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiBy
ZWNpcGUgZ2RibS0xLjIzLXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN1
Y2NlZWRlZA0KTk9URTogcmVjaXBlIHNxbGl0ZTMtM18zLjM5LjMtcjA6IHRhc2sgZG9fcG9wdWxh
dGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiByZWNpcGUgbGlieGNyeXB0LTQu
NC4zMC1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdWNjZWVkZWQNCk5P
VEU6IHJlY2lwZSBsaWJuc2wyLTIuMC4wLXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0
c2NlbmU6IFN1Y2NlZWRlZA0KTk9URTogcmVjaXBlIHV0aWwtbGludXgtbGlidXVpZC0yLjM4LjEt
cjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiBy
ZWNpcGUgeHotNS4yLjYtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3Vj
Y2VlZGVkDQpOT1RFOiByZWNpcGUgYnppcDItMS4wLjgtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lz
cm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiByZWNpcGUgcmVhZGxpbmUtOC4xLjItcjA6
IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiBSdW5u
aW5nIHNldHNjZW5lIHRhc2sgMTk1IG9mIDIxMyAoL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lw
LW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAvd29yay9xZW11YXJtNjQtcG9reS1saW51eC9j
b3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RzZGtleHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNp
cGVzLWV4dGVuZGVkL2xpYnRpcnBjL2xpYnRpcnBjXzEuMy4zLmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3Rfc2V0c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNldHNjZW5lIHRhc2sgMjAwIG9mIDIxMyAoL3Nj
cmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAvd29y
ay9xZW11YXJtNjQtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RzZGtl
eHQvbGF5ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvbmN1cnNlcy9uY3Vyc2VzXzYuMysyMDIy
MDQyMy5iYjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKQ0KTk9URTogcmVjaXBlIG9wZW5z
c2wtMy4wLjgtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVk
DQpOT1RFOiByZWNpcGUgbGlidGlycGMtMS4zLjMtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9v
dF9zZXRzY2VuZTogU3RhcnRlZA0KTk9URTogcmVjaXBlIG5jdXJzZXMtNi4zKzIwMjIwNDIzLXIw
OiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN0YXJ0ZWQNCk5PVEU6IHJlY2lw
ZSBsaWJ0aXJwYy0xLjMuMy1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBT
dWNjZWVkZWQNCk5PVEU6IHJlY2lwZSBuY3Vyc2VzLTYuMysyMDIyMDQyMy1yMDogdGFzayBkb19w
b3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdWNjZWVkZWQNCk5PVEU6IFJ1bm5pbmcgc2V0c2Nl
bmUgdGFzayAyMDYgb2YgMjEzICgvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL2J1
aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4L2NvcmUtaW1hZ2Ut
bWluaW1hbC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9v
bHMvbGlidG9vbC9saWJ0b29sLWNyb3NzXzIuNC43LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0
c2NlbmUpDQpOT1RFOiBSdW5uaW5nIHNldHNjZW5lIHRhc2sgMjA3IG9mIDIxMyAoL3NjcmF0Y2gx
L3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZS90bXAvd29yay9xZW11
YXJtNjQtcG9reS1saW51eC9jb3JlLWltYWdlLW1pbmltYWwvMS4wLXIwL3Rlc3RzZGtleHQvbGF5
ZXJzL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL29wa2ctdXRpbHMvb3BrZy11dGlsc18wLjUu
MC5iYjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKQ0KTk9URTogcmVjaXBlIGxpYnRvb2wt
Y3Jvc3MtMi40LjctcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3RhcnRl
ZA0KTk9URTogcmVjaXBlIG9wa2ctdXRpbHMtMC41LjAtcjA6IHRhc2sgZG9fcG9wdWxhdGVfc3lz
cm9vdF9zZXRzY2VuZTogU3RhcnRlZA0KTk9URTogcmVjaXBlIG9wa2ctdXRpbHMtMC41LjAtcjA6
IHRhc2sgZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZTogU3VjY2VlZGVkDQpOT1RFOiByZWNp
cGUgbGlidG9vbC1jcm9zcy0yLjQuNy1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNj
ZW5lOiBTdWNjZWVkZWQNCk5PVEU6IFJ1bm5pbmcgc2V0c2NlbmUgdGFzayAyMTAgb2YgMjEzICh2
aXJ0dWFsOm5hdGl2ZTovc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL2J1aWxkLWNp
LWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1h
bC8xLjAtcjAvdGVzdHNka2V4dC9sYXllcnMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYXV0
b21ha2UvYXV0b21ha2VfMS4xNi41LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUpDQpO
T1RFOiByZWNpcGUgYXV0b21ha2UtbmF0aXZlLTEuMTYuNS1yMDogdGFzayBkb19wb3B1bGF0ZV9z
eXNyb290X3NldHNjZW5lOiBTdGFydGVkDQpOT1RFOiByZWNpcGUgYXV0b21ha2UtbmF0aXZlLTEu
MTYuNS1yMDogdGFzayBkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lOiBTdWNjZWVkZWQNCk5P
VEU6IFJ1bm5pbmcgc2V0c2NlbmUgdGFzayAyMTEgb2YgMjEzICh2aXJ0dWFsOm5hdGl2ZTovc2Ny
YXRjaDEvc2FuZGVlcGcveW9jdG8veXAtbWFzdGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3Jr
L3FlbXVhcm02NC1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVzdHNka2V4
dC9sYXllcnMvcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYXV0b2NvbmYvYXV0b2NvbmZfMi43
MS5iYjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKQ0KTk9URTogcmVjaXBlIGF1dG9jb25m
LW5hdGl2ZS0yLjcxLXIwOiB0YXNrIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmU6IFN0YXJ0
ZWQNCk5PVEU6IHJlY2lwZSBhdXRvY29uZi1uYXRpdmUtMi43MS1yMDogdGFzayBkb19wb3B1bGF0
ZV9zeXNyb290X3NldHNjZW5lOiBTdWNjZWVkZWQNCk5PVEU6IFRhc2tzIFN1bW1hcnk6IEF0dGVt
cHRlZCAwIHRhc2tzIG9mIHdoaWNoIDAgZGlkbid0IG5lZWQgdG8gYmUgcmVydW4gYW5kIGFsbCBz
dWNjZWVkZWQuDQoNClN1bW1hcnk6IFRoZXJlIHdhcyAxIFdBUk5JTkcgbWVzc2FnZS4NCkVSUk9S
OiBGYWlsZWQgdG8gaW5zdGFsbCBsaWJ4bWwyIC0gdW5hdmFpbGFibGUNCg0KDQpTdGFydGVkIEhU
VFBTZXJ2aWNlIG9uIDo0MjA1Nw0KU3RvcHBlZCBIVFRQU2VydmljZSBvbiA6NDIwNTcNClJFU1VM
VFM6DQpSRVNVTFRTIC0gYnVpbGRjcGlvLkJ1aWxkQ3Bpb1Rlc3QudGVzdF9jcGlvOiBQQVNTRUQg
KDE1LjAzcykNClJFU1VMVFMgLSBidWlsZGx6aXAuQnVpbGRMemlwVGVzdC50ZXN0X2x6aXA6IFBB
U1NFRCAoMS4zNXMpDQpSRVNVTFRTIC0gZ2NjLkdjY0NvbXBpbGVUZXN0LnRlc3RfZ2NjX2NvbXBp
bGU6IFBBU1NFRCAoMC4wNHMpDQpSRVNVTFRTIC0gZ2NjLkdjY0NvbXBpbGVUZXN0LnRlc3RfZ3Bw
Ml9jb21waWxlOiBQQVNTRUQgKDAuMDVzKQ0KUkVTVUxUUyAtIGdjYy5HY2NDb21waWxlVGVzdC50
ZXN0X2dwcF9jb21waWxlOiBQQVNTRUQgKDAuMTVzKQ0KUkVTVUxUUyAtIGdjYy5HY2NDb21waWxl
VGVzdC50ZXN0X21ha2U6IFBBU1NFRCAoMC4wNXMpDQpSRVNVTFRTIC0gZGV2dG9vbC5EZXZ0b29s
VGVzdC50ZXN0X2RldnRvb2xfYWRkX3Jlc2V0OiBQQVNTRUQgKDcuMTlzKQ0KUkVTVUxUUyAtIGRl
dnRvb2wuRGV2dG9vbFRlc3QudGVzdF9kZXZ0b29sX2J1aWxkX2NtYWtlOiBQQVNTRUQgKDE3LjMw
cykNClJFU1VMVFMgLSBkZXZ0b29sLkRldnRvb2xUZXN0LnRlc3RfZGV2dG9vbF9idWlsZF9lc2Rr
X3BhY2thZ2U6IFBBU1NFRCAoMTUuMDBzKQ0KUkVTVUxUUyAtIGRldnRvb2wuRGV2dG9vbFRlc3Qu
dGVzdF9kZXZ0b29sX2J1aWxkX21ha2U6IFBBU1NFRCAoMTYuNjNzKQ0KUkVTVUxUUyAtIGRldnRv
b2wuRGV2dG9vbFRlc3QudGVzdF9kZXZ0b29sX2tlcm5lbG1vZHVsZTogUEFTU0VEICgxMTEuMjdz
KQ0KUkVTVUxUUyAtIGRldnRvb2wuRGV2dG9vbFRlc3QudGVzdF9kZXZ0b29sX2xvY2F0aW9uOiBQ
QVNTRUQgKDAuMDFzKQ0KUkVTVUxUUyAtIGRldnRvb2wuRGV2dG9vbFRlc3QudGVzdF9yZWNpcGVz
X2Zvcl9ub2RlanM6IFBBU1NFRCAoNC4yNHMpDQpSRVNVTFRTIC0gZGV2dG9vbC5TZGtVcGRhdGVU
ZXN0LnRlc3Rfc2RrX3VwZGF0ZV9odHRwOiBQQVNTRUQgKDEuMTZzKQ0KUkVTVUxUUyAtIGFzc2lt
cC5CdWlsZEFzc2ltcC50ZXN0X2Fzc2ltcDogU0tJUFBFRCAoMC4wMHMpDQpSRVNVTFRTIC0gYnVp
bGRlcG94eS5FcG94eVRlc3QudGVzdF9lcG94eTogU0tJUFBFRCAoMC4wMHMpDQpSRVNVTFRTIC0g
YnVpbGRnYWxjdWxhdG9yLkdhbGN1bGF0b3JUZXN0LnRlc3RfZ2FsY3VsYXRvcjogU0tJUFBFRCAo
MC4wMHMpDQpSRVNVTFRTIC0gcGVybC5QZXJsVGVzdC50ZXN0X3Blcmw6IFNLSVBQRUQgKDAuMDBz
KQ0KUkVTVUxUUyAtIHB5dGhvbi5QeXRob24zVGVzdC50ZXN0X3B5dGhvbjM6IFNLSVBQRUQgKDAu
MDBzKQ0KUkVTVUxUUyAtIHJ1c3QuUnVzdENvbXBpbGVUZXN0LnRlc3RfY2FyZ29fYnVpbGQ6IFNL
SVBQRUQgKDAuMDBzKQ0KUkVTVUxUUyAtIGRldnRvb2wuRGV2dG9vbFRlc3QudGVzdF9leHRlbmRf
YXV0b3Rvb2xzX3JlY2lwZV9jcmVhdGlvbjogRVJST1IgKDcuMzVzKQ0KU1VNTUFSWToNCmNvcmUt
aW1hZ2UtbWluaW1hbCBlc2RrIChwb2t5LWdsaWJjLXg4Nl82NC1jb3JlLWltYWdlLW1pbmltYWwt
Y29ydGV4YTU3LXFlbXVhcm02NC10b29sY2hhaW4tZXh0LTQuMS40LnNoOmVudmlyb25tZW50LXNl
dHVwLWNvcnRleGE1Ny1wb2t5LWxpbnV4KSAtIFJhbiAyMSB0ZXN0cyBpbiAyMTIuOTM3cw0KY29y
ZS1pbWFnZS1taW5pbWFsIGVzZGsgLSBGQUlMIC0gUmVxdWlyZWQgdGVzdHMgZmFpbGVkIChzdWNj
ZXNzZXM9MTQsIHNraXBwZWQ9NiwgZmFpbHVyZXM9MCwgZXJyb3JzPTEpDQpFUlJPUjogY29yZS1p
bWFnZS1taW5pbWFsLTEuMC1yMCBkb190ZXN0c2RrZXh0OiBjb3JlLWltYWdlLW1pbmltYWwgLSBG
QUlMRUQgLSBjaGVjayB0aGUgdGFzayBsb2cgYW5kIHRoZSBjb21tYW5kcyBsb2cNCkVSUk9SOiBM
b2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvc2NyYXRjaDEvc2FuZGVlcGcveW9jdG8veXAt
bWFzdGVyL2J1aWxkLWNpLWxhbmdkYWxlL3RtcC93b3JrL3FlbXVhcm02NC1wb2t5LWxpbnV4L2Nv
cmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvdGVtcC9sb2cuZG9fdGVzdHNka2V4dC4zOTIyODk2DQpF
UlJPUjogVGFzayAoL3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9zb3VyY2VzL3Bv
a3kvbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2VzL2NvcmUtaW1hZ2UtbWluaW1hbC5iYjpkb190ZXN0
c2RrZXh0KSBmYWlsZWQgd2l0aCBleGl0IGNvZGUgJzEnDQpOT1RFOiBUYXNrcyBTdW1tYXJ5OiBB
dHRlbXB0ZWQgMSB0YXNrcyBvZiB3aGljaCAwIGRpZG4ndCBuZWVkIHRvIGJlIHJlcnVuIGFuZCAx
IGZhaWxlZC4NCg0KU3VtbWFyeTogMSB0YXNrIGZhaWxlZDoNCiAgL3NjcmF0Y2gxL3NhbmRlZXBn
L3lvY3RvL3lwLW1hc3Rlci9zb3VyY2VzL3Bva3kvbWV0YS9yZWNpcGVzLWNvcmUvaW1hZ2VzL2Nv
cmUtaW1hZ2UtbWluaW1hbC5iYjpkb190ZXN0c2RrZXh0DQpTdW1tYXJ5OiBUaGVyZSB3YXMgMSBF
UlJPUiBtZXNzYWdlLCByZXR1cm5pbmcgYSBub24temVybyBleGl0IGNvZGUuDQoNCnJlYWwJNG0x
OS41OTNzDQp1c2VyCTBtMC4zNDBzDQpzeXMJMG0wLjA1OHMNClswOS8wNi8yMDIzIDEzOjI4OjQ2
XSA6L3NjcmF0Y2gxL3NhbmRlZXBnL3lvY3RvL3lwLW1hc3Rlci9idWlsZC1jaS1sYW5nZGFsZSAg
JA==

--------------aJ7hjMZ9kilyB86z7r1Tno0V--

