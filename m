Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7E7084C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:13:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2010 06:13:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,288,1288594800"; d="scan'208";a="356089770"
Received: from unknown (HELO helios.localnet) ([10.255.16.35])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 06:13:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Thu, 2 Dec 2010 14:13:15 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-22-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1291135878.git.paul.eggleton@linux.intel.com>
	<cc23b209094288c749968a2933959c097ae2d3e6.1291135878.git.paul.eggleton@linux.intel.com>
	<4CF78F32.4030700@mlbassoc.com>
In-Reply-To: <4CF78F32.4030700@mlbassoc.com>
MIME-Version: 1.0
Message-Id: <201012021413.15532.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 1/1] sanity.bbclass: add check for creation of long	filenames
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
X-List-Received-Date: Thu, 02 Dec 2010 14:13:31 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 02 December 2010 12:21:06 Gary Thomas wrote:
> Is this information cached?  It's seems quite the burden
> to have to create/remove ~400 files each time on startup.

I'm not sure what you mean - this check (well, all sanity checks) should only occur once per invocation of bitbake.

Cheers,
Paul

