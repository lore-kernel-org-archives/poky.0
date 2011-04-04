Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB3034C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 13:19:18 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2011 11:19:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,298,1299484800"; d="scan'208";a="728990488"
Received: from doubt.jf.intel.com (HELO [10.7.199.68]) ([10.7.199.68])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2011 11:19:18 -0700
Message-ID: <4D9A0B9E.3080205@linux.intel.com>
Date: Mon, 04 Apr 2011 11:19:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1301648561.git.xiaofeng.yan@windriver.com>
	<1bd290f057591506c73c36208496d60c39f4ae43.1301648561.git.xiaofeng.yan@windriver.com>
In-Reply-To: <1bd290f057591506c73c36208496d60c39f4ae43.1301648561.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] creat-lsb-image: Modify some content for making a non-qemu lsb-image
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
X-List-Received-Date: Mon, 04 Apr 2011 18:19:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Xiaofeng,

A couple of thoughts related to keeping our messages grammatically correct and also using variables and loops where appropriate to reduce the copy-and-paste effect...

On 04/01/2011 02:10 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> 
> For making a hardware lsb-image, delete qemu environment and add non qemu environment.
> 
> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   scripts/creat-lsb-image |  127 +++++++++++++++++++++++++++--------------------
>   1 files changed, 73 insertions(+), 54 deletions(-)
> 
> diff --git a/scripts/creat-lsb-image b/scripts/creat-lsb-image
> index 3802e2f..93b3042 100755
> --- a/scripts/creat-lsb-image
> +++ b/scripts/creat-lsb-image
> @@ -20,10 +20,10 @@ red='\E[31;40m'
>   green='\E[32;40m'
>   USER=`whoami`
>   ARCH=$1
> -MACHINE_ARCH=` bitbake -e | grep ^MACHINE_ARCH | cut -d '=' -f2 | cut -d '"' -f2`
> +PACKAGE=$2
> +MACHINE_ARCH=` bitbake -e | grep ^MACHINE_ARCH= | cut -d '=' -f2 | cut -d '"' -f2`
>   IMAGE_PATH=` bitbake -e | grep ^POKYBASE | cut -d '=' -f2 | cut -d '"' -f2`/build/tmp/deploy/images/
> 
> -
>   ECHO()
>   {
>       echo -e "${green}$@"
> @@ -39,14 +39,14 @@ exit_check()
> 
>   usage()
>   {
> -    ECHO "${red}usage:you should input one of the next commmands according to detailed target platform:"


A Usage statement doesn't typically display output in red. If this is only intended to be used from within another script, then you have some freedom here - but even then, the caller script should do the error detection and output a colored ERROR statement. In my opinion :)


> -    ECHO "creat-lsb-image x86"
> -    ECHO "creat-lsb-image x86_64"
> -    ECHO "creat-lsb-image ppc32"
> +    ECHO "${red}usage:you should input one of the next commmands according to detailed target platform, 
> Pease input detailed package to instead of \"poky-image-
> lsb-qemux86-20110317030443.rootfs.tar.bz2\""

"detailed target platform" doesn't make sense to me, what is this trying to say?

Complete that phrase with a period, rather than a comma.

Pease -> Please

"input detailed package to instead of" doesn't make sense to me either, can you try and rephrase?

Also, a usage statement should output a command argument summary, followed by a description of each argument, and optionally further text or examples.

I think the idea is to say that the input was bad and the user should instead try one of the following commands. Perhaps something like this:

Usage: create-lsb-image MACHINE_ARCH ROOTFS_IMG
    MACHINE_ARCH    according to 'bitbake -e | egrep "^MACHINE_ARCH="'
    ROOTFS_IMAGE    basename of the rootfs image, i.e.
                    poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2

    Examples:
        creat-lsb-image x86 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2
        creat-lsb-image x86_64 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2
        creat-lsb-image ppc32 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2


> +    ECHO "creat-lsb-image x86 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"
> +    ECHO "creat-lsb-image x86_64 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"
> +    ECHO "creat-lsb-image ppc32 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"


Is this last one correct? ppc32 uses the qemux86 rootfs? I assume not.


>   }
> 
>   #There should be a patameter to get machine type
> -if [ $# -ne 1 ]; then
> +if [ $# -ne 2 ]; then
>       usage
>       exit 1
>   fi
> @@ -59,70 +59,85 @@ fi
>   ECHO "Enter directory $IMAGE_PATH"
>   cd $IMAGE_PATH
> 
> -#get architecture
> -PN=`find . -name poky-image-lsb-${MACHINE_ARCH}\*.rootfs.tar.bz2 -type f | awk -F- 'BEGIN{ max=0;} {if( NR!=0&&  $5>max ) max=$5 }END{ printf "%d" ,max ;}'`
> -if [ "XPN" == "X" ];then
> -   ECHO "${red}Don't find lsb image on platform, Please run \"poky-image-lsb\" to generate lsb image"
> -   exit 1
> +if [ ! -f ${2} ]; then
> +    ECHO "${red}${2} don't be found in the directory ${IMAGE_PATH},so"


replace "don't be" with "not" and just remove "the directory", delete ",so"
+    ECHO "${red}${2} not found in ${IMAGE_PATH}"


> +    ECHO "${red}Please copy \"${2}\" to directory \"${IMAGE_PATH}\""


s/directory//
+    ECHO "${red}Please copy \"${2}\" to \"${IMAGE_PATH}\""

I still suggest not using ${red} here.


> +    exit 1
>   fi
> 
> -if [ $PN -eq 0 ];then
> -	ECHO "${red}Can't ${MACHINE_ARCH} rootfs.tar.gz,Please run poky-image-lsb to get lsb image"
> -	exit 1
> -fi
>   #set varible ARCH
>   if [ ${ARCH} == x86 ];then
> -	T_ARCH=ia32
> +    T_ARCH=ia32
>       P_ARCH=i486
>   elif [ ${ARCH} == x86_64 ];then
> -	T_ARCH=ia64
> -    P_ARCH=ia64
> +    T_ARCH=amd64
> +    P_ARCH=x86_64
> +
>   else
> -	P_ARCH=ppc
> -	T_ARCH=${ARCH}
> +    P_ARCH=ppc
> +    T_ARCH=${ARCH}
>   fi
> 
>   #umount lsbtmp
>   if [ -d lsbtmp ];then
> -	sudo umount lsbtmp
> +    sudo umount lsbtmp
>   fi
> 
>   #download lsb test suite
>   mkdir -p lsb-test-suite-${MACHINE_ARCH}
>   if [ -d lsb-test-suite-${MACHINE_ARCH} ];then
> -	cd lsb-test-suite-${MACHINE_ARCH}
> -	ECHO "Download lsb test suite, it could take some time..."
> -    wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/released-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz
> +    cd lsb-test-suite-${MACHINE_ARCH}
> +    ECHO "Download lsb test suite, it could take some time..."


Use the gerund here rather than the imperative:
+    ECHO "Downloading lsb test suite, this may take some time..."


> +    if [ ${ARCH} == x86_64 ];then
> +        wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/released-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${P_ARCH}.tar.gz
> +    else
> +        wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/released-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz
> +    fi
> +    exit_check
> +    ECHO "Download lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/lsbdev/released-4.1.0/binary/${T_ARCH}/lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm
> +    exit_check
> +    ECHO "Download lsb-apache-2.2.8-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-apache-2.2.14-3.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Download lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/lsbdev/released-4.1.0/binary/${T_ARCH}/lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm
> +    ECHO "Download lsb-tcl-8.5.1-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-tcl-8.5.7-6.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-apache-2.2.8-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-apache-2.2.14-3.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-expect-5.43.0-7.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-expect-5.43.0-11.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-tcl-8.5.1-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-tcl-8.5.7-6.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-groff-1.19.2-4.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-groff-1.20.1-5.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-expect-5.43.0-7.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-expect-5.43.0-11.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-raptor-1.4.16-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-raptor-1.4.19-3.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-groff-1.19.2-4.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-groff-1.20.1-5.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-xpdf-1.01-7.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-xpdf-1.01-10.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-raptor-1.4.16-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-raptor-1.4.19-3.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-samba-3.0.28a-3.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-samba-3.4.3-5.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-xpdf-1.01-7.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-xpdf-1.01-10.lsb4.${P_ARCH}.rpm
> +    ECHO "Download lsb-rsync-3.0.0-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-rsync-3.0.6-3.lsb4.${P_ARCH}.rpm
>       exit_check
> -	ECHO "Downlocad lsb-samba-3.0.28a-3.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-samba-3.4.3-5.lsb4.${P_ARCH}.rpm
> +    ECHO "Download expect-tests.tar"
> +    wget -c -t 5 http://ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/expect-tests.tar
>       exit_check
> -	ECHO "Downlocad lsb-rsync-3.0.0-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-rsync-3.0.6-3.lsb4.${P_ARCH}.rpm
> +    ECHO "Download tcl-tests.tar"
> +    wget -c -t 5 http://ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/tcl-tests.tar
> +    exit_check
> +    ECHO "Download raptor-tests.tar"
> +    wget -c -t 5 http://ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/raptor-tests.tar
> +    exit_check
> +    ECHO "Download test1.pdf"
> +    wget -c -t 5 http://ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/test1.pdf
> +    exit_check
> +    ECHO "Download test2.pdf"
> +    wget -c -t 5 http://ftp.linuxfoundation.org/pub/lsb/snapshots/appbat/tests/test2.pdf
>       exit_check


This is a huge list with a lot of duplication. Maintenance on this will be very error prone. I'd suggest:

1) use a couple variables for common URL parts
2) use a HERE DOC and a read loop to grab each URL and report on progress.

http://tldp.org/LDP/abs/html/here-docs.html

Indeed, this would fix the multiple copies of "Downlocad" (instead of "Download") above.


>   else
> -	ECHO "Can't find lsb test suite for ${MACHINE_ARCH}"
> +    ECHO "Can't find lsb test suite for ${MACHINE_ARCH}"
>   fi
>   cd ..
>   if [ -L poky-image-lsb-${MACHINE_ARCH}.ext3 ];then
> @@ -132,11 +147,11 @@ fi
> 
>   #creat lsb image
>   if [ -f poky-image-lsb-${MACHINE_ARCH}-test.ext3 ];then
> -	if [ -d lsbtmp ];then
> -    	sudo umount lsbtmp
> -	fi
> -	ECHO "Remove old lsb image..."
> -	/bin/rm poky-image-lsb-${MACHINE_ARCH}-test.ext3
> +    if [ -d lsbtmp ];then
> +        sudo umount lsbtmp
> +    fi
> +    ECHO "Remove old lsb image..."


Use the gerund here as well:
+    ECHO "Removing old lsb image..."


> +    /bin/rm poky-image-lsb-${MACHINE_ARCH}-test.ext3
>   fi	
>   ECHO "creat a big ext3 file for lsb image with 5G..."


Not part of your patch, but while your here...
Capitalize the first word, fix "creat":
+ ECHO Create a big ext3 file for lsb image with 5G...


>   dd if=/dev/zero of=poky-image-lsb-${MACHINE_ARCH}-test.ext3 bs=1M count=5000
> @@ -148,7 +163,7 @@ tune2fs -j  poky-image-lsb-${MACHINE_ARCH}-test.ext3
> 
>   ECHO "get a lsb image with lsb test suite"
>   if [ ! -d lsbtmp ];then
> -	mkdir lsbtmp
> +    mkdir lsbtmp


Is this replacing a tab with 3 spaces? I believe 4 is common in the file.


>   fi
> 
> 
> @@ -157,21 +172,25 @@ sudo mount -o loop poky-image-lsb-${MACHINE_ARCH}-test.ext3 lsbtmp
>   exit_check
> 
>   ECHO "  ->Install file system..."
> -sudo tar jxf poky-image-lsb-${MACHINE_ARCH}-${PN}.rootfs.tar.bz2 -C lsbtmp
> +sudo tar jxf ${PACKAGE} -C lsbtmp
>   exit_check
> 
>   ECHO "  ->Install lsb test suite..."
>   cd lsb-test-suite-${MACHINE_ARCH}
> -sudo tar zxf lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz -C ../lsbtmp
> +if [ ${ARCH} == x86_64 ]; then
> +    sudo tar zxf lsb-dist-testkit-4.1.0-5.${P_ARCH}.tar.gz -C ../lsbtmp
> +else
> +    sudo tar zxvf lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz -C ../lsbtmp
> +fi
>   exit_check
>   sudo mkdir ../lsbtmp/lsb-Application
> -sudo cp *.rpm ../lsbtmp/lsb-Application
> +sudo cp *.rpm *.tar *.pdf ../lsbtmp/lsb-Application
>   exit_check
>   cd ..
> 
>   if [ -f modules-*-${MACHINE_ARCH}.tgz ];then
>   ECHO "  ->Install moules of driver..."	


Another existing typo: moules -> modules, probably better as:
+   ECHO "  ->Install driver modules..."	


> -	sudo tar zxf modules-*-${MACHINE_ARCH}.tgz -C lsbtmp/
> +    sudo tar zxf modules-*-${MACHINE_ARCH}.tgz -C lsbtmp/
>   fi
> 
> 

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

