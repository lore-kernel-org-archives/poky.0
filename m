Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 153E6E013A2
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 05:00:51 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Jul 2013 05:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,742,1367996400"; d="scan'208";a="336595435"
Received: from unknown (HELO helios.localnet) ([10.252.122.176])
	by azsmga001.ch.intel.com with ESMTP; 25 Jul 2013 05:00:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Thu, 25 Jul 2013 13:00:48 +0100
Message-ID: <1925526.xFDIqGSNAm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Default root password without 'debug-tweaks'?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Jul 2013 12:00:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
> Thank you for the explanation.  And just earlier this morning, I found this
> description of how to change the root password for an image:
> http://bec-systems.com/site/967/setting-the-root-password-in-an-openembedded
> -image.
> 
> If this would be a suggested method of performing the task, I could
> write a patch for the documentation to add the details about the
> root account being locked and the suggested method for modifying the
> root password.  If you could point me to a good place to add this
> detail, I'll send out a patch.

Hmm, that method does seem a bit messy though. Ideally there would be a simple 
method available that didn't require you to boot the target system. Presumably 
it wouldn't be too hard to do it using tools on the host.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

