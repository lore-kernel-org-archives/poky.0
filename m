Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC8ED4C80132
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 04:47:49 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Apr 2011 02:47:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,322,1299484800"; d="scan'208";a="907136462"
Received: from unknown (HELO helios.localnet) ([10.255.12.219])
	by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2011 02:47:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 8 Apr 2011 10:47:47 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
References: <inieho$3ht$1@dough.gmane.org>
In-Reply-To: <inieho$3ht$1@dough.gmane.org>
MIME-Version: 1.0
Message-Id: <201104081047.47169.paul.eggleton@linux.intel.com>
Cc: gmane@reliableembeddedsystems.com
Subject: Re: webkit with poky(yocto) on top of directfb and not X11
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
X-List-Received-Date: Fri, 08 Apr 2011 09:47:50 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 06 April 2011 20:22:31 Robert Berger wrote:
> ... but there is also a qt4-embedded package, which seems to run on top
> of directfb and has a dependency with webkit.
> 
> Does this mean, that if I build/install qt4-embedded and kill the
> X-server on a sato image that I'll have a webkit on top of directfb?
> 
> Is this supposed to be the right way to achieve webkit over directfb?

I don't know that there's one "right" way - Ke has suggested a gtk+ based 
solution, but qt4-embedded should also work in the way you described, in that 
it will provide a webkit-based web browsing widget for your application that 
can be used without X.

In this scenario you would create a recipe for your application that would 
inherit from the qt4e bbclass, and then create a custom image that would 
install your application's package, and shared library dependencies will pull 
in the appropriate Qt4-embedded packages automatically. The finishing touch 
would be an init-script that started your application on boot.

(I guess it would be useful to document some of this Qt4 stuff in a little more 
depth at some point.)

Cheers,
Paul

