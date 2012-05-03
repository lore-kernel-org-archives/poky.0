Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B5FE00723
	for <poky@yoctoproject.org>; Thu,  3 May 2012 12:10:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 May 2012 12:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138583120"
Received: from unknown (HELO [10.255.12.171]) ([10.255.12.171])
	by azsmga001.ch.intel.com with ESMTP; 03 May 2012 12:09:49 -0700
Message-ID: <4FA2D7FD.4000106@linux.intel.com>
Date: Thu, 03 May 2012 12:09:49 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1335494224.git.kai.kang@windriver.com>
In-Reply-To: <cover.1335494224.git.kai.kang@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH V2 0/2] Yocto 1656: add script create-recipe base on autospectacle
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
X-List-Received-Date: Thu, 03 May 2012 19:10:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/26/2012 07:41 PM, Kang Kai wrote:
> Hi Saul,
>
> this version just rename autospectacle.pl to create-recipe because you asked.
>
> Regards,
>
> The following changes since commit 492a58cabdc053b2312712681dbcffa8270d4ea4:
>
>    self-hosted-image: Update poky revision to point at the 1.2 release branch (2012-04-24 10:21:11 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/create-recipe
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/create-recipe
>
> Kang Kai (2):
>    autospectacle.pl: pull it from meego as a base
>    create-recipe: base on autospectacle.pl to create recipe file
>
>   scripts/create-recipe | 1926 +++++++++++++++++++++++++++++++++++++++++++++++++
>   1 files changed, 1926 insertions(+), 0 deletions(-)
>   create mode 100755 scripts/create-recipe
>

Merged into OE-Core

Thanks
	Sau!

