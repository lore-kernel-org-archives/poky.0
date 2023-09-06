Return-Path: <sandeep.gundlupet-raju@amd.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10B23EB8FAD
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 03:38:29 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.89])
 by mx.groups.io with SMTP id smtpd.web11.1001.1693971499594336053
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Sep 2023 20:38:19 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@amd.com header.s=selector1 header.b=KyCmeXHS;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: amd.com, ip: 40.107.237.89, mailfrom: sandeep.gundlupet-raju@amd.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lVYbDmsoffjB1o/JBDlvhOfFJUtd0DM5IJwgFoZPvMp7Bo2G45HPmExdLh/DiR/k5aUocoHVGNtH4hsD8TiV9HyIstZ8/kzm490K7AgouJ1fAAb7QVtQ9qEHeWyUAtygMHjuTi0UGjXZvaZFAoLe2jtvjkG+bG1xEpim5vO/4AnAYZY1EHoEOBmafdcKcGHiphMeJrfu72M8qnKwhQmdkNu3lb0OIcNTTkmhxE+a96kV4V9qA0iC9ITsymXLEUPEsmUXC3EB+3/hCy0OB9T73mdgKtYYUExRAIDyPBWyEIofSZKn0+oxBtCHefOElT0wA1Tziq0Kk19XaxivW5fyXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+TCWuG5eceTmcO6shc1UFx3RWiROPkM1Ku/hvCoZ1E=;
 b=ARswJBQEmYEyH5tFoCg/q2DukbWS4/O1ncEaz6/Z3vWFT0pF1fHPdIwVwEDLSnG6VAa2fGD8Fp43QzoW8110YolFgHebJHPJKnVO2n+WvnV2bRP+19+kc+D1j2Rh7WfOe5iyMdb9U7Y+4y3sCEZlDgUq0Akug4tyaQGjlr2EwcApGIXZI3kOzDeFkQLwLO5PUEVVd1hIi5p3H6qLLKMPNt6/pJTapMGAIy8wmsd0M0YbIDg8IbEKWPl3eNsRO1oJFtZfR2hGhfvK6x4Q1dmjALS2HkaGprImVTtLXHFQbMAohqbAzOfHz5o6xlV6RYGPf1No0F0HXYRA66cCu8W6ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7+TCWuG5eceTmcO6shc1UFx3RWiROPkM1Ku/hvCoZ1E=;
 b=KyCmeXHS/XHfJfDuj/mqb5kK8b/NaKt8gvAIQBv1n4j6uofZgS5QNpST0DY+2FFuDB3j6SfkCYv8KTLUe/ErgTUFGKfGPegt0qnNvBfIMbHRhvY5mynx0/czgUBSnTqpEO78Lwdm1CEtFaiLMTy7GVmngOLQoQ7YqBuUVeH60bU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SA0PR12MB4367.namprd12.prod.outlook.com (2603:10b6:806:94::13)
 by PH0PR12MB7012.namprd12.prod.outlook.com (2603:10b6:510:21c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Wed, 6 Sep
 2023 03:38:14 +0000
Received: from SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c]) by SA0PR12MB4367.namprd12.prod.outlook.com
 ([fe80::8bcf:a1ee:afe8:ea4c%7]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 03:38:14 +0000
Message-ID: <2abfa5b5-93ef-7348-3eb0-7e39c7a61b04@amd.com>
Date: Tue, 5 Sep 2023 21:38:11 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: poky@lists.yoctoproject.org
From: "Gundlupet Raju, Sandeep" <sandeep.gundlupet-raju@amd.com>
Subject: langdale libxml2 dependencies for testsdkext
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: SJ0PR05CA0115.namprd05.prod.outlook.com
 (2603:10b6:a03:334::30) To SA0PR12MB4367.namprd12.prod.outlook.com
 (2603:10b6:806:94::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA0PR12MB4367:EE_|PH0PR12MB7012:EE_
X-MS-Office365-Filtering-Correlation-Id: b9021fe1-2ed0-43b1-4d9a-08dbae8ab37a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Umz6z7kseFl6IXu7X8865EWjAJybRp2XVGaAI+f2kO7M1QoGEiB+tv7JSZF09pYc5+MXgwGx3T2Uw7773GxCpOPywsfULcApoxUu5VuZ91UR9iBPqkI+Mw0xhQSZn4bTK2cTjMiaFhWHJgGIMXL7YTNjZ4Ia11/JOK/WbBl7FphicUbIc8cDqBfK5qTI4KKlPZ2oXTDuJXsvjgGEB7g/jn2+O8BWLnpUWc9xemS0/AEiMp+ywS57Kqk23J3OpH9G8pDjwGd8maQ3Ejo3Q5iHapAUzie1c4qYIGatHqIm+uL1MnMWdoo/WjXTnKGISwDOwcQnUu6lZ5jFkV46QfqRT3fNrqDrMrf0OmspOYrgEtMoTSqHTntqtKQdPu27LtPPICWPhucNRDWj9Au34kM3YmTJ0VHEHlv5NooS4bXRRjF04tCta8U1YmJTIcAA19z2LOgeYek64pHrG5AM5NxuB/9I/40mO9k1tOG0nK7jUEYOTAHC4mA/pmiBD6ItPQVQ4vNxEkYrKd0tjcE3j8ut17TmbrdjUMk5qUq8bvuaL9NudlSA+XPp89GUgESWk9BFUP2TnABPWVYS+e68n7mWAlOJ/RqCQNfmWobbnJd7GncaNEm7/UkmzCY2S0fBkE8HMHVrsZewbBih7ixJF+MxUQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR12MB4367.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(396003)(136003)(346002)(376002)(186009)(1800799009)(451199024)(38100700002)(36756003)(83380400001)(2906002)(6916009)(316002)(66476007)(66946007)(66556008)(6666004)(6506007)(6486002)(6512007)(41300700001)(478600001)(31686004)(86362001)(31696002)(8936002)(8676002)(2616005)(26005)(5660300002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Wudmb8SRe/9DIqNyhKjQm0k2/X+x9ri+pYK/WG1KLJycygKk3Rr7OfCV3eFE?=
 =?us-ascii?Q?kjNmp+Z+m5cu3JymQadcTk6wFT2iqlH5vLUKAMr03tXR2VrDY7EbzeCQ2pny?=
 =?us-ascii?Q?yQl8DeKcxJfo8101iMXM97BH9o+LxB/Mm6aqSXTEVdgg52FhZAlZBXaWp29s?=
 =?us-ascii?Q?S6Nj2PhA+/Skwx2Z5GCZ8k4CzwIze+eEGRrrTdNRapeecaTWSrP9y2gJjDWZ?=
 =?us-ascii?Q?a0PD8RRabEvepIm3OBhtY8b8XWFk+eZrj/up9TVoiKF3/XxEQNZ+pM8Ek2fE?=
 =?us-ascii?Q?CnHpcd6IMCceMG4gQeGmpDLzhqNl55pyYz/loKZ3o3QNnAZ64ATLqXnNpWWr?=
 =?us-ascii?Q?vJr0CGPnWTHoQHrnkazTlDJwzSiJfcYR6q4sk4mubMfW7GAVQG1THNZU/4YJ?=
 =?us-ascii?Q?KauOzJsjQqJQsxNbI3XEtT7mzvClmnU21Lk7Y3ySwO08jm0Sp+ZzPClKxh5N?=
 =?us-ascii?Q?WJMf3GmUeSz6M6Zth6FwU7TkjO50/UASxfBDL61UsPK75iMOPOwIGxRZNOvF?=
 =?us-ascii?Q?FmL739QT5jR3SCuYnROPpKj8mo4gm5syCtk838U0I8zX/AFuE75ZC5B7Od9I?=
 =?us-ascii?Q?HeMBs8mhVql2zx2UR832vtVdDtydQELjHaqJ0mpKWV7nmR0gXMryBMpPncIt?=
 =?us-ascii?Q?2nvrS7osGZ+nRQXQ96x/yiiTYDSTMDzUBJ1DPZ/98IWSmnBj2zUohbP9FNEd?=
 =?us-ascii?Q?uHA8zI/VMQ3roWOWIXvD2hrcld91BlM4Hv8QDrvHsBeEX6htnUJ0H9jI3aue?=
 =?us-ascii?Q?/EuPfSxXmj4Cu8kZ5L7e0Eiqcp7Ip8iWqAHT5Y61/JOiG3VnJntEQDcuoPvz?=
 =?us-ascii?Q?EbbE3S0wgQaNoQPlQ91wV1EXuG2S2dne+Rx87kO7oeL6MMiEig4MbsiBr0ue?=
 =?us-ascii?Q?zR84HJ6uXLlPLcW2wW4jCmVvXRIJWrogSBGXxVgNyxIc7tP7rkkY2tRpXFm/?=
 =?us-ascii?Q?zH9OZy/eG364fgwEvQXaeMrNXpH3pNmgyI2UKF3OTvHY3FhuRrLJfUxW7zFi?=
 =?us-ascii?Q?Yobh9sOk0pk5g4cVYAjKLdYy4iC69gUCAtpcy7LxSjir+sF7dwWS92liTQZR?=
 =?us-ascii?Q?wAOySDoTCzOibd5U24F6bIAc38MhM4/zcHyZCQ5RqL5t04FiwbUxDAe5vx2V?=
 =?us-ascii?Q?+r72fom43ATv22kNsYMyX58CxtUGkXAyGN4RQsVjtKhNd1nB2vjv9VdEw4qf?=
 =?us-ascii?Q?9CT/HX+nDqY33eOXQv1DMoGQOG5dNpCX2IUclxyijuvWid+DRsTgSGeGHVnl?=
 =?us-ascii?Q?ugbXXhQPc0mqshS18l+eDK0dKELZAh2NdoIqvm1C5vOEGXV9uEG5yQQSr1op?=
 =?us-ascii?Q?0/GpRQzlksbvFgBWNdyQdf5kYww0WvzKcOiD2FdFMX2Q3TRkyxEUwKnbkQ5s?=
 =?us-ascii?Q?xgyoM1cHT4EzYZbS6CO10NJLtWXe5Ga9HfYH04SMyNaTRAvOA3udbeYB7rqh?=
 =?us-ascii?Q?h7gpqUHuUxTg01xC2e/XLYGnT1Kv6FjELdpYXHY5Fu197mn5W9R82jBr3Moo?=
 =?us-ascii?Q?82N9tXZaW/wqgwvEXajgrLtrcx5qfQW4TCeON1aWzATdxLdKuSlH9UsqYiPg?=
 =?us-ascii?Q?W6tsTNWMoaD+S4Bldv1OWCnt9X8irpJBmoW2Lshc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9021fe1-2ed0-43b1-4d9a-08dbae8ab37a
X-MS-Exchange-CrossTenant-AuthSource: SA0PR12MB4367.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 03:38:14.4432
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6LN5DliB+BVGKkrRJygYK8oBkDX2/DrXCQkvGfsJ7UEBFB74qX+Wtt1/AlmkkTEe/5RVhqnVvakbeh04jUP/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB7012
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 03:38:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13149

Hi All,

I'm running testsdkext using langdale and observed libxml2 dependencies=20
as shown below but when I tried using master it worked as expected. Does=20
anyone know if this a known issue in langdale and also point to the=20
patch in master which fixed this issue?

$ time MACHINE=3Dqemuarm64 bitbake core-image-minimal -c testsdkext
Loading cache: 100%=20
|##########################################################################=
###########################################################################=
##########################|=20
Time: 0:00:00
Loaded 1662 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"2.2.0"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "x86_64-linux"
NATIVELSBSTRING=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "universal"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
"aarch64-poky-linux"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "qemuarm64"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "4.1.4"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "aarch64 armv8a=
 crc cortexa57"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
""
meta
meta-poky
meta-yocto-bsp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "2023:c572c1a1e0ea57=
3e64a2864d8893800104d36a67"

Initialising tasks: 100%=20
|##########################################################################=
###########################################################################=
#####################|=20
Time: 0:00:00
Sstate summary: Wanted 0 Local 0 Mirrors 0 Missed 0 Current 0 (0% match,=20
0% complete)
NOTE: No setscene tasks
NOTE: Executing Tasks
Extensible SDK testing environment: cortexa57-poky-linux
Needs cmake
EpoxyTest class: SDK doesn't contain Meson
GalculatorTest class: SDK don't support gtk+3
No perl package in the SDK
No python3 package in the SDK
RustCompileTest class: SDK doesn't contain a Rust cross-canadian toolchain
Traceback (most recent call last):
 =C2=A0 File=20
"/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/ca=
ses/devtool.py",=20
line 74, in test_extend_autotools_recipe_creation
 =C2=A0=C2=A0=C2=A0 self._run('devtool sdk-install libxml2')
 =C2=A0 File=20
"/scratch1/sandeepg/yocto/2023.2/yp-ci/sources/poky/meta/lib/oeqa/sdkext/ca=
se.py",=20
line 22, in _run
 =C2=A0=C2=A0=C2=A0 return subprocess.check_output(". %s > /dev/null;"\
 =C2=A0 File "/usr/lib/python3.10/subprocess.py", line 420, in check_output
 =C2=A0=C2=A0=C2=A0 return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout=
, check=3DTrue,
 =C2=A0 File "/usr/lib/python3.10/subprocess.py", line 524, in run
 =C2=A0=C2=A0=C2=A0 raise CalledProcessError(retcode, process.args,
oeqa.utils.subprocesstweak.OETestCalledProcessError: Command '.=20
/scratch1/sandeepg/yocto/2023.2/yp-ci/build-ci-upstream/tmp/work/qemuarm64-=
poky-linux/core-image-minimal/1.0-r0/testsdkext/environment-setup-cortexa57=
-poky-linux=20
 > /dev/null; devtool sdk-install libxml2;' returned non-zero exit status 1
Standard Output: NOTE: Starting bitbake server...
NOTE: Reconnecting to bitbake server...
NOTE: Retrying server connection (#1)...
WARNING: You are using a local hash equivalence server but have=20
configured an sstate mirror. This will likely mean no sstate will match=20
from the mirror. You may wish to disable the hash equivalence use=20
(BB_HASHSERVE), or use a hash equivalence server alongside the sstate=20
mirror.
Loading cache...done.
Loaded 1662 entries from dependency cache.
Removing 1 recipes from the qemuarm64 sysroot...done.


