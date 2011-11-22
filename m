Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77873E00303
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 03:28:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAMBSmCL018268;
	Tue, 22 Nov 2011 11:28:48 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17377-08; Tue, 22 Nov 2011 11:28:44 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAMBSgtH018262
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 22 Nov 2011 11:28:42 GMT
Message-ID: <1321961328.18926.54.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
Date: Tue, 22 Nov 2011 11:28:48 +0000
In-Reply-To: <7c8386ea75beeecb76ba507a6d42cc78a23758e6.1321402302.git.josh@linux.intel.com>
References: <cover.1321402302.git.josh@linux.intel.com>
	<7c8386ea75beeecb76ba507a6d42cc78a23758e6.1321402302.git.josh@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [RFC PATCH 1/1] clutter: drop unneeded bbappends
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
X-List-Received-Date: Tue, 22 Nov 2011 11:28:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-15 at 16:16 -0800, Joshua Lock wrote:
> The --with-flavour-glx option is the default in clutter.inc now
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  .../clutter/clutter-1.6_1.6.18.bbappend            |    4 ----
>  .../clutter/clutter-1.8_1.8.0.bbappend             |    4 ----
>  .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ----
>  3 files changed, 0 insertions(+), 12 deletions(-)
>  delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
>  delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
>  delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter_git.bbappend
> 
> diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
> deleted file mode 100644
> index c7cc683..0000000
> --- a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
> +++ /dev/null
> @@ -1,4 +0,0 @@
> -DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
> -EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
> -PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"


I'm fine with this but one question - is the virtual/xserver dependency
still needed? If so we should add it to .inc. I'm in favour of merging
this patch though.

Cheers,

Richard





