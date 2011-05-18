Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D03344C8090C
	for <poky@yoctoproject.org>; Wed, 18 May 2011 11:40:18 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2011 09:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,231,1304319600"; 
   d="scan'208";a="4074939"
Received: from unknown (HELO [10.255.12.160]) ([10.255.12.160])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2011 09:40:18 -0700
Message-ID: <4DD3F671.1050703@intel.com>
Date: Wed, 18 May 2011 09:40:17 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1305717523.git.xiaofeng.yan@windriver.com>
	<fadb1ec52c31b89379fca3880e7f00fad0222565.1305717523.git.xiaofeng.yan@windriver.com>
In-Reply-To: <fadb1ec52c31b89379fca3880e7f00fad0222565.1305717523.git.xiaofeng.yan@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] lsbsetup: Rename this file and add a link for	lsb test
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
X-List-Received-Date: Wed, 18 May 2011 16:40:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2011 04:23 AM, Xiaofeng Yan wrote:
> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>
In the future, please include the [YOCTO #bugid] in the commit messages 
itself.  It should go here after the Subject line before the body of the 
commit message.

[YOCTO #1079]

> Rename this file version from 0.9 to 1.0.
> Link time environment for Hong Kong time for lsb test.
>

> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
> ---
>   meta/recipes-extended/lsb/lsbsetup_0.9.bb |   25 -------------------------
>   meta/recipes-extended/lsb/lsbsetup_1.0.bb |   27 +++++++++++++++++++++++++++
>   2 files changed, 27 insertions(+), 25 deletions(-)
>   delete mode 100644 meta/recipes-extended/lsb/lsbsetup_0.9.bb
>   create mode 100644 meta/recipes-extended/lsb/lsbsetup_1.0.bb
>
> diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
> deleted file mode 100644
> index f3651e2..0000000
> --- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -DESCRIPTION = "auto-setup environment for lsb test"
> -SECTION = "console/utils"
> -PRIORITY = "required"
> -LICENSE = "GPLv2"
> -PR = "r3"
> -
> -LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
> -
> -SRC_URI = "file://LSB_Setup.sh"
> -
> -S=${WORKDIR}
> -
> -do_install() {
> -        # Only install file if it has a contents
> -        install -d ${D}/usr/bin
> -        install -m 0755 ${S}/LSB_Setup.sh ${D}/usr/bin
> -        install -d  ${D}/usr/lib/lsb
> -        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
> -        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
> -        ln -sf ${sbindir}/sendmail ${D}/${libdir}/sendmail
> -}
> -
> -FILES_${PN} += "${libdir}/lsb \
> -               ${libdir}/* \
> -               "
> diff --git a/meta/recipes-extended/lsb/lsbsetup_1.0.bb b/meta/recipes-extended/lsb/lsbsetup_1.0.bb
> new file mode 100644
> index 0000000..247f9bc
> --- /dev/null
> +++ b/meta/recipes-extended/lsb/lsbsetup_1.0.bb
> @@ -0,0 +1,27 @@
> +DESCRIPTION = "auto-setup environment for lsb test"
> +SECTION = "console/utils"
> +PRIORITY = "required"
> +LICENSE = "GPLv2"
> +PR = "r3"
> +
> +LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
> +
> +SRC_URI = "file://LSB_Setup.sh"
> +
> +S=${WORKDIR}
> +
> +do_install() {
> +    # Only install file if it has a contents
> +    install -d ${D}/usr/bin
> +    install -d ${D}/${sysconfdir}
> +    install -m 0755 ${S}/LSB_Setup.sh ${D}/usr/bin
> +    install -d  ${D}/usr/lib/lsb
> +    ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
> +    ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
> +    ln -sf ${sbindir}/sendmail ${D}/${libdir}/sendmail
> +    ln -sf ${datadir}/zoneinfo/Asia/Hong_Kong ${D}${sysconfdir}/localtime
> +}
> +
> +FILES_${PN} += "${libdir}/lsb \
> +               ${libdir}/* \
> +               "


