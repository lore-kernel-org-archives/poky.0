Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4A7CE0070C
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 07:55:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Apr 2012 07:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152403579"
Received: from unknown (HELO [10.255.12.89]) ([10.255.12.89])
	by fmsmga002.fm.intel.com with ESMTP; 11 Apr 2012 07:55:48 -0700
Message-ID: <4F859B74.40308@linux.intel.com>
Date: Wed, 11 Apr 2012 07:55:48 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Robert Yang <liezhi.yang@windriver.com>
References: <cover.1334033789.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1334033789.git.liezhi.yang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] beagleboard.conf: fix hardcode of virtual/xserver
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
X-List-Received-Date: Wed, 11 Apr 2012 14:55:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2012 10:00 PM, Robert Yang wrote:
> The following changes since commit 190f6d791d51aaa4cfb9f1cf932bc205ff674fb5:
>
>    runqemu-internal: Add console=tty for qemuppc and NFS (2012-04-06 01:12:47 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib robert/beagle
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/beagle
>
> Robert Yang (1):
>    beagleboard.conf: fix hardcode of virtual/xserver
>
>   meta-yocto/conf/machine/beagleboard.conf |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into Poky master

Thanks
	Sau!

