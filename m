Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE00B4C80FA8
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 15:48:17 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAOLmFZW003769;
	Wed, 24 Nov 2010 21:48:15 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03549-02; Wed, 24 Nov 2010 21:48:10 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAOLm5FI003762
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 24 Nov 2010 21:48:05 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <c6d829$pkuj17@fmsmga001.fm.intel.com>
References: <c6d829$pkuj17@fmsmga001.fm.intel.com>
Date: Wed, 24 Nov 2010 21:47:59 +0000
Message-ID: <1290635279.26464.142.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS immediately
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
X-List-Received-Date: Wed, 24 Nov 2010 21:48:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-24 at 12:27 +0800, Kevin Tian wrote:
> There's no point to expand FILESEXTRAPATHS immediately, since the place where
> it's referenced still use normal getVar(FILESEXTRAPATHS, d, True). This way
> it doesn't help anything except adding one more breaking variable on sstate.

There is a very significant reason for doing immediate expansion with
these variables.

The := ensures that the expansion happens in the context of the current
file. Look at the value of

bitbake formfactor -e | grep ^FILESEXTRAPATH

before and after this patch and you'll see what I mean. It ensures the
directory containing the bbappend is searched for source files as well
as the directory containing the .bb file.

Cheers,

Richard



> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> ---
>  documentation/bsp-guide/bsp.xml                    |    2 +-
>  .../recipes/formfactor/formfactor_0.0.bbappend     |    2 +-
>  .../recipes/linux/linux-yocto_git.bbappend         |    2 +-
>  meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend |    2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
> index 9e25068..0d716a3 100644
> --- a/documentation/bsp-guide/bsp.xml
> +++ b/documentation/bsp-guide/bsp.xml
> @@ -307,7 +307,7 @@ meta-bsp/packages/image-creator/image-creator-native_0.1.bb
>                  The example below shows extra files contained in a folder called ${PN} (the package name).
>              </para>
>              <programlisting>
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +FILESEXTRAPATHS = "${THISDIR}/${PN}"
>              </programlisting>
>              <para>
>              This technique allows the BSP to add machine-specific configuration files to the layer directory, 
> diff --git a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
> index 4a41d48..a64f367 100644
> --- a/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
> +++ b/meta-emenlow/recipes/formfactor/formfactor_0.0.bbappend
> @@ -1,3 +1,3 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +FILESEXTRAPATHS = "${THISDIR}/${PN}"
>   
>  PRINC = "1"
> diff --git a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
> index 9fa2937..77c5223 100644
> --- a/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
> +++ b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
> @@ -1,3 +1,3 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +FILESEXTRAPATHS = "${THISDIR}/${PN}"
>  COMPATIBLE_MACHINE_emenlow = "emenlow"
>  KMACHINE_emenlow  = "emenlow"
> diff --git a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
> index fac0921..c6f81d4 100644
> --- a/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
> +++ b/meta-emenlow/recipes/linux/linux_2.6.33.2.bbappend
> @@ -1,3 +1,3 @@
> -FILESPATH := "${FILESPATH}:${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
> +FILESEXTRAPATH = "${THISDIR}/${PN}"
>  SRC_URI += "file://defconfig"
>  COMPATIBLE_MACHINE_emenlow = "emenlow"



