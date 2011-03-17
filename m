Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69EDB4C800A4
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 06:48:50 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HBmiac020344;
	Thu, 17 Mar 2011 11:48:44 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20284-01; Thu, 17 Mar 2011 11:48:41 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2HBmWNX020338
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 17 Mar 2011 11:48:36 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <46D5E03C-9927-4F57-A6AC-7024B8478E1C@dominion.thruhere.net>
References: <cover.1299891748.git.sgw@linux.intel.com>
	<4D7ACD9C.3010002@linux.intel.com>
	<20110312023140.GA4829@sakrah.homelinux.org>
	<201103141151.12235.paul.eggleton@linux.intel.com>
	<46D5E03C-9927-4F57-A6AC-7024B8478E1C@dominion.thruhere.net>
Date: Thu, 17 Mar 2011 11:48:18 +0000
Message-ID: <1300362499.30423.1931.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 0/1] gnu-config make sure we use perl-native
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
X-List-Received-Date: Thu, 17 Mar 2011 11:48:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 13:18 +0100, Koen Kooi wrote:
> Op 14 mrt 2011, om 12:51 heeft Paul Eggleton het volgende geschreven:
> 
> > On Saturday 12 March 2011 02:31:40 Khem Raj wrote:
> >>> Back to the drawing board on why the miss-match is occuring in
> >>> Config.pm then.
> >> 
> >> somewhere there is /usr/bin/perl referred may be a cross recipe ?
> > 
> > I've hit this issue this morning, and have filed a bug report:
> > 
> >  http://bugzilla.pokylinux.org/show_bug.cgi?id=866
> > 
> > Not sure if it helps but at least it should be easy to reproduce.
> 
> I haven't checked if the OE .dev and OE core gnu-config are similar, but have a look at:
> 
> http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=be21179c5321bd0afb9221f020ac12ad75c86a3b
> http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=edcdefbf6e0675c1bcc1fc4f464f654223380e50
> 

I'm going to merge these into OE.core, thanks.

Richard


