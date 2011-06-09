Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63D574C800B6
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 15:17:36 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Jun 2011 13:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,343,1304319600"; d="scan'208";a="12141522"
Received: from unknown (HELO [10.255.12.216]) ([10.255.12.216])
	by orsmga001.jf.intel.com with ESMTP; 09 Jun 2011 13:17:35 -0700
Message-ID: <4DF12A5F.8070307@linux.intel.com>
Date: Thu, 09 Jun 2011 13:17:35 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1307533714.git.xiaofeng.yan@windriver.com>
	<6d4d6e0b58378e0a7070e6d9fc7e9085f061ee24.1307533714.git.xiaofeng.yan@windriver.com>
In-Reply-To: <6d4d6e0b58378e0a7070e6d9fc7e9085f061ee24.1307533714.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] Qt3: Add head file "cstddef" to Qt3
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
X-List-Received-Date: Thu, 09 Jun 2011 20:17:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/08/2011 07:31 PM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Failed to compile Qt3 while building lsb image with the updated library libstdc++
> and compilation tool. Qt3 reported data type "ptrdiff_t" doesn't name a type.
> Actually "ptrdiff_t" is defined in head file "cstddef".
>
> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch |   18 ++++++++++++++++++
>   recipes-qt3/qt3/qt-x11-free_3.3.7.bb          |    3 ++-
>   2 files changed, 20 insertions(+), 1 deletions(-)
>   create mode 100644 recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
>
> diff --git a/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
> new file mode 100644
> index 0000000..9a8f4b4
> --- /dev/null
> +++ b/recipes-qt3/qt3/qt-x11-free/qt3-cstddef.patch
> @@ -0,0 +1,18 @@
> +Qt3  will report "error: 'ptrdiff_t' does not name a type" while building lsb \
> +image with the updated library libstdc++ and complication tool.
> +The data type "ptrdiff_t" is defined in file cstddef.
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: xiaofeng.yan@windriver.com
> +
> +--- qt-x11-free-3.3.7/src/tools/qvaluelist.h	2006-10-19 22:25:01.000000000 +0800
> ++++ qt-x11-free-3.3.7/src/tools/qvaluelist.h.new	2011-06-07 14:57:06.288997350 +0800
> +@@ -47,6 +47,7 @@
> + #ifndef QT_NO_STL
> + #include<iterator>
> + #include<list>
> ++#include<cstddef>
> + #endif
> +
> + //#define QT_CHECK_VALUELIST_RANGE
> diff --git a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
> index 9a3bcf9..94486ed 100644
> --- a/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
> +++ b/recipes-qt3/qt3/qt-x11-free_3.3.7.bb
> @@ -9,7 +9,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.GPL;md5=b07b0d5ac6b1822effe47173a1744433 \
>   SRC_URI = "ftp://ftp.trolltech.com/qt/source/qt-x11-free-${PV}.tar.bz2 \
>   	   file://configure.patch \
>   	   file://no-examples.patch \
> -           file://gcc4_1-HACK.patch"
> +           file://gcc4_1-HACK.patch \
> +           file://qt3-cstddef.patch"
>
>   require qt-x11-free-common.inc
>

Merged into meta-qt3

Thanks
	Sau!


