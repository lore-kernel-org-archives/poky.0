Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E562D4C800BB
	for <poky@yoctoproject.org>; Thu, 12 May 2011 14:08:48 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 12:08:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,359,1301900400"; d="scan'208";a="746405243"
Received: from unknown (HELO [10.255.12.88]) ([10.255.12.88])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 12:08:39 -0700
Message-ID: <4DCC3037.1050307@linux.intel.com>
Date: Thu, 12 May 2011 12:08:39 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1305195651.git.xiaofeng.yan@windriver.com>
	<6bb4510297af2c6b6dcaffb4fb231bd710efdd63.1305195651.git.xiaofeng.yan@windriver.com>
In-Reply-To: <6bb4510297af2c6b6dcaffb4fb231bd710efdd63.1305195651.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-qt3: Add discription to README
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
X-List-Received-Date: Thu, 12 May 2011 19:08:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/12/2011 03:34 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Discriptin about how to compile qt3 and install it to image.
>
Can you please use a spell checker.

Also, you need to provide more details below.  If there is someone that 
can help you with the README, that would be very helpful.

I was not sure if the DISTRO setting was required, so please update the 
whole README.

Thanks
	Sau!

> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   README |    9 +++++++++
>   1 files changed, 9 insertions(+), 0 deletions(-)
>
> diff --git a/README b/README
> index 9be700e..d615392 100644
> --- a/README
> +++ b/README
> @@ -6,3 +6,12 @@ conf/bblayers.conf file.
>
>   You may also have to set DISTRO = "poky-lsb" in your conf/local.conf
>   file.
> +
> +How to include library qt3 in image which you build:
> +1 For lsb-image
> +  pc$ bitbake core-image-lsb-qt3
> +2 For non-lsb-image
> +  -Compile
> +   pc$ bitbake qt-x11-free
> +  -Install qt3 to image
> +   In this way, you need add "qt-x11-free" to your core-image-*.bb file.


