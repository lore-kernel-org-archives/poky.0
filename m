Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6AEC4C803D6
	for <poky@yoctoproject.org>; Tue, 24 May 2011 12:47:35 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 May 2011 10:47:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,262,1304319600"; 
   d="scan'208";a="6859443"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by fmsmga002.fm.intel.com with ESMTP; 24 May 2011 10:47:34 -0700
Message-ID: <4DDBEF35.50506@linux.intel.com>
Date: Tue, 24 May 2011 10:47:33 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1305717523.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305717523.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] [YOCTO #1079]: Rename this file and add a link	for lsb test
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
X-List-Received-Date: Tue, 24 May 2011 17:47:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2011 04:23 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Fix bug [YOCTO #1079], It could be not the most solution for this bug but could pass lsb test
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/lsb
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/lsb
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    lsbsetup: Rename this file and add a link for lsb test
>
>   meta/recipes-extended/lsb/lsbsetup_0.9.bb |   25 -------------------------
>   meta/recipes-extended/lsb/lsbsetup_1.0.bb |   27 +++++++++++++++++++++++++++
>   2 files changed, 27 insertions(+), 25 deletions(-)
>   delete mode 100644 meta/recipes-extended/lsb/lsbsetup_0.9.bb
>   create mode 100644 meta/recipes-extended/lsb/lsbsetup_1.0.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into oe-core

Thanks
	Sau!


