Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64F054C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 12:14:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 10:14:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="629241751"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 10:14:12 -0800
Message-ID: <4CEAB2EB.5090505@intel.com>
Date: Mon, 22 Nov 2010 10:14:03 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1289902905.1859.4.camel@eric-desktop>
In-Reply-To: <1289902905.1859.4.camel@eric-desktop>
Subject: Re: [PULL]Removing "--with-wctype-functions" for python
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
X-List-Received-Date: Mon, 22 Nov 2010 18:14:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/2010 02:21 AM, Lu Jingdong wrote:
> Subject: [PATCH 3/3] Removing --with-wctype-functions for fixing
> failures of python runtime test of LSB.
>
Jingdong,

Can you give us more information about which tests is failing and why?
We are also looking into the background as to why wctype-functions is 
enabled in Python for both OE and Poky.

Thanks
    Sau!


> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
> ---
>   meta/recipes-devtools/python/python.inc      |    1 -
>   meta/recipes-devtools/python/python_2.6.5.bb |    2 +-
>   2 files changed, 1 insertions(+), 2 deletions(-)
>
> Pull URL:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
>
>


