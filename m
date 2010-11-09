Return-Path: <denis@denix.org>
Received: from vms173019pub.verizon.net (vms173019pub.verizon.net
	[206.46.173.19])
	by mx1.pokylinux.org (Postfix) with ESMTP id 12CE54C810CE
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 11:02:19 -0600 (CST)
Received: from gandalf.denix.org ([unknown] [71.255.227.242])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0LBM00M7ZNBKLOI0@vms173019.mailsrvcs.net> for
	poky@yoctoproject.org; Tue, 09 Nov 2010 11:02:15 -0600 (CST)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 90D1B14AF6D; Tue,
	09 Nov 2010 12:02:07 -0500 (EST)
Date: Tue, 09 Nov 2010 12:02:07 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: Ryan_D_Phillips@Dell.com
Message-id: <20101109170207.GA8761@denix.org>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
MIME-version: 1.0
In-reply-to: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
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
X-List-Received-Date: Tue, 09 Nov 2010 17:02:20 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Nov 09, 2010 at 10:31:37AM -0600, Ryan_D_Phillips@Dell.com wrote:
> Good Day!
> 
> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux Developer, 
> currently a software developer architecting an embedded firmware solution on 
> OE for my employer. With the release of Yocto, we are extremely interested 
> in trying it out and possibly contributing to the project. My cohort working 
> with me is Sean Hudson (irc: darknighte), and is someone who you may see 
> contributions from as well.
> 
> A major stumbling block we must work around is the restrictive firewall and 
> git checkouts. We have found out the git-http-backend works extremely well, 
> and are requesting this support on git.pokylinux.org. We suspect other 
> people within larger corporations would have a similar problem, and by 
> adding this support would help the community at large.

Ryan,

It's nice to see another Gentooist!

Have you looked at core.gitProxy setting or GIT_PROXY_COMMAND environment in 
git-config(1)? People behind strict firewalls been using that for years to 
tunnel their git access through proxies. Used together with things like 
netcat, socat or corkscrew work miracles even with HTTP-only proxies!

-- 
Denys

