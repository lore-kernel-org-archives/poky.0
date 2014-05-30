Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0874BE009E7; Fri, 30 May 2014 11:17:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BD4DE0073A
	for <poky@yoctoproject.org>; Fri, 30 May 2014 11:17:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 May 2014 11:11:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,942,1392192000"; d="scan'208";a="520365281"
Received: from dvhart-mac01.jf.intel.com (HELO [10.7.196.60]) ([10.7.196.60])
	by orsmga001.jf.intel.com with ESMTP; 30 May 2014 11:17:01 -0700
User-Agent: Microsoft-MacOutlook/14.4.1.140326
Date: Fri, 30 May 2014 11:18:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Ross Burton <ross.burton@intel.com>,
	<poky@yoctoproject.org>
Message-ID: <CFAE1974.94A79%dvhart@linux.intel.com>
Thread-Topic: [PATCH] genericx86: switch to Linux 3.14 from 3.10
References: <1401462359-21556-1-git-send-email-ross.burton@intel.com>
In-Reply-To: <1401462359-21556-1-git-send-email-ross.burton@intel.com>
Mime-version: 1.0
Subject: Re: [PATCH] genericx86: switch to Linux 3.14 from 3.10
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
X-List-Received-Date: Fri, 30 May 2014 18:17:10 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 5/30/14, 8:05, "Ross Burton" <ross.burton@intel.com> wrote:

>Boot-tested on a NUC.
>
>Signed-off-by: Ross Burton <ross.burton@intel.com>

Thanks Ross,

Acked-by: Darren Hart <dvhart@linux.intel.com>


>---
> meta-yocto-bsp/conf/machine/include/genericx86-common.inc |    2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
>b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
>index 66bfd19..c61be97 100644
>--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
>+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
>@@ -2,7 +2,7 @@ include conf/machine/include/x86-base.inc
> MACHINE_FEATURES += "wifi efi pcbios"
> 
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>-PREFERRED_VERSION_linux-yocto ?= "3.10%"
>+PREFERRED_VERSION_linux-yocto ?= "3.14%"
> PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> XSERVER ?= "${XSERVER_X86_BASE} \
>             ${XSERVER_X86_EXT} \
>-- 
>1.7.10.4
>
>


-- 
Darren Hart					Open Source Technology Center
darren.hart@intel.com				            Intel Corporation




