Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7187D4C80334
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 09:19:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Jun 2011 07:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,339,1304319600"; d="scan'208";a="10709221"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by orsmga002.jf.intel.com with ESMTP; 08 Jun 2011 07:19:09 -0700
Message-ID: <4DEF84DD.1050301@linux.intel.com>
Date: Wed, 08 Jun 2011 07:19:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1307533714.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1307533714.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-qt3 : Add a patch to pass the compiling of	qt3
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
X-List-Received-Date: Wed, 08 Jun 2011 14:19:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/08/2011 04:57 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Failed to compile qt3 because of the updated of library libstdc++ and compilation tool.
> The error information from compiling qt3 is that "error: 'ptrdiff_t' does not name a type".
> So I add head file "cstddef" which defines this data type to "qvaluelist.h" from qt3.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/meta-qt3
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/meta-qt3
>
Please rebase this patch to be against the meta-qt3 repo, not the poky 
repo, which you currently used.

Patches against meta-qt3 should be against the layer repo.

Thanks
	Sau!

> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    Qt3: Add head file "cstddef" to Qt3
>
>   recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch |   18 ++++++++++++++++++
>   recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    3 ++-
>   2 files changed, 20 insertions(+), 1 deletions(-)
>   create mode 100644 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

