Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D8FF4C810E5
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 18:18:28 -0600 (CST)
Received: from [192.168.0.7] (5ad5e099.bb.sky.com [90.213.224.153])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 342AA12EC1FE
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 18:59:35 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4D4339A3.30007@intel.com>
References: <cover.1296167950.git.scott.a.garman@intel.com>
	<e7a83f8908ec330d3ef6a9241989e64f277eabbb.1296167950.git.scott.a.garman@intel.com>
	<1296228424.2704.20.camel@scimitar>  <4D4339A3.30007@intel.com>
Date: Sat, 29 Jan 2011 00:18:20 +0000
Message-ID: <1296260300.2511.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 3/9] docbook-dsssl-stylesheets: new recipe v1.79
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
X-List-Received-Date: Sat, 29 Jan 2011 00:18:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-01-28 at 13:48 -0800, Scott Garman wrote:
> On 01/28/2011 07:27 AM, Joshua Lock wrote:
> > On Thu, 2011-01-27 at 14:42 -0800, Scott Garman wrote:
> >> From: Scott Garman<scott.a.garman@intel.com>
> >>
> >> Recipe migrated from OpenEmbedded.
> >>
> >> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
> >> ---
> >>   .../docbook-dsssl-stylesheets-native_1.79.bb       |   53 ++++++++++++++++++++
> >>   1 files changed, 53 insertions(+), 0 deletions(-)
> >>   create mode 100644 meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
> >>
> >> diff --git a/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
> >> new file mode 100644
> >> index 0000000..24c5364
> >> --- /dev/null
> >> +++ b/meta/recipes-devtools/docbook-dsssl-stylesheets/docbook-dsssl-stylesheets-native_1.79.bb
> >> @@ -0,0 +1,53 @@
> >> +SUMMARY = "DSSSL stylesheets used to transform SGML and XML DocBook files"
> >> +DESCRIPTION = "DSSSL stylesheets used to transform SGML and XML DocBook files"
> >> +HOMEPAGE= "http://docbook.sourceforge.net"
> >> +# Simple persmissive
> >> +LICENSE = "DSSSL"
> >> +LIC_FILES_CHKSUM = "file://README;beginline=41;endline=74;md5=875385159b2ee76ecf56136ae7f542d6"
> >
> > Oh no! Same comment as other mails...
> 
> Isn't this a different case? In this situation, there is license 
> information in a section of the README file, which I delineated above.
> 
> That seems legitimate, as our intention isn't to require upstream 
> sources to include a separate license file. Or is it?

Sorry, yes - that seems legitimate. Clearly my pattern matching was off
at this point...

> 
> >> +
> >> +DEPENDS = "sgml-common-native"
> >> +
> >> +PR = "r0"
> >> +
> >> +SRC_URI = "${SOURCEFORGE_MIRROR}/docbook/docbook-dsssl-${PV}.tar.bz2"
> >> +
> >> +SRC_URI[md5sum] = "bc192d23266b9a664ca0aba4a7794c7c"
> >> +SRC_URI[sha256sum] = "2f329e120bee9ef42fbdd74ddd60e05e49786c5a7953a0ff4c680ae6bdf0e2bc"
> >> +
> >> +S = "${WORKDIR}/docbook-dsssl-${PV}"
> >> +
> >> +inherit native
> >> +
> >> +SYSROOT_PREPROCESS_FUNCS += "docbook_dssl_stylesheets_native_mangle"
> >> +
> >> +do_install () {
> >> +	# Refer to http://www.linuxfromscratch.org/blfs/view/stable/pst/docbook-dsssl.html
> >> +	# for details.
> >> +	install -d ${D}${bindir}
> >> +	install -m 0755 bin/collateindex.pl ${D}${bindir}
> >> +
> >> +	install -d ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
> >> +	install -m 0644 catalog ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
> >> +	cp -PpRr common ${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}
> >> +
> >> +	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
> >> +		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/catalog
> >> +
> >> +	install-catalog --add ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat \
> >> +		${D}${datadir}/sgml/docbook/dsssl-stylesheets-${PV}/common/catalog
> >> +
> >> +	install-catalog --add ${sysconfdir}/sgml/sgml-docbook.cat \
> >> +		${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
> >> +
> >> +	# Moving them to image directory so that they get included in the .ipk file
> >> +	# generated by new style staging.
> >
> > Staging isn't ipk files :-) Is this still required?
> 
> I'll update the comment, but I think we still want to stage the files. 
> Otherwise I noticed that -c cleanall will not remove them from the 
> sysroot. Or is there another way to ensure that?

Fixing the comment is fine, thanks.

> 
> >> +	install -d ${D}${sysconfdir}/sgml
> >> +	cp ${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat ${D}${sysconfdir}/sgml/
> >> +	cp ${sysconfdir}/sgml/sgml-docbook.cat ${D}${sysconfdir}/sgml/
> >> +	cp ${sysconfdir}/sgml/catalog ${D}${sysconfdir}/sgml/
> >> +}
> >> +
> >> +docbook_dssl_stylesheets_native_mangle () {
> >> +	# Removing the image directory path ${D} from the .cat file.
> >> +	sed -i -e "s|${D}||g" ${SYSROOT_DESTDIR}${sysconfdir}/sgml/dsssl-docbook-stylesheets.cat
> >> +}
> 
> Thanks for the feedback. I'll definitely respin the patch series to 
> include a license file where none exists at all, but this email includes 
> a couple of questions I'd like replies to before I submit it.
> 
> Thanks,
> 
> Scott

Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


