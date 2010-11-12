Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 862144C80815
	for <poky@pokylinux.org>; Thu, 11 Nov 2010 22:58:29 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAC4wRjT000389;
	Fri, 12 Nov 2010 04:58:27 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32187-09; Fri, 12 Nov 2010 04:58:23 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAC4wAAA000383
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 12 Nov 2010 04:58:17 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CDC6E99.4030709@intel.com>
References: <4CDC6E99.4030709@intel.com>
Date: Fri, 12 Nov 2010 12:58:07 +0800
Message-ID: <1289537887.1272.3010.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: Re: Rough timing of rpm vs opkg rootfs builds
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
X-List-Received-Date: Fri, 12 Nov 2010 04:58:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-11 at 14:30 -0800, Saul Wold wrote:
> Mark, Qing, Dongxiao:
> 
> Richard and I were talking the other day and I started a little 
> experiment with checking the timing of RPM rootfs build vs OPKG. For the 
> minimal and SDK images:
> 
> Minimal - OPKG
> real	1m39.456s
> user	1m18.693s
> sys	0m4.188s
> 
> SDK - OPKG
> real	10m50.784s
> user	6m8.059s
> sys	0m51.523s
> 
> Minimal - RPM
> real	4m25.166s
> user	6m14.503s
> sys	0m27.534s
> 
> SDK - RPM
> real	24m40.979s
> user	7m29.856s
> sys	4m25.561s
> 
> Clearly there is some work we can do with RPM, which takes more than 
> double the time, yes, I know it's doing more work, but maybe there are 
> some optimizations that can be done to improve the speed.

Actually, I'm not sure RPM should be doing much more work here.

> For the autobuilder, we build 7 SDK images, which is about 3 hours using 
> RPM vs about 75 minutes for OPKG, the Sato and LSB images are not much 
> faster so this is another place we should be looking to help our build time.
> 
> This is just another place for us to open dialog and figure out what's 
> going on.

This is good, thanks for the info.

What would be more interesting again is a breakdown of this to see how
much time is spent indexing the packages and how much is actual rootfs
generation with rpm.

I've worked on optimising this time for opkg before. The trick was to
make the package indexing incremental rather than reparsing every
package, every time which is slow. I therefore taught the package
indexer just to look at the timestamps and size of the packages, if they
change it will reindex them, if they are the same, the previous result
will be used. You need to be careful to notice when packages are removed
or added.

I suspect there is an optimisation that can be added for the rpm
indexing to make this incremental updating possible.

We might also want to also not do the package indexing under pseudo as
another idea to get some speed.

Cheers,

Richard


