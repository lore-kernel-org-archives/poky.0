Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA93A4C80FFE
	for <poky@yoctoproject.org>; Wed, 11 May 2011 19:01:48 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2011 17:01:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,355,1301900400"; 
   d="scan'208";a="1106506"
Received: from unknown (HELO [10.255.12.51]) ([10.255.12.51])
	by fmsmga001.fm.intel.com with ESMTP; 11 May 2011 17:01:35 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 11 May 2011 17:01:30 -0700
In-Reply-To: <4DCB1F2F.1090701@mlbassoc.com>
References: <4DCB1F2F.1090701@mlbassoc.com>
X-Mailer: Evolution 3.0.1 (3.0.1-1.fc15) 
Message-ID: <1305158495.2133.5.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Setting image size
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
X-List-Received-Date: Thu, 12 May 2011 00:01:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 17:43 -0600, Gary Thomas wrote:
> I'm trying to increase the size of the pseudo disk used by Qemu.
> The variable IMAGE_ROOTFS_SIZE sets this.  If I add
>    IMAGE_ROOTFS_SIZE_ext3=512000
> to conf/local.conf, I get what I want.
> 
> So why doesn't this work (without any changes to local.conf)?
>    IMAGE_ROOTFS_SIZE_ext3=512000 bitbake core-image-sato
> 

The IMAGE_ROOTFS_SIZE variable is cleaned from the environment.

Variables which can be set from the shell at invocation are defined in
BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE.

Does something like:

BB_ENV_EXTRAWHITE="IMAGE_ROOTFS_SIZE $BB_ENV_EXTRAWHITE"
IMAGE_ROOTFS_SIZE_ext3=512000 bitbake core-image-sato

do what you want?

Joshua
-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


