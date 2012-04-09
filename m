Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5BDEE00596
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 13:33:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 13:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="126991576"
Received: from unknown (HELO [10.7.198.71]) ([10.7.198.71])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2012 13:33:37 -0700
Message-ID: <4F8347A1.3050007@linux.intel.com>
Date: Mon, 09 Apr 2012 13:33:37 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F7F2AA5.2010400@linux.intel.com> <4F801898.2060107@freyther.de>
	<4F833F34.5050901@linux.intel.com> <4F834601.6020507@gmail.com>
In-Reply-To: <4F834601.6020507@gmail.com>
Subject: Re: Edison Next
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
X-List-Received-Date: Mon, 09 Apr 2012 20:33:37 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 09/04/12 13:26, Derek Buitenhuis wrote:
> On 09/04/2012 3:57 PM, Joshua Lock wrote:
>> "Q: What is the overall support plan for the Yocto Project?
>>
>> A: Security patches and critical bug fixes are supplied one release
>> back. No toolchain or kernel changes are allowed for these updates.
>> Support for longer periods of time can be supplied by commercial OSVs."
>
> Random Question:
>
> The above FAQ is a tad vague... what if the kernel or toolchain change
> is a security fix?

That's a reasonable question, but not one I can answer with any 
authority, having not authored the FAQ.

I infer that it means toolchain or kernel *version* changes, as we 
strive to avoid breaking compatibility with any existing layers, etc. 
when providing a stable release update.

Regards,
Joshua
-- 
Joshua '贾詡' Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

