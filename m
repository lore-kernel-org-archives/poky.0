Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC0A14C80BD4
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 10:50:46 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 08:50:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="590512081"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by orsmga002.jf.intel.com with ESMTP; 06 Jan 2011 08:50:46 -0800
Message-ID: <4D25F2E5.50700@linux.intel.com>
Date: Thu, 06 Jan 2011 08:50:45 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1294237909.git.nitin.a.kamble@intel.com>	<973479329b1beba63c53ffde7229202d794a6c75.1294237909.git.nitin.a.kamble@intel.com>	<4D2570DA.1090409@intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE94053F30D7@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE94053F30D7@orsmsx504.amr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 5/8] perl, perl-native: upgrade from 5.8.8 to 5.12.2
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
X-List-Received-Date: Thu, 06 Jan 2011 16:50:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/06/2011 08:47 AM, Kamble, Nitin A wrote:
>>
>> Nitin,
>>
>> I am not sure how you tested this, but I got a couple of different
>> failure modes when build this from scratch.  You can see the scratch
>> failure on the autobuilder in distro-testing.
>>
>> Thanks
>>
>>     Sau!
>
> Saul,
>    It is building fine for me. And I am not doing anything special. Which perl branch did you pull in for testing. This branch has the latest code. http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=nitin/perl-5.12.2_rebased_to_master
>
> Also I did not see autobuilder failure from perl.
>
The failure is as follows:

NOTE: package perl-5.12.2-r0: task do_populate_sysroot: Started
NOTE: QA checking staging
ERROR: Error executing python function in 'sstate_task_postfunc'
Traceback (most recent call last):
   File "/vol/1/sgw/poky/bitbake/lib/bb/utils.py", line 351, in better_exec
     exec(code, _context, context)
   File "sstate_task_postfunc", line 10, in <module>
   File "sstate_task_postfunc", line 4, in sstate_task_postfunc
   File "sstate.bbclass", line 41, in sstate_install
   File "/vol/1/sgw/poky/meta/lib/oe/path.py", line 85, in copytree
     raise Error, errors
Error: 
[('/vol/1/sgw/builds/arm/tmp/work/armv5te-poky-linux-gnueabi/perl-5.12.2-r0/sysroot-destdir///vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5', 
'/vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5', 
"[Errno 21] Is a directory: 
'/vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5'")]

ERROR: There was an error when executing a python function in: 
sstate_task_postfunc
ERROR: Exception:<class 'oe.path.Error'> 
Message:[('/vol/1/sgw/builds/arm/tmp/work/armv5te-poky-linux-gnueabi/perl-5.12.2-r0/sysroot-destdir///vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5', 
'/vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5', 
"[Errno 21] Is a directory: 
'/vol/1/sgw/builds/arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/perl5'")]
ERROR: The stack trace of python calls that resulted in this 
exception/failure was:
ERROR:   File "sstate_task_postfunc", line 10, in <module>
ERROR:
ERROR:   File "sstate_task_postfunc", line 4, in sstate_task_postfunc

> Thanks,
> Nitin
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


