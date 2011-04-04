Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABA574C80593
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 17:57:09 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34Mv2hk023170;
	Mon, 4 Apr 2011 23:57:02 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22731-08; Mon,  4 Apr 2011 23:56:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34MuvW5023164
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 23:56:57 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
In-Reply-To: <cover.1301921659.git.nitin.a.kamble@intel.com>
References: <cover.1301921659.git.nitin.a.kamble@intel.com>
Date: Mon, 04 Apr 2011 23:56:53 +0100
Message-ID: <1301957813.24596.417.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/3] ldconfig cache generation in cross way
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
X-List-Received-Date: Mon, 04 Apr 2011 22:57:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-04 at 05:56 -0700, Nitin A Kamble wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This brings few commits related to the yocto bug #780
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: nitin/bug780
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/bug780
> 
> Thanks,
>     Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
> 
> 
> Nitin A Kamble (3):
>   image.bbclass: make execution ldconfig verbose
>   libxcb: fix for broken library link in the image
>   ldconfig-native-2.12.1: newer recipe with eglibc sources

Merged to master, thanks.

Richard


