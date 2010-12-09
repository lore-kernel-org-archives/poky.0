Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F06124C80BEF
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 06:40:48 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9CelNJ006685;
	Thu, 9 Dec 2010 12:40:47 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06269-07; Thu,  9 Dec 2010 12:40:43 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9CecSA006679
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 12:40:38 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <d4a0f4c671c837fdd8c0fc39674d7a6f10575bb5.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
	<d4a0f4c671c837fdd8c0fc39674d7a6f10575bb5.1291705845.git.dongxiao.xu@intel.com>
Date: Thu, 09 Dec 2010 12:40:27 +0000
Message-ID: <1291898427.1554.817.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/7] gst-ffmpeg: upgrade to version 0.10.11
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
X-List-Received-Date: Thu, 09 Dec 2010 12:40:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 2010-12-07 at 14:08 +0800, Dongxiao Xu wrote:
> diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
> new file mode 100644
> index 0000000..96f08b6
> --- /dev/null
> +++ b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
> @@ -0,0 +1,39 @@
[...]
> +# We do this because the install program is called with -s which causes it to
> +# call "strip" and it then mangles cross compiled stuff..
> +PATH_prepend := "${TOOLCHAIN_PATH}/${TARGET_SYS}/bin:"
> +
> +# Hack to get STAGING_LIBDIR into the linker path when building ffmpeg
> +CC = "${CCACHE} ${HOST_PREFIX}gcc ${TARGET_CC_ARCH} -L${STAGING_LIBDIR}"
> +
> +SRC_URI[md5sum] = "0d23197ba7ac06ea34fa66d38469ebe5"
> +SRC_URI[sha256sum] = "ff36a138e5af4ed8dcc459d6d6521fe66ed31ec29ba9a924dc3675c6749a692e"

Whilst Saul included this in distro/master I'm not going to take it as
this PATH_prepend workaround is rather risky e.g. if anyone ever uses
BBCLASSEXTEND with the recipe or the recipe ever tries to find the
native compiler for some native tool used in the build process. Please
patch the package to take out the -s option used in the install
commands.

Cheers,

Richard


