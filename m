Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B67B34C80A70
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 09:33:27 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Apr 2011 07:33:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="681539752"
Received: from unknown (HELO [10.255.13.45]) ([10.255.13.45])
	by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2011 07:33:26 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <BANLkTinsKNAYMEeNtVCb5MNb=Y0rR_GDkQ@mail.gmail.com>
References: <BANLkTinsKNAYMEeNtVCb5MNb=Y0rR_GDkQ@mail.gmail.com>
Date: Wed, 20 Apr 2011 09:32:57 -0500
Message-ID: <1303309977.29530.129.camel@elmorro>
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
X-List-Received-Date: Wed, 20 Apr 2011 14:33:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 02:36 -0700, v sailaja wrote:
> Hi,
> 
> I am trying to port Poky to the "sandybridge platform" and  using the
> branch "bernard-cur" for "fishriver" machine.
> I am running Ubuntu 10.04 on 64 bit machine.
> 
> I get an error "rpm" doesn't exist.It means the "rpm" folder is not
> created under "tmp/deploy" folder.
> 
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

Also, you can search for a particular problem in bugzilla:

http://bugzilla.pokylinux.org/

and if you don't find a similar problem there, file a new bug report for
it - it's much more likely to be actually addressed if there's a bug
report tracking it...

Tom

> 
> 
> -- 
> Thanks & Regards,
> SAI
> 



