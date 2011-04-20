Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 885254C804CA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 07:08:00 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Apr 2011 05:08:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="631448169"
Received: from unknown (HELO helios.localnet) ([10.255.13.37])
	by orsmga002.jf.intel.com with ESMTP; 20 Apr 2011 05:07:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: poky@yoctoproject.org
Date: Wed, 20 Apr 2011 13:07:57 +0100
User-Agent: KMail/1.13.5 (Linux/2.6.35-28-generic-pae; KDE/4.6.1; i686; ; )
References: <cover.1303296533.git.paul.eggleton@linux.intel.com>
	<3f93d8eda4dc873d1c732ccc297782779f7116f6.1303296533.git.paul.eggleton@linux.intel.com>
	<55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
In-Reply-To: <55494E8C-B846-41B8-B7D1-91779015006C@dominion.thruhere.net>
MIME-Version: 1.0
Message-Id: <201104201307.57996.paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 20 Apr 2011 12:08:00 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Wednesday 20 April 2011 12:31:27 Koen Kooi wrote:
> You mean meta-texasinstruments, right? Or do you yocto people really want
> to take over beagleboard? 

Firstly, I thought Richard addressed this the other day.

Secondly, I'm more than happy to contribute this and fixes like it to meta-
texasinstruments, however right now I'm not even able to determine where the 
current repository for that layer actually is, so it's a bit hard for me to do 
so. Perhaps you could tell me where it is?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre (UK)

