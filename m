Received: from NAM04-SN1-obe.outbound.protection.outlook.com (NAM04-SN1-obe.outbound.protection.outlook.com [40.107.70.45])
 by mx.groups.io with SMTP id smtpd.web11.554.1596577223799222706
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 14:40:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=CIjIA4le;
 spf=pass (domain: windriver.com, ip: 40.107.70.45, mailfrom: mark.asselstine@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKmoy7Dlrmv19ElzIr/vomASV2SZ7vb3qEMDf9hO1xqup8vCMC7+7bVeYUDB9Lgw6sMAcbr6E7ZBWOHvSesO6oGNmHO+ID10uN92+w9cu8ETVW8zTyuaIEJPywm892ShoT0se5fN2TeR2ax+Pum2MbwVmT5KocKShYaFDQ6eMECWC4mtNdPLcBTsCRAeLyAc2icazUzMw11KGAMI/RjhTYMlScWhe5mVKfsUcgoR3DfdmVymA0Iy+XQX3rsboH0H9GUiwqk+c8P1xAGSa6LzhB4Kb3Na5R+80s4xrKk0bIXyYpAJStFQmsCI9QRK9PD8Uemr7v3zE02JXYW5AoOKVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DUmGzNxfhzTkZI+zbp4A0upzNk/NHoFvWkMllyqCUW0=;
 b=L9MFgq6qk0tNU6vQ38odgafKkkJy+b4N1KhJJV+ftoJwo2Mnf5FF74edD7dzwq1l+h3ejuMd6zzrVerbW0tHOT6RODpgq3VoPrP6Rh1k08kYkQO9s60XwM4CfcpSXV7Zl6wQt6sWt215tLPkhRDo+31XqRqzgzLfq/KFydvfk/2fldvW9xoF3nb/s7viww5NfrcKGG4H7dqXN+PNh22lWqHTrJQOI1YARcKgEaOXguoah9z3Bhpq7kj1TY48tESDb5M/SGuc4lLF1F3PTau5J+F9t5pA8i8GzaUgxNfpq1kh/U3x9LntSUUNcV65cht1nMIKo7Ubp0LKBZgQOn4gnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DUmGzNxfhzTkZI+zbp4A0upzNk/NHoFvWkMllyqCUW0=;
 b=CIjIA4lezsa+h++21tD45i8pYdgp+RR4UkVvWMcixkINpVRH041aGA+SHYPKDEej1xd6AtG2MWygYPfbLdGMsdJzqno3WeR12HetArl7T3hj/qioaSxXACzJj90QXaD/VaCdbPCN7gMlQmkABXJnoQqscmwYYAcRPYnfy2zZzc8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4347.namprd11.prod.outlook.com (2603:10b6:5:200::15)
 by DM6PR11MB4218.namprd11.prod.outlook.com (2603:10b6:5:201::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Tue, 4 Aug
 2020 21:40:21 +0000
Received: from DM6PR11MB4347.namprd11.prod.outlook.com
 ([fe80::5b8:e591:c798:6446]) by DM6PR11MB4347.namprd11.prod.outlook.com
 ([fe80::5b8:e591:c798:6446%6]) with mapi id 15.20.3261.015; Tue, 4 Aug 2020
 21:40:21 +0000
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: poky@lists.yoctoproject.org
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, Ashish <ashishm@mvista.com>
Subject: Re: [poky] ERROR: Kernel configuration is invalid
Date: Tue, 04 Aug 2020 17:40:19 -0400
Message-ID: <6445038.XFWb1LTGhX@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <20200804081248.ga734e2my62cl5gu@qschulz>
References: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org> <20200804081248.ga734e2my62cl5gu@qschulz>
X-ClientProxiedBy: YTOPR0101CA0041.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:14::18) To DM6PR11MB4347.namprd11.prod.outlook.com
 (2603:10b6:5:200::15)
Return-Path: mark.asselstine@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-masselst-lx1.localnet (198.84.181.245) by YTOPR0101CA0041.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b00:14::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.16 via Frontend Transport; Tue, 4 Aug 2020 21:40:20 +0000
X-Originating-IP: [198.84.181.245]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d747edc2-e068-44b6-57a5-08d838befcea
X-MS-TrafficTypeDiagnostic: DM6PR11MB4218:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB42186A04C60E05148BC69DD7ED4A0@DM6PR11MB4218.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EPqro4mkusGj01RZrWYCuQVE5nwma/qBy0oKOkrf9wQhvZIVvfPPqfDyV8TepROaEYbnHYJQWllRnT3VOoE7WoMZOwqT9d1kKyVKRBJ9d7ch9YkWcZtWqDe6X9V27Uwh4gEuHHgZ9XddldZcGJFBURSayi5R2wAchT1+jxfd1ThKT3sIGzwi38/LEHB7cNjMMHjuU/pvjXXPkL5RLxRWrXgCjdlVjDQXlMfLaLXpfZSoHco+Mvzex/VxiivI3o8cSHEcewMCrmPCDpj0H+LD2MXYseVlXciYp1IkgtFocDBs5tadCrVIfdoLgGIp9lY56dR97advQpZErQ5AH6djsxP/7fftSJaMTE3oCruyRBP05Y9WBZItydDP23Kl2QgqQvPKYuiMnxbJ4ieWRabq35gQDCEM2jmM7kbGEmWz6A1CnCsb8YhnsKHM4lqLF7Lzybmx4VKOv2ITt5qCR5UXeg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4347.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(366004)(346002)(396003)(136003)(39850400004)(86362001)(478600001)(5660300002)(52116002)(33716001)(6486002)(8676002)(8936002)(2906002)(966005)(44832011)(54906003)(956004)(36916002)(9686003)(16526019)(6916009)(186003)(4326008)(6512007)(26005)(66556008)(53546011)(316002)(66946007)(66476007)(6506007)(39026012);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	cPViMgvAueoYUlG+LU20N3xD5gEqfrZZsTR1KclRIYEjAyxyW9CEe1fmdDOK1m3pH+bgqtZUCMOeHPI6h+rKRbqKn2P+spVSAnAsBmDLwLwKB9HDsgNtP0yVW+ZArazUGxBCZyUCYuqmHUgm14YpTU9ShMs4NDoQ+fl0j3QJ3ZZAjqq8+ZGMyLwzcNRctIlb4W9MVh4dKbzulQPNLlPgFeL5zKcBaNFPwX8ObMdKZOfyBuisg8KNIa72lt/aVrHv4EtL2GeTYpGi2ykvut4auE90R38z+GSdy+1cCdIPvywdSKeyVN2riJyeJ/iVc3PvON0fAEhYtRxR1Mr0D59OQ3nzB68/EBBAmvLQVbRPS+LSMUiL9UCW7fm0eKSqq226IYLQLcgKVH+kp8G4DppwAJyc8GdhT0cIiD9aNnW2xhLQK/iLix5RrN+8Cs1rG9QbXg2b20U/6QtWRQG4VD3qds9Xdlq2hhbpUMqLPoz7gcMukefbXZWDvsaN8V4bOld5SdPM2A4C48WrSLjJdgo6T9+QpWP2xQObL734LDmWb4cOuQOE7LG34+79lIddbH1gmYlDUKbK+nQ4SbaP7fRN3ZP5QSTZjB0UyblQv0bAYOWIuGRPAmLtZkrPezoN6aDcHH9fPUm0Rd5K29B74HWHmg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d747edc2-e068-44b6-57a5-08d838befcea
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2020 21:40:21.6759
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yio5jPDws+xFUMhCrfAM+M3wNrCJQFrhkmHPb2XM1mPc4vkTXNi5MFFMotshgZF3taM4Fa2vh2dtkSIvBzHGTRKhr+tTGME7UQ27uPZPWLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4218
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, August 4, 2020 4:12:49 A.M. EDT Quentin Schulz wrote:
> Hi Ashish,
> 
> On Mon, Aug 03, 2020 at 11:59:10PM -0700, Ashish wrote:
> > Hi All ,
> > 
> > I am trying to build an out-of-tree hello-world module  using the RPI4
> > setup & compile an hello-world kernel module
> > 
> > A) Steps followed :
> > 1) Create an basic hello-world-module.c & Makefile in any known location (
> > say custom layer )
> First, make a recipe for those.
> 
> > 2) $ bitbake -c devshell virtual/kernel
> > $ make M=<Location of module created in step 1 above>  modules
> 
> I'd have used devtool for doing that and not devshell but I've almost
> never used devshell so I might be biased :)

Devshell doesn't do enough to setup the environment. I was able to reproduce 
Ashish's issue with devshell. Ashish if you do want to use devshell you need 
to build more before you enter devshell, ie. 
bitbake -c do_compile_kernelmodules virtual/kernel

Then you can do the module build, as you had it, entering the devshell and 
running:
make -C . M=.../poky/meta-skeleton/recipes-kernel/hello-mod/files modules

All was happy at this point.

MarkA

> 
> devtool modify hello-world-module
> 
> Then, go into the devtool workspace and modify step by step until you've
> something that compiles with devtool build hello-world-module.
> 
> https://www.youtube.com/watch?v=zYyE-xah7jg for a tutorial on the
> minimal out of tree kernel driver compilation/recipe.
> 
> Let us know if you hit issues after this :)
> 
> Cheers,
> Quentin




