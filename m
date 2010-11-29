Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 341794C80815
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 15:58:01 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 13:58:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="578758292"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2010 13:58:00 -0800
Message-ID: <4CF421E8.3050707@intel.com>
Date: Mon, 29 Nov 2010 13:58:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1291014682.git.lei.mei@intel.com>
In-Reply-To: <cover.1291014682.git.lei.mei@intel.com>
Subject: Re: [PATCH 0/6] Update five recipes License information
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
X-List-Received-Date: Mon, 29 Nov 2010 21:58:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 11:11 PM, Mei Lei wrote:
> This contains five recipes license MD5sum update, four of them are local recipes. And also update the insane.bbclass for local recipes' license is  "n/a"
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: lmei3/chksum4
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum4
>
> Thanks,
>      Mei Lei<lei.mei@intel.com>
> ---
>
>
> Mei Lei (6):
>    insane.bbclass: Add local file checksum condition for 'n/a'
>    Keymaps:Add license checksum 'n/a' for this local recipe
>    initscripts:Add license checksum 'n/a' for local recipes
>    eee-acpi-scripts:Add license checksum 'n/a' for this local recipe
>    modutils-initscripts:Add license checksum 'n/a' for this local recipe
I did not accept these changes since we will use the suggestion from 
Richard to use ${POKYBASE}/LICENSE and ${POKYBASE}/meta/COPYING.MIT for 
the LIC_FILES_CHKSUM.

Sau!

>    gthumb:Add license checksum to bb file
>
>   meta/classes/insane.bbclass                        |    4 ++++
>   .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    2 +-
>   meta/recipes-bsp/keymaps/keymaps_1.0.bb            |    1 +
>   meta/recipes-core/initscripts/initscripts_1.0.bb   |    1 +
>   meta/recipes-gnome/gthumb/gthumb_2.12.0.bb         |    1 +
>   .../modutils/modutils-initscripts.bb               |    1 +
>   6 files changed, 9 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


