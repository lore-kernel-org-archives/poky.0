Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 76FEA4C80A70
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 09:55:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Apr 2011 07:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="681550344"
Received: from unknown (HELO [10.255.12.227]) ([10.255.12.227])
	by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2011 07:55:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201104201307.57996.paul.eggleton@linux.intel.com>
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>
	<3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
	<55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
	<201104201307.57996.paul.eggleton@linux.intel.com>
Date: Wed, 20 Apr 2011 07:55:37 -0700
Message-ID: <1303311337.23006.1.camel@doubt>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] netbase: automatically bring up usb0 on BeagleBoard xM
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
X-List-Received-Date: Wed, 20 Apr 2011 14:55:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 13:07 +0100, Paul Eggleton wrote:
> On Wednesday 20 April 2011 12:31:27 Koen Kooi wrote:
> > You mean meta-texasinstruments, right? Or do you yocto people really want
> > to take over beagleboard? 
> 
> Firstly, I thought Richard addressed this the other day.
> 
> Secondly, I'm more than happy to contribute this and fixes like it to meta-
> texasinstruments, however right now I'm not even able to determine where the 
> current repository for that layer actually is, so it's a bit hard for me to do 
> so. Perhaps you could tell me where it is?

Paul is addressing an existing issue in the existing repository, not
something in response to our discussions on supporting the BBxM going
forward.

-- 
Darren Hart
Yocto Linux Kernel


