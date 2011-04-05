Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11F354C80A86
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 16:25:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p35LOxDk002969;
	Tue, 5 Apr 2011 22:24:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02920-01-2; Tue,  5 Apr 2011 22:24:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p35LLl7e001900
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Apr 2011 22:21:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <4D9A7AEC.9020206@gmail.com>
References: <1301496447.24596.100.camel@rex>  <4D9A7AEC.9020206@gmail.com>
Date: Tue, 05 Apr 2011 17:23:01 +0100
Message-ID: <1302020581.24596.494.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: lconfig-native is not endian safe
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
X-List-Received-Date: Tue, 05 Apr 2011 21:25:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 19:14 -0700, Khem Raj wrote:
> On 3/30/2011 7:47 AM, Richard Purdie wrote:
> > Poky has had a ldconfig-native recipe in for a while. Back in the times
> > our RPATHS were totally broken adding in an ld.so.cache was useful. In
> > modern times I'm having trouble working out when this would be useful on
> > a standard system as libraries are pretty much always in one of the two
> > default search locations.
> >
> > ldconfig-native is 32/64 bit safe. I've just been looking at PPC and it
> > is certainly not endian safe though. The endianess of the target system
> > need to match that of the build system for it to work. It wouldn't be
> > much work to make it endian safe though although the codebase will
> > diverge further from that in (e)glibc though.
> >
> 
> FWIW it does not work with uclibc as well. So it should be disabled for 
> uclibc for all arches

I've queued a patch to do this.

Cheers,

Richard


