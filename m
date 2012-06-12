Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B93C8E00746
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 03:34:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5CAYCKH004403;
	Tue, 12 Jun 2012 11:34:12 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01774-02; Tue, 12 Jun 2012 11:34:08 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q5CAY6MB004391
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jun 2012 11:34:06 +0100
Message-ID: <1339497248.28854.20.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Tue, 12 Jun 2012 11:34:08 +0100
In-Reply-To: <4FD21C99.8000904@linux.intel.com>
References: <cover.1338538332.git.liezhi.yang@windriver.com>
	<abb5651cbd1e4851b0b766d44ae10984429ca3d9.1338538332.git.liezhi.yang@windriver.com>
	<4FD2158B.8070102@linux.intel.com>
	<20120608151448.GJ3140@jama.jama.net>
	<4FD21C99.8000904@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Tue, 12 Jun 2012 10:34:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-06-08 at 08:39 -0700, Darren Hart wrote:
> 
> On 06/08/2012 08:14 AM, Martin Jansa wrote:
> > On Fri, Jun 08, 2012 at 08:08:59AM -0700, Darren Hart wrote:
> >> And here I think subprocess.check_output(...) is preferred.
> > 
> > That's only in python 2.7 and newer, are distros with python-2.6 
> > unsupported now?
> > 
> > I did the same mistake in opkg-utils (patch for it is on yocto
> > ML). 
> > https://lists.yoctoproject.org/pipermail/yocto/2012-May/009182.html
> 
> Ah,
> > 
> thanks for catching that. What is the minimum python requirement?
> 
> I thought we had something in place to allow for older distributions
> to work with more modern python syntax.

We have the option of the external python tarball but we only resort to
that for really old systems. Our minimum python version is currently 2.6
and whilst there are some benefits from 2.7 (such as the process stuff),
we've not seen enough to warrant switching at this point. We have
workarounds in place for the process pieces.

Cheers,

Richard


