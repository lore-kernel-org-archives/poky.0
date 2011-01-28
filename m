Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A7E4C812B7
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 11:25:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2011 09:25:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,393,1291622400"; d="scan'208";a="652177985"
Received: from unknown (HELO helios.localnet) ([10.255.16.173])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2011 09:25:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Fri, 28 Jan 2011 17:25:49 +0000
User-Agent: KMail/1.13.5 (Linux/2.6.35-24-generic-pae; KDE/4.5.1; i686; ; )
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
	<93afb5a16a88cd026eea90a6b9af98445fdbdd93.1296174472.git.paul.eggleton@linux.intel.com>
	<1296228440.2704.24.camel@scimitar>
In-Reply-To: <1296228440.2704.24.camel@scimitar>
MIME-Version: 1.0
Message-Id: <201101281725.50062.paul.eggleton@linux.intel.com>
Subject: Re: [PATCH 08/11] qt4: Add qt4-tools-nativesdk based on qt4-tools-sdk from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 17:25:54 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Friday 28 January 2011 15:27:20 Joshua Lock wrote:
> On Fri, 2011-01-28 at 00:36 +0000, Paul Eggleton wrote:
> > From: Paul Eggleton <paul.eggleton@linux.intel.com>
> > 
> > Differences from OpenEmbedded qt4-tools-sdk:
> > 
> > * Convert to nativesdk and make fixes necessary to build
> 
> Any reason why this wouldn't be based on the same recipe as
> qt4-tools-native?

Possibly; it took a few hacks to get the nativesdk recipe to build though and 
I'm not sure that they are necessary for the native recipe. I think this is 
something that could be left for a future update unless there are violent 
objections, in which case I'll have to rework this after I get back from 
holiday (about 3 weeks time).

Cheers,
Paul

