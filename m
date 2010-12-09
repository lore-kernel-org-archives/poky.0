Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F7924C80FD4
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 15:33:43 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2010 13:33:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="359558343"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2010 13:33:21 -0800
Received: from [10.255.13.44] (10.255.13.44) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 9 Dec 2010 14:33:21 -0700
Message-ID: <4D014B1C.7080208@intel.com>
Date: Thu, 9 Dec 2010 13:33:16 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <cover.1291785237.git.scott.a.garman@intel.com>	
	<d101f08a4edaa96f5dff038447f9fc8bf021aa9b.1291785237.git.scott.a.garman@intel.com>
	<1291906826.1554.883.camel@rex>
In-Reply-To: <1291906826.1554.883.camel@rex>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Thu, 09 Dec 2010 21:33:43 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2010 07:00 AM, Richard Purdie wrote:
> On Tue, 2010-12-07 at 20:59 -0800, Scott Garman wrote:
>> diff --git a/scripts/poky-find-native-sysroot b/scripts/poky-find-native-sysroot
>> index d8002f9..2262294 100755
>> --- a/scripts/poky-find-native-sysroot
>> +++ b/scripts/poky-find-native-sysroot
>> diff --git a/scripts/poky-qemu b/scripts/poky-qemu
>> index bc312e0..67af439 100755
>> --- a/scripts/poky-qemu
>> +++ b/scripts/poky-qemu
>> @@ -31,9 +31,9 @@ usage() {
>>       echo "    serial - enables a serial console on /dev/ttyS0"
>>       echo ""
>>       echo "Examples:"
>> -    echo "  $0 qemuarm"
>> -    echo "  $0 qemux86-64 poky-image-sato ext3"
>> -    echo "  $0 path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
>> +    echo "  $MYNAME qemuarm"
>> +    echo "  $MYNAME qemux86-64 poky-image-sato ext3"
>> +    echo "  $MYNAME path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial"
>>       exit 1
>>   }
>>
>> @@ -213,23 +213,29 @@ setup_tmpdir() {
>>                   echo "before running this script">&2;
>>                   exit 1; }
>>
>> -            # We have bitbake in PATH, get TMPDIR and BUILD_SYS
>> -            # from the environment
>> +            # We have bitbake in PATH, get TMPDIR from bitbake
>>               TMPDIR=`bitbake -e | grep TMPDIR=\" | cut -d '=' -f2 | cut -d '"' -f2`
>> -            BUILD_SYS=`bitbake -e | grep BUILD_SYS=\" | cut -d '=' -f2 | cut -d '"' -f2`
>>           else
>> -            BUILD_ARCH=`uname -m`
>> -            BUILD_OS=`uname | tr '[A-Z]' '[a-z]'`
>> -            BUILD_SYS="$BUILD_ARCH-$BUILD_OS"
>>               TMPDIR=$BUILDDIR/tmp
>>           fi
>> -        if [ -z "$POKY_NATIVE_SYSROOT" ]; then
>> -            POKY_NATIVE_SYSROOT=$TMPDIR/sysroots/$BUILD_SYS
>> -        fi
>> -        CROSSPATH=$POKY_NATIVE_SYSROOT/usr/bin
>>       fi
>>   }
>
> Hmm, you remove CROSSPATH yet still reference it later. I think the code
> has become confused. I'm going to merge the patch as it improves the
> situation compared to how it is at the moment. I'll give some background
> though:
>
> There are three things we really want to reference in PATH:
>
> a) The "native" or "nativesdk" tools
> b) The "cross" tools, i.e. TARGET_PREFIX-gcc
> c) The "cross" tools without the prefix, e.g. "gcc", replacing the
>     usual gcc you'd find in PATH. This last part is to allow distcc in a
>     image to use the compiler outside the emulation.
>
> The distcc thing did used to work but I doubt it does at the moment as I
> think this has just been reduced to the native case accidentally.
>
> The paths in the sysroot corresponding to these are:
>
> /opt/poky/sysroots/HOST-pokysdk-linux/usr/bin
> /opt/poky/sysroots/HOST-pokysdk-linux/usr/bin/TARGET-poky-linux
> /opt/poky/sysroots/HOST-pokysdk-linux/usr/libexec/TARGET-poky-linux/gcc/TARGET-poky-linux/GCCVERSION/
>
> and there are similar paths in a Poky build directory.
>
> I hope that helps clear things up a bit.

Thanks Richard, that does clarify things. I will file a bug for this and 
address it soon.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

