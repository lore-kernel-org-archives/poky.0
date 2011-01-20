Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F6084C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:43:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 15:43:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="879475594"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 15:43:32 -0800
Message-ID: <4D38C8A3.2080705@intel.com>
Date: Thu, 20 Jan 2011 15:43:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1295426481.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295426481.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4][PULL] Add "poky-lsb" distro and add lsb features into related recipes.
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
X-List-Received-Date: Thu, 20 Jan 2011 23:43:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/19/2011 12:53 AM, Jingdong Lu wrote:
> Create poky-lsb-distro to place some config change in order to pass LSB test.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jingdonglu/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
> Thanks,
>      Jingdong Lu<jingdong.lu@windriver.com>
> ---
>
>
> Jingdong Lu (4):
>    qt4: Enable accessibility and sm option for LSB.
>    glib-2.0: Enable debug option for LSB test.
>    libxml2: Enable "--with-docbook --with-debug --with-catalog" for LSB
>      test.
>    poky-lsb: Add poky-lsb.conf as distro of lsb image
>
>   meta/classes/qmake2.bbclass                   |    1 +
>   meta/conf/distro/poky-lsb.conf                |    6 ++++++
>   meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb |    2 +-
>   meta/recipes-core/glib-2.0/glib.inc           |    1 +
>   meta/recipes-core/libxml/libxml2.inc          |    1 +
>   meta/recipes-core/libxml/libxml2_2.7.7.bb     |    2 +-
>   meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb     |    2 +-
>   meta/recipes-qt/qt4/qt4.inc                   |   10 +++++++---
>   8 files changed, 19 insertions(+), 6 deletions(-)
>   create mode 100644 meta/conf/distro/poky-lsb.conf
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Jingdong,

This was pulled into Master, I know that you have some additional 
packages you want into the lsb image, can you please resend those 
changes as well.

We are going set the autobuilder up to build lsb image with 
DISTRO=poky-lsb by default.


Thanks
   Sau!

