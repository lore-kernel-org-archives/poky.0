Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C7C4C4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 06:09:36 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FB9X6C017356;
	Tue, 15 Mar 2011 11:09:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17256-02; Tue, 15 Mar 2011 11:09:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FB9QCw017350
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 11:09:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4D7F1582.2010107@linux.intel.com>
References: <cover.1300146920.git.dvhart@linux.intel.com>
	<cc3e525fdb480d6b86637afa7b4c8d947d32304b.1300146920.git.dvhart@linux.intel.com>
	<1300152074.30423.953.camel@rex>  <4D7F1582.2010107@linux.intel.com>
Date: Tue, 15 Mar 2011 11:09:18 +0000
Message-ID: <1300187358.30423.1553.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] qemux86-64: Enable latencytop and profiling (temporary)
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
X-List-Received-Date: Tue, 15 Mar 2011 11:09:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 00:30 -0700, Darren Hart wrote:
> 
> On 03/14/2011 06:21 PM, Richard Purdie wrote:
> > On Mon, 2011-03-14 at 16:54 -0700, Darren Hart wrote:
> >> From: Darren Hart<dvhart@linux.intel.com>
> >>
> >> Pull URL: git://git.pokylinux.org/poky-contrib.git
> >>    Branch: dvhart/kernel
> >>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/kernel
> >>
> >> Thanks,
> >>      Darren Hart<dvhart@linux.intel.com>
> >> ---
> >>
> >>
> >> Darren Hart (1):
> >>    qemux86-64: Enable latencytop and profiling (temporary)
> >>
> >>   meta/recipes-kernel/linux/linux-yocto_git.bb |    4 ++++
> >>   1 files changed, 4 insertions(+), 0 deletions(-)
> >
> > Merged into OECore and Poky master.
> 
> Gah, my note in response to my post was bounced (wrong email address). I 
> said that this patch should only go to bernard and master would get the 
> update from Bruce to linux-yocto naturally. It's fine though, we can 
> revert this patch later.

We don't take patches for Bernard unless the problem is fixed in master
too.

Cheers,

Richard


