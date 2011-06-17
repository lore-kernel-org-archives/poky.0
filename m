Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D32DB4C8009D
	for <poky@yoctoproject.org>; Fri, 17 Jun 2011 05:44:08 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Jun 2011 03:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,380,1304319600"; d="scan'208";a="14418547"
Received: from unknown (HELO helios.localnet) ([10.255.16.248])
	by azsmga001.ch.intel.com with ESMTP; 17 Jun 2011 03:44:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 17 Jun 2011 11:44:00 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <4DFA2CFF.6020003@emcraft.com> <4DFA5335.9030102@windriver.com>
	<BANLkTin40ecGy8RBEbfaRKEXY6Lu-YrALA@mail.gmail.com>
In-Reply-To: <BANLkTin40ecGy8RBEbfaRKEXY6Lu-YrALA@mail.gmail.com>
MIME-Version: 1.0
Message-Id: <201106171144.00118.paul.eggleton@linux.intel.com>
Cc: Chris Larson <clarson@kergoth.com>
Subject: Re: bbappend and require
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
X-List-Received-Date: Fri, 17 Jun 2011 10:44:09 -0000
Content-Type: Text/Plain;
  charset="utf-8"
Content-Transfer-Encoding: 7bit

On Thursday 16 June 2011 20:21:57 Chris Larson wrote:
> Nature of the terminology being used, it's unclear whether 'require'
> means 'recipe dependency' or 'the bitbake "require" command' in this
> context :)

I think it's clear from Ilya's message that he means the require command. To 
me it's not clear however whether using "require" (or "include" for that 
matter) means that bbappends should also be included. I can certainly see how 
someone could assume that they would be.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

