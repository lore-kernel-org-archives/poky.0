Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 952084C810E1
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 09:29:39 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFUpiT030056; Thu, 16 Dec 2010 15:30:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id g3vSQjAAPY1E; Thu, 16 Dec 2010 15:30:51 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBGFUjHL030048
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 16 Dec 2010 15:30:47 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
References: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
Date: Thu, 16 Dec 2010 15:29:17 +0000
Message-ID: <1292513357.26558.4007.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 2/3] kernel.bbclass: rename do_deploy and add vardepsexclusive accordingly
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
X-List-Received-Date: Thu, 16 Dec 2010 15:29:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 16:56 +0800, Kevin Tian wrote:
> rename do_deploy to kernel_do_deploy and export it. Then add exclusive
> list for two variables it refers to:
> 
> +kernel_do_deploy[vardepsexclude] = "DATETIME"
> +KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"
> 
> This avoids the last road block linux-yocto for sstate.

Shouldn't this just need only the 

KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"

change?

Cheers,

Richard

> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  meta/classes/kernel.bbclass |    4 +++-
>  meta/conf/distro/poky.conf  |    2 ++
>  2 files changed, 5 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index bb76285..341809a 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -474,7 +474,7 @@ addtask sizecheck before do_install after do_compile
>  KERNEL_IMAGE_BASE_NAME ?= "${KERNEL_IMAGETYPE}-${PV}-${PR}-${MACHINE}-${DATETIME}"
>  KERNEL_IMAGE_SYMLINK_NAME ?= "${KERNEL_IMAGETYPE}-${MACHINE}"
>  
> -do_deploy() {
> +kernel_do_deploy() {
>  	install -m 0644 arch/${ARCH}/boot/${KERNEL_IMAGETYPE} ${DEPLOYDIR}/${KERNEL_IMAGE_BASE_NAME}.bin
>  	if (grep -q -i -e '^CONFIG_MODULES=y$' .config); then
>  		tar -cvzf ${DEPLOYDIR}/modules-${KERNEL_VERSION}-${PR}-${MACHINE}.tgz -C ${D} lib
> @@ -504,6 +504,8 @@ do_deploy[dirs] = "${DEPLOYDIR} ${B}"
>  
>  addtask deploy before do_package after do_install
>  
> +EXPORT_FUNCTIONS do_deploy
> +
>  # perf must be enabled in individual kernel recipes
>  PACKAGES =+ "perf"
>  FILES_perf = "${bindir}/* \
> diff --git a/meta/conf/distro/poky.conf b/meta/conf/distro/poky.conf
> index 95ca097..735e0c0 100644
> --- a/meta/conf/distro/poky.conf
> +++ b/meta/conf/distro/poky.conf
> @@ -145,3 +145,5 @@ BB_SIGNATURE_HANDLER = "basic"
>  BB_HASHTASK_WHITELIST = "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
>  BB_HASHBASE_WHITELIST = "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
>  patch_do_patch[vardepsexclude] = "DATE SRCDATE"
> +kernel_do_deploy[vardepsexclude] = "DATETIME"
> +KERNEL_IMAGE_BASE_NAME[vardepsexclude] = "DATETIME"



