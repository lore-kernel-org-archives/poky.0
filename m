Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24624E004E9
	for <poky@yoctoproject.org>; Mon,  3 Oct 2011 08:39:47 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 08:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="59389101"
Received: from unknown (HELO envy.home) ([10.7.199.150])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2011 08:39:44 -0700
Message-ID: <4E89D741.3080607@linux.intel.com>
Date: Mon, 03 Oct 2011 08:39:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: chinmaya hoshing <cahoshing@gmail.com>
References: <CAMTw45BRK9H5THCL+h33KPMrZh8EgAJnQ3sO5QVoiz822Xf-bQ@mail.gmail.com>
	<4E8150E4.2040200@linux.intel.com>
	<CAMTw45Aercppi1zWi1FFeV1Pr_ypu-eXzevBF2zhfts+AXk3BA@mail.gmail.com>
In-Reply-To: <CAMTw45Aercppi1zWi1FFeV1Pr_ypu-eXzevBF2zhfts+AXk3BA@mail.gmail.com>
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
X-List-Received-Date: Mon, 03 Oct 2011 15:39:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/02/2011 09:54 PM, chinmaya hoshing wrote:
> Hi,
> 
> In Downloads directory whatever were the entries for linux kernel 
> I have kept them in downloads folder while building.
> After this I disconnected the network and started the build ,But it
> throws error for Unable to fetch source for linux-libc-headers, whereas
> building my kernel  i.e linux-yocto_git.bb <http://linux-yocto_git.bb>
> with this downloads does not create any problem.


When building your kernel, which linux-libc-headers provider are you using?

Have you ensured that you did a "-c fetchall" for the image you want to
build so that all the downloads are sure to have downloaded before you
switch to no network?

Note that linux-libc-headers-yocto is the default linux-libc-headers
provider, and it uses the 2.6.37 yocto recipe, so it will need to
download that repository as well.

--
Darren

> 
> On Tue, Sep 27, 2011 at 9:58 AM, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
> 
> 
>     On 09/16/2011 05:38 AM, chinmaya hoshing wrote:
>     > Hi ,
>     >
>     > I am building poky-build minimal live image for fishriver machine
>     on 64
>     > bit host machine.
>     > As I am having limited internet band-width, so I have identified
>     all the
>     > dependent packages and setup a Apache server on my local system so
>     that
>     > I can redirect the SRC_URI of all the packages to my local server.
>     > I have changed the related recipes to build  minimal live image, and
>     > modify bitbake.conf to add LOCAL_MIRROR="xxx.xxx.xxx.xxx/packages"
>     , in
>     > side packages I have tars which  was present "build/download" folder.
> 
>     OK... why not just use a common download directory? From what you've
>     described your just trying to speed up the build on a single build
>     system.
> 
>     --
>     Darren
> 
>     >
>     > While building linux-yocto, fetch and unpack was done but during
>     kernel
>     > checkout whatever git commits I have done previously in poky
>     source were
>     > flashed out (lost),  also the only recipe remains in
>     >  meta/recipe-kernel/ is linux .
>     >
>     >
>     > Following are the changes made in
>     > meta/recipes-kernel/linux/linux-yocto_git.bb
>     <http://linux-yocto_git.bb> <http://linux-yocto_git.bb>
>     > #SRCREV_FORMAT = "meta_machine"
>     > SRC_URI = "${LOCAL_MIRROR}/linux-yocto-3.0-3.0.tar.bz2"
>     >      // This tar file I took from
>     >
>     http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/snapshot/linux-yocto-3.0-3.0.tar.bz2
>     > PV = "${LINUX_VERSION}"
>     >
>     > In file meta-intel/meta-fishriver/conf/machine/fishriver.conf I
>     modified
>     > PREFERRED_VERSION_linux-yocto = "3.0"                (which  was
>     > PREFERRED_VERSION_linux-yocto = "3.0+git%" )
>     >
>     >
>     > Can any one help me to find the solution that if I had to pull linux
>     > kernel source from tar file or such and not from git repository. What
>     > things I have to do.
>     >
>     > Regards
>     > C Hoshing
>     >
>     >
>     >
>     > _______________________________________________
>     > poky mailing list
>     > poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     > https://lists.yoctoproject.org/listinfo/poky
> 
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

