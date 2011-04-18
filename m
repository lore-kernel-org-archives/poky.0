Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E5454C804D4
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:56:03 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Apr 2011 14:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="911312514"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 18 Apr 2011 14:56:03 -0700
Message-ID: <4DACB372.7030106@intel.com>
Date: Mon, 18 Apr 2011 14:56:02 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1302597896.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1302597896.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Fix bug 794 and 796
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
X-List-Received-Date: Mon, 18 Apr 2011 21:56:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/15/2011 02:31 AM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
>
> Fix bug 794: Add "largefile" feature for LSB distro and make perl test passed.
> Fix bug 796: Add "--enable-clocale=gun" option for gcc configuration explicitly for LSB distro.
>
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
> Jingdong Lu (2):
>    gcc: Add "--enable-clocale=gnu" option for LSB.
>    poky-lsb: Add "largefile" feature for LSB distro.
>
>   meta-yocto/conf/distro/poky-lsb.conf           |    2 +-
>   meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb |    3 ++-
>   2 files changed, 3 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into Master

Thanks
	Sau!

