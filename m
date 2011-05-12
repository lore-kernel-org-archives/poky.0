Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 96C114C81050
	for <poky@pokylinux.org>; Thu, 12 May 2011 04:23:33 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4C9NUw8030652;
	Thu, 12 May 2011 10:23:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30262-07; Thu, 12 May 2011 10:23:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4C9NOnD030646
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 12 May 2011 10:23:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4DCB16BC.4040205@linux.intel.com>
References: <iqessi$mok$1@dough.gmane.org> <4DCB16BC.4040205@linux.intel.com>
Date: Thu, 12 May 2011 10:23:17 +0100
Message-ID: <1305192197.30391.490.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: No rootfs for beagleboard after bernard 5.0
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
X-List-Received-Date: Thu, 12 May 2011 09:23:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 16:07 -0700, Darren Hart wrote:
> 
> On 05/11/2011 01:51 PM, Robert Berger wrote:
> > Hi,
> > 
> > I'm trying to build poky-image-sato-sdk branch bernard-5.0.1 for the
> > beagleboard. It has the following error:
> > 
> > ERROR: Function 'File:
> > '/work/rber/poky-bernard-5.0.1-arm-beagle/downloads/distcc-2.18.3.tar.bz2'
> > has md5 checksum 2279f50fe7b688c8d6762a3e095a302a when
> > 0d6b80a1efc3a3d816c4f4175f63eaa2 was expected (from URL:
> > 'http://distcc.samba.org/ftp/distcc/distcc-2.18.3.tar.bz2')' failed
> 
> Please try a couple things:
> 
> 1) refetch distcc
>    $ bitbake -c fetch -f distcc

I'd recommend trying:

bitbake distcc -c cleanall

then

bitbake distcc -c fetch

as this will force a clean out of any existing "bad" state that might
exist. The -f option means rerun the task even if bitbake doesn't think
it needs to run but it will not wipe out files in DL_DIR.

Cheers,

Richard


