Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35362E013A2
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 04:47:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jul 2013 04:47:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,742,1367996400"; d="scan'208";a="375846382"
Received: from unknown (HELO helios.localnet) ([10.252.122.176])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2013 04:47:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Thu, 25 Jul 2013 12:47:04 +0100
Message-ID: <14175503.PQSq1zm65A@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Default root password without 'debug-tweaks'?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 25 Jul 2013 11:47:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Bryan,

On Wednesday 24 July 2013 14:56:36 Bryan Evenson wrote:
> I have an image that I built without the 'debug-tweaks' image feature, just
> to confirm that there is a root password.  Sure enough, I need to type
> something in to login as root.  Unfortunately, the default root password
> for the image is not something obvious, and I haven't been able to track
> down what the default is set to.
> 
> Does anyone know what the default root password is set to when you turn off
> the 'debug-tweaks' image feature? 

When debug-tweaks is not in IMAGE_FEATURES, there is no valid password set for 
root, i.e. the account is effectively locked.

> While we're at it, what's a good method to set the default root password to
> a different value for an image?

One way to do it would be to define a shell function in your image recipe (or a 
class that your image recipes all inherit, if you have more than one) that 
modifies ${IMAGE_ROOTFS}/etc/passwd, and then add that function to 
ROOTFS_POSTPROCESS_COMMAND.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

