Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 682124C800AC
	for <poky@lists.pokylinux.org>; Tue, 22 Mar 2011 02:39:26 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Mar 2011 00:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,224,1299484800"; d="scan'208";a="406256783"
Received: from unknown (HELO [10.255.12.121]) ([10.255.12.121])
	by azsmga001.ch.intel.com with ESMTP; 22 Mar 2011 00:39:11 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D87A03B.2000403@mlbassoc.com>
References: <4D87A03B.2000403@mlbassoc.com>
Date: Tue, 22 Mar 2011 02:39:14 -0500
Message-ID: <1300779554.3049.196.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Making live images bigger
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
X-List-Received-Date: Tue, 22 Mar 2011 07:39:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-21 at 12:00 -0700, Gary Thomas wrote: 
> I'm running a live (USB) image on my Atom-PC and would like to
> install more programs.  Now that I've figured out the magic to
> use zypper and rpm (thanks, Mark), I have a new problem.  The
> image on the USB device is too small - basically no free space :-(
> 
> So, I tried to adjust this by setting:
>    /tmp/poky-amltd/meta-yocto/conf/machine/atom-pc.conf:IMAGE_ROOTFS_SIZE_ext3 ?= "1000000"
> which I think should give me a 1GB USB setup.  Sadly, the result was exactly the
> same size as when I ran it with the default size.
> 
> Any ideas what I'm doing wrong?  I edited the config as above, then simply ran
>    % bitbake poky-image-sato-live
> I can see that it rebuilt the images, but they're just too small still.
> 

According to this in image.bbclass, the size should end up with 20% free
space (IMAGE_OVERHEAD_FACTOR = 1.2) regardless.

ROOTFS_SIZE=`du -ks ${IMAGE_ROOTFS}|awk '{size = $1 * ${IMAGE_OVERHEAD_FACTOR}; print (size > ${IMAGE_ROOTFS_SIZE} ? size : ${IMAGE_ROOTFS_SIZE}) }'`

But in any case, IMAGE_ROOTFS_SIZE_ext3 seems to be getting ignored -
the only way I was able to get a 1G image was to use the straight
IMAGE_ROOTFS_SIZE e.g. using

IMAGE_ROOTFS_SIZE ?= "1000000"

instead of

IMAGE_ROOTFS_SIZE_ext3 = "2000000"

in emenlow.conf.  The image sizes before and after:

-rw-r--r--   1 trz trz  582105088 2011-03-22 01:58 poky-image-sato-live-emenlow-20110322065226.hddimg
-rw-r--r--   1 trz trz  581939200 2011-03-22 01:58 poky-image-sato-live-emenlow-20110322065226.iso
-rw-r--r--   1 trz trz 1032947712 2011-03-22 02:21 poky-image-sato-live-emenlow-20110322071321.hddimg
-rw-r--r--   1 trz trz 1032779776 2011-03-22 02:21 poky-image-sato-live-emenlow-20110322071321.iso

But 1000000 is half of what the default is supposed to in the first
place - if it was working correctly, it should have gotten 2Gb by
default apparently...

Tom


> Thanks
> 




