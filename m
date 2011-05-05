Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8D3B4C8008F
	for <poky@pokylinux.org>; Thu,  5 May 2011 18:31:22 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>)
	id 1QI80t-0000im-B0; Fri, 06 May 2011 03:31:19 +0400
Message-ID: <4DC3334C.9030509@emcraft.com>
Date: Fri, 06 May 2011 03:31:24 +0400
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110402 Icedove/3.1.9
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <4DC186D1.30302@emcraft.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950116E73F04@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950116E73F04@orsmsx504.amr.corp.intel.com>
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: opkg and opkg-target aliases for the SDK
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
X-List-Received-Date: Thu, 05 May 2011 23:31:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Jessica,

On 04.05.2011 21:21, Zhang, Jessica wrote:
> The removal was part of the changes made for adt-installer which is a new feature for Yocto 1.0 release.  The old opkg and opkg-target aliases in the environment script was for add packages to the locked location of toolchain(aka SDK) and target sysroot.  With Yocto 1.0 and adt-installer, it's still using opkg to install toolchain under /opt/poky/ but the sysroot is now a customized location that can be anywhere, which is specified in the adt_intaller.conf file...

I see. Still as we are meta-toolchain users we are going to miss them...
Or is meta-toolchain going to be abandoned and we should move to
adt-installer?

Thanks for your comments.

Regards, Ilya.

