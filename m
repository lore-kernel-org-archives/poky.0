Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D1174C81216
	for <poky@yoctoproject.org>; Fri, 13 May 2011 17:32:39 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 May 2011 15:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; 
   d="scan'208";a="2012371"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by fmsmga001.fm.intel.com with ESMTP; 13 May 2011 15:32:39 -0700
Message-ID: <4DCDB186.8000407@linux.intel.com>
Date: Fri, 13 May 2011 15:32:38 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jingdong Lu <jingdong.lu@windriver.com>
References: <cover.1305106462.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1305106462.git.jingdong.lu@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]bash:enable update-alternatives to use bash as	default shell
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
X-List-Received-Date: Fri, 13 May 2011 22:32:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/11/2011 09:32 PM, Jingdong Lu wrote:
> From: Jingdong Lu<jingdong.lu@windriver.com>
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
> Jingdong Lu (1):
>    bash: enable update-alternative to use bash as default shell
>
>   meta/recipes-extended/bash/bash.inc    |    2 +-
>   meta/recipes-extended/bash/bash_4.1.bb |    2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into oe-core and poky/master

Thanks
	Sau!

