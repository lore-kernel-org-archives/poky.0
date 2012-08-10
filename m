Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 227D9E0034A
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 10:47:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Aug 2012 10:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="132765770"
Received: from unknown (HELO helios.localnet) ([10.252.121.78])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Aug 2012 10:47:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Wangdawei <kyle.wangdawei@huawei.com>
Date: Fri, 10 Aug 2012 18:47:01 +0100
Message-ID: <1856518.ulv8gcrKua@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD917AE81D3@szxeml526-mbs.china.huawei.com>
References: <7E29EF69110C17499E6B3A9844CD4FD917AE81D3@szxeml526-mbs.china.huawei.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: The problem of MULTILIB in poky
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Aug 2012 17:47:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 10 August 2012 06:59:12 Wangdawei wrote:
> Hi
>          I have faced a problem about the MULTILIB in poky , that is I
> enable the MULTILIB in the local.conf like this: require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
> IMAGE_INSTALL = "lib32-connman"
> 
> And I have my own layer name meta-rtos. I set the layer.conf like this:
> # We have a conf and classes directory, add to BBPATH
> BBPATH := "${BBPATH}:${LAYERDIR}"
> 
> # We have a packages directory, add to BBFILES
> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>                                ${LAYERDIR}/recipes-*/*/*.bbappend"
> 
> BBFILE_COLLECTIONS += "rtos"
> BBFILE_PATTERN_rtos := "^${LAYERDIR}/"
> BBFILE_PRIORITY_rtos = "8"
> 
>          The problem is that I compile a package "bitbake lib32-ncurses" ,
> poky find the sourcecode from meta not from meta-rtos , because the version
> in meta-rtos is 5.7 the version in meta is 5.9 . So I want to know why the
> problem occur? Why the priority have no effect in MULTILIB ? Is there any
> problem of my configure file ?

It seems to me this is a bug - you can see it even with native/nativesdk 
versions of ncurses, so I suspect it applies to anything using BBCLASSEXTEND. 
I've filed a bug for this:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2933

As a workaround you should be able to do the following:

PREFERRED_VERSION_lib32-ncurses = "5.7"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

