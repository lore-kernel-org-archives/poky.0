Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A12374C80A74
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 09:00:49 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9F0lrI008421;
	Thu, 9 Dec 2010 15:00:47 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07945-09; Thu,  9 Dec 2010 15:00:43 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9F0b7p008415
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 15:00:38 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <d101f08a4edaa96f5dff038447f9fc8bf021aa9b.1291785237.git.scott.a.garman@intel.com>
References: <cover.1291785237.git.scott.a.garman@intel.com>
	<d101f08a4edaa96f5dff038447f9fc8bf021aa9b.1291785237.git.scott.a.garman@intel.com>
Date: Thu, 09 Dec 2010 15:00:26 +0000
Message-ID: <1291906826.1554.883.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] Make poky-qemu and related scripts work with arbitrary SDK locations
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
X-List-Received-Date: Thu, 09 Dec 2010 15:00:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 20:59 -0800, Scott Garman wrote:
> diff --git a/scripts/poky-find-native-sysroot b/scripts/poky-find-native-sysroot
> index d8002f9..2262294 100755
> --- a/scripts/poky-find-native-sysroot
> +++ b/scripts/poky-find-native-sysroot
> diff --git a/scripts/poky-qemu b/scripts/poky-qemu
> index bc312e0..67af439 100755
> --- a/scripts/poky-qemu
> +++ b/scripts/poky-qemu
> @@ -31,9 +31,9 @@ usage() {
>      echo "    serial - enables a serial console on /dev/ttyS0"
>      echo ""
>      echo "Examples:"
> -    echo "  $0 qemuarm"
> -    echo "  $0 qemux86-64 poky-image-sato ext3"
> -    echo "  $0 path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
> +    echo "  $MYNAME qemuarm"
> +    echo "  $MYNAME qemux86-64 poky-image-sato ext3"
> +    echo "  $MYNAME path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
>      exit 1
>  }
>  
> @@ -213,23 +213,29 @@ setup_tmpdir() {
>                  echo "before running this script" >&2;
>                  exit 1; }
>  
> -            # We have bitbake in PATH, get TMPDIR and BUILD_SYS
> -            # from the environment
> +            # We have bitbake in PATH, get TMPDIR from bitbake
>              TMPDIR=`bitbake -e | grep TMPDIR=\" | cut -d '=' -f2 | cut -d '"' -f2`
> -            BUILD_SYS=`bitbake -e | grep BUILD_SYS=\" | cut -d '=' -f2 | cut -d '"' -f2`
>          else
> -            BUILD_ARCH=`uname -m`
> -            BUILD_OS=`uname | tr '[A-Z]' '[a-z]'`
> -            BUILD_SYS="$BUILD_ARCH-$BUILD_OS"
>              TMPDIR=$BUILDDIR/tmp
>          fi
> -        if [ -z "$POKY_NATIVE_SYSROOT" ]; then
> -            POKY_NATIVE_SYSROOT=$TMPDIR/sysroots/$BUILD_SYS
> -        fi
> -        CROSSPATH=$POKY_NATIVE_SYSROOT/usr/bin
>      fi
>  }

Hmm, you remove CROSSPATH yet still reference it later. I think the code
has become confused. I'm going to merge the patch as it improves the
situation compared to how it is at the moment. I'll give some background
though:

There are three things we really want to reference in PATH:

a) The "native" or "nativesdk" tools
b) The "cross" tools, i.e. TARGET_PREFIX-gcc
c) The "cross" tools without the prefix, e.g. "gcc", replacing the 
   usual gcc you'd find in PATH. This last part is to allow distcc in a 
   image to use the compiler outside the emulation.

The distcc thing did used to work but I doubt it does at the moment as I
think this has just been reduced to the native case accidentally.

The paths in the sysroot corresponding to these are:

/opt/poky/sysroots/HOST-pokysdk-linux/usr/bin
/opt/poky/sysroots/HOST-pokysdk-linux/usr/bin/TARGET-poky-linux
/opt/poky/sysroots/HOST-pokysdk-linux/usr/libexec/TARGET-poky-linux/gcc/TARGET-poky-linux/GCCVERSION/

and there are similar paths in a Poky build directory.

I hope that helps clear things up a bit.

Cheers,

Richard


