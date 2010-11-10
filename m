Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C45414C81001
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 18:36:02 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0ZkDF024945;
	Wed, 10 Nov 2010 00:35:46 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24644-05; Wed, 10 Nov 2010 00:35:41 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAA0ZWev024930
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 00:35:36 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Ryan D Phillips <ryan_d_phillips@dell.com>
In-Reply-To: <4CD9C14F.7010902@dell.com>
References: <017987BD9AB15445B9968338EC889BB1082088F12E@AUSX7MCPS301.AMER.DELL.COM>
	<4CD98D69.5020003@intel.com> <20101109183140.GC8761@denix.org>
	<4CD9C14F.7010902@dell.com>
Date: Wed, 10 Nov 2010 08:10:28 +0800
Message-ID: <1289347828.1272.78.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 10 Nov 2010 00:36:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-09 at 15:46 -0600, Ryan D Phillips wrote:
> On 11/9/2010 12:31 PM, Denys Dmytriyenko wrote:
> > On Tue, Nov 09, 2010 at 10:05:29AM -0800, Scott Garman wrote:
> >> On 11/09/2010 08:31 AM, Ryan_D_Phillips@Dell.com wrote:
> >>> Good Day!
> >>>
> >>> My name is Ryan Phillips (irc: rphillips), a former Gentoo Linux
> >>> Developer, currently a software developer architecting an embedded
> >>> firmware solution on OE for my employer. With the release of Yocto,
> >>> we are extremely interested in trying it out and possibly
> >>> contributing to the project. My cohort working with me is Sean Hudson
> >>> (irc: darknighte), and is someone who you may see contributions from
> >>> as well.
> >>>
> >>> A major stumbling block we must work around is the restrictive
> >>> firewall and git checkouts. We have found out the git-http-backend
> >>> works extremely well, and are requesting this support on
> >>> git.pokylinux.org. We suspect other people within larger corporations
> >>> would have a similar problem, and by adding this support would help
> >>> the community at large.
> >>>
> >
> 
> Hmm. I didn't mean to start a firestorm. Read only git-http-backend 
> access is something that we would find useful. As an alternative, we can 
> create repo.or.cz mirrors, but I'm not all that keen on this.

I'm travelling at the moment so I'll just keep this brief.

I'm more than happy to try and find a way to share git.yoctoproject.org
over http for cloning, that shouldn't be too hard. I'll see if I can get
something working next week although I'm meant to be taking some
vacation too.

For push access over https, that is a lot more difficult as it is
unlikely to integrate well with our access control system. I'd need to
do more reading before I could really comment on that. It appears
changes in git support it better at least.

Cheers,

Richard


