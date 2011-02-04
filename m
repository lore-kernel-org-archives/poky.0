Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C5734C80104
	for <poky@yoctoproject.org>; Fri,  4 Feb 2011 11:33:07 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2011 09:33:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,427,1291622400"; d="scan'208";a="884389214"
Received: from unknown (HELO [10.255.14.192]) ([10.255.14.192])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2011 09:33:06 -0800
Message-ID: <4D4C3852.6090406@linux.intel.com>
Date: Fri, 04 Feb 2011 09:33:06 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110204092905.45870D2B4BD@gemini.denx.de>
In-Reply-To: <20110204092905.45870D2B4BD@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Fixes for bugs with 1.0 M3 target milestones?
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
X-List-Received-Date: Fri, 04 Feb 2011 17:33:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 01:29 AM, Wolfgang Denk wrote:
> Hi,
>
> I notice that there are a number of bugs open that are (1) more or
> less directly visible to the "end user" or "customer" (i. e. not only
> "build problems" that are mostly visible to engineering) and that (2)
> are marked with a "1.0 M3" target milestone, for example:
>
> Bug 154 - libtool has incorrect paths embedded
> Bug 227 - meta/packages/meta/*toolchain*
> Bug 336 - [QT] fotowall display abnormal on eMenlow
> Bug 348 - [QT] fotowall segfaults with "Painter not active"
> Bug 412 - lttv can't be loaded in GUI mode
> Bug 443 - zypper encounter segfault when startup with qemuppc
> Bug 452 - [Qt] qtdemo warning: missing Qt database driver
> Bug 555 - After untar sdk tarball to /opt/poky, My root folder's user info is changed!
> Bug 580 - poky-qemu does not make proper use of CROSSPATH (breaking distcc)
> Bug 603 - [Netbook]Connection preferences did not enable wireless networks
> Bug 610 - no rootfs and dtb file in qemumpc8315e-rdb milestone build
> Bug 615 - [multimedia] video player reports error when open video files
> Bug 616 - [multimedia] No sound from machine when playing audio files
> Bug 658 - The bottom icons on Applications and All screen are cut-off in qemu.
> Bug 659 - The gcc/g++ is not built in the poky-image-sdk-routerstationpro-.*
>
> [this is just a selection, mostly bugs that are on my own radar, too]
>
> Bugs that affect basic functionality (video player mnot working,
> audio player not working, fotowall not working) are pretty much of
> show stoppers; also bugs that impair the general appearance (like the
> cut-off icons) result in poor first impressions.
>
Agreed.

> With the "1.0 M3" target milestone not being too far away I wonder if
> these bugs will really be fixed until then? Some of these bug reports
> are actually pretty old...
>
Thanks for your input, you are correct 1.0 M3 is right around the corner 
and a number of these bugs are not even close to being fixed.  We are 
going to be focusing M4, which is from now until mid-March on bug fixing.

I will be working the IRC channel (#yocto) weekly on a bug scrub, I will 
take this input and ensure these get marked for M4.  If you have any 
suggested fixes, please feel free to submit patches.

On that note, if you do submit patches with Bug fixes, please add the 
following to your commit message:  [BUGID #NNN].  We have a scanner for 
this format.



Sau!

> Thanks!
>
> Wolfgang Denk
>


