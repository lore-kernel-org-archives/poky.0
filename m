Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 533824C80FA8
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 20:20:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2010 18:20:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,172,1288594800"; d="scan'208";a="346229531"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2010 18:20:05 -0800
Message-ID: <4CD8AFD4.3060606@intel.com>
Date: Mon, 08 Nov 2010 18:20:04 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1289199612.1683.4.camel@eric-desktop>
In-Reply-To: <1289199612.1683.4.camel@eric-desktop>
Subject: Re: [PULL]Fix moving libtcl8.5.so into tcl-lib.
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
X-List-Received-Date: Tue, 09 Nov 2010 02:20:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2010 11:00 PM, Lu Jingdong wrote:
> Note:<commit_id>  parameter assumed as 'HEAD'
>
>    meta/recipes-devtools/tcltk/tcl_8.5.8.bb                 |    4
>    1 files changed, 2 insertions(+), 2 deletions(-)
>
> Jingdong Lu (1):
>        Fix moving libtcl8.5.so into tcl-lib.
>
> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
Jingdong:

Can you give some additional rational as to why this change is needed, 
other recipes use the "so.*" format vs the "so*".

Thanks
	Sau!

