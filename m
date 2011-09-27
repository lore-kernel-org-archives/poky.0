Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 357CEE004E9
	for <poky@yoctoproject.org>; Mon, 26 Sep 2011 21:28:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Sep 2011 21:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="56865909"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by orsmga002.jf.intel.com with ESMTP; 26 Sep 2011 21:28:21 -0700
Message-ID: <4E8150E4.2040200@linux.intel.com>
Date: Mon, 26 Sep 2011 21:28:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
In-Reply-To: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Getting error in linux-yocto kernel during build.
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
X-List-Received-Date: Tue, 27 Sep 2011 04:28:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/16/2011 05:38 AM, chinmaya hoshing wrote:
> Hi ,
> 
> I am building poky-build minimal live image for fishriver machine on 64
> bit host machine.
> As I am having limited internet band-width, so I have identified all the
> dependent packages and setup a Apache server on my local system so that
> I can redirect the SRC_URI of all the packages to my local server.
> I have changed the related recipes to build  minimal live image, and
> modify bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages" , in
> side packages I have tars which  was present "build/download" folder. 

OK... why not just use a common download directory? From what you've
described your just trying to speed up the build on a single build system.

--
Darren

> 
> While building linux-yocto, fetch and unpack was done but during kernel
> checkout whatever git commits I have done previously in poky source were
> flashed out (lost),  also the only recipe remains in
>  meta/recipe-kernel/ is linux .
> 
> 
> Following are the changes made in
> meta/recipes-kernel/linux/linux-yocto_git.bb <http://linux-yocto_git.bb>
> #SRCREV_FORMAT = "meta_machine"  
> SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"                
>      // This tar file I took from
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2 
> PV = "${LINUX_VERSION}"
> 
> In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I modified 
> PREFERRED_VERSION_linux-yocto = "3.0"                (which  was  
> PREFERRED_VERSION_linux-yocto = "3.0+git%" )
> 
> 
> Can any one help me to find the solution that if I had to pull linux
> kernel source from tar file or such and not from git repository. What
> things I have to do.
> 
> Regards
> C Hoshing
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

