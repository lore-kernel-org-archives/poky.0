Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21EB04C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 14:40:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 12:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,401,1291622400"; d="scan'208";a="702180887"
Received: from unknown (HELO [10.255.14.130]) ([10.255.14.130])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 12:40:57 -0800
Message-ID: <4D45CCDA.1030207@linux.intel.com>
Date: Sun, 30 Jan 2011 12:40:58 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E189@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504E6294E189@shsmsx502.ccr.corp.intel.com>
Subject: Re: [LTP] Yocto 1.0 M2 assessment -- DONE
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
X-List-Received-Date: Sun, 30 Jan 2011 20:40:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 01/30/2011 01:12 AM, Tian, Kevin wrote:
> Hi, all,
>
> I'd like to share the current LTP status, that I've basically done the
> assessment for
>
> all the failures except routerstation (2.6.34 kernel has some IPC issues
> which causes
>
> lots of unexpected failures).
>
Kevin,

Thanks for the excellent assesment, as we move forward, I will consult 
with you about the contents of the images.  Is there a reason you chose 
the SDK image over the LSB image?

As you may have heard, we are working on creating sets of images that 
will meet various developers.  Soon, there will be an LSB-dev and 
LSD-sdk set of images that will contain headers/libraries and then 
headers/libraries and developer tools in LSB.  We might want to consider 
testing with the lsb-sdk image in the future since it will have some of 
the missing things that you have tested.

Thoughts?

	Sau!


> https://wiki.yoctoproject.org/wiki/LTP_result#Current_Milestone_.281.0.2FM2.29
>
> Total failures are *271* if setting aside routerstation:
>
> Out of *271* there are quite some happening on multiple targets. So
> after removing the
>
> duplicated failures, I managed to audit totally *51* failures, within them:
>
> - 7 failures are fixed (5 are bug fixes, 2 are fixed in 2.6.37 kernel)
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=672 [LTP]PATH contain
> ending colon for root user
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=673 [LTP]normal user can't
> use cron
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=674 [LTP]bash is not
> default /bin/sh in lsb profile
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=675 [LTP]normal user can't
> use at
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=676 [LTP]no 'file' and
> 'ldd' in sdk profile
>
> - 5 failures are identified as upstream LTP bugs
>
> - 3 failures are pending for further solution
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=678 [LTP] fallocate always
> gets -EFBIG on qemuarm/qemumips
>
> - The majority (36) failures are categorized as Not-A-Bug, which mostly
> comes from
>
> the fact that SDK profile doesn’t include necessary packages for test,
> and then are
>
> verified PASS by adding them back with necessary tweaking. There’re also
> a few
>
> coming from lacking of memory/disk resources, which will be avoided in
> the next test.
>
Do you have the list os packages that you had to add?  I do not see a 
summary of that list.

Again thanks for this great effort, and I look forward to the POSIX 
evaluation at somepoint in the near future.

Sau!

> Qemux86 is the base target which I spent most time. So for most failure
> analysis you can look at:
>
> https://wiki.yoctoproject.org/wiki/Qemux86-ltp
>
> Qemuarm contains 2^nd most fresh analysis, which you may be also interested:
>
> https://wiki.yoctoproject.org/wiki/Qemuarm-ltp
>
> Thanks
>
> Kevin
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

