Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546084C800C1
	for <poky@pokylinux.org>; Fri, 27 May 2011 15:19:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 13:19:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="6000273"
Received: from doubt.jf.intel.com (HELO [10.24.82.158]) ([10.24.82.158])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 13:19:40 -0700
Message-ID: <4DE0074A.8050404@linux.intel.com>
Date: Fri, 27 May 2011 13:19:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <loom.20110527T192603-897@post.gmane.org>	<4DE0002B.2000206@linux.intel.com>
	<BANLkTi=rJ049XGM5DQGjKtf7QKEAjh0Nqw@mail.gmail.com>
In-Reply-To: <BANLkTi=rJ049XGM5DQGjKtf7QKEAjh0Nqw@mail.gmail.com>
Cc: Holger Freyther <holger@freyther.de>, poky@pokylinux.org
Subject: Re: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 20:19:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/27/2011 01:06 PM, Chris Larson wrote:
> On Fri, May 27, 2011 at 12:48 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 05/27/2011 10:42 AM, Holger Freyther wrote:
>>> Hi all,
>>>
>>> I hope these impressions are useful. In the last two days I added a BSP for a
>>> TI Davinci based system and I am afraid it was a bit harder than I think it
>>> should be. This is a summary of the underlying issues (without them being
>>> debugged or completely understood).
>>>
>>> meta-skeleton and BBFILES:
>>>    - Maybe it would be nice if the file glob would list *.bbappend as I think
>>>      many people want to use it.
>>>
>>> BBLAYERs and dependencies:
>>>     - I had changed BBFILES to list *.bbappend but the change didn't take
>>>       effect. I had to touch conf/local.conf to force a re-parse. So somehow
>>>       the layers config didn't end up in dependencies.
>>>
>>> fetch vs. fetch2:
>>>     - I wanted to fetch my kernel from my internal git/ssh repository. I was
>>>       not sure where to put the username (git://foo@bar or git://bar;user=foo)
>>
>> I believe the correct options would have been:
>>
>> ssh://foo@bar/path/to/repo
>> or
>> foo@bar:/path/to/repo
>>
>> with protocol=git
>>
> 
> This is backwards. The url scheme determines the fetcher to use, the
> protocol= determines the method that fetcher uses to obtain the
> sources. Holger had it correct. git:// to associate with the git
> fetcher, protocol= to ensure it uses ssh.

Doh, thanks for correcting. That explains some things for me. I had
thought a real git url was appropriate here, good to know!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

