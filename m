Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F063F4C800AF
	for <poky@yoctoproject.org>; Fri, 13 May 2011 05:01:02 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4DA0xPF015176;
	Fri, 13 May 2011 11:00:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14779-09; Fri, 13 May 2011 11:00:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4DA0rSn015170
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 13 May 2011 11:00:53 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Date: Fri, 13 May 2011 11:00:44 +0100
Message-ID: <1305280844.19606.40.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/25] Misc commits
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
X-List-Received-Date: Fri, 13 May 2011 10:01:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-12 at 17:20 -0700, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This series includes:
> fix some gcc 4.6.0 issues
> delete some unused patches
> and lots os upstream-status updates for patches
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin.misc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin.misc
> 
> Thanks,
>     Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
> 
> 
> Nitin A Kamble (25):
>   gcc: fix target gcc runtime issue
>   tcmode-default: fix a typo
>   gcc 4.5.1 4.6.0: remove unused patches
>   python: update upstream-status for patches
>   binutils: update upstream-status for patches
>   gcc 4.5.1 4.6.0: update upstream-status for patches
>   autoconf: update upstream-status for patches
>   automake: update upstream-status for patches
>   bison: update upstream-status for patches
>   distcc: update upstream-status of patches
>   fstests: update upstream-status for patches
>   gdb: update upstream-status of patches
>   intltool: update upstream-status of patches
>   libtool: update upstream status of patches
>   linux-libc-headers: update upstream-status for patches
>   make: update upstream-status for patches
>   perl: update upstream-status for patches
>   python-pycurl: update upstream-status for patches
>   python-pygobject: update upstream status for patches
>   python-pyrex: update upstream-status for patches
>   quilt: update upstream-status of patches
>   tcl: update upstream-status for patches
>   gnu-config: update upstream-status for patches
>   gmp: update upstream-status for patches
>   m4: update upstream-status for patches

I took these except for the m4 patch and I squashed all the
upstream-status patches into one changeset.

Cheers,

Richard


