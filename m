Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9B6B4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 09:10:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 07:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,351,1291622400"; d="scan'208";a="594832799"
Received: from unknown (HELO helios.localnet) ([10.255.16.99])
	by orsmga002.jf.intel.com with ESMTP; 20 Jan 2011 07:09:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Thu, 20 Jan 2011 15:09:26 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<4D35F748.4010002@linux.intel.com>
In-Reply-To: <4D35F748.4010002@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201101201509.26774.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Thu, 20 Jan 2011 15:10:33 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 18 January 2011 20:25:44 Saul Wold wrote:
> Over all this patch set looks good.
> 
> One minor nit, for some of the new packages you did not include the
> SRC_URI checksum information for md5 and sha256, can you please add
> these and re-submit.

OK, I will ensure all recipes have those in the next revision. (At the moment 
I am reworking the patchset to incorporate what Koen has done in meta-
openembedded.)

Cheers,
Paul

