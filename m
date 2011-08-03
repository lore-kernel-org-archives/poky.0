Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 878304C800A9
	for <poky@yoctoproject.org>; Wed,  3 Aug 2011 12:03:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73H3JaI027828;
	Wed, 3 Aug 2011 18:03:19 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27767-01; Wed,  3 Aug 2011 18:03:15 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p73H3Dmo027822
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 3 Aug 2011 18:03:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
References: <1312318248-28422-1-git-send-email-sgw@linux.intel.com>
Date: Wed, 03 Aug 2011 18:02:56 +0100
Message-ID: <1312390976.2344.712.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] atom-pc.conf: Add live image type
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
X-List-Received-Date: Wed, 03 Aug 2011 17:03:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-02 at 13:50 -0700, Saul Wold wrote:
> This change will cause the live image to be built by default
> No longer is it necessary to build a -live image type.
> 
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  meta-yocto/conf/machine/atom-pc.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
> index 6ac012f..a0a8104 100644
> --- a/meta-yocto/conf/machine/atom-pc.conf
> +++ b/meta-yocto/conf/machine/atom-pc.conf
> @@ -28,7 +28,7 @@ XSERVER ?= "xserver-xf86-dri-lite \
>  
>  MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>  
> -IMAGE_FSTYPES ?= "ext3 cpio.gz"
> +IMAGE_FSTYPES ?= "ext3 cpio.gz live"
>  
>  APPEND += "usbcore.autosuspend=1"

Merged to master, thanks.

Richard



