Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 119164C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:00:21 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Apr 2011 08:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="422651395"
Received: from unknown (HELO [10.255.12.227]) ([10.255.12.227])
	by azsmga001.ch.intel.com with ESMTP; 20 Apr 2011 08:00:21 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1303110125.5518.59.camel@rex>
References: <BANLkTimC2=uXFQiy8bt8UU2Q4OzwcMGFTg@mail.gmail.com>
	<1303110125.5518.59.camel@rex>
Date: Wed, 20 Apr 2011 08:00:25 -0700
Message-ID: <1303311625.23006.4.camel@doubt>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: poky@yoctoproject.org
Subject: Re: Unable to get kernel modules
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
X-List-Received-Date: Wed, 20 Apr 2011 15:00:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-18 at 08:02 +0100, Richard Purdie wrote:
> On Mon, 2011-04-18 at 11:50 +0530, Akshat Saha wrote:
> > Hi,
> > 
> > 
> > I am building my image with : bitbake poky-image-minimal-live
> > But after booting/installing this image, lsmod, does not show any
> > modules loaded into the kernel. Also, the
> > folder /lib/modules/2.6.34.7-wr-standard in the rfs does not contains
> > the following files/folders:
> >       * modules.builtin  
> >       * modules.order
> >       * kernel
> > Though they are present in
> > the tmp/sysroots/core2-poky-linux/lib/modules/2.6.34.7-wr-standard.
> > 
> > 
> > Also, while building, modules-2.6.34.7-wr-standard-r12-atom-pc.tgz is
> > formed in tmp/deploy/images, which consists of the above mentioned
> > files/folders, but does not seem to be integrated into the image.
> > 
> > 
> > Can anyone please suggest/guide me how to integrate loadable modules
> > into the image. 
> 
> By default the minimal image doesn't include all the kernel modules. You
> can add them to the minimal image by adding "kernel-modules" to
> IMAGE_INSTALL in meta/recipes-core/images/poky-image-minimal.bb

You can also add them individually if you don't need them all. Every
module is built as a separate package to make this easy. If you have a
machine for which certain modules are required for normal functionality,
you can add them to:

MACHINE_ESSENTIAL_EXTRA_RDEPENDS

in your machine config.

> 
> Cheers,
> 
> Richard
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Yocto Linux Kernel


