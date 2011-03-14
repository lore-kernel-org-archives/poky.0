Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 024204C80A73
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 09:15:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so5590736wyb.35
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 07:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=btNDUvqdUjWJ+VU3c2vTZfwngFTMLLzx55Sk9GZfA+w=;
	b=sUhOd8avvJoyfkD9Ab6Flnetge/gnvYuMIQP2foLvlTsrqg9edVXJh7xNYGb7l/mZi
	SwIxf2c/gcml5oL+n8lRjoc3y/grbDO0YrpLs54yP1r1F1U0VxZpmvV98d6IlvkrcqET
	F2EgAcgI2xE0bkkFyCS1RIjBhAZUVKrt2Am14=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=UlDVRK8RxowBcDDWFqYWX9ByOfmukU7ywREy9DzNYXpGyJ6AEU+LgywGkiYbGbxnnc
	JgOBxBfQ3vNZ+vLy7rnE7E39zXO7g8RAKlvLeClqRIQBLt0YUvhCIgHev+BseucEJu4h
	Hg9NonPNzwlM0KPbcKsSalxGQOBXwEw5KRYaU=
MIME-Version: 1.0
Received: by 10.216.62.77 with SMTP id x55mr10191902wec.59.1300112129922; Mon,
	14 Mar 2011 07:15:29 -0700 (PDT)
Received: by 10.216.236.166 with HTTP; Mon, 14 Mar 2011 07:15:29 -0700 (PDT)
Date: Mon, 14 Mar 2011 19:45:29 +0530
Message-ID: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Problem while adding krb5
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
X-List-Received-Date: Mon, 14 Mar 2011 14:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
          I have added krb5 to my recipe. While building all the
stages are getting succcesful but while do_rootfs stage I am getting
an error as stated below.

 Processing krb5...
| Unable to find package krb5!
| ERROR: Task failed: ('function do_rootfs failed',.....

When I see krb5-1.6.3-r6/krb5-1.6.3   in build/tmp/work directory. I
observed quite unusual that all the files configure, configure.in
....etc., are in the /src directory. So I mentioned in my bb file S =
"${WORKDIR}/${PN}-${PV}/src/". I herewith attached bb file below.

Please give me suggestions to solve this problem.


**********************************************************************************************************
#DEPENDS = "perl-native ncurses util-linux-ng e2fsprogs-native"
DEPENDS = "perl-native ncurses util-linux e2fsprogs"
inherit autotools binconfig

SRC_URI = "http://web.mit.edu/kerberos/dist/krb5/1.6/krb5-1.6.3-signed.tar \
#SRC_URI = "git://git.srobo.org/~jmorse/kerberos.git \
           file://fix-uclibc-ruserpass-collision.patch;apply=no \
           file://copyperms.patch;apply=no"

S = "${WORKDIR}/${PN}-${PV}/src/"

# Will clean this up...
EXTRA_OECONF += " --without-tcl
krb5_cv_attr_constructor_destructor=yes ac_cv_func_regcomp=yes \
                  ac_cv_printf_positional=yes ac_cv_file__etc_environment=yes \
                  ac_cv_file__etc_TIMEZONE=no --with-system-et"
CFLAGS_append += "-DDESTRUCTOR_ATTR_WORKS=1 -I${STAGING_INCDIR}/et"
LDFLAGS_append += "-lpthread"

FILES_${PN}-doc += /usr/share/examples

krb5_do_unpack() {
	tar xzf ${WORKDIR}/krb5-1.6.3.tar.gz -C ${WORKDIR}/
	patch -d ${S} -p1 < ${WORKDIR}/fix-uclibc-ruserpass-collision.patch
	patch -d ${S} -p1 < ${WORKDIR}/copyperms.patch
}

python do_unpack() {
	bb.build.exec_func('base_do_unpack', d)
	bb.build.exec_func('krb5_do_unpack', d)
}
do_configure() {
	oe_runconf
}


do_install() {
	oe_libinstall -so -C util/support libkrb5support ${STAGING_LIBDIR}
	oe_libinstall -so -C util/et libcom_err ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/crypto libk5crypto ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/krb5 libkrb5 ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/des425 libdes425 ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/krb4 libkrb4 ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/gssapi libgssapi_krb5 ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/rpc libgssrpc ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/kdb libkdb5 ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/kadm5/clnt libkadm5clnt ${STAGING_LIBDIR}
	oe_libinstall -so -C lib/kadm5/srv libkadm5srv ${STAGING_LIBDIR}

	install -d ${STAGING_INCDIR}/krb5
	for X in krb5.h locate_plugin.h
	do
		install -m 0644 ${S}/include/krb5/$X ${STAGING_INCDIR}/krb5/$X
	done

	install -d ${STAGING_INCDIR}/gssapi
	for X in gssapi_generic.h gssapi.h gssapi_krb5.h
	do
		install -m 0644 ${S}/include/gssapi/$X ${STAGING_INCDIR}/gssapi/$X
	done
	install -m 0644 ${S}/lib/gssapi/mechglue/mechglue.h
${STAGING_INCDIR}/gssapi/mechglue.h

	install -d ${STAGING_INCDIR}/kerberosIV
	for X in krb.h des.h mit-copyright.h krb_err.h kadm_err.h
	do
		install -m 0644 ${S}/include/kerberosIV/$X ${STAGING_INCDIR}/kerberosIV/$X
	done

	install -d ${STAGING_INCDIR}/gssrpc
	for X in auth.h auth_gss.h auth_gssapi.h auth_unix.h clnt.h netdb.h
pmap_clnt.h pmap_prot.h pmap_rmt.h rename.h rpc.h rpc_msg.h svc.h
svc_auth.h xdr.h types.h
	do
		install -m 0644 ${S}/include/gssrpc/$X ${STAGING_INCDIR}/gssrpc/$X
	done

	# com_err.h needs to be added here if you choose to use this builtin
	for X in krb5.h profile.h gssapi.h
	do
		install -m 0644 ${S}/include/$X ${STAGING_INCDIR}/$X
	done
}

SRC_URI[md5sum] = "2dc1307686eb1c2bf1ab08ea805dad46"
SRC_URI[sha256sum] =
"7a1bd7d4bd326828c8ee382ed2b69ccd6c58762601df897d6a32169d84583d2a"

*******************************************************************************************************************************************************************************************

Thanks and regards,
V kubera Samrat

