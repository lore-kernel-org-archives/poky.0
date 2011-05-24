Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7D324C800E5
	for <poky@yoctoproject.org>; Tue, 24 May 2011 01:06:40 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2011 23:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,260,1304319600"; 
   d="scan'208";a="7617047"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2011 23:05:27 -0700
Message-ID: <4DDB4AA6.9060105@linux.intel.com>
Date: Mon, 23 May 2011 23:05:26 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1306151997.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306151997.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-lsb: Add libQtOpenGL to all lsb image for	different platform
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
X-List-Received-Date: Tue, 24 May 2011 06:06:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/23/2011 05:04 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Hi Saul,
> [YOCTO #1020]
> I know you want to get a new solution to add libQtOpenGL* to image which support graphic function with graphic hardware.
> We need learn which platform support graphic function and then we can add libQtOpenGL* to corresponding qt4-x11-free_4.*.bbappend.
> If a target platform don't support graphic function, then this library should not be added to image.
> But for lsb image, as you know, library libQtOpenGL* must be included lsb image to meet lsb requirement. So I summit this patch to fix [YOCTO #1020].
> In fact, LSB can run on platform without graphic function when libQtOpenGL*.so* is supported because "meta-xlib" is default conflagration for libX11 in poky.
> As you know, opengl run on meta-xlib or meta-dri.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/opengl
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (1):
>    poky-lsb: Add libQtOpenGL* to lsb image for all platform
>
>   meta-yocto/conf/distro/poky-lsb.conf         |    2 +-
>   meta/recipes-extended/tasks/task-core-lsb.bb |   18 +-----------------
>   2 files changed, 2 insertions(+), 18 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
How much testing have you given this especially with the BSPs that do 
not have mesa-dri as a default?

Also, this should be 2 distinct patch requests, one for oe-core 
(containing meta/* changes) and the second for poky (containing 
meta-yocto/* changes).

Thanks
	Sau!


