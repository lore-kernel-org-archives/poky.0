Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C37B04C8007E;
	Fri, 18 Feb 2011 00:56:29 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Feb 2011 22:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,185,1297065600"; d="scan'208";a="604041378"
Received: from eflanaga-mobl.jf.intel.com (HELO [10.7.198.165])
	([10.7.198.165])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2011 22:56:29 -0800
Message-ID: <4D5E181C.5050208@intel.com>
Date: Thu, 17 Feb 2011 22:56:28 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <4D5C2359.6040007@intel.com>
	<1865303E0DED764181A9D882DEF65FB68637101D4A@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB68637101D4A@shsmsx502.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: autobuilders in flux today.
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
X-List-Received-Date: Fri, 18 Feb 2011 06:56:30 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

Yes, there was some issues with the autobuilder due to some old processes. A quick reset of the autobuilder service this
afternoon and the current build is mostly green with the exception of one sanity test failure.

-b

On 02/17/2011 09:11 PM, Cui, Dexuan wrote:
> Hi Beth,
> Looks autobuilder is still unstable? 
> I found the following issues.
> Actually due to the 3rd failure(./poky-init-build-env: No such file or directory), almost all the builds failed...
> Could you please have a look?
> 
> Copying RPM feed output failed: Error: tmp/deploy/rpm does not exist, cannot copy!
> http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/54/steps/shell_21/logs/stdio
> 
> 
> Generating Poky release tarball failed: fatal: Not a git repository (or any of the parent directories): .git
> http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/54/steps/shell_19/logs/stdio
> 
> Building qemux86-64 meta-toolchain-sdk failed:
> /home/pokybuild/poky-autobuilder/scripts/poky-autobuild: line 35: ./poky-init-build-env: No such file or directory
> /home/pokybuild/poky-autobuilder/scripts/poky-autobuild: line 80: bitbake: command not found
> http://autobuilder.pokylinux.org:8010/builders/nightly-internal/builds/54/steps/shell_17/logs/stdio
> 
> 
> Thanks,
> -- Dexuan
> 
> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] On Behalf Of Elizabeth Flanagan
> Sent: 2011Äê2ÔÂ17ÈÕ 3:20
> To: yocto@yoctoproject.org; poky@yoctoproject.org
> Subject: [poky] autobuilders in flux today.
> 
> I came in this morning to 140 zombies and a build that was choking on builder2. I'm rebooting the server right now. Just
> an FYI, this is a relatively recent development (last night there were 17 zombies). Not sure what is going on but I'll
> keep everyone informed.
> 
> All that said, the autobuilders will be in flux today while I bring builder3 online. Please don't kick off anything vital.
> 
> Thanks
> 
> 
> ------------------
> Elizabeth Flanagan
> Yocto Project
> Release Engineer
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------
Elizabeth Flanagan
Yocto Project
Release Engineer

