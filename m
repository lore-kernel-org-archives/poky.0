Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DB044C80AA8
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 16:49:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Mar 2011 14:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,318,1297065600"; d="scan'208";a="720100737"
Received: from doubt.jf.intel.com (HELO [10.7.199.155]) ([10.7.199.155])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 14:49:37 -0700
Message-ID: <4D7E8D6B.1020209@linux.intel.com>
Date: Mon, 14 Mar 2011 14:49:31 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4D7E88AC.5060809@linux.intel.com>
In-Reply-To: <4D7E88AC.5060809@linux.intel.com>
Subject: Re: DISTRO 'poky' not found
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
X-List-Received-Date: Mon, 14 Mar 2011 21:49:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/14/2011 02:29 PM, Darren Hart wrote:
> I've run into this error several times during development of various things. It will be in a build tree that I have been working with for a while, then when I come back to it, I get the following. Any idea what triggers this? I suspect something in my workflow, but I can't imagine what it would be. I'd really like to not have to delete my build tree.
>
> $ cd poky.git
> $ source poky-init-build-env build-qemux86/
>
> ### Shell environment set up for Poky builds. ###
>
> You can now run 'bitbake<target>'
>
> Common targets are:
>      poky-image-minimal
>      poky-image-sato
>      meta-toolchain
>      meta-toolchain-sdk
>
> You can also run generated qemu images with a command like 'poky-qemu qemux86'
>
> $ bitbake linux-yocto
> ERROR:  Poky's config sanity checker detected a potential misconfiguration.
>      Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>      Following is the list of potential problems / advisories:
>
>      Please set TARGET_OS directly, or choose a MACHINE or DISTRO that does so.
> DISTRO 'poky' not found. Please set a valid DISTRO in your local.conf


Thanks to Beth and Mark who pointed me in the right direction. This 
appears to be a problem with master, if I cherry-pick my changes on top 
of the bernard branch, the build continues as expected.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

