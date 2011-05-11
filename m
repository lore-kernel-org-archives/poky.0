Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 354174C80FEE
	for <poky@pokylinux.org>; Wed, 11 May 2011 18:07:29 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2011 16:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,354,1301900400"; d="scan'208";a="745943719"
Received: from unknown (HELO [10.255.12.71]) ([10.255.12.71])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2011 16:07:27 -0700
Message-ID: <4DCB16BC.4040205@linux.intel.com>
Date: Wed, 11 May 2011 16:07:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iqessi$mok$1@dough.gmane.org>
In-Reply-To: <iqessi$mok$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: No rootfs for beagleboard after bernard 5.0
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
X-List-Received-Date: Wed, 11 May 2011 23:07:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/11/2011 01:51 PM, Robert Berger wrote:
> Hi,
> 
> I'm trying to build poky-image-sato-sdk branch bernard-5.0.1 for the
> beagleboard. It has the following error:
> 
> ERROR: Function 'File:
> '/work/rber/poky-bernard-5.0.1-arm-beagle/downloads/distcc-2.18.3.tar.bz2'
> has md5 checksum 2279f50fe7b688c8d6762a3e095a302a when
> 0d6b80a1efc3a3d816c4f4175f63eaa2 was expected (from URL:
> 'http://distcc.samba.org/ftp/distcc/distcc-2.18.3.tar.bz2')' failed

Please try a couple things:

1) refetch distcc
   $ bitbake -c fetch -f distcc

If that still fails:

2) update the MD5 in the distcc recipe and try to rebuild.

If that works, we need a patch to update the MD5.

--
Darren

> 
> ... and no rootfs ...
> 
> rber@yocto-vm-1:/work/rber/poky-bernard-5.0.1-arm-beagle/tmp/deploy/images$
> ls
> licenses
> MLO-beagleboard
> MLO-beagleboard-1.42+r13+git1+6f3a26101303051e0f91b6213735b68ce804e94e-r13
> modules-2.6.37.3-yocto-standard+-r16-beagleboard.tgz
> u-boot-beagleboard.bin
> u-boot-beagleboard-v2010.12+r1+git1+264eaa0ea967bac32214b87d60cfc86c8b22cac6-r1.bin
> uImage-2.6.37+git1+212cae404e57ff9dc58c808035770d51325c3512_1+2b2ef940457f0bb40e0fb76937c921c2962364ca-r16-beagleboard-20110511114121.bin
> uImage-beagleboard.bin
> x-load-beagleboard-1.42+r13+git1+6f3a26101303051e0f91b6213735b68ce804e94e-r13.bin.ift
> x-load-beagleboard.bin.ift
> 
> Something similar happened with the latest and greatest from git (that's
> why I was trying this)
> 
> Am I missing something or is poky-image-sato-sdk for the beagleboard broken?
> 
> Regards,
> 
> Robert
> ...If the code and the comments disagree, both are probably wrong.
> 
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
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

