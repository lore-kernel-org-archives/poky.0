Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 064464C80FAC
	for <poky@pokylinux.org>; Mon, 15 Nov 2010 17:04:45 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAFN4gNc026964;
	Mon, 15 Nov 2010 23:04:43 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26233-10; Mon, 15 Nov 2010 23:04:38 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAFN4Xua026958
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 15 Nov 2010 23:04:34 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D2A9B5106@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D2A9B5106@shsmsx502.ccr.corp.intel.com>
Date: Mon, 15 Nov 2010 23:04:29 +0000
Message-ID: <1289862269.1272.6803.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: siggen.py: fix comparison around runtaskdeps
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
X-List-Received-Date: Mon, 15 Nov 2010 23:04:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-15 at 11:19 +0800, Tian, Kevin wrote:
> (sorry to use old pull request, as I haven't setup my box correctly yet.)
> 
>  bitbake/lib/bb/siggen.py |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> commit e0df54e800a811c355a748308218edb33f963e9a
> Author: Kevin Tian <kevin.tian@intel.com>
> Date:   Mon Nov 15 10:58:49 2010 +0800
> 
>     siggen.py: fix comparison around runtaskdeps
> 
>     two dep lists should be sorted before the comparison, or else it just
>     causes false-positive confusion.
> 
>     Also fix 'taskdeps' to 'runtaskdeps' when printing out the difference.
> 
>     Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Merged to master, thanks!

Richard


