Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F9344C80BCF
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 12:31:49 -0600 (CST)
Received: from gandalf.denix.org ([unknown] [71.255.227.242])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LBM0055CRGSI2B2@vms173017.mailsrvcs.net> for
	poky@yoctoproject.org; Tue, 09 Nov 2010 12:31:45 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 0EAC614AF6C; Tue,
	09 Nov 2010 13:31:40 -0500 (EST)
Date: Tue, 09 Nov 2010 13:31:40 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Scott Garman <scott.a.garman@intel.com>
Message-id: <20101109183140.GC8761@denix.org>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
	<4CD98D69.5020003@intel.com>
MIME-version: 1.0
In-reply-to: <4CD98D69.5020003@intel.com>
User-Agent: Mutt/1.5.16 (2007-06-09)
Cc: poky@yoctoproject.org
Subject: Re: Introduction and Request for HTTP Git Access
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
X-List-Received-Date: Tue, 09 Nov 2010 18:31:49 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Nov 09, 2010 at 10:05:29AM -0800, Scott Garman wrote:
> On 11/09/2010 08:31 AM, Ryan_D_Phillips@Dell.com wrote:
>> Good Day!
>>
>> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux
>> Developer, currently a software developer architecting an embedded
>> firmware solution on OE for my employer. With the release of Yocto,
>> we are extremely interested in trying it out and possibly
>> contributing to the project. My cohort working with me is Sean Hudson
>> (irc: darknighte), and is someone who you may see contributions from
>> as well.
>>
>> A major stumbling block we must work around is the restrictive
>> firewall and git checkouts. We have found out the git-http-backend
>> works extremely well, and are requesting this support on
>> git.pokylinux.org. We suspect other people within larger corporations
>> would have a similar problem, and by adding this support would help
>> the community at large.
>>
>> I can help out in any way possible.
>
> Hi Ryan,
>
> I just added a page to our wiki that details instructions for getting up
> and running with Poky behind a SOCKS proxy server:
>
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Hmm, quite interesting. Looks like Richard finally saw the light at the end of 
the tunnel, so to speak, :) and you guys started using standard environment 
variables - http_proxy, ftp_proxy, no_proxy and GIT_PROXY_COMMAND, passing 
them through bitbake to the external fetchers. At least it appears this way 
from reading the above Wiki instructions... As we have almost the same exact 
instructions to work inside TI.

2 years ago I tried convincing Richard to switch from non-standard HTTP_PROXY* 
and FTP_PROXY* bitbake variables to the standard ones, but wasn't successful[1].
So I had to fork bitbake and make the changes myself for our Arago Project, 
rebasing them later against the final 1.8.18 version of bitbake[2].

Richard, that's what I mentioned during OEDEM couple weeks ago. I was going to 
squash my changes, rebase them against 1.10 or master and post them to the 
bitbake mailing list...

[1] http://thread.gmane.org/gmane.comp.handhelds.openembedded/19716
[2] http://arago-project.org/git/?p=arago-bitbake.git;a=summary

-- 
Denys

