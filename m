Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 059714C80132
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 04:53:38 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Apr 2011 02:53:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,322,1299484800"; d="scan'208";a="907137480"
Received: from unknown (HELO helios.localnet) ([10.255.12.219])
	by fmsmga001.fm.intel.com with ESMTP; 08 Apr 2011 02:53:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 8 Apr 2011 10:53:36 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
References: <BANLkTikROqhGtMmbFA4ZJs+dwDaVpzaKxw@mail.gmail.com>
	<4D9E1645.4050500@linux.intel.com>
In-Reply-To: <4D9E1645.4050500@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201104081053.36361.paul.eggleton@linux.intel.com>
Subject: Re: Poky issues with tune-cortexa8 and a custom machine
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
X-List-Received-Date: Fri, 08 Apr 2011 09:53:39 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 07 April 2011 20:53:41 Darren Hart wrote:
> On 04/06/2011 08:53 AM, Salvatore Fassi wrote:
> > I've created a custom machine to match my hardware.
> > This hw is arm based with cortexa8 architecture, so my machine file
> > (myarm.conf) uses:
> > 
> > require conf/machine/include/tune-cortexa8.inc
> > 
> > For the image I use:
> > 
> > bitbake poky-image-minimal
> > 
> > This compiles everything fine but when it starts composing the rootfs by
> > installing ipk's I get errors about some missing packages.
> 
> Does this also happen if you use rpms instead of ipks? (Set in
> local.conf). 

I think there was a patch from Joshua post-1.0 to fix a bug that sounds like 
this one (rev e235357841311a4681c747cebcc5e51940aec606).

We should probably consider this for a point release.

Cheers,
Paul

