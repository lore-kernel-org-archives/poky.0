Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 384DB4C805A8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:51:37 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I9pXFS004044;
	Fri, 18 Mar 2011 09:51:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03935-02; Fri, 18 Mar 2011 09:51:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2I9pR16004038
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 09:51:27 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
In-Reply-To: <de32ea030a5ab3a07c6208d182019e5f4bedfb79.1300438663.git.xiaofeng.yan@windriver.com>
References: <cover.1300438663.git.xiaofeng.yan@windriver.com>
	<de32ea030a5ab3a07c6208d182019e5f4bedfb79.1300438663.git.xiaofeng.yan@windriver.com>
Date: Fri, 18 Mar 2011 09:51:11 +0000
Message-ID: <1300441871.30423.2188.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] creat-lsb-image: Modify some contents to support hardware platfrom
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
X-List-Received-Date: Fri, 18 Mar 2011 09:51:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 17:04 +0800, Xiaofeng Yan wrote:
> From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> 
> The previous version can't create a lsb-image for  hardware platfrom.
> So I fix bugs and it can make a lsb image to do lsb test now.
> 
> Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
> ---
>  scripts/creat-lsb-image |   95 ++++++++++++++++++++++------------------------
>  1 files changed, 45 insertions(+), 50 deletions(-)
> 
> diff --git a/scripts/creat-lsb-image b/scripts/creat-lsb-image
> index 3802e2f..647fc88 100755
> --- a/scripts/creat-lsb-image
> +++ b/scripts/creat-lsb-image
> @@ -20,10 +20,10 @@ red='\E[31;40m'
>  green='\E[32;40m'
>  USER=`whoami`
>  ARCH=$1
> -MACHINE_ARCH=` bitbake -e | grep ^MACHINE_ARCH | cut -d '=' -f2 | cut -d '"' -f2`
> +PACKAGE=$2
> +MACHINE_ARCH=` bitbake -e | grep ^MACHINE_ARCH= | cut -d '=' -f2 | cut -d '"' -f2`
>  IMAGE_PATH=` bitbake -e | grep ^POKYBASE | cut -d '=' -f2 | cut -d '"' -f2`/build/tmp/deploy/images/

Could you please split this patch into two patches, one making the
whitespace changes and the other with the code changes.

At present its extremely difficult to see what the code changes were.

Thanks,

