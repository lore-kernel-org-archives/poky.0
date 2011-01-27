Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB7ED4C8006D
	for <poky@pokylinux.org>; Thu, 27 Jan 2011 12:00:17 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 10:00:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,386,1291622400"; d="scan'208";a="701357688"
Received: from unknown (HELO [10.24.0.220]) ([10.24.0.220])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 10:00:17 -0800
Message-ID: <4D41B2B1.2050206@intel.com>
Date: Thu, 27 Jan 2011 10:00:17 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <b7da2f$q8ksnl@fmsmga001.fm.intel.com>
In-Reply-To: <b7da2f$q8ksnl@fmsmga001.fm.intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 2/5] cronie: enable multi-user crontab usage and make	cron environment complete
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
X-List-Received-Date: Thu, 27 Jan 2011 18:00:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2011 03:38 AM, poky-bounces@yoctoproject.org wrote:
> From: Kevin Tian<kevin.tian@intel.com>
>
> several cron related test cases in LTP reveals that our current cron recipe
> is not complete:
>
> a) a complete cron hierarchy better have:
>       /etc/crontab
>       /etc/cron.d
>       /etc/cron.hourly
>       /etc/cron.daily
>       /etc/cron.weekly
>       /etc/cron.monthly
>
> b) for a normal user to use crontab command:
>       add a new group - crontab
>       /usr/bin/crontab is setgid to root:crontab
>       /var/spool/cron is owned by root:crontab
>
> below are optional, and thus not included in the default setup:
>       /etc/cron.deny
>       /etc/cron.allow
>
> cronie by default only allows root user to use crontab, if neither cron.deny
> nor cron.allow exists. They are controlled by final policy deployed on the
> product.
>
> Signed-off-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   meta/recipes-extended/cronie/cronie/crontab  |   10 ++++++++
>   meta/recipes-extended/cronie/cronie_1.4.6.bb |   33 ++++++++++++++++++++++++-
>   2 files changed, 41 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-extended/cronie/cronie/crontab
>
> diff --git a/meta/recipes-extended/cronie/cronie/crontab b/meta/recipes-extended/cronie/cronie/crontab
> new file mode 100644
> index 0000000..cc9169e
> --- /dev/null
> +++ b/meta/recipes-extended/cronie/cronie/crontab
> @@ -0,0 +1,10 @@
> +# /etc/crontab: system-wide crontab
> +# Unlike any other crontab you don't have to run the `crontab'
> +# command to install the new version when you edit this file
> +# and files in /etc/cron.d. These files also have username fields,
> +# that none of the other crontabs do.
> +
> +SHELL=/bin/sh
> +PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
> +
> +# m h dom mon dow user	command
> diff --git a/meta/recipes-extended/cronie/cronie_1.4.6.bb b/meta/recipes-extended/cronie/cronie_1.4.6.bb
> index 6b4c64e..09714c7 100644
> --- a/meta/recipes-extended/cronie/cronie_1.4.6.bb
> +++ b/meta/recipes-extended/cronie/cronie_1.4.6.bb
> @@ -14,10 +14,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=963ea0772a2adbdcd607a9b2ec320c11 \
>
>   SECTION = "utils"
>
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI = "https://fedorahosted.org/releases/c/r/cronie/cronie-${PV}.tar.gz \
> -           file://crond.init"
> +           file://crond.init \
> +           file://crontab"
>
>   SRC_URI[md5sum] = "968e3d3e7c8e1d0588d533883482d3fa"
>   SRC_URI[sha256sum] = "4435484c28a4452ee37db27182675660cdebf16d8956771b28c8a6f2e9c8048b"
> @@ -32,4 +33,32 @@ do_install_append () {
>   	install -d ${D}${sysconfdir}/init.d/
>   	install -m 0644 ${S}/crond.sysconfig ${D}${sysconfdir}/sysconfig/crond
>   	install -m 0755 ${WORKDIR}/crond.init ${D}${sysconfdir}/init.d/crond
> +
> +	# below are necessary for a complete cron environment
> +	install -d ${D}${localstatedir}/spool/cron
> +	install -m 0755 ${WORKDIR}/crontab ${D}${sysconfdir}/
> +        mkdir -p ${D}${sysconfdir}/cron.d
> +	mkdir -p ${D}${sysconfdir}/cron.hourly
> +	mkdir -p ${D}${sysconfdir}/cron.daily
> +	mkdir -p ${D}${sysconfdir}/cron.weekly
> +	mkdir -p ${D}${sysconfdir}/cron.monthly
> +}
> +
> +pkg_postinst_${PN} () {
> +	if [ "x$D" != "x" ] ; then
> +		exit 1
> +	fi
> +
> +	# below setting is necessary to allow normal user using crontab
> +
> +	# add 'crontab' group and setgid for crontab binary
> +	grep crontab /etc/group || addgroup crontab
> +	chown root:crontab /usr/bin/crontab
> +	chmod 2755 /usr/bin/crontab
> +
> +	# allow 'crontab' group write to /var/spool/cron
> +	chown root:crontab /var/spool/cron
> +	chmod 770 /var/spool/cron
> +
> +	chmod 600 /etc/crontab
>   }
Kevin,

I am going to hold off pulling this and the at changes.

Is there a specific reason that you are creating this as a post install 
operation for the permission management, both this and the at recipes 
are doing this.  Please remember that adding additional items that run 
at first boot slow things down.

Is it possible to run these permission changes at actual install time, 
instead of on the target.

Thanks
   Sau!

