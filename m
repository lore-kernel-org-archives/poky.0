Return-Path: <laurentiu.palcu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDB9E00884
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 00:11:32 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 21 Jan 2014 00:11:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,695,1384329600"; d="scan'208";a="462105271"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.45])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2014 00:11:29 -0800
Date: Tue, 21 Jan 2014 10:11:28 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Roseville House <championoaks@gmail.com>
Message-ID: <20140121081128.GE7512@lpalcu-linux>
References: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOqG5mwi7Rcpe+Le5btBg8SKMf1WF4uLVzo3tmYc3C3UGhoMbA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: build issues when behind a proxy
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Jan 2014 08:11:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

You're probably missing the GIT_PROXY_COMMAND environment variable.

Here's how to set the environment up:
https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Laurentiu

On Tue, Jan 21, 2014 at 12:02:32AM -0800, Roseville House wrote:
> I followed the steps listed here
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>   still seeing bunch of errors while fetching bitbake -c fetchall
> core-image-sato
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:37 socat[30877] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/matchbox-keyboard;branch=matchbox-keyboard-0-1'.
> Unable to fetch URL from any source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/matchbox-keyboard/0.0+gitAUTOINC+217f1bfe14-r4/temp/log.do_fetch.30839
> 
> ERROR: Task 230
> (/home/username/yocto/poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb,
> do_fetch) failed with exit code '1'
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:37 socat[30887] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
> source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/opkg-utils/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30843
> 
> ERROR: Task 111
> (/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
> do_fetch) failed with exit code '1'
> 
> WARNING: Failed to fetch URL git://git.yoctoproject.org/opkg-utils,
> attempting MIRRORS if available
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:37 socat[30890] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/yocto-kernel-tools.git'. Unable to fetch
> URL from any source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/x86_64-linux/kern-tools-native/0.2+gitAUTOINC+a42509b01c-r12/temp/log.do_fetch.30842
> 
> ERROR: Task 119
> (/home/username/yocto/poky/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb,
> do_fetch) failed with exit code '1'
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:37 socat[31033] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.yoctoproject.org/opkg-utils'. Unable to fetch URL from any
> source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/x86_64-linux/opkg-utils-native/0.1.8+gitAUTOINC+fd4a3a4c20-r0/temp/log.do_fetch.30844
> 
> ERROR: Task 31 (virtual:native:/home/username/yocto/poky/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb,
> do_fetch) failed with exit code '1'
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:37 socat[30888] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
> fetch URL from any source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/x86_64-linux/kmod-native/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30841
> 
> ERROR: Task 129
> (/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod-native_git.bb,
> do_fetch) failed with exit code '1'
> 
> WARNING: Failed to fetch URL
> git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git, attempting
> MIRRORS if available
> 
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> 
> 2014/01/20 23:45:38 socat[31226] E getaddrinfo("", "(null)",
> {1,0,1,6}, {}): Name or service not known
> 
> fatal: Could not read from remote repository.
> 
> 
> 
> Please make sure you have the correct access rights
> 
> and the repository exists.
> 
> 
> 
> ERROR: Function failed: Fetcher failure for URL:
> 'git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git'. Unable to
> fetch URL from any source.
> 
> ERROR: Logfile of failure stored in:
> /home/username/yocto/poky/build/tmp/work/i586-poky-linux/kmod/16+gitAUTOINC+36c4bb928a-r0/temp/log.do_fetch.30840
> 
> ERROR: Task 218
> (/home/username/yocto/poky/meta/recipes-kernel/kmod/kmod_git.bb,
> do_fetch) failed with exit code '1'
> 
> Waiting for 1 running tasks to finish:
> 
> 0: linux-yocto-3.10.25+gitAUTOINC+4d658aa580_79af968f2f-r0 do_fetch (pid 30845)
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

