Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A91144C80FBE
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:17:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 18:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="584555446"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 18:15:54 -0800
Received: from [10.255.14.24] (10.255.14.24) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 16 Dec 2010 19:15:53 -0700
Message-ID: <4D0AC7D8.8080001@intel.com>
Date: Thu, 16 Dec 2010 18:15:52 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Shared state prebuild copy bug report (bug #602)
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
X-List-Received-Date: Fri, 17 Dec 2010 02:17:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2010 06:06 PM, Tian, Kevin wrote:
>> From: Scott Garman
>> Sent: Friday, December 17, 2010 9:39 AM
>> To: poky@pokylinux.org
>> Subject: [poky] Shared state prebuild copy bug report (bug #602)
>>
>> Hello,
>>
>> I did a build of poky-image-lsb from Poky master today and tried copying
>> the shared state prebuilds (sstate-cache) to my laptop. Things looked
>> good for a while as it populated my sysroot area from the prebuilds, but
>> then it started building autoconf-native and ran into the following
>> error during do_compile:
>>
>> Can't locate Data/Dumper.pm in @INC (@INC contains: ../lib
>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>> /toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl/5.8.8
>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl /toastssd/
>> poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>> /toastssd/poky/build/tmp/sysroots/x86_64-linux/usr/lib/perl/5.8.8
>> /toastssd/poky/build/tmp/sysroots/x86_64-  linux/usr/lib/perl .) at
>> ../lib/Autom4te/C4che.pm line 33.
>>
>> "/toastssd" is a path specific to the original build machine, but does
>> not exist on my laptop.
>>
>> I have reported this as bug #602.
>>
>> Scott
>>
>
> That's interesting. Does similar error if you try it on same machine?

Do you mean rebuild poky-image-lsb from scratch on my laptop? I would 
imaging that error would not occur.

I'm guessing Perl creates a configuration file somewhere in the sysroot 
which contains full pathnames to it's Perl module directories. That 
config file gets rolled into the prebuild package and cannot be used on 
another build directory.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

