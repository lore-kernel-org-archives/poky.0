Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C792F4C8086F
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:23:08 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 11:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693151457"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 11:23:07 -0800
Message-ID: <4D22221F.2070608@linux.intel.com>
Date: Mon, 03 Jan 2011 11:23:11 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1294076797.git.dvhart@linux.intel.com>	
	<208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
	<1294081495.17519.20236.camel@rex>
In-Reply-To: <1294081495.17519.20236.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/4] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Mon, 03 Jan 2011 19:23:09 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2011 11:04 AM, Richard Purdie wrote:
> On Tue, 2010-12-28 at 17:10 -0800, Darren Hart wrote:
>> trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
>> new file mode 100644
>> index 0000000..781f983
>> --- /dev/null
>> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
>> @@ -0,0 +1,22 @@
>> +DESCRIPTION = "Graphical trace viewer for Ftrace"
>> +LICENSE = "GPLv2"
>> +LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
>> +                    file://kernelshark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
>> +
>> +PR = r0
>> +PV = "1.0.4+git${SRCPV}"
>> +
>> +DEPENDS = "gtk+"
>> +RDEPENDS = "trace-cmd"
>
> This should be RDEPENDS_${PN} I suspect. We need to be clear about which
> package has the runtime dependency.

Hi Richard, thanks for the review.

I'm missing something about how these variables are used I guess. I had 
thought that being assigned inside the kernelshark_git.bb recipe would 
have been sufficient to make it clear it applied to kernelshark. How 
does this bleed over into other recipes?

>
>> +inherit pkgconfig
>> +
>> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
>> +SRCREV = "${SRCREV_pn-trace-cmd}"
>
> I'd suggest declaring that alongside the trace-cmd SRCREV definition,
> something like:
>
> TRACECMDREV ?= "xxx"
> SRCREV_pn-trace-cmd ?= "${TRACECMDREV}"
> SRCREV_pn-kernelshark ?= "${TRACECMDREV}"

If I do this, I think a trace-cmd.inc would be the right way to go. 
Having kernelshark specific bits in the base trace-cmd recipe seems 
backwards to me: kernelshark builds on trace-cmd, so it makes sense to 
me for the extension to made in the kernelshark recipe.

-- 
Darren Hart
Yocto Linux Kernel

