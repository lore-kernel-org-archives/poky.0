Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 478784C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 01:54:16 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Feb 2011 23:54:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,418,1291622400"; d="scan'208";a="883915719"
Received: from unknown (HELO [10.255.14.193]) ([10.255.14.193])
	by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2011 23:54:15 -0800
Message-ID: <4D4A5F26.7090906@intel.com>
Date: Wed, 02 Feb 2011 23:54:14 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1296672559.git.mark.hatle@windriver.com>
	<bbfc7a63de022aaca825fb051b944eac796640fc.1296672559.git.mark.hatle@windriver.com>
In-Reply-To: <bbfc7a63de022aaca825fb051b944eac796640fc.1296672559.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/3] bitbake.conf & package.bbclass: Use default SUMMARY and DESCRIPTION
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
X-List-Received-Date: Thu, 03 Feb 2011 07:54:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 10:52 AM, Mark Hatle wrote:
> A new default SUMMARY and DESCRIPTION was defined for any package that
> previously did not contain one.  This value is based on the original
> SUMMARY_${PN} value.
>
> The new default SUMMARY and DESCRIPTION is used as a basis for all of
> the automatic summary and descriptions for the various package splits,
> include ${PN}, ${PN}-dbg, ${PN}-dev, ${PN}-doc, and locales.
>
> A recipe may also override any of the automatic summaries by simply
> specifying the value.
>
> Signed-off-by: Mark Hatle<mark.hatle@windriver.com>
> ---
>   meta/classes/package.bbclass |    5 ++++-
>   meta/conf/bitbake.conf       |   27 +++++++++++++++++++--------
>   2 files changed, 23 insertions(+), 9 deletions(-)
>
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index bdc5d93..e64e441 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -289,6 +289,8 @@ python package_do_split_locales() {
>   	if mainpkg.find('-dev'):
>   		mainpkg = mainpkg.replace('-dev', '')
>
> +	summary = bb.data.getVar('SUMMARY', d, True) or pn
> +	description = bb.data.getVar('DESCRIPTION', d, True) or ""
>   	for l in locales:
>   		ln = legitimize_package_name(l)
>   		pkg = pn + '-locale-' + ln
> @@ -296,7 +298,8 @@ python package_do_split_locales() {
>   		bb.data.setVar('FILES_' + pkg, os.path.join(datadir, 'locale', l), d)
>   		bb.data.setVar('RDEPENDS_' + pkg, '%s virtual-locale-%s' % (mainpkg, ln), d)
>   		bb.data.setVar('RPROVIDES_' + pkg, '%s-locale %s-translation' % (pn, ln), d)
> -		bb.data.setVar('DESCRIPTION_' + pkg, '%s translation for %s' % (l, pn), d)
> +		bb.data.setVar('SUMMARY_' + pkg, '%s - %s translations' % (summary, l), d)
> +		bb.data.setVar('DESCRIPTION_' + pkg, '%s  This package contains language translation files for the %s locale.' % (description, l), d)
>
>   	bb.data.setVar('PACKAGES', ' '.join(packages), d)
>
> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
> index 3292a49..668f250 100644
> --- a/meta/conf/bitbake.conf
> +++ b/meta/conf/bitbake.conf
> @@ -166,14 +166,25 @@ BP = "${BPN}-${PV}"
>
>   SECTION = "base"
>   PRIORITY = "optional"
> -SUMMARY_${PN} ?= "${PN} version ${PV}-${PR}"
> -SUMMARY_${PN}-dbg ?= "Debugging files for ${PN}"
> -SUMMARY_${PN}-dev ?= "Development files for ${PN}"
> -SUMMARY_${PN}-doc ?= "Documentation files for ${PN}"
> -DESCRIPTION_${PN} ?= "${SUMMARY_${PN}}"
> -DESCRIPTION_${PN}-dbg ?= "${SUMMARY_${PN}-dbg}"
> -DESCRIPTION_${PN}-dev ?= "${SUMMARY_${PN}-dev}"
> -DESCRIPTION_${PN}-doc ?= "${SUMMARY_${PN}-doc}"
> +SUMMARY ?= "${PN} version ${PV}-${PR}"
> +DESCRIPTION ?= "${SUMMARY}"
> +
> +SUMMARY_${PN} ?= "${SUMMARY}"
> +DESCRIPTION_${PN} ?= "${DESCRIPTION}"
> +
Mark,

I am not sure about this change a from scratch build show the following 
failure:
Pseudo is not present but is required, building this first before the 
main build
Parsing recipes...NOTE: Error expanding variable SUMMARY
ERROR: Error parsing 
/vol/1/sgw/autobuilder/poky-slave/poky-full-ia/build/meta/recipes-kernel/linux/linux_2.6.23.bb: 
variable SUMMARY references itself!
ERROR: Command execution failed: Exited with 1

I think your odering needs to have the SUMMARY_${PN} first and then set 
SUMMARY from the ${SUMMARY_${PN}}, same for DESCRIPTION, maybe Richard 
can comment on this.

Sau!


> +SUMMARY_${PN}-dbg ?= "${SUMMARY} - Debugging files"
> +DESCRIPTION_${PN}-dbg ?= "${DESCRIPTION}  \
> +This package contains ELF symbols and related sources for debugging purposes."
> +
> +SUMMARY_${PN}-dev ?= "${SUMMARY} - Development files"
> +DESCRIPTION_${PN}-dev ?= "${DESCRIPTION}  \
> +This package contains symbolic links, static binaries, header files, and \
> +related items necessary for software development."
> +
> +SUMMARY_${PN}-doc ?= "${SUMMARY} - Documentation files"
> +DESCRIPTION_${PN}-doc ?= "${DESCRIPTION}  \
> +This package contains documentation."
> +
>   LICENSE = "INVALID"
>   MAINTAINER = "Yocto Project Team<poky@yoctoproject.org>"
>   HOMEPAGE = "unknown"


