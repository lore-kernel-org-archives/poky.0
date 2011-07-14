Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 47BC34C800AB
	for <poky@yoctoproject.org>; Thu, 14 Jul 2011 11:17:23 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jul 2011 09:17:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,529,1304319600"; d="scan'208";a="30329198"
Received: from unknown (HELO helios.localnet) ([10.255.17.207])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jul 2011 09:17:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 14 Jul 2011 17:17:19 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1310656158.git.paul.eggleton@linux.intel.com>
	<ba97d44dfd74473c3b790c0dedcaf362a4acf844.1310656158.git.paul.eggleton@linux.intel.com>
	<CADkTA4OEs2Bj-fmFRnW=FOENSvTXQPo86E3KbGeocD3QSF745w@mail.gmail.com>
In-Reply-To: <CADkTA4OEs2Bj-fmFRnW=FOENSvTXQPo86E3KbGeocD3QSF745w@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201107141717.19891.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/2] linux-yocto: allow configuration of MAC addresses for mpc8315e-rdb
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
X-List-Received-Date: Thu, 14 Jul 2011 16:17:23 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 14 July 2011 16:57:42 Bruce Ashfield wrote:
> The change looks fine, in the sense that it'll work, but it's a lot of
> hoops to jump through for the mac address. In the past, we've solved this
> by allowing the mac address to be specified via the bootline, which we
> could then simply drop into the boot environment and have it work more
> easily.
> 
> I didn't think of this when we were talking about this issue, but now that
> I see the change ... it's been faulted into the right memory banks.
> 
> I'll dig up these patches, and we can take them for a spin and hopefully we
> can drop this part of the series.

If we have a better solution that would make things easier for the user I'd 
definitely prefer it over this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

