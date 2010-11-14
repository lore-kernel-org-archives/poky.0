Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF3AB4C80052
	for <poky@pokylinux.org>; Sun, 14 Nov 2010 11:28:23 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEHSJR4007253;
	Sun, 14 Nov 2010 17:28:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06982-04; Sun, 14 Nov 2010 17:28:15 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAEHSB7d007247
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 14 Nov 2010 17:28:11 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: R P Herrold <herrold@owlriver.com>
In-Reply-To: <alpine.LRH.1.00.1011121008220.9384@oebafba.bjyevire.pbz>
References: <4CDC6E99.4030709@intel.com> <1289537887.1272.3010.camel@rex>
	<alpine.LRH.1.00.1011121008220.9384@oebafba.bjyevire.pbz>
Date: Sun, 14 Nov 2010 17:28:08 +0000
Message-ID: <1289755688.1272.4934.camel@rex>
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
X-List-Received-Date: Sun, 14 Nov 2010 17:28:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-12 at 10:12 -0500, R P Herrold wrote:
> On Fri, 12 Nov 2010, Richard Purdie wrote:
> 
> > I suspect there is an optimisation that can be added for the rpm
> > indexing to make this incremental updating possible.
> 
> Usually naiive ('Rough') timing tests with rpm do not disable 
> un-needed checksum cross checks, key verifications, and such, 
> which are senseless in a closed or protected build environment
> 
> Publishing the testing harnesses would permit evaluation of 
> such -- absent a second person checking the methodology, it is 
> probably premature to start kinkering.  Publishing final 
> numbers without a reproduceable methodology is just not good 
> science

Whilst Saul didn't specifically mention it, these numbers come from a
build system which is designed for reproducible builds. Saul is probably
doing something like enabling the ipk or rpm package backends, then
simply running:

time bitbake poky-image-minimal

then running it again so only the rootfs generation happens. The logs
output to the console will make it clear if that is the case or not.

So the tests can easily be reproduced and I'd welcome anyone else to
look into what the rootfs task is spending its time doing. The ideas you
mention above about checksums and key verifications would be very
interesting to looking into, particularly as we're in a closed
environment.

Cheers,

Richard





