Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B3934C80044
	for <poky@yoctoproject.org>; Wed, 10 Nov 2010 13:40:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Nov 2010 11:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,179,1288594800"; d="scan'208";a="347126147"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 10 Nov 2010 11:40:31 -0800
Message-ID: <4CDAF52F.5030303@intel.com>
Date: Wed, 10 Nov 2010 11:40:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <F8468D2C47091F478582319BFF717BA20271B93922@orsmsx504.amr.corp.intel.com>
In-Reply-To: <F8468D2C47091F478582319BFF717BA20271B93922@orsmsx504.amr.corp.intel.com>
Subject: Re: [PULL] quilt configure fix for newer versions of patch. Fix for Bug #525
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
X-List-Received-Date: Wed, 10 Nov 2010 19:40:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2010 10:57 AM, Flanagan, Elizabeth wrote:
>   meta/recipes-devtools/quilt/quilt.inc                      |    3 +-
>   meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch |   19
> +++++++++++++
>   2 files changed, 21 insertions(+), 1 deletion(-)
>
> Beth Flanagan (1):
>        quilt: Fixed configure test for patch --version.
>
> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/quilt_fix
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


