Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FA6FE013DE
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 14:59:06 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7JMAWY4020546; Mon, 19 Aug 2013 23:10:33 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id G8Ov6mZ69znF; Mon, 19 Aug 2013 23:10:32 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r7JMAQDq020542
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 19 Aug 2013 23:10:28 +0100
Message-ID: <1376949519.25999.65.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Date: Mon, 19 Aug 2013 22:58:39 +0100
In-Reply-To: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
X-Mailer: Evolution 3.6.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] SDK_NAME: Change to include image name and machine.
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
X-List-Received-Date: Mon, 19 Aug 2013 21:59:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-08-19 at 14:45 -0700, Elizabeth Flanagan wrote:
> [YOCTO #4618]
> 
> When building out multiple toolchains with the same target arch
> you can end up having toolchains with the same name. Making
> the naming a bit more granular by adding IMAGE_BASENAME and
> MACHINE to SDK_NAME
> 
> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
> ---
>  meta-yocto/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
> index 7be7d92..f0da032 100644
> --- a/meta-yocto/conf/distro/poky.conf
> +++ b/meta-yocto/conf/distro/poky.conf
> @@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
>  PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
>  
> -SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
> +SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${MACHINE}-${TARGET_ARCH}"
>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>  
>  EXTRAOPKGCONFIG = "poky-feed-config-opkg"

Are there differences in the SDK/ADT tarball between machines?

I appreciate its theoretically possible but in reality, they should be
the same and if they're not we have various problems.

Cheers,

Richard


