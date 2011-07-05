Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 514E24C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 10:14:36 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65FEXHX032574;
	Tue, 5 Jul 2011 16:14:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32096-09; Tue,  5 Jul 2011 16:14:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p65FERFg032568
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jul 2011 16:14:28 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <b5b0312005639c617b40ce2c0f6860eb08ba28a8.1309412032.git.xiaofeng.yan@windriver.com>
References: <cover.1309412032.git.xiaofeng.yan@windriver.com>
	<b5b0312005639c617b40ce2c0f6860eb08ba28a8.1309412032.git.xiaofeng.yan@windriver.com>
Date: Tue, 05 Jul 2011 16:13:56 +0100
Message-ID: <1309878836.20015.720.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-lsb: Change provider of virtual/libx11 to libx11-trim
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
X-List-Received-Date: Tue, 05 Jul 2011 15:14:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-01 at 17:36 +0800, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> BUG 1196 reports  compilation error like the following information from package startup-notification  when the provider of virtual/libx11 was libx11
> | configure: error: Cannot find x11-xcb
> | ERROR: oe_runconf failed
> | ERROR: Function 'do_configure' failed (see
> 
> Fix [BUGID #1196]
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  meta-yocto/conf/distro/poky-lsb.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
> index 49d12da..5385012 100644
> --- a/meta-yocto/conf/distro/poky-lsb.conf
> +++ b/meta-yocto/conf/distro/poky-lsb.conf
> @@ -4,6 +4,6 @@ DISTRO = "poky-lsb"
>  DISTROOVERRIDES = "poky:linuxstdbase"
>  
>  DISTRO_FEATURES_append = " pam largefile"
> -PREFERRED_PROVIDER_virtual/libx11 = "libx11"
> +PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
>  

This looks like a backwards step. Why is libx11 not pulling in xcb as I
suspect it should be...

Cheers,

Richard


