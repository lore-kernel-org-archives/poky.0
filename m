Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ED7E4C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 05:08:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19B8CX8031235;
	Wed, 9 Feb 2011 11:08:12 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31160-02; Wed,  9 Feb 2011 11:08:08 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19B86o5031229
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:08:06 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1297247749-16779-1-git-send-email-koen@dominion.thruhere.net>
References: <1297247749-16779-1-git-send-email-koen@dominion.thruhere.net>
Date: Wed, 09 Feb 2011 11:08:04 +0000
Message-ID: <1297249684.1395.6280.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] binutils-cross-canadian.inc: disable -werror like -cross does
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
X-List-Received-Date: Wed, 09 Feb 2011 11:08:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 11:35 +0100, Koen Kooi wrote:
> The error this works around is:
> 
> cc1: warnings being treated as errors
> gas/config/tc-arm.c: In function 'parse_operands':
> gas/config/tc-arm.c:1876:27: error: 'firsttype$defined' may be used uninitialized in this function
> gas/config/tc-arm.c:1876:27: error: 'firsttype$index' may be used uninitialized in this function
> 
> Ideally it should get fixed properly, but let's mimic binutils-cross for now
> 
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
>  .../binutils/binutils-cross-canadian.inc           |    3 ++-
>  1 files changed, 2 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> index e042ac7..95e535a 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> @@ -6,7 +6,8 @@ BPN = "binutils"
>  
>  DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/libc-nativesdk zlib-nativesdk gettext-nativesdk"
>  EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TARGET_SYS} \
> -                --program-prefix=${TARGET_PREFIX}"
> +                --program-prefix=${TARGET_PREFIX} \
> +                --disable-werror"
>  
>  do_install () {
>  	autotools_do_install

Merged to master, thanks.

Richard


