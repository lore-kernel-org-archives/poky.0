Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C619E4C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:31:26 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2011 14:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="630686867"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2011 14:31:25 -0700
Message-ID: <4DACADAD.1010601@linux.intel.com>
Date: Mon, 18 Apr 2011 14:31:25 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1302855555.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1302855555.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] task-poky-lsb: Add locale resources which are	needed by LSB Test Suite
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
X-List-Received-Date: Mon, 18 Apr 2011 21:31:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/15/2011 01:27 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Many failures is related to locale resources during lsb test. So I add them to list task-poky-lsb.bb
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/task-poky-lsb
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/task-poky-lsb
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    task-poky-lsb.bb:Add locale resoures which is needed by LSB Test
>      Suite
>
>   meta/recipes-extended/tasks/task-poky-lsb.bb |   10 ++++------
>   1 files changed, 4 insertions(+), 6 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Merged into oe-core and master

	Thanks
		Sau!

