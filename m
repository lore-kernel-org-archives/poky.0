Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 913794C81227
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 11:14:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Dec 2010 09:14:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,316,1288594800"; d="scan'208";a="358886739"
Received: from unknown (HELO helios.localnet) ([10.255.16.40])
	by azsmga001.ch.intel.com with ESMTP; 08 Dec 2010 09:14:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Wed, 8 Dec 2010 17:14:25 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-23-generic-pae; KDE/4.5.1; i686; ; )
References: <201012081402.16308.paul.eggleton@linux.intel.com>
	<4CFF9907.3090901@mlbassoc.com>
	<201012081555.57544.paul.eggleton@linux.intel.com>
In-Reply-To: <201012081555.57544.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201012081714.25951.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 08 Dec 2010 17:14:30 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 08 December 2010 15:55:57 Paul Eggleton wrote:
> poky-image-minimal takes about 25 mins on my build machine (a Core i7 870
> with 6GB RAM).

Actually that is somewhat of an underestimation. "time bitbake poky-image-minimal" tells me it actually takes about 57 minutes.

Cheers,
Paul

