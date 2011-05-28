Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABCB14C800AF
	for <poky@pokylinux.org>; Sat, 28 May 2011 13:35:23 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QQOM6-00023i-58
	for poky@pokylinux.org; Sat, 28 May 2011 20:35:22 +0200
Received: from 79.167.216.169 ([79.167.216.169])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 28 May 2011 20:35:22 +0200
Received: from gmane by 79.167.216.169 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 28 May 2011 20:35:22 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 28 May 2011 21:35:06 +0300
Organization: Reliable Embedded Systems
Message-ID: <irrf8q$pfa$1@dough.gmane.org>
References: <loom.20110527T192603-897@post.gmane.org>
	<4DE0002B.2000206@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.216.169
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DE0002B.2000206@linux.intel.com>
Subject: Re: Impressions of using Poky to create a BSP
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 28 May 2011 18:35:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 05/27/2011 10:48 PM, Darren Hart wrote:
>>
>> Adding a kernel:
>>      - So by default the linuxdummy is used, but I wanted to build my kernel,
>>        I started off by copying the yocto kernel recipes. This creates a very funny
>>        bug. My kernel didn't have the meta branch, the task to test the branches
>>        executes git log for the branch and this is failing.
>>        The symptoms are not obvious at all. An empty log file is left behind.
> 
> 
> This is probably best dealt with a kernel recipe writing manual. We have
> a few things like this forming, but nothing tangible yet.
> 
> 

I'm currently building a manufacturer supplied 3rd party kernel and
u-boot outside of yocto/poky to avoid all this trouble.

It's the classic case of a non mainline 3rd party kernel + patch + config

If it's easy enough to create a BSP this would be my preferred solution
and it would probably also be a good use case for such a manual.

If you have some documentation (even preliminary) I'm willing to work
with the people involved to come up with something more substantial. (me
being the one testing how well the instructions work for my 3rd party
kernel)

The goal would be to end up with something not much more difficult than
building the stuff outside of yocto/poky;)

Regards,

Robert

..."Experience is that marvelous thing that enables you recognize a
mistake when you make it again." - F. P. Jones

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



