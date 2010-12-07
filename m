Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 554604C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 20:47:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 18:47:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="581204783"
Received: from unknown (HELO [10.255.13.6]) ([10.255.13.6])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 18:47:17 -0800
Message-ID: <4CFDA034.9050703@intel.com>
Date: Mon, 06 Dec 2010 18:47:16 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1291683028.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291683028.git.dongxiao.xu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3][RFC] Poky disk space size optimization
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
X-List-Received-Date: Tue, 07 Dec 2010 02:47:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 04:50 PM, Dongxiao Xu wrote:
> This RFC aims to reduce the poky disk space size.
>
> The optimization point is the duplicated file copies in WORKDIR and
> sysroot directories. When installing, files will be copied from source
> code package into the image folder; Then some files will be copied
> from image folder to sysroot-destdir, and some other files will be
> copied from image folder to package folder. While doing package split,
> some files will be copied from package folder to packages-split folder,
> etc.
>
There are a couple of concerns with this method, which may lead to 
problems, first is that using links and modifying permissions, it's 
possible that depending on the usage the permissions might be set 
differently.  This will could lead to a second problem: psuedo. It's 
unclear at this point how psuedo will handle this.

I am sure you have been doing testing, just not sure of corner cases.

I know we accepted the first change for the package split link to the 
deploy area, that one made sense as it was package level, this is file 
level and may have hidden problems.

I am sure that Richard will correct me and add his comments as he 
recovers from his travels.

Sau!

> The thought is to use hard link to replace the direct copy.
> The three commits do the work of:
>
> a) package.bbclass: hard link "image-->sysroot-destdir"
> b) sstate.bbclass:  hard link "package-->packages-split"
> c) staging.bbclass: hard link "sysroot-destdir-->sysroots".
>
> After testing with minimal/sato/sdk build, this approach could save
> about 20% disk space.
> (minimal: 23G ->  19G, sato: 44G ->  35G, sdk: 54G ->  44G).
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dxu4/perf
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/perf
>
> Thanks,
>      Dongxiao Xu<dongxiao.xu@intel.com>
> ---
>
>
> Dongxiao Xu (3):
>    package.bbclass: Use hard link for package split instead of copy
>    sstate.bbclass: Use hard link when staging files into sysroots
>    staging.bbclass: use hardlink when staging files to sysroot-destdir
>
>   meta/classes/package.bbclass |    8 +++++---
>   meta/classes/sstate.bbclass  |    2 +-
>   meta/classes/staging.bbclass |   27 ++++++++++++++++++++++++++-
>   meta/lib/oe/path.py          |   28 ++++++++++++++++++++++++++++
>   4 files changed, 60 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


