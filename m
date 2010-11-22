Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFA9B4C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 11:47:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 09:47:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="860239850"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2010 09:47:56 -0800
Message-ID: <4CEAACCB.8080103@intel.com>
Date: Mon, 22 Nov 2010 09:47:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290036267.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290036267.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 0/2] tar: upgrade to version 1.25
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
X-List-Received-Date: Mon, 22 Nov 2010 17:47:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 03:24 PM, Scott Garman wrote:
> Saul,
>
> This pull request includes a trivial upgrade to the tar recipe and
> fixes some errors in the openssh distro tracking information.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: sgarman/tar-upgrade
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/tar-upgrade
>
> Thanks,
>      Scott Garman<scott.a.garman@intel.com>
> ---
>
>
> Scott Garman (2):
>    tar: upgrade to version 1.25
>    distro_tracking_fields.inc: update tar and openssh
>
>   .../conf/distro/include/distro_tracking_fields.inc |   15 ++++++++-------
>   meta/recipes-extended/tar/tar_1.23.bb              |    9 ---------
>   meta/recipes-extended/tar/tar_1.25.bb              |    9 +++++++++
>   3 files changed, 17 insertions(+), 16 deletions(-)
>   delete mode 100644 meta/recipes-extended/tar/tar_1.23.bb
>   create mode 100644 meta/recipes-extended/tar/tar_1.25.bb
>
Pulled into Master

Thanks
	Sau!


