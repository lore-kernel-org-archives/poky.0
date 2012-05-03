Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D628E00596
	for <poky@yoctoproject.org>; Thu,  3 May 2012 16:12:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 May 2012 16:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="139850585"
Received: from unknown (HELO [10.7.198.54]) ([10.7.198.54])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2012 16:12:21 -0700
Message-ID: <4FA310D4.1070102@linux.intel.com>
Date: Thu, 03 May 2012 16:12:20 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F7F2AA5.2010400@linux.intel.com>
In-Reply-To: <4F7F2AA5.2010400@linux.intel.com>
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
X-List-Received-Date: Thu, 03 May 2012 23:12:21 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

An update for the curious...

On 06/04/12 10:40, Joshua Lock wrote:
> There are plenty of folks still using Edison and bugs being filed
> against that release series so I've started pulling together a branch of
> fixes for another Edison point release.
>
> So far I have:
> * Several fixes for useradd
> * A fix for building syslinux on hosts with 3.3 or newer kernels [YOCTO
> #2236]
> * Fixes so that live images greater than 1GB in size can boot [YOCTO #2138]

I'm running into an issue with xserver-nodm where useradd retries 10 
times and gives up. I think it's the RPM ordering issue from #2218

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2218

This is fixed in master and Denzil but the RPM package backend has 
changed significantly since Edison. I'm trying to figure out the 
smallest change possible for Edison to fix this issue.

> If there are other fixes you would like to see in the Edison series
> please point me at bug numbers or, even better, patches.

Matthew, any update from you here?

> My current branch can be seen here:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=josh/edison

Note: this has useradd failures as above.

Regards,

Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

