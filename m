Return-Path: <Frederik_Sdun@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7628AE0050B; Thu,  3 Nov 2016 08:51:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54B56E0045D
	for <poky@yoctoproject.org>; Thu,  3 Nov 2016 08:51:00 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=svr-ies-mbx-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1c2KI7-0001kr-Vz from Frederik_Sdun@mentor.com ;
	Thu, 03 Nov 2016 08:51:00 -0700
Received: from localhost (137.202.0.87) by svr-ies-mbx-02.mgc.mentorg.com
	(139.181.222.2) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Thu, 3 Nov 2016 15:50:56 +0000
Date: Thu, 3 Nov 2016 16:50:54 +0100
From: Frederik Sdun <frederik_sdun@mentor.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20161103155054.GA31701@email-eu.mentorg.com:143>
References: <1478157920-21764-1-git-send-email-frederik_sdun@mentor.com>
	<CAJTo0LbY0yV73FndcYHVkt_raS5g3AqinG0yGJPwrRte_su35A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbY0yV73FndcYHVkt_raS5g3AqinG0yGJPwrRte_su35A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel-module-split: use license provided by module for kernel-module-*
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Nov 2016 15:51:02 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Burton, Ross <ross.burton@intel.com> [03.11.2016 15:49]:
>    This patch should go to openembedded-core@lists.openembedded.org, not
>    poky@.  It's also wise to CC Bruce Ashfield to ensure he sees it.
>    On 3 November 2016 at 07:25, Frederik Sdun <frederik_sdun@mentor.com>
>    wrote:
> 
>      ---
>       meta/classes/kernel-module-split.bbclass | 10 ++++++++++
>       1 file changed, 10 insertions(+)
> 
>      diff --git a/meta/classes/kernel-module-split.bbclass
>      b/meta/classes/kernel-module-split.bbclass
>      index 08d2262..8d2aaea 100644
>      --- a/meta/classes/kernel-module-split.bbclass
>      +++ b/meta/classes/kernel-module-split.bbclass
>      @@ -29,6 +29,12 @@ do_install_append() {
>       PACKAGESPLITFUNCS_prepend = "split_kernel_module_packages "
> 
>       KERNEL_MODULES_META_PACKAGE ?= "kernel-modules"
>      +KERNEL_MODULE_LICENSE_MAP[GPL] = "GPL-2.0"
>      +KERNEL_MODULE_LICENSE_MAP[GPL_v2] = "GPL-2.0"
>      +KERNEL_MODULE_LICENSE_MAP[GPL_and_additional_rights] = "GPL-2.0"
>      +KERNEL_MODULE_LICENSE_MAP[Dual_BSD_GPL] = "BSD|GPL-2.0"
>      +KERNEL_MODULE_LICENSE_MAP[Dual_MIT_GPL] = "MIT|GPL-2.0"
>      +KERNEL_MODULE_LICENSE_MAP[Dual_MPL_GPL] = "MPL|GPL-2.0
> 
>    license.bbclass has some mapping functions already, maybe this should
>    extend and use that instead?
>    Ross

These are the licenses accepted by the kernel listed in include/linux/module.h so I wanted to keep it in kernel class:


/*
 * The following license idents are currently accepted as indicating
 * free software modules
 *
 *      "GPL"                           [GNU Public License v2 or later]
 *      "GPL v2"                        [GNU Public License v2]
 *      "GPL and additional rights"     [GNU Public License v2 rights and more]
 *      "Dual BSD/GPL"                  [GNU Public License v2 or BSD license choice]
 *      "Dual MIT/GPL"                  [GNU Public License v2 or MIT license choice]
 *      "Dual MPL/GPL"                  [GNU Public License v2 or Mozilla license choice]
 *
 * The following other idents are available
 *
 *      "Proprietary"                   [Non free products]
 *

I don't know if we want to support all licenses if the kernel does not.

Regards,
Fred

