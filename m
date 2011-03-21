Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9069D4C80132
	for <poky@yoctoproject.org>; Sun, 20 Mar 2011 22:41:16 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Mar 2011 20:41:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,217,1299484800"; d="scan'208";a="405552529"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by azsmga001.ch.intel.com with ESMTP; 20 Mar 2011 20:40:51 -0700
Message-ID: <4D86C8C3.4040806@linux.intel.com>
Date: Sun, 20 Mar 2011 20:40:51 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1300676026.git.kai.kang@windriver.com>
	<3d02489147dda8426471cfbb9c5f17464d67e201.1300676026.git.kai.kang@windriver.com>
In-Reply-To: <3d02489147dda8426471cfbb9c5f17464d67e201.1300676026.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] msmtp: add link sendmail for lsb command check
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
X-List-Received-Date: Mon, 21 Mar 2011 03:41:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/20/2011 07:59 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> LSB command check will test the exist of sendmail, so make sendmail
> link to msmtp using update-alternatives class in order to pass the test.
>
> Related to [YOCTO #520]
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>

Untested, but this looks like a reasonable thing to do to me, and it 
beats installing postfix or exim!

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>   meta/recipes-extended/msmtp/msmtp_1.4.23.bb |    9 +++++++--
>   1 files changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> index cb3d83c..d48881a 100644
> --- a/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> +++ b/meta/recipes-extended/msmtp/msmtp_1.4.23.bb
> @@ -6,7 +6,7 @@ SECTION = "console/network"
>   PRIORITY = "required"
>   LICENSE = "GPLv3"
>   DEPENDS = "zlib gnutls"
> -PR = "r0"
> +PR = "r1"
>
>
>   #COPYING or Licence
> @@ -18,4 +18,9 @@ SRC_URI = "http://sourceforge.net/projects/msmtp/files/msmtp/${PV}/${BPN}-${PV}.
>   SRC_URI[md5sum] = "5fb7ae88186624cdb125d3efad3fdc16"
>   SRC_URI[sha256sum] = "269cd30eeb867167c6a599e23399f4fc24196fcdef3bac5b120d806b3b421810"
>
> -inherit gettext autotools
> +inherit gettext autotools update-alternatives
> +
> +ALTERNATIVE_NAME = "sendmail"
> +ALTERNATIVE_PATH = "${bindir}/msmtp"
> +ALTERNATIVE_LINK = "${sbindir}/sendmail"
> +ALTERNATIVE_PRIORITY = "100"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