Richard

 
> -
>  ECHO()
>  {
>      echo -e "${green}$@"
> @@ -39,14 +39,14 @@ exit_check()
>  
>  usage()
>  {
> -    ECHO "${red}usage:you should input one of the next commmands according to detailed target platform:"
> -    ECHO "creat-lsb-image x86"
> -    ECHO "creat-lsb-image x86_64"
> -    ECHO "creat-lsb-image ppc32"
> +    ECHO "${red}usage:you should input one of the next commmands according to concrete target platform, Pease input concrete package to instead of \"poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2\""
> +    ECHO "creat-lsb-image x86 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"
> +    ECHO "creat-lsb-image x86_64 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"
> +    ECHO "creat-lsb-image ppc32 poky-image-lsb-qemux86-20110317030443.rootfs.tar.bz2"
>  }
>  
>  #There should be a patameter to get machine type
> -if [ $# -ne 1 ]; then
> +if [ $# -ne 2 ]; then
>      usage
>      exit 1
>  fi
> @@ -59,70 +59,65 @@ fi
>  ECHO "Enter directory $IMAGE_PATH"
>  cd $IMAGE_PATH
>  
> -#get architecture
> -PN=`find . -name poky-image-lsb-${MACHINE_ARCH}\*.rootfs.tar.bz2 -type f | awk -F- 'BEGIN{ max=0;} {if( NR!=0 && $5>max ) max=$5 }END{ printf "%d" ,max ;}'`
> -if [ "XPN" == "X" ];then
> -   ECHO "${red}Don't find lsb image on platform, Please run \"poky-image-lsb\" to generate lsb image"
> -   exit 1
> +if [ ! -f ${2} ]; then
> +    ECHO "${red}${2} don't be found in the directory ${IMAGE_PATH},so"
> +    ECHO "${red}Please copy \"${2}\" to directory \"${IMAGE_PATH}\""
> +    exit 1
>  fi
>  
> -if [ $PN -eq 0 ];then
> -	ECHO "${red}Can't ${MACHINE_ARCH} rootfs.tar.gz,Please run poky-image-lsb to get lsb image"
> -	exit 1
> -fi
>  #set varible ARCH
>  if [ ${ARCH} == x86 ];then
> -	T_ARCH=ia32
> +    T_ARCH=ia32
>      P_ARCH=i486
>  elif [ ${ARCH} == x86_64 ];then
> -	T_ARCH=ia64
> +    T_ARCH=ia64
>      P_ARCH=ia64
>  else
> -	P_ARCH=ppc
> -	T_ARCH=${ARCH}
> +    P_ARCH=ppc
> +    T_ARCH=${ARCH}
>  fi
>  
>  #umount lsbtmp 
>  if [ -d lsbtmp ];then
> -	sudo umount lsbtmp
> +    sudo umount lsbtmp
>  fi
>   
>  #download lsb test suite
>  mkdir -p lsb-test-suite-${MACHINE_ARCH} 
>  if [ -d lsb-test-suite-${MACHINE_ARCH} ];then
> -	cd lsb-test-suite-${MACHINE_ARCH}
> -	ECHO "Download lsb test suite, it could take some time..."
> +    cd lsb-test-suite-${MACHINE_ARCH}
> +    ECHO "Download lsb test suite, it could take some time..."
>      wget -c -t 5  http://ftp.linuxfoundation.org/pub/lsb/bundles/released-4.1.0/dist-testkit/lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz
>      exit_check
> -	ECHO "Download lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/lsbdev/released-4.1.0/binary/${T_ARCH}/lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm
> +    ECHO "Download lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/lsbdev/released-4.1.0/binary/${T_ARCH}/lsb-xdg-utils-4.0.0-2.${P_ARCH}.rpm
>      exit_check
> -	ECHO "Downlocad lsb-apache-2.2.8-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-apache-2.2.14-3.lsb4.${P_ARCH}.rpm
> +    ECHO "Downlocad lsb-apache-2.2.8-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-apache-2.2.14-3.lsb4.${P_ARCH}.rpm
>      exit_check
> -	ECHO "Downlocad lsb-tcl-8.5.1-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-tcl-8.5.7-6.lsb4.${P_ARCH}.rpm
> +    ECHO "Downlocad lsb-tcl-8.5.1-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-tcl-8.5.7-6.lsb4.${P_ARCH}.rpm
>      exit_check
> -	ECHO "Downlocad lsb-expect-5.43.0-7.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-expect-5.43.0-11.lsb4.${P_ARCH}.rpm 
> +    ECHO "Downlocad lsb-expect-5.43.0-7.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-expect-5.43.0-11.lsb4.${P_ARCH}.rpm 
>      exit_check
> -	ECHO "Downlocad lsb-groff-1.19.2-4.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-groff-1.20.1-5.lsb4.${P_ARCH}.rpm  
> +    ECHO "Downlocad lsb-groff-1.19.2-4.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-groff-1.20.1-5.lsb4.${P_ARCH}.rpm  
>      exit_check
> -	ECHO "Downlocad lsb-raptor-1.4.16-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-raptor-1.4.19-3.lsb4.${P_ARCH}.rpm 
> +    ECHO "Downlocad lsb-raptor-1.4.16-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-raptor-1.4.19-3.lsb4.${P_ARCH}.rpm 
>      exit_check
> -	ECHO "Downlocad lsb-xpdf-1.01-7.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-xpdf-1.01-10.lsb4.${P_ARCH}.rpm
> +    ECHO "Downlocad lsb-xpdf-1.01-7.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-xpdf-1.01-10.lsb4.${P_ARCH}.rpm
>      exit_check
> -	ECHO "Downlocad lsb-samba-3.0.28a-3.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-samba-3.4.3-5.lsb4.${P_ARCH}.rpm 
> +    ECHO "Downlocad lsb-samba-3.0.28a-3.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-samba-3.4.3-5.lsb4.${P_ARCH}.rpm 
>      exit_check
> -	ECHO "Downlocad lsb-rsync-3.0.0-2.lsb4.${P_ARCH}.rpm"
> -	wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-rsync-3.0.6-3.lsb4.${P_ARCH}.rpm
> +    ECHO "Downlocad lsb-rsync-3.0.0-2.lsb4.${P_ARCH}.rpm"
> +    wget -c -t 5 http://ftp.linux-foundation.org/pub/lsb/app-battery/released-4.1.0/${T_ARCH}/lsb-rsync-3.0.6-3.lsb4.${P_ARCH}.rpm
>      exit_check
>  else
> -	ECHO "Can't find lsb test suite for ${MACHINE_ARCH}"
> +    ECHO "Can't find lsb test suite for ${MACHINE_ARCH}"
>  fi
>  cd ..
>  if [ -L poky-image-lsb-${MACHINE_ARCH}.ext3 ];then
> @@ -132,11 +127,11 @@ fi
>  
>  #creat lsb image
>  if [ -f poky-image-lsb-${MACHINE_ARCH}-test.ext3 ];then
> -	if [ -d lsbtmp ];then
> -    	sudo umount lsbtmp
> -	fi
> -	ECHO "Remove old lsb image..."
> -	/bin/rm poky-image-lsb-${MACHINE_ARCH}-test.ext3
> +    if [ -d lsbtmp ];then
> +        sudo umount lsbtmp
> +    fi
> +    ECHO "Remove old lsb image..."
> +    /bin/rm poky-image-lsb-${MACHINE_ARCH}-test.ext3
>  fi	
>  ECHO "creat a big ext3 file for lsb image with 5G..."
>  dd if=/dev/zero of=poky-image-lsb-${MACHINE_ARCH}-test.ext3 bs=1M count=5000
> @@ -148,7 +143,7 @@ tune2fs -j  poky-image-lsb-${MACHINE_ARCH}-test.ext3
>  
>  ECHO "get a lsb image with lsb test suite"
>  if [ ! -d lsbtmp ];then
> -	mkdir lsbtmp
> +    mkdir lsbtmp
>  fi
>  
> 
> @@ -157,7 +152,7 @@ sudo mount -o loop poky-image-lsb-${MACHINE_ARCH}-test.ext3 lsbtmp
>  exit_check
>  
>  ECHO "  ->Install file system..."
> -sudo tar jxf poky-image-lsb-${MACHINE_ARCH}-${PN}.rootfs.tar.bz2 -C lsbtmp
> +sudo tar jxf ${PACKAGE} -C lsbtmp
>  exit_check
>  
>  ECHO "  ->Install lsb test suite..."
> @@ -171,7 +166,7 @@ cd ..
>  
>  if [ -f modules-*-${MACHINE_ARCH}.tgz ];then
>  ECHO "  ->Install moules of driver..."	
> -	sudo tar zxf modules-*-${MACHINE_ARCH}.tgz -C lsbtmp/
> +    sudo tar zxf modules-*-${MACHINE_ARCH}.tgz -C lsbtmp/
>  fi
>  
> 



