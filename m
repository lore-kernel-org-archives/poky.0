Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E98CE0044D
	for <poky@yoctoproject.org>; Mon,  9 Apr 2012 12:57:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2012 12:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130413430"
Received: from unknown (HELO [10.7.198.71]) ([10.7.198.71])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 12:57:40 -0700
Message-ID: <4F833F34.5050901@linux.intel.com>
Date: Mon, 09 Apr 2012 12:57:40 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F7F2AA5.2010400@linux.intel.com> <4F801898.2060107@freyther.de>
In-Reply-To: <4F801898.2060107@freyther.de>
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
X-List-Received-Date: Mon, 09 Apr 2012 19:57:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 07/04/12 03:36, Holger Hans Peter Freyther wrote:
> On 04/06/2012 07:40 PM, Joshua Lock wrote:
>> Hi,
>>
>> There are plenty of folks still using Edison and bugs being filed against that
>> release series so I've started pulling together a branch of fixes for another
>> Edison point release.
>
> Hi,
>
> is there a page somewhere on the yoctoproject or pokylinux that explains what
> the current release is, what the next one will be, when the next one will be
> released, how long the old one will be supported/

Releases are on an approximately 6 month cadence, the last release was 
Edison in October 2011[1].

Our FAQ addresses the support question[2]:

"Q: What is the overall support plan for the Yocto Project?

A: Security patches and critical bug fixes are supplied one release 
back. No toolchain or kernel changes are allowed for these updates. 
Support for longer periods of time can be supplied by commercial OSVs."

We also have a public calendar that others have linked to.

Cheers,
Joshua

1. 
http://www.yoctoproject.org/blogs/davest/2011/meet-edison-yocto-project-v1.1-release
2. https://wiki.yoctoproject.org/wiki/FAQ
-- 
Joshua '贾詡' Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

