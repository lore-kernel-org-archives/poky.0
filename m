Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2D094C8085F
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 11:39:26 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2011 09:39:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,333,1291622400"; d="scan'208";a="647824532"
Received: from unknown (HELO helios.localnet) ([10.255.16.105])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 09:39:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org,
 Koen Kooi <koen@dominion.thruhere.net>
Date: Mon, 17 Jan 2011 17:39:11 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
In-Reply-To: <70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201101171739.11871.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 17 Jan 2011 17:39:26 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Monday 17 January 2011 17:14:59 Koen Kooi wrote:
> FWIW, there's a more comprehensive integration for qt 4.6.3 and qt 4.7.1
> available at http://cgit.openembedded.org/cgit.cgi/meta-openembedded/ .

Sounds good, I'll check it out.

(FYI I only skipped 4.7.x for simplicity in this first round of patches, 
pulling that across from OE master was going to be my next step.)

> It would be nice to get the feature rich QT stuff from OE into yocto
> instead of something that lacks features. With my TI hat on: I have
> customers using the mysql bindings. With my Koen hat on: I use the
> postgres bindings :)

Awesome :) I think we definitely want to have solid Qt4 support in Yocto, so if 
what you have in meta-openembedded is more polished then I'll start looking at 
pulling that in rather than using what's in OE master.

Cheers,
Paul

