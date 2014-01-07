Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB191E0084B
	for <poky@yoctoproject.org>; Tue,  7 Jan 2014 06:04:03 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s07E3RBw003424; Tue, 7 Jan 2014 14:03:27 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id uKQacmxpSJRn; Tue,  7 Jan 2014 14:03:27 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s07E3Llf003421
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 7 Jan 2014 14:03:22 GMT
Message-ID: <1389103396.6899.29.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Tue, 07 Jan 2014 14:03:16 +0000
In-Reply-To: <1389102512-15615-1-git-send-email-alexandre.belloni@free-electrons.com>
References: <1389102512-15615-1-git-send-email-alexandre.belloni@free-electrons.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "Hart,
	Darren" <darren.hart@intel.com>, Darren Hart <dvhart@linux.intel.com>,
	poky@yoctoproject.org
Subject: Re: [PATCH] kernel: use oldnoconfig instead of yes '' | make oldconfig
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
X-List-Received-Date: Tue, 07 Jan 2014 14:04:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2014-01-07 at 14:48 +0100, Alexandre Belloni wrote:
> When using a defconfig, using yes '' | make oldconfig may not result in
> the correct configuration being set. For example:
> 
>  $ grep USB_ETH .config
>  CONFIG_USB_ETH=y
>  CONFIG_USB_ETH_RNDIS=y
>  CONFIG_USB_ETH_EEM=y
>  $ make savedefconfig
>  scripts/kconfig/conf --savedefconfig=defconfig Kconfig
>  $ cp defconfig .config
>  ‘defconfig’ -> ‘.config’
>  $ yes '' | make oldconfig
>  [...]
>  #
>  # configuration written to .config
>  #
>  $ grep USB_ETH .config
>  CONFIG_USB_ETH=m
>  CONFIG_USB_ETH_RNDIS=y
>  CONFIG_USB_ETH_EEM=y
> 
> Using make olddefconfig solves that but we'll use oldnoconfig for
> backward compatibility with older kernels.
> 
>  $ cp defconfig .config
>  ‘defconfig’ -> ‘.config’
>  $ make oldnoconfig
>  scripts/kconfig/conf --olddefconfig Kconfig
>  #
>  # configuration written to .config
>  #
>  $ grep USB_ETH .config
>  CONFIG_USB_ETH=y
>  CONFIG_USB_ETH_RNDIS=y
>  CONFIG_USB_ETH_EEM=y
> 
> For more information, please refer to:
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=fbe98bb9ed3dae23e320c6b113e35f129538d14a

Could you post this to the openembedded-core list please. I've cc'd a
couple of people who should review this to.

Thanks,

Richard

> Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
> ---
>  meta/classes/kernel.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 61a6d102d7a8..644d7937923d 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -313,7 +313,7 @@ kernel_do_configure() {
>  	if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
>  		cp "${WORKDIR}/defconfig" "${B}/.config"
>  	fi
> -	yes '' | oe_runmake oldconfig
> +	oe_runmake oldnoconfig
>  }
>  
>  do_savedefconfig() {



