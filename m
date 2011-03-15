Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 785E64C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 03:28:25 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Mar 2011 01:28:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="402755902"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 01:28:24 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 16:28:13 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 15 Mar 2011 16:28:12 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: kubera samrat <kubera.samrat@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 15 Mar 2011 16:28:11 +0800
Thread-Topic: [poky] Problem while adding krb5
Thread-Index: AcviUlk8bzAsAosVQlufCcb7QapRogAmBRjQ
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F218AD10F44@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
In-Reply-To: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Problem while adding krb5
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
X-List-Received-Date: Tue, 15 Mar 2011 08:28:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

kubera samrat wrote on 2011-03-14:
> Hi all,
>           I have added krb5 to my recipe. While building all the
> stages are getting succcesful but while do_rootfs stage I am getting
> an error as stated below.
>=20
>  Processing krb5...
> | Unable to find package krb5!
> | ERROR: Task failed: ('function do_rootfs failed',.....
>=20
> When I see krb5-1.6.3-r6/krb5-1.6.3   in build/tmp/work directory. I
> observed quite unusual that all the files configure, configure.in
> ....etc., are in the /src directory. So I mentioned in my bb file S =3D
> "${WORKDIR}/${PN}-${PV}/src/". I herewith attached bb file below.
>=20
> Please give me suggestions to solve this problem.
>=20
>=20
> ****************************************************************
> ****************************************** #DEPENDS =3D "perl-native
> ncurses util-linux-ng e2fsprogs-native" DEPENDS =3D "perl-native ncurses
> util-linux e2fsprogs" inherit autotools binconfig
>=20
> SRC_URI =3D "http://web.mit.edu/kerberos/dist/krb5/1.6/krb5-1.6.3-signed.=
tar \
> #SRC_URI =3D "git://git.srobo.org/~jmorse/kerberos.git \
>            file://fix-uclibc-ruserpass-collision.patch;apply=3Dno \
>            file://copyperms.patch;apply=3Dno"
> S =3D "${WORKDIR}/${PN}-${PV}/src/"
>=20
> # Will clean this up...
> EXTRA_OECONF +=3D " --without-tcl
> krb5_cv_attr_constructor_destructor=3Dyes ac_cv_func_regcomp=3Dyes \
>                   ac_cv_printf_positional=3Dyes
>                   ac_cv_file__etc_environment=3Dyes \
>                   ac_cv_file__etc_TIMEZONE=3Dno --with-system-et"
> CFLAGS_append +=3D "-DDESTRUCTOR_ATTR_WORKS=3D1 -I${STAGING_INCDIR}/et"
> LDFLAGS_append +=3D "-lpthread"
>=20
> FILES_${PN}-doc +=3D /usr/share/examples
>=20
> krb5_do_unpack() {
> 	tar xzf ${WORKDIR}/krb5-1.6.3.tar.gz -C ${WORKDIR}/
> 	patch -d ${S} -p1 < ${WORKDIR}/fix-uclibc-ruserpass-collision.patch
> 	patch -d ${S} -p1 < ${WORKDIR}/copyperms.patch
> }
>=20
> python do_unpack() {
> 	bb.build.exec_func('base_do_unpack', d)
> 	bb.build.exec_func('krb5_do_unpack', d)
> }
> do_configure() {
> 	oe_runconf
> }
>=20
>=20
> do_install() {
> 	oe_libinstall -so -C util/support libkrb5support ${STAGING_LIBDIR}
> 	oe_libinstall -so -C util/et libcom_err ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/crypto libk5crypto ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/krb5 libkrb5 ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/des425 libdes425 ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/krb4 libkrb4 ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/gssapi libgssapi_krb5 ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/rpc libgssrpc ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/kdb libkdb5 ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/kadm5/clnt libkadm5clnt ${STAGING_LIBDIR}
> 	oe_libinstall -so -C lib/kadm5/srv libkadm5srv ${STAGING_LIBDIR}
>=20
> 	install -d ${STAGING_INCDIR}/krb5 	for X in krb5.h locate_plugin.h 	do
> 		install -m 0644 ${S}/include/krb5/$X ${STAGING_INCDIR}/krb5/$X 	done
>=20
> 	install -d ${STAGING_INCDIR}/gssapi 	for X in gssapi_generic.h gssapi.h
> gssapi_krb5.h 	do 		install -m 0644 ${S}/include/gssapi/$X
> ${STAGING_INCDIR}/gssapi/$X 	done 	install -m 0644
> ${S}/lib/gssapi/mechglue/mechglue.h ${STAGING_INCDIR}/gssapi/mechglue.h
>=20
> 	install -d ${STAGING_INCDIR}/kerberosIV 	for X in krb.h des.h
> mit-copyright.h krb_err.h kadm_err.h 	do 		install -m 0644
> ${S}/include/kerberosIV/$X ${STAGING_INCDIR}/kerberosIV/$X 	done
>=20
> 	install -d ${STAGING_INCDIR}/gssrpc 	for X in auth.h auth_gss.h
> auth_gssapi.h auth_unix.h clnt.h netdb.h pmap_clnt.h pmap_prot.h
> pmap_rmt.h rename.h rpc.h rpc_msg.h svc.h svc_auth.h xdr.h types.h 	do
> 		install -m 0644 ${S}/include/gssrpc/$X ${STAGING_INCDIR}/gssrpc/$X
> 	done
>=20
> 	# com_err.h needs to be added here if you choose to use this builtin
> 	for X in krb5.h profile.h gssapi.h
> 	do
> 		install -m 0644 ${S}/include/$X ${STAGING_INCDIR}/$X
> 	done
> }

The problem might be here in do_install(). It installs all the files into S=
TAGING_DIR, which in poky is the task of do_populate_sysroot. What do_insta=
ll should do in poky is that install the files into ${D}, which will be lat=
er used by do_populate_sysroot and do_package.

> SRC_URI[md5sum] =3D "2dc1307686eb1c2bf1ab08ea805dad46" SRC_URI[sha256sum]
> =3D "7a1bd7d4bd326828c8ee382ed2b69ccd6c58762601df897d6a32169d84583d2a "
>=20
> ****************************************************************
> ****************************************************************
> ***********************************************************
>=20
> Thanks and regards,
> V kubera Samrat
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Best Regards,
Lianhao



