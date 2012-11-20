Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F35E0141C
	for <poky@yoctoproject.org>; Tue, 20 Nov 2012 11:40:09 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Nov 2012 11:40:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,287,1352102400"; d="scan'208";a="250148456"
Received: from unknown (HELO [10.255.12.202]) ([10.255.12.202])
	by fmsmga001.fm.intel.com with ESMTP; 20 Nov 2012 11:40:08 -0800
Message-ID: <50ABDC98.70302@linux.intel.com>
Date: Tue, 20 Nov 2012 11:40:08 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <1353343804-12664-1-git-send-email-ross.burton@intel.com>
In-Reply-To: <1353343804-12664-1-git-send-email-ross.burton@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] qt4: remove qt4-x11-free bbappend
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Nov 2012 19:40:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2012 08:50 AM, Ross Burton wrote:
> This bbappend is forcibly enabling OpenGL on atom-pc and mpc8315e-rdb, but as
> Poky enables the OpenGL distro feature this option is on for all machines
> anyway.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>   meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend |    2 --
>   1 file changed, 2 deletions(-)
>   delete mode 100644 meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend
>
> diff --git a/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend b/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend
> deleted file mode 100644
> index 0c948bc..0000000
> --- a/meta-yocto-bsp/recipes-qt/qt4/qt4-x11-free_4.8.3.bbappend
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -QT_GLFLAGS_atom-pc = "-opengl"
> -QT_GLFLAGS_mpc8315e-rdb = "-opengl"
>

Merged into Poky Master

Thanks
	Sau!


