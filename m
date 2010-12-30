Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06CD14C811D1
	for <poky@pokylinux.org>; Thu, 30 Dec 2010 04:21:22 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAMotB002579; Thu, 30 Dec 2010 10:22:50 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id n0spLoPFSqmq; Thu, 30 Dec 2010 10:22:49 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAMe67002575
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 10:22:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D13401C.8080901@mlbassoc.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F6A48BD@shsmsx502.ccr.corp.intel.com>
	<1293097470.1588.567.camel@rex>  <4D13401C.8080901@mlbassoc.com>
Date: Thu, 30 Dec 2010 10:21:01 +0000
Message-ID: <1293704461.17519.9998.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about ${KERNEL_CC} and ${CC}
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
X-List-Received-Date: Thu, 30 Dec 2010 10:21:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 05:27 -0700, Gary Thomas wrote:
> On 12/23/2010 02:44 AM, Richard Purdie wrote:
> > Perf should be compiled with the userspace toolchain, not the kernel
> > one. I'd say this fix is therefore correct.
> >
> > Adding TOOLCHAIN_OPTIONS to KERNEL_CC would also probably be a good idea
> > too.
> 
> Perfect idea!  I added this and I'm now able to rebuild my
> kernel package using a sstate-cache based toolchain.  This
> should close bug #605
> 
> Patch attached for review.

There is no need to set TOOLCHAIN_OPTIONS and we need to alter both
KERNEL_CC and KERNEL_LD which both have this problem or
TOOLCHAIN_OPTIONS being missing. I've pushed a patch into master which
does this.

I've also pushed a patch to ensure the userspace compiler if used to
build perf.

Let me know if there are any more problems in this area.

Cheers,

Richard


