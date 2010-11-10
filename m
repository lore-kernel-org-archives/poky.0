Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 851944C81068
	for <poky@pokylinux.org>; Wed, 10 Nov 2010 07:42:26 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADgOfL002878;
	Wed, 10 Nov 2010 13:42:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02706-04; Wed, 10 Nov 2010 13:42:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADg3D1002864
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:42:11 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CD3EF04.8030208@mlbassoc.com>
References: <4CD3EF04.8030208@mlbassoc.com>
Date: Wed, 10 Nov 2010 21:42:01 +0800
Message-ID: <1289396521.1272.294.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@pokylinux.org>
Subject: Re: A question about overrides
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
X-List-Received-Date: Wed, 10 Nov 2010 13:42:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-05 at 05:48 -0600, Gary Thomas wrote:
> I have my own distribution layer, built on the poky distribution.
> In other words, my layer defines a few basic setups, then inherits
> poky to do the rest.
> 
> For the most part, I've been successful with this.  The problem at
> hand is that for my distribution, I need to support a couple of
> different architectures and at the moment, one of them needs to
> stay in the stone age tools-wise.  In my distro.conf, I have
> lines like these to select those tools for just that architecture:
>    GCCVERSION_armv7a ?= "4.3.3"
> This works for everything (I've tried), except this:
>    POKYLIBC_armv7a ?= "glibc"
> 
> * Is there some magic I'm missing with regard to the 'POKYLIBC' symbol?
> * Perhaps there's some other way?
> 
> For now, I'm overriding this in local.conf, but that requires
> hand tuning that I'd like to avoid.

Can you be more specific about what your distro.conf file says? I'm
guessing you're requiring poky.conf in there? Are you setting the value
after the require and does it work if you do it beforehand?

I ask as that variable is used in a require in poky.conf, effectively
causing an immediate expansion of the variable so it needs to be set
before poky.conf, not afterwards.

Cheers,

Richard


