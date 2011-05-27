Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F17904C802F2
	for <poky@pokylinux.org>; Fri, 27 May 2011 14:48:55 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 May 2011 12:48:55 -0700
X-ExtLoop1: 1
Received: from doubt.jf.intel.com (HELO [10.7.199.100]) ([10.7.199.100])
	by orsmga002.jf.intel.com with ESMTP; 27 May 2011 12:48:55 -0700
Message-ID: <4DE0002B.2000206@linux.intel.com>
Date: Fri, 27 May 2011 12:48:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Holger Freyther <holger@freyther.de>
References: <loom.20110527T192603-897@post.gmane.org>
In-Reply-To: <loom.20110527T192603-897@post.gmane.org>
Cc: poky@pokylinux.org
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
X-List-Received-Date: Fri, 27 May 2011 19:48:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/27/2011 10:42 AM, Holger Freyther wrote:
> Hi all,
> 
> I hope these impressions are useful. In the last two days I added a BSP for a
> TI Davinci based system and I am afraid it was a bit harder than I think it
> should be. This is a summary of the underlying issues (without them being
> debugged or completely understood).
> 
> meta-skeleton and BBFILES:
>    - Maybe it would be nice if the file glob would list *.bbappend as I think
>      many people want to use it.
> 
> BBLAYERs and dependencies:
>     - I had changed BBFILES to list *.bbappend but the change didn't take
>       effect. I had to touch conf/local.conf to force a re-parse. So somehow
>       the layers config didn't end up in dependencies.
> 
> fetch vs. fetch2:
>     - I wanted to fetch my kernel from my internal git/ssh repository. I was
>       not sure where to put the username (git://foo@bar or git://bar;user=foo)

I believe the correct options would have been:

ssh://foo@bar/path/to/repo
or
foo@bar:/path/to/repo

with protocol=git

(I haven't tested this)

>       so I was experimenting a bit. This triggered me being banned from my
>       server (fail2ban)

Ouch :(

> so the git process on the buildhost got stuck and I
>       backgrounded bitbake with CTRL+Z.
> 
>     - Then I tried bitbake -cfetch virtual/kernel again and it didn't do anything,
>       it took me a while to think that it might wait on a lock. I think it would be
>       great if this could be printed somewhere (if my understanding of this is
>       correct).
> 
>     - Also it was not obvious to find out which of the two fetchers are used..
> 
> 
> Adding a kernel:
>      - So by default the linuxdummy is used, but I wanted to build my kernel,
>        I started off by copying the yocto kernel recipes. This creates a very funny
>        bug. My kernel didn't have the meta branch, the task to test the branches
>        executes git log for the branch and this is failing.
>        The symptoms are not obvious at all. An empty log file is left behind.


This is probably best dealt with a kernel recipe writing manual. We have
a few things like this forming, but nothing tangible yet.


> 
>      - I was using the yocto kernel recipes incorrectly and ended up with a logfile
>        that pointed to itself for details but nothing else.


Better checkpoint logging in the kernel recipes and classes is
definitely needed. I have a branch with the start of that. Something
I'll continue to look into.


> 
>      - In the end I used a minimal kernel recipe, it would be nice to either have
>        an easy way to 'produce' a yocto like kernel of a simple kernel recipe in
>        the skeletons.


Checkout the meta-kernel-dev repository. We have (or will be very soon)
added a linux-korg_dev.bb which does exactly that. Bruce on CC is
driving that.


> 
> Python Exceptions:
>      - Building something that is not provided gives a python exception
>      - Adding a task that does not exist gives a python exception
>      - I think it would be nice to have meaningful error messages. Specially
>        the laters runs into something like:
>       if not Data:
>            print "BLA BLA"
>       use(data)

Not my area, but yes, there is room for improvement here.

> 
> Machine Extra Depends:
>      - I was using the core-minimal-image but wanted to have some of my
>        kernel modules installed. After finding the name that task-core-boot
>        is using I tried to do bitbake -cclean task-core-boot; bitbake the-image
>        but this didn't end up with a task-core-boot to carry my depends.
>        I had to resort to using bitbake -b task-core-boot.bb to build  it, I am not
>        sure why it failed when running from within the normal bitbake. IIRC it
>        continued to be like this even after I removed tmp/cache.


This is indeed a point where intuition has failed me as well. I remember
there was another machine specific task that I had to rebuild to trigger
getting the modules into the image. Unfortunatley I can't recall what it
was atm and "bitbake -g -u depexp core-image-minimal" isn't giving me
any hints either :/


> 
> I hope this point of view is helpful.
> 

Yes, thanks for sharing!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

