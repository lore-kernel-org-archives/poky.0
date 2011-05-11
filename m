Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E06644C80AE6
	for <poky@yoctoproject.org>; Wed, 11 May 2011 11:16:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BGG8Kt021733;
	Wed, 11 May 2011 17:16:08 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21623-02; Wed, 11 May 2011 17:16:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4BGG27s021727
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 May 2011 17:16:02 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Date: Wed, 11 May 2011 17:15:56 +0100
Message-ID: <1305130556.30391.394.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 00/16] fixes related to gcc 4.6.0 & patch upstream-status fields
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
X-List-Received-Date: Wed, 11 May 2011 16:16:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-05-10 at 14:16 -0700, Nitin A Kamble wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin/misc
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

> Khem Raj (1):
>   gcc-4.6.0: Apply linaro patches
> 
> Nitin A Kamble (15):
>   mdadm: compilation fix for gcc 4.6.0
>   pax: fix for compiling with gcc 4.6.0
>   systemtap: fix for compilation with gcc 4.6.0
>   kexec-tools: fix compiler errors with gcc 4.6.0
>   libzypp: fix compilatoin with gcc 4.6.0
>   libpcre: fix the Upstream-Status format
>   tar: fix Upstream-Status format
>   sat-solver: fix Upstream-Status format
>   cpio: fix upstream-status format
>   subversion: fix upstream-status format
>   python-imaging: fix upstream-status format
>   patch-2.5.9: fix upstream-status format
>   patch-2.6.1: fix upstream-status format
>   binutils: fix upstream status format
>   gcc-4.5.1: fix upstream-status format

Merged to master but I squashed all the upstream-status patches into one
patch since I didn't see the need for as many commits all making the
same logical change.

Cheers,

Richard


