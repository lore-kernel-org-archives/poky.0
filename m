Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22DDE4C800B6
	for <poky@yoctoproject.org>; Wed, 25 May 2011 18:32:23 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2011 16:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,270,1304319600"; 
   d="scan'208";a="4935582"
Received: from unknown (HELO [10.255.12.133]) ([10.255.12.133])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2011 16:32:22 -0700
Message-ID: <4DDD9185.3040400@intel.com>
Date: Wed, 25 May 2011 16:32:21 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1306297759.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1306297759.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] libQtopenGL: Add this library to lsb image
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
X-List-Received-Date: Wed, 25 May 2011 23:32:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/25/2011 12:03 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
> Hi Saul,
> [YOCTO #1020]
> We make lsb test on the following platform with default "mesa-xlib" so far.
> emenlow, mpc8315e, qemux86,qemux86-64,jasperforest
> Perhaps some of them could have graphic hardware but lsb image  can pass test by default "mesa-xlib" except mpc8315e because of its limited memory
> we don't make lsb test on lsb image with "mesa-dri".
> I submit two patches to fix bug [#YOCTO 1020]
>
Did you test this with mips or arm builds?

Sau!

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: xiaofeng/opengl
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=xiaofeng/opengl
>
> Thanks,
>      Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>
>
> Xiaofeng Yan (2):
>    poky-lsb: Compile library libQtOpenGL* for building a lsb image
>    task-core-lsb: Install libQtOpenGL* to lsb image
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


