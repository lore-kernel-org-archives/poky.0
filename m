Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EAB54C80052
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 15:21:51 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Jun 2011 13:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,360,1304319600"; d="scan'208";a="14031366"
Received: from doubt.jf.intel.com (HELO [10.7.199.61]) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2011 13:21:50 -0700
Message-ID: <4DF6715D.3050703@linux.intel.com>
Date: Mon, 13 Jun 2011 13:21:49 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4DF668B1.1060500@ll.mit.edu>
In-Reply-To: <4DF668B1.1060500@ll.mit.edu>
Cc: poky@yoctoproject.org, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 20:21:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/13/2011 12:44 PM, Jeff Mitchell wrote:
> Hello,
> 
> Late last week I did a full rebuild of packages from poky master branch 
> (beagleboard target). Today, if I update my clone's master branch to 
> current upstream, I'm unable to build git (extra whitespace added for 
> clarity)
> 
> NOTE: Running task 210 of 4247 (ID: 324, 
> virtual:native:/home/jmitchell/yocto/poky/meta/recipes-devtools/git/git_1.7.5.1.bb, 
> do_configure)
> 
> NOTE: package git-native-1.7.5.1-r1: task do_configure: Started
> 
> ERROR: Logfile of failure stored in: 
> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/log.do_configure.12679
> 
> Log data follows:
> 
> | 
> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679: 
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake: 
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
> interpreter: No such file or directory


This is a known issue with a change in the perlnative bits - I hit this
late last week. I thought this had been fixed. Saul?

--
Darren

> | 
> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679: 
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake: 
> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad 
> interpreter: No such file or directory
> 
> My guess is that it's related to 4c790efa, but reverting that patch in a 
> private branch did not really help. I've tried cleaning and rebuilding 
> perl, perl-native, and git, with no success.
> 
> Did I simply miss some updating step...?
> 
> Thanks,
> Jeff
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

