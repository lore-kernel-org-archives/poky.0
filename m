Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F6AE0071C
	for <poky@yoctoproject.org>; Wed, 14 Sep 2011 08:18:05 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 Sep 2011 08:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,380,1312182000"; d="scan'208";a="17051680"
Received: from unknown (HELO helios.localnet) ([10.252.120.105])
	by AZSMGA002.ch.intel.com with ESMTP; 14 Sep 2011 08:18:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 14 Sep 2011 16:18:02 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1315327540.git.dvhart@linux.intel.com>
	<201109141133.13235.paul.eggleton@linux.intel.com>
	<4E70C54B.4070506@linux.intel.com>
In-Reply-To: <4E70C54B.4070506@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201109141618.02210.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-yocto: linux-yocto: remove emenlow from bbappend
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 14 September 2011 16:16:27 Darren Hart wrote:
> On 09/14/2011 03:33 AM, Paul Eggleton wrote:
> > On Tuesday 06 September 2011 17:46:42 Darren Hart wrote:
> >>   linux-yocto: remove emenlow from meta-yocto bbappend
> > 
> > I notice there's still a similar line in linux-yocto_2.6.37.bbappend,
> > should this stay or also be removed?'
> 
> It should also be removed.

OK I have some related emenlow-removal patches ready, will add one for this 
also.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

