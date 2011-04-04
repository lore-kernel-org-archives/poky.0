Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CA254C80044
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 13:41:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2011 11:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="729002681"
Received: from doubt.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2011 11:41:32 -0700
Message-ID: <4D9A10D3.9000002@linux.intel.com>
Date: Mon, 04 Apr 2011 11:41:23 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Pete Couperus <pjcoup@gmail.com>
References: <AANLkTimyMqJN4q1gnG-M9t02GdrotJD5tvxEbr--k3x2@mail.gmail.com>
In-Reply-To: <AANLkTimyMqJN4q1gnG-M9t02GdrotJD5tvxEbr--k3x2@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Boost libs built as x86 library with qemumips target
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
X-List-Received-Date: Mon, 04 Apr 2011 18:41:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/27/2011 08:28 PM, Pete Couperus wrote:
> Hello,
>
> I'm new to poky, and was trying to build 'poky-image-minimal' for a
> couple of targets.
> After success with 'poky-image-minimal' for qemux86, I tried out the
> qemumips target.
> Things seemed to be going fine, until it errored out trying to build
> libzypp with a bunch
> of:
> skipping incompatible
> /home/twocog/poky-builds/build-mips/tmp/sysroots/mips-poky-linux/usr/lib/libboost_signals-mt.so
> when searching for -lboost_signals-mt.
> Indeed, file libboost_signals.so.1.44.0 reports ELF x86, where all of
> the other
> .so in this directory are ELF mips.
> On looking at the boost build artifacts, they all seem to be x86.
> The host machine is x86.
> This is using poky-laverne-4.0.
> Any help/guidance would be appreciated, I realize there are many moving
> pieces here.  I can provide more diagnostics if needed.
> Thanks.

I'm taking a stab at this since others haven't responded yet. Sounds 
like a bad reuse of sstate (not sure if that's available in your 
version) or host contamination.

Can you try:

$ bitbake -c clean -f libboost (for each of the boost recipes)

to be safe remove sstate-cache/*libboost* and then try building again. 
Does the problem persist?

--
Darren

>
> Pete
>
>
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

