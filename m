Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E93144C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 18:52:39 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 16:52:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,236,1301900400"; d="scan'208";a="735280303"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 16:52:39 -0700
Message-ID: <4DACCEC6.1080405@intel.com>
Date: Mon, 18 Apr 2011 16:52:38 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1302847580.git.kai.kang@windriver.com>
In-Reply-To: <cover.1302847580.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] jpeg: add link libjpeg.so.62 for LSB library test
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
X-List-Received-Date: Mon, 18 Apr 2011 23:52:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/15/2011 03:25 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> LSB test just test whether libjpeg.so.62 exists, and no more use of it.
> So just make link to pass library check.
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: kankang/libjpeg
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kankang/libjpeg
>
> Thanks,
>      Kang Kai<kai.kang@windriver.com>
> ---
>
>
> Kang Kai (1):
>    jpeg: add link libjpeg.so.62 for LSB library test
>
>   meta/recipes-core/jpeg/jpeg_8b.bb |   13 ++++++++++++-
>   1 files changed, 12 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into Master

Thanks
	Sau!


