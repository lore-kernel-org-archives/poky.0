Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C14DCE00D43; Sat,  6 Jul 2019 03:03:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 567 seconds by postgrey-1.32 at yocto-www;
	Sat, 06 Jul 2019 03:03:01 PDT
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D71AFE00920
	for <poky@yoctoproject.org>; Sat,  6 Jul 2019 03:03:01 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 45gn8r3Mz3z3J;
	Sat,  6 Jul 2019 11:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1562406813;
	bh=3fOaA5kUXVmMgmyuU/kXg+IGC0WG1VmIYMBPF8Avc0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZtnPxaXRmjgCzfBR7fsmWeBzfyLxRHLzlv5T/rAlzvdTwu8q0mxIs2Kespj8ZxzxW
	y4nq4li4w6DXApOG+3IFR0hOMAsGho4twfr2BFiFZOG9SYBa3mThuowY/+mAw+Gk8f
	9Nhgtdqqfy7rKyplAVeEHdKMIqSE/9NiRsJ0N+bVR43bzbG+DWdOsyuU6Gw0V0mJOv
	C9Wv+Jpl5ryR2f/GIf9BBmfzWBemP84X+Z4KA6m636eDOxMNehKJnxBr8HTW29o6zU
	0lDCYxqLNc4nu/8OAU7BabSI9RGiipildtKZegQCcSelTJDnCi2cOcagnqyPR1jz1C
	IRO3D6XjSaIii+9mywRSLwZyL1dpp2Q5JNA1qkd+QmVYh/7pLlVCkGgTyH3C9C9CWR
	8vQ5lx1fruwM5uJqgUdk3RD10cHaU7yMjfeIwKceptk+NrlKz49jQDFcyInMXZ7j7M
	T3fMM0/1LS1sBz1BIE4Ul9H4zlc8WPF6z8y/CTFQjsISTEdKbaiSnN7xKbUF14sRBb
	KDKpuRzAGlCdq3wi7ozFKGcQ8gM+Wm4k04+YM2kZX82IuCtHs5hg2cMZGFa6U9E7+y
	yeHwLjtIY9LvsmALIxZomEZ0AEnf3n4dl1ErnfrV3HrcyLPGd4//ebQ4tf11rbB9hZ
	2gUg9nxL9zjMzY+6uovZRlqY=
Date: Sat, 6 Jul 2019 12:53:28 +0300
From: Adrian Bunk <bunk@stusta.de>
To: kai.kang@windriver.com
Message-ID: <20190706095328.GA1877@localhost>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20190704134520.16320-2-kai.kang@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Sat, 06 Jul 2019 10:03:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Jul 04, 2019 at 09:45:19PM +0800, kai.kang@windriver.com wrote:
> From: Kai Kang <kai.kang@windriver.com>
> 
> Introduce a new variable INIT_MANAGER and create 3 init-manager-*.inc
> files to configure init manager settings. Available values of
> INIT_MANAGER are sysvinit, systemd and mdev-busybox. 'sysvinit' is set
> by default for compatibility.
>...
> --- a/meta/conf/distro/defaultsetup.conf
> +++ b/meta/conf/distro/defaultsetup.conf
> @@ -23,3 +23,6 @@ PACKAGE_CLASSES ?= "package_ipk"
>  INHERIT_BLACKLIST = "blacklist"
>  INHERIT_DISTRO ?= "debian devshell sstate license remove-libtool"
>  INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_DISTRO} ${INHERIT_BLACKLIST}"
> +
> +INIT_MANAGER ??= "sysvinit"
> +require conf/distro/include/init-manager-${INIT_MANAGER}.inc
>...
> --- /dev/null
> +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
> @@ -0,0 +1,6 @@
> +# Use sysvinit for system initialization
> +DISTRO_FEATURES_append = " sysvinit"
> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
> +VIRTUAL-RUNTIME_init_manager = "sysvinit"
> +VIRTUAL-RUNTIME_initscripts = "initscripts"
> +VIRTUAL-RUNTIME_login_manager = "busybox"

I am not sure whether this can be fixed better, but this does break 
existing configurations that use a non-default init system.

I just ran into a build issue with
  VIRTUAL-RUNTIME_init_manager = "systemd"
since this now resulted in both sysvinit and systemd being attempted to 
be installed to the image.

This was fixable in my configuration with
  -VIRTUAL-RUNTIME_init_manager = "systemd"
  +INIT_MANAGER = "systemd"

This at least needs to be properly documented as a breaking change.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


