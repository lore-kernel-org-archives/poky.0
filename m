Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BEE54C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 16:25:41 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 14:25:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,235,1301900400"; d="scan'208";a="735228573"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 14:25:40 -0700
Message-ID: <4DACAC54.8080304@intel.com>
Date: Mon, 18 Apr 2011 14:25:40 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1302252022.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1302252022.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Add four variables to eglibc-package.inc for installing packages relating to locale
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
X-List-Received-Date: Mon, 18 Apr 2011 21:25:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/08/2011 01:43 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Because there are thousands of packages about locale which needed by LSB Test Suite in our poky rpms. So for installing them to lsb-image easy I define four variables which instead of thousands of locale packages in list task-poky-lsb.bb
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/eglibc-package.inc
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/eglibc-package.inc
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    eglibc-package.inc: Add eglibc-binarys, eglibc-localedatas,
>      eglibc-gconvs and eglibc-charmps to variable PACKAGE
>
>   meta/recipes-core/eglibc/eglibc-package.inc |   20 ++++++++++++++++++++
>   1 files changed, 20 insertions(+), 0 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged

Thanks
	Sau!


