Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8BC94C803A5
	for <poky@pokylinux.org>; Mon, 22 Nov 2010 11:05:23 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMH5KwP031578;
	Mon, 22 Nov 2010 17:05:20 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30372-08; Mon, 22 Nov 2010 17:05:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAMH5DJs031565
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 22 Nov 2010 17:05:13 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Paul Eggleton <paul.eggleton@intel.com>
In-Reply-To: <e159ff2c957d06e1106b7ba221e7b36d3bc06fe9.1290423211.git.paul.eggleton@intel.com>
References: <cover.1290423211.git.paul.eggleton@intel.com>
	<e159ff2c957d06e1106b7ba221e7b36d3bc06fe9.1290423211.git.paul.eggleton@intel.com>
Date: Mon, 22 Nov 2010 17:05:11 +0000
Message-ID: <1290445511.1272.17129.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 3/3] qemu: fix failure to find zlib header files during configure
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
X-List-Received-Date: Mon, 22 Nov 2010 17:05:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Paul,

On Fri, 2010-11-19 at 12:37 +0000, Paul Eggleton wrote:
> Corrects problems during configure of qemu-native due to the BUILD_CFLAGS
> not being included when attempting to compile the test program for zlib
> within the configure script.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
> ---
>  .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   16 ++++++++++++++++
>  meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 ++-
>  2 files changed, 18 insertions(+), 1 deletions(-)
>  create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
> 
> diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
> new file mode 100644
> index 0000000..e397848
> --- /dev/null
> +++ b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
> @@ -0,0 +1,16 @@
> +Adds BUILD_CFLAGS to QEMU_CFLAGS so that zlib configure check succeeds.
> +Without this, zlib configure check was failing without zlib headers installed
> +on the host system.
> +
> +Author: Paul Eggleton <paul.eggleton@intel.com>
> +
> +--- qemu-0.12.4.orig/configure
> ++++ qemu-0.12.4/configure
> +@@ -99,6 +99,7 @@ QEMU_CFLAGS="-Wstrict-prototypes -Wredun
> + QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
> + QEMU_CFLAGS="-U_FORTIFY_SOURCE $QEMU_CFLAGS"
> + QEMU_CFLAGS="-I. -I\$(SRC_PATH) $QEMU_CFLAGS"
> ++QEMU_CFLAGS="$QEMU_CFLAGS $BUILD_CFLAGS"
> + LDFLAGS="-g $LDFLAGS"
> + 

Should this be $CFLAGS? I just wonder what the effect of injecting
BUILD_CFLAGS would be in the target case (qemu vs. qemu-native)?

In the native case CFLAGS == BUILD_CFLAGS.

Cheers,

Richard


