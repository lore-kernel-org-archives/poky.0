Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 799FB4C804CA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 09:16:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Apr 2011 07:16:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="422625087"
Received: from unknown (HELO [10.255.13.45]) ([10.255.13.45])
	by azsmga001.ch.intel.com with ESMTP; 20 Apr 2011 07:16:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <BANLkTinsKNAYMEeNtVCb5MNb=Y0rR_GDkQ@mail.gmail.com>
References: <BANLkTinsKNAYMEeNtVCb5MNb=Y0rR_GDkQ@mail.gmail.com>
Date: Wed, 20 Apr 2011 09:15:58 -0500
Message-ID: <1303308958.29530.122.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: rpm folder is not created under the deploy folder in poky
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
X-List-Received-Date: Wed, 20 Apr 2011 14:16:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 02:36 -0700, v sailaja wrote:
> Hi,
> 
> I am trying to port Poky to the "sandybridge platform" and  using the
> branch "bernard-cur" for "fishriver" machine.
> I am running Ubuntu 10.04 on 64 bit machine.
> 

Hi,

I'm not sure what you're trying to do - there's already a Sandy Bridge
BSP in meta-intel called meta-sugarbay, so no need to port it from
fishriver...

Also, if you're having problems building, I put together a step-by-step
transcript of building a BSP for specific hardware from scratch here:

https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-intel_BSP

(
Also, there's one doing the same thing for qemu if interested

https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_qemu_desktop
)

So you should just be able to build the sugarbay from scratch using the
instructions above (the meta-intel BSP ones), but substitute "sugarbay"
every place you see "fishriver".

> I get an error "rpm" doesn't exist.It means the "rpm" folder is not
> created under "tmp/deploy" folder.
> 

You might try creating the directory and trying to continue.  Or as a
last resort rm -rf tmp and sstate-cache and start over - sometimes
things get into such a state that it's the only thing that seems to
work.

Someone else may have a more targeted answer for this problem, though...

Tom

> 
> 
>  Error Log:
> 
> NOTE: Running task 1459 of 3826 (ID:
> 3783, /home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb, do_package)
> NOTE: package libice-1_1.0.7-r0: task do_package: Started
> NOTE: package libice-1_1.0.7-r0: task do_package: Succeeded
> NOTE: Running task 3103 of 3826 (ID:
> 3786, /home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb, do_package_write_rpm)
> ERROR:
> '/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb' failed
> NOTE: package libice-1_1.0.7-r0: task do_package_write_rpm: Started
> ERROR: Lockfile destination directory
> '/home/sct/poky-intel/poky_intel/build/tmp/deploy/rpm' does not exist
> ERROR: Function 'do_package_rpm' failed
> ERROR: Logfile of failure stored
> in: /home/sct/poky-intel/poky_intel/build/tmp/work/atom-poky-linux/libice-1_1.0.7-r0/temp/log.do_package_write_rpm.19658
> Log data follows:
> | NOTE: Creating RPM package for libice-dbg
> | NOTE: Creating RPM package for libice6
> | NOTE: Creating RPM package for libice-doc
> | NOTE: Creating RPM package for libice-dev
> | NOTE: Not creating empty RPM package for libice-locale
> | ERROR: Lockfile destination directory
> '/home/sct/poky-intel/poky_intel/build/tmp/deploy/rpm' does not exist
> | ERROR: Function 'do_package_rpm' failed
> NOTE: package libice-1_1.0.7-r0: task do_package_write_rpm: Failed
> ERROR: Task 3786
> (/home/sct/poky-intel/poky_intel/meta/recipes-graphics/xorg-lib/libice_1.0.7.bb, do_package_write_rpm) failed with exit code '1'
> 
> 
> Please Can anyone  guide me how to track this problem.
> 
> 
> 
> -- 
> Thanks & Regards,
> SAI
> 



