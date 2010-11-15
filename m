Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA5A64C80052;
	Mon, 15 Nov 2010 15:09:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Nov 2010 13:09:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,202,1288594800"; d="scan'208";a="349029216"
Received: from doubt.jf.intel.com (HELO [10.24.5.74]) ([10.24.5.74])
	by azsmga001.ch.intel.com with ESMTP; 15 Nov 2010 13:09:56 -0800
Message-ID: <4CE1A1A5.1020003@linux.intel.com>
Date: Mon, 15 Nov 2010 13:09:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [PATCH 0/3] kernel: rename supported kernel to linux-yocto
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
X-List-Received-Date: Mon, 15 Nov 2010 21:09:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2010 08:56 AM, Bruce Ashfield wrote:
> This is the first of several staged changes to update the
> kernel support for the 1.0 release.
>
> This series is step 1:
>
>   - rename the supported kernel to 'linux-yocto' and update
>     the boards, and recipes that have references to linux-wrs.
>
> Step 2 will refactor the code into reusable blocks
> Step 3 will do internal branch renames for scalability
> Step 4 will launch and updated 2.6.34.x and 2.6.37-rcX kernel
>
> This has been built and booted on the relevant boards. If I've
> missed a reference to the existing kernel name, let me know
> and I'll make those updates as well.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel-rename
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-rename
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (3):
>    linux-wrs: rename to linux-yocto
>    linux-yocto: update board configurations
>    linux-yocto: update SRCREVs for linux-yocto rename

 From what I can tell these changes are not "bisectable" - the build 
would fail if all three are not applied. If I'm not missing something, 
I'd prefer to see these squashed into a single commit.

-- 
Darren Hart
Embedded Linux Kernel

