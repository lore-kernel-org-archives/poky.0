Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED79F4C810E5
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 09:27:17 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id B926412EC2AF
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:08:23 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <483d3793c95449c96048cf67c211bae704f5431e.1296167950.git.scott.a.garman@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
	<483d3793c95449c96048cf67c211bae704f5431e.1296167950.git.scott.a.garman@intel.com>
Date: Fri, 28 Jan 2011 15:27:00 +0000
Message-ID: <1296228420.2704.18.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 2/9] docbook-sgml-dtd: new recipes - v3.1, v4.1, v4.5
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
X-List-Received-Date: Fri, 28 Jan 2011 15:27:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 14:42 -0800, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
> 
> These are recipes for DTDs commonly used when generating
> documentation for free software. Recipes dervied from the
> versions in OpenEmbedded.
> 
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
>  .../docbook-sgml-dtd-3.1-native.bb                 |   23 +++++++++
>  .../docbook-sgml-dtd-4.1-native.bb                 |   23 +++++++++
>  .../docbook-sgml-dtd-4.5-native.bb                 |   21 ++++++++
>  .../docbook-sgml-dtd/docbook-sgml-dtd-native.inc   |   49 ++++++++++++++++++++
>  4 files changed, 116 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
>  create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
>  create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
>  create mode 100644 meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
> 
> diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
> new file mode 100644
> index 0000000..2446f13
> --- /dev/null
> +++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-3.1-native.bb
> @@ -0,0 +1,23 @@
> +require docbook-sgml-dtd-native.inc
> +
> +# http://www.docbook.org/specs/docbook-4.5-spec.html#a.notices
> +LICENSE = "OASIS"
> +# License information is not distributed with the source archive,
> +# which means we can't verify it using our normal means. Hash the
> +# README file instead as LIC_FILES_CHKSUM is still required.
> +LIC_FILES_CHKSUM = "file://readme.txt;md5=019d287d0349e09ff9e9d57f838e94c9"
> +
> +DTD_VERSION = "3.1"
> +
> +PR = "${INC_PR}.0"
> +
> +SRC_URI = "http://www.docbook.org/sgml/3.1/docbk31.zip"
> +
> +SRC_URI[md5sum] = "432749c0c806dbae81c8bcb70da3b5d3"
> +SRC_URI[sha256sum] = "20261d2771b9a052abfa3d8fab1aa62be05791a010281c566f9073bf0e644538"
> +
> +do_compile() {
> +	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd-3.html
> +	# for details.
> +	sed -i -e '/ISO 8879/d' -e 's|DTDDECL "-//OASIS//DTD DocBook V3.1//EN"|SGMLDECL|g' docbook.cat
> +}
> diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
> new file mode 100644
> index 0000000..dad3e70
> --- /dev/null
> +++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.1-native.bb
> @@ -0,0 +1,23 @@
> +require docbook-sgml-dtd-native.inc
> +
> +# http://www.docbook.org/specs/docbook-4.5-spec.html#a.notices
> +LICENSE = "OASIS"
> +# License information is not distributed with the source archive,
> +# which means we can't verify it using our normal means. Hash the
> +# README file instead as LIC_FILES_CHKSUM is still required.
> +LIC_FILES_CHKSUM = "file://readme.txt;md5=3269fc8f8c89278a9aef96411e28d38a"

Same here, can we patch in the license file and checksum that?

> +
> +DTD_VERSION = "4.1"
> +
> +PR = "${INC_PR}.0"
> +
> +SRC_URI = "http://docbook.org/sgml/4.1/docbk41.zip"
> +
> +SRC_URI[md5sum] = "489f6ff2a2173eb1e14216c10533ede2"
> +SRC_URI[sha256sum] = "deaafcf0a3677692e7ad4412c0e41c1db3e9da6cdcdb3dd32b2cc1f9c97d6311"
> +
> +do_compile() {
> +	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
> +	# for details.
> +	sed -i -e '/ISO 8879/d' -e '/gml/d' docbook.cat
> +}
> diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
> new file mode 100644
> index 0000000..c034268
> --- /dev/null
> +++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-4.5-native.bb
> @@ -0,0 +1,21 @@
> +require docbook-sgml-dtd-native.inc
> +
> +# http://www.docbook.org/specs/docbook-4.5-spec.html#a.notices
> +LICENSE = "OASIS"
> +# License information is not distributed with the source archive,
> +# which means we can't verify it using our normal means. Hash the
> +# README file instead as LIC_FILES_CHKSUM is still required.
> +LIC_FILES_CHKSUM = "file://README;md5=ccb8cc69fb302e30c165e326ebec0f18"

:-(

> +
> +DTD_VERSION = "4.5"
> +
> +PR = "${INC_PR}.0"
> +
> +SRC_URI[md5sum] = "07c581f4bbcba6d3aac85360a19f95f7"
> +SRC_URI[sha256sum] = "8043e514e80c6c19cb146b5d37937d1305bf3abf9b0097c36df7f70f611cdf43"
> +
> +do_compile() {
> +	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
> +	# for details.
> +	sed -i -e '/ISO 8879/d' -e'/gml/d' docbook.cat
> +}
> diff --git a/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
> new file mode 100644
> index 0000000..0843553
> --- /dev/null
> +++ b/meta/recipes-devtools/docbook-sgml-dtd/docbook-sgml-dtd-native.inc
> @@ -0,0 +1,49 @@
> +# The DTDs of the various versions have to be installed in parallel and
> +# should not replace each other. The installation step is common for
> +# all versions and just differs in ${DTD_VERSION} which is set in each
> +# version recipe.
> +#
> +# The DTDs do have some quirks (see LFS documentation).
> +SUMMARY = "Document type definitions for verification of SGML data files"
> +DESCRIPTION = "Document type definitions for verification of SGML data \
> +files against the DocBook rule set"
> +HOMEPAGE = "http://www.docbook.org/sgml/"
> +
> +DEPENDS = "sgml-common-native"
> +
> +SRC_URI = "http://www.docbook.org/sgml/${DTD_VERSION}/docbook-${DTD_VERSION}.zip"
> +
> +# The .zip file extracts to the current dir
> +S = "${WORKDIR}"
> +
> +INC_PR = "r0"
> +
> +SYSROOT_PREPROCESS_FUNCS += "docbook_sgml_dtd_native_mangle"
> +
> +inherit native
> +
> +do_install () {
> +	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/sgml-dtd.html
> +	# for details.
> +	install -d -m 755 ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}
> +	install docbook.cat ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
> +	cp -PpRr *.dtd *.mod *.dcl ${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}
> +
> +	install-catalog \
> +		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
> +		${D}${datadir}/sgml/docbook/sgml-dtd-${DTD_VERSION}/catalog
> +
> +	install-catalog \
> +		--add ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat \
> +		${sysconfdir}/sgml/sgml-docbook.cat
> +
> +	# Copy the generated catalog to the image directory for staging.
> +	install -d ${D}${sysconfdir}/sgml
> +	cp ${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat ${D}${sysconfdir}/sgml/
> +}
> +
> +docbook_sgml_dtd_native_mangle () {
> +	# Remove the image directory path ${D} from the .cat files.
> +	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook.cat || true
> +	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/sgml-docbook-dtd-${DTD_VERSION}.cat
> +}

-- 
Joshua Lock
        Intel Open Source Technology Centre


