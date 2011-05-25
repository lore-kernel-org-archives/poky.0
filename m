Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03DA54C80A5B
	for <poky@yoctoproject.org>; Wed, 25 May 2011 18:25:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 16:25:34 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2011 16:25:34 -0700
Message-ID: <4DDD8FED.8040703@intel.com>
Date: Wed, 25 May 2011 16:25:33 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1306359969.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1306359969.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org, Jeff Osier-mixon <jeffrey.osier-mixon@intel.com>
Subject: Re: [PATCH V2 0/1] README.hardware: update installation	instructions for beagleboard
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
X-List-Received-Date: Wed, 25 May 2011 23:25:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/25/2011 02:49 PM, Darren Hart wrote:
> Thanks to Bruce for testing, Koen for noting changes in the uboot commands.
> Jefro, please review and provide an Ack or suggestions for change.
>
> The following changes since commit 1607d7b6809eb3f0aa8d09713a4e467a1f4585a2:
>
>    IMAGE_ROOTFS_SIZE: Cleanup machine conf files (2011-05-25 14:07:37 -0700)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/docs
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/docs
>
> Darren Hart (1):
>    README.hardware: update installation instructions for beagleboard
>
>   README.hardware |   44 ++++++++++++++++++++++++++++----------------
>   1 files changed, 28 insertions(+), 16 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into master and cherry-picked to bernard.

Thanks for sticking with that one!

Sau!


