Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E1F74C80B6A
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 15:19:36 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJVD4021040;
	Sun, 28 Nov 2010 21:19:31 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20810-04; Sun, 28 Nov 2010 21:19:27 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJMkj021028
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:25 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Tom Rini <tom_rini@mentor.com>
In-Reply-To: <4CE3E72E.6070904@mentor.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar>  <4CE3E72E.6070904@mentor.com>
Date: Sun, 28 Nov 2010 12:20:54 +0000
Message-ID: <1290946854.27143.65.camel@rex>
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 07:31 -0700, Tom Rini wrote:
> With old style packaged-staging we workaround this by doing:
> 
> # We want to be certain that the scene is set for us only after it's set for
> # our dependencies, to avoid problems with pstage package install order.
> do_setscene[deptask] = "do_setscene"
> 
> Can something similar be done for the sstate way of the world?

Unfortunately not. sstate differs as the code tries to be clever about
the dependencies and reverse walks the dependency tree. This means that
if:

A => B => C => D => E

where "=>" means "depends on" then sstate will try and install a sstate
package for A, then B, then C and *stop* once it finds a match.

This fixes one of the annoyances of packaged-staging where if you're
building an image and have all the ipks installed, it would still
install the cross toolchain.

Cheers,

Richard






