Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0BFD4C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 13:15:08 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Apr 2011 11:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="413603937"
Received: from unknown (HELO [10.255.12.228]) ([10.255.12.228])
	by azsmga001.ch.intel.com with ESMTP; 04 Apr 2011 11:14:36 -0700
Message-ID: <4D9A0A8B.1000003@intel.com>
Date: Mon, 04 Apr 2011 11:14:35 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1300874241.git.kai.kang@windriver.com>
In-Reply-To: <cover.1300874241.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] libjpeg-turbo: add libjpeg-turbo for LSB lib test
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
X-List-Received-Date: Mon, 04 Apr 2011 18:15:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/23/2011 06:43 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> LSB 4.1 library test will check libjpeg.so.62, and
> libjpeg-turbo provide it.
>
Kang,

We already have a libjpeg recipe, what is wrong with that version?
It seems that the -turbo version is based on v8b, which is the current 
version for poky.

I think more information is needed.  Also, this looks like it will only 
work with x86.

Sau!

>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kangkai/distro
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/distro
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (1):
>    libjpeg-turbo: add libjpeg-turbo for LSB lib test
>
>   .../libjpeg-turbo/libjpeg-turbo_1.1.0.bb           |   23 ++++++++++++++++++++
>   1 files changed, 23 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/libjpeg-turbo/libjpeg-turbo_1.1.0.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


