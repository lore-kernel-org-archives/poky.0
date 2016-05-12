Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83054E00522; Thu, 12 May 2016 08:07:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAA65E00474
	for <poky@yoctoproject.org>; Thu, 12 May 2016 08:07:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP; 12 May 2016 08:07:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,610,1455004800"; d="scan'208";a="964543432"
Received: from swold-mobl2.jf.intel.com ([10.255.87.205])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2016 08:07:06 -0700
Message-ID: <1463065626.10316.189.camel@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
To: Jussi Laako <jussi.laako@linux.intel.com>, poky@yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 12 May 2016 08:07:06 -0700
In-Reply-To: <56D55AA9.8060605@linux.intel.com>
References: <56D4547D.70803@linux.intel.com> <56D55AA9.8060605@linux.intel.com>
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Cc: Ross Burton <ross@linux.intel.com>
Subject: Re: [PATCH] Fix booting from eMMC on BeagleBone Black
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
X-List-Received-Date: Thu, 12 May 2016 15:07:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Richard,

Not sure why/how this got missed, it is missing an Upstream-Status in
the patch file, I would recommend that Jussi attempt to upstream it. 

Jussi, can you please add Upstream-Status to this patch.

Thanks
   Sau!


On Tue, 2016-03-01 at 11:02 +0200, Jussi Laako wrote:
> Hello,
> 
> By default, on BeagleBone, u-boot only looks for rootfs UUID from
> first
> mmc device and thus only from microSD. Thus booting from eMMC fails
> in
> kernel panic because command line has empty root partition UUID
> "root=PARTUUID=".
> 
> This patch makes it first look in the same place as before and if the
> lookup fails (no microSD inserted) it next looks up for the rootfs
> UUID
> on the second mmc device which is the on-board eMMC. I placed the
> bbappend and patch on meta-yocto-bsp layer because the BeagleBone
> support in general is located there.
> 
> 
> Best regards,
> 
> 	- Jussi Laako
> 
> 
> -- 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

