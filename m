Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED9AA4C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 08:22:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65DMJMT031547;
	Tue, 5 Jul 2011 14:22:19 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31191-07; Tue,  5 Jul 2011 14:22:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65DMB3p031541
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 14:22:11 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <3a728701a11e9fdc2d74c802e0f39cb97b281751.1309867650.git.xiaofeng.yan@windriver.com>
References: <cover.1309867650.git.xiaofeng.yan@windriver.com>
	<3a728701a11e9fdc2d74c802e0f39cb97b281751.1309867650.git.xiaofeng.yan@windriver.com>
Date: Tue, 05 Jul 2011 14:21:39 +0100
Message-ID: <1309872099.20015.706.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] libQtOpenGL: Install libQtOpenGL to an lsb image
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
X-List-Received-Date: Tue, 05 Jul 2011 13:22:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-05 at 20:11 +0800, Xiaofeng Yan wrote:
> Library "libQtOpenGL" is needed by an lsb image. So I add it to task-core-lsb.bb
> Fix Bug [YOCTO #1020]
> 
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  meta-yocto/conf/distro/poky-lsb.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
> index 355161b..404c3ec 100644
> --- a/meta-yocto/conf/distro/poky-lsb.conf
> +++ b/meta-yocto/conf/distro/poky-lsb.conf
> @@ -3,7 +3,7 @@ require conf/distro/poky.conf
>  DISTRO = "poky-lsb"
>  DISTROOVERRIDES = "poky:linuxstdbase"
>  
> -DISTRO_FEATURES_append = " pam"
> +DISTRO_FEATURES_append = " pam largefile opengl"
>  PREFERRED_PROVIDER_virtual/libx11 = "libx11"
>  

Merged to master, thanks.

Richard



