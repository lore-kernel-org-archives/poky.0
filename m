Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D39924C80506
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 09:42:06 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Apr 2011 07:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,265,1301900400"; d="scan'208";a="738108963"
Received: from unknown (HELO [10.255.13.63]) ([10.255.13.63])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 07:42:05 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DB565BE.7010606@mlbassoc.com>
References: <4DB565BE.7010606@mlbassoc.com>
Date: Mon, 25 Apr 2011 09:41:17 -0500
Message-ID: <1303742477.11649.7.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: "core" explosion?
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
X-List-Received-Date: Mon, 25 Apr 2011 14:42:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-25 at 05:14 -0700, Gary Thomas wrote:
> I've been building from a Poky tree, keeping up to date with
> the master branch for quite some time.  Recently, I used this
> tree to build to do some testing on my [emenlow-like] Atom.
> 
> Using the external meta-intel, I've built for atom-pc since it's
> supported by core (but sadly doesn't work on my Atom PC!) and
> emenlow (which does work).  I've noticed quite a change in the
> size of images over the past month:
> 
> ls -l /work/tmp/*.hddimg
> -rw-r--r-- 1 gthomas gthomas  521244672 Apr 22 15:00 /work/tmp/core-image-sato-live-atom-pc.hddimg
> -rw-r--r-- 1 gthomas gthomas 2056809472 Apr 22 22:28 /work/tmp/core-image-sato-live-emenlow.hddimg
> -rw-r--r-- 1 gthomas gthomas  508077056 Mar 21 12:37 /work/tmp/poky-image-sato-live-atom-pc.hddimg
> -rw-r--r-- 1 gthomas gthomas 1032937472 Mar 22 05:40 /work/tmp/poky-image-sato-live-emenlow.hddimg
> 
> Notice that with the new "core" images, the size is bigger, but
> why is the emenlow image _doubled_ whereas the atom-pc version only
> grew by around 4%?

Previous to the below commit, the IMAGE_ROOTFS_SIZE overrides were being
ignored and the rootfs size defaulted to the actual image size + 20%.
Now IMAGE_ROOTFS_SIZE is driving the image sizes as expected.

commit adac5a690fd5b4239bb59ec54e3e5174dbcf29e9
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Thu Mar 24 12:29:19 2011 +0000

    image.bbclass: Move ROOTFS_SIZE into runimagecmd() function





