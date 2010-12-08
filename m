Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D69F4C8122B
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 09:56:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 07:55:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="634380966"
Received: from unknown (HELO helios.localnet) ([10.255.16.40])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 07:55:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 8 Dec 2010 15:55:57 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<201012081406.20138.paul.eggleton@linux.intel.com>
	<4CFF9907.3090901@mlbassoc.com>
In-Reply-To: <4CFF9907.3090901@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201012081555.57544.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: sstate status
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
X-List-Received-Date: Wed, 08 Dec 2010 15:56:00 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 14:41:11 you wrote:
> Query: what sort of machine do you use for this testing?  I have a
> Core-2 quad @2.4GHz with 3GB of RAM and it takes me around 5 hours
> to make a full test.

Well, it depends on what you use as a "full test". For most of my testing I just use poky-image-minimal, although I really ought to be doing poky-image-sato or something a bit more substantial on a regular basis. poky-image-minimal takes about 25 mins on my build machine (a Core i7 870 with 6GB RAM).

Cheers,
Paul

