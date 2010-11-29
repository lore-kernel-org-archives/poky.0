Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55A384C811D3
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 07:03:49 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATD3h1R000383;
	Mon, 29 Nov 2010 13:03:43 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32363-09; Mon, 29 Nov 2010 13:03:39 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oATD3Wst000377
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 29 Nov 2010 13:03:35 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4CF2E3E7.60809@mentor.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar>  <4CE3E72E.6070904@mentor.com>
	<1290946854.27143.65.camel@rex>  <4CF2D3CE.1010108@mentor.com>
	<1290985562.14277.117.camel@rex>  <4CF2E3E7.60809@mentor.com>
Date: Mon, 29 Nov 2010 05:03:17 -0800
Message-ID: <1291035797.14277.1008.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Mon, 29 Nov 2010 13:03:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2010-11-28 at 16:21 -0700, Tom Rini wrote:
> > Putting it a different way, my point was that there is a "setscene" per
> > task but the setscene dependencies represent those of the "parent" task,
> > but are searched backwards compared to the normal logic. So setscene
> > tasks don't have dependencies in their own right, its linked to the
> > parent task the represent.
> 
> Right.  So, to restate the problem, in pstaging we have the problem of 
> the gcc/glibc dance not forcing themselves to be run forward in the 
> correct order, but we can fix that with some manual deps.  But in the 
> sstate of the world the problem is that we might find the wrong thing to 
> provide what we want and pick the wrong gcc or glibc sstate (and get a 
> -initial rather than finial)?

Without the change Kevin was talking about, it would always install the
gcc and glibc sstate but usually backwards, i.e. it would install glibc,
then overwrite it with glibc-initial, similarly, gcc-cross would be
overwritten with gcc-cross-intermediate which in turn would be
overwritten by gcc-cross-initial.

These things cause us pain in other ways, e.g. trying to bitbake
gcc-cross-intermediate and smashing the toolchain to pieces. or bumping
PR on glibc and glibc-initial and watching things break.

I maintain a belief that any file in the sysroots should come from one
recipe only and that we should fix the toolchain bootstrap to use
multiple sysroots as intermediate steps. Hopefully once that is done,
this problem goes away along with all the other related problems.

Cheers,

Richard




