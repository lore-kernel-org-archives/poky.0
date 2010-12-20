Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C3384C80050
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 07:09:45 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKDB3rm021951; Mon, 20 Dec 2010 13:11:03 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6Fc7s62X3EfI; Mon, 20 Dec 2010 13:11:03 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKDArQb021919
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 13:10:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D5F409BD1@shsmsx502.ccr.corp.intel.com>
References: <1291899386.1554.827.camel@rex> <1292625845.25087.586.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409BD1@shsmsx502.ccr.corp.intel.com>
Date: Mon, 20 Dec 2010 13:09:11 +0000
Message-ID: <1292850551.25087.4341.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Performance regression in bitbake and exec() vs fork()
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
X-List-Received-Date: Mon, 20 Dec 2010 13:09:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2010-12-18 at 08:46 +0800, Tian, Kevin wrote:
> >Mark has some numbers which don't quiet add up with improvements in read
> >and sys but an increase in user too, we're still looking to understand
> >them. I'd like to give the autobuilder a pass over these changes when we
> >have the opportunity and see what that real world performance looks
> >like.
> >
> >Its likely that the speedups will be greatest on machines with small
> >numbers of cores which are primarily cpu bound. The benefits will
> >decrease on disk IO bound systems with large number of cores.
> >
> 
> any elaboration on this difference?

The exec overhead occurs in the bitbake worker processes. The more
threads that are available, the more work happens in parallel and the
less this overhead can be "seen" in the overall time profile.

Secondly, the fork overhead is 'CPU' based. If the overall build time is
IO bound and not CPU bound, the less you'll see this overhead on a time
profile.

Cheers,

Richard.


