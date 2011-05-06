Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 77F254C8007E
	for <poky@pokylinux.org>; Fri,  6 May 2011 12:09:23 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 May 2011 10:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,327,1301900400"; d="scan'208";a="639076858"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by orsmga002.jf.intel.com with ESMTP; 06 May 2011 10:09:22 -0700
Message-ID: <4DC42B45.7080504@linux.intel.com>
Date: Fri, 06 May 2011 10:09:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: gmane@reliableembeddedsystems.com
References: <iq04eq$4qb$1@dough.gmane.org>
In-Reply-To: <iq04eq$4qb$1@dough.gmane.org>
Cc: poky@pokylinux.org
Subject: Re: Third party toolchain, kernel, bootloader
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
X-List-Received-Date: Fri, 06 May 2011 17:09:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/05/2011 11:28 PM, Robert Berger wrote:
> Hi,
> 
> I'm working on a couple of projects trying to use yocto and it boils
> down to the fact, that the packages and the package management (with a
> few tweaks) are very valuable.
> 
> On the other hand "just to give it a try" it's a major effort to add
> kernel and bootloader to poky and moreover the gcc which comes with poky
> is not always what I need in terms of stability but also features (need
> e.g. Cortex-A8 support). So I would also need to cook gcc to compile a
> vendor provided kernel and bootloader.


We build for Beagleboard xM, which is a Cortex-A8. Are you missing a
specific feature? Hitting a particular bug?


> What I'm after is to add some packages from poky to some 3rd party
> rootfs. One major problem I have is the dependency on libc6 (>= 2.12)
> Usually I have some older versions of libc6: e.g. libc-2.8.so.
> 
> For the projects I'm currently working on kernel and bootloader are
> already compiling/running and tested and I would like to add packages
> like qt-embedded to the various rootfs.


Is the third party rootfs built using an older version of poky or oe?


> To achieve this I would need a mechanism to use a 3rd party toolchain
> with poky (and maybe to skip the build steps for kernel and boot loader).
> 
> Is this something yocto/poky was made for, or am I totally off?
> Am I the only one who has such kind of problems?
> How are others tackling these kind of problems?


From the above I'm getting the impressions you're trying to build
package with a recent yocto for a much older image that might have even
been built with something other than yocto (or poky).

I wouldn't expect that to work. The package names, dependency names,
distribution policy, libc version (as you noticed) will fight you the
whole way.

Please elaborate if I'm misinterpreting what you are trying to do.

--
Darren

> 
> Please advise,
> 
> Regards,
> 
> Robert
> 
> 
> ..."Rules of Optimization: Rule1: Don't do it. Rule 2 (for experts
> only): Don't do it yet." - M.A. Jackson (not the singer)
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

