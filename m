Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECD37E006AB
	for <poky@yoctoproject.org>; Thu, 18 Aug 2011 11:32:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Aug 2011 11:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,246,1312182000"; d="scan'208";a="41237430"
Received: from unknown (HELO helios.localnet) ([10.255.18.102])
	by fmsmga002.fm.intel.com with ESMTP; 18 Aug 2011 11:32:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 18 Aug 2011 19:32:38 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <cover.1311616990.git.bruce.ashfield@windriver.com>
	<4E2DCF1E.4030509@mentor.com> <4E4D592C.2040404@linux.intel.com>
In-Reply-To: <4E4D592C.2040404@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201108181932.38746.paul.eggleton@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>, Tom Rini <tom_rini@mentor.com>
Subject: Re: [PATCH 0/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Thu, 18 Aug 2011 18:32:30 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Thursday 18 August 2011 19:25:48 Darren Hart wrote:
> How do DEFAULT_PREFERENCE and PREFERRED_VERSION relate to each other?
> Does one trump the other?

DEFAULT_PREFERENCE is intentionally weak (says RP) and will be overridden by 
PREFERRED_VERSION_packagename if the latter is specified.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

