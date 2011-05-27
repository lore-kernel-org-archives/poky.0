Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1F224C802F2
	for <poky@pokylinux.org>; Fri, 27 May 2011 12:45:07 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QQ15t-0000Er-7G
	for poky@pokylinux.org; Fri, 27 May 2011 19:45:05 +0200
Received: from 91-64-83-241-dynip.superkabel.de ([91.64.83.241])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 27 May 2011 19:45:05 +0200
Received: from holger by 91-64-83-241-dynip.superkabel.de with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 27 May 2011 19:45:05 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Holger Freyther <holger@freyther.de>
Date: Fri, 27 May 2011 17:42:40 +0000 (UTC)
Message-ID: <loom.20110527T192603-897@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 91.64.83.241 (Mozilla/5.0 (X11;
	Linux i686) AppleWebKit/534.26+ (KHTML, like Gecko) Version/5.0
	Safari/534.26+ Ubuntu/10.10 (2.30.6-1ubuntu5) Epiphany/2.30.6)
Subject: Impressions of using Poky to create a BSP
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
X-List-Received-Date: Fri, 27 May 2011 17:45:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi all,

I hope these impressions are useful. In the last two days I added a BSP for a
TI Davinci based system and I am afraid it was a bit harder than I think it
should be. This is a summary of the underlying issues (without them being
debugged or completely understood).

meta-skeleton and BBFILES:
   - Maybe it would be nice if the file glob would list *.bbappend as I think
     many people want to use it.

BBLAYERs and dependencies:
    - I had changed BBFILES to list *.bbappend but the change didn't take
      effect. I had to touch conf/local.conf to force a re-parse. So somehow
      the layers config didn't end up in dependencies.

fetch vs. fetch2:
    - I wanted to fetch my kernel from my internal git/ssh repository. I was
      not sure where to put the username (git://foo@bar or git://bar;user=foo)
      so I was experimenting a bit. This triggered me being banned from my
      server (fail2ban) so the git process on the buildhost got stuck and I
      backgrounded bitbake with CTRL+Z.

    - Then I tried bitbake -cfetch virtual/kernel again and it didn't do anything,
      it took me a while to think that it might wait on a lock. I think it would be
      great if this could be printed somewhere (if my understanding of this is
      correct).

    - Also it was not obvious to find out which of the two fetchers are used..


Adding a kernel:
     - So by default the linuxdummy is used, but I wanted to build my kernel,
       I started off by copying the yocto kernel recipes. This creates a very funny
       bug. My kernel didn't have the meta branch, the task to test the branches
       executes git log for the branch and this is failing.
       The symptoms are not obvious at all. An empty log file is left behind.

     - I was using the yocto kernel recipes incorrectly and ended up with a logfile
       that pointed to itself for details but nothing else.

     - In the end I used a minimal kernel recipe, it would be nice to either have
       an easy way to 'produce' a yocto like kernel of a simple kernel recipe in
       the skeletons.

Python Exceptions:
     - Building something that is not provided gives a python exception
     - Adding a task that does not exist gives a python exception
     - I think it would be nice to have meaningful error messages. Specially
       the laters runs into something like:
      if not Data:
           print "BLA BLA"
      use(data)

Machine Extra Depends:
     - I was using the core-minimal-image but wanted to have some of my
       kernel modules installed. After finding the name that task-core-boot
       is using I tried to do bitbake -cclean task-core-boot; bitbake the-image
       but this didn't end up with a task-core-boot to carry my depends.
       I had to resort to using bitbake -b task-core-boot.bb to build  it, I am not
       sure why it failed when running from within the normal bitbake. IIRC it
       continued to be like this even after I removed tmp/cache.

I hope this point of view is helpful.





