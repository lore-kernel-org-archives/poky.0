Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 515D1E00CB6; Sun,  3 Mar 2019 05:48:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.139.58 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 12605 seconds by postgrey-1.32 at yocto-www;
	Sun, 03 Mar 2019 05:48:52 PST
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-eopbgr1390058.outbound.protection.outlook.com [40.107.139.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F72E00A84
	for <poky@yoctoproject.org>; Sun,  3 Mar 2019 05:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=aczkLn8S1JoVxn2s/tO9hq0fDlJ7y3b9fsIgi0mseVY=;
	b=Mh+pK6Z+tOfpLsCHyqT2P7ea9PD8EvSMUpcXq7NLOub5lMU2AwsmzLayY1SW6ulMCStr3g0Nkl8Vxf8aJhLQcHeG+MS6Amabgjz6IQHt7QmFjZ82a+Q4OGypUX3GoxM/3q6YNHeAtp11sM4kcLwBQARYEI5/gMzyVJbgRfUz3r4=
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM (10.174.216.146) by
	BMXPR01MB1061.INDPRD01.PROD.OUTLOOK.COM (10.174.217.8) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1665.19; Sun, 3 Mar 2019 13:33:11 +0000
Received: from BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::fd31:8a8e:b35e:2c6]) by BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	([fe80::fd31:8a8e:b35e:2c6%6]) with mapi id 15.20.1665.019;
	Sun, 3 Mar 2019 13:33:11 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][meta][sumo][PATCH] lighttpd: added ptest
Thread-Index: AQHU0cWkyQyGlMhl/Ue/q2YY7MF8eA==
Date: Sun, 3 Mar 2019 13:33:10 +0000
Message-ID: <1551619978-3899-1-git-send-email-Aditya.Tayade@kpit.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:a00:35::13) To BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:b00:11::18)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-originating-ip: [117.228.189.111]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22de612b-9569-4999-1920-08d69fdcc6f3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:BMXPR01MB1061; 
x-ms-traffictypediagnostic: BMXPR01MB1061:
x-ms-exchange-purlcount: 1
x-microsoft-exchange-diagnostics: =?iso-8859-1?Q?1; BMXPR01MB1061;
	23:OyvDQel6TEkxHoklxZeRzBbZ9D9EpGiw6KSEKOm?=
	=?iso-8859-1?Q?0PmSdbC2bzuGGLNOpsxGDibAlw5I1u2t43vmLVtqUuKqoFPAbRXyQlVHdF?=
	=?iso-8859-1?Q?iz2v/XvgjiELJ5X1DcMoavsFtxbecKNfSoxruiIfy/54TCuxZ+2gl01SII?=
	=?iso-8859-1?Q?SAZ6De+PbKLTp7gf0iGd8djIwJw2fWD04jnR9C8meMp6gKp1lLjDwoshug?=
	=?iso-8859-1?Q?qPb9hEkExAot8OwWPd0BsIEPwu2+dKxR8gRn3+H9heIVx5RhzXOuMjE7ZL?=
	=?iso-8859-1?Q?+JPIzbv9P8lwyOLT+gQysp9slE+EtCEoZaSVggXmZcAvDf0++/rBcWw6DB?=
	=?iso-8859-1?Q?9vFaQqYpWPUvjYtJR2tK7eJSBjGGFSaL/q/s+YRwsmMZZQCj3x5w/Hy/zw?=
	=?iso-8859-1?Q?xdudBYK21TmGgaQWvj7mfFmFl+VP4KFQtU8Sf1XB5gWAZ8TPmZxkQTXWs7?=
	=?iso-8859-1?Q?7Vxb4qlqAdzqJ4f7QdaoPG8VaFqe3dUfPhZ75VwmVEaGJ8kDcJDYoNYcdm?=
	=?iso-8859-1?Q?c/SLG+JQR6iCzfJOsh69OHO11hSzLcQD2SyW04qcowUc0z+d4sFET9MMq0?=
	=?iso-8859-1?Q?LwsZBFnvJeCyelBf7cM1JvtweHIl+LrFaAYmgZW3XsJ908lioXocLaIdWF?=
	=?iso-8859-1?Q?A88dteu7zQusLvMG/oSkpsshK2M6rz2o8rmOw/fKLVMOdpyc+DpKgKeS+R?=
	=?iso-8859-1?Q?jrSn/bTxMFy5UOdTZvwewYWQvUP4Zp0Z2cFvnsrxYvcl9Qb5Lh47I69CTe?=
	=?iso-8859-1?Q?MphSTx1vmbTZ2gi6SbcO0Kg+EfSr7DkMIYm5pmvdehERa1jdG0gOr+uuGJ?=
	=?iso-8859-1?Q?MpIWg4c2sDDmNwt6d8jIA0so2o98J+WRMvmXPyDcBG4Hca9UOiKkwpxfUh?=
	=?iso-8859-1?Q?lcPIY9oO0XENTQYEErnbOdmJvna0dDgTo6FQ6RBDWmrwSjyhgZal6o2peG?=
	=?iso-8859-1?Q?KsiOxJVl1nxP+6kmrFg9HVdWtRIKlL1D6997jFlPqzPREgC7oaTrcsm5pu?=
	=?iso-8859-1?Q?wEFOVtPGQ0WdP8xAnLPHZIeJa35EeqE39pTu/lsDFvhHi4CjzOVQwrIj+b?=
	=?iso-8859-1?Q?5mngKibLSREypP4jobsm0wWgTz629oCQ0519bStzG+6tJv29GbVcbC9nNQ?=
	=?iso-8859-1?Q?uM7crEyNEgi+nH5FA4BB9PvnJIlnQiLDv87xXNhLcmf/QXecePzZtyA0kD?=
	=?iso-8859-1?Q?V5zuH9dEYnArZ9a/3BDUDl3UmDqjITK6DwOonoPeIQw/OjdoJoVdMmb/kw?=
	=?iso-8859-1?Q?/MUxQMUI/qGwbPtclZe3GemUNcUJZFv1RV9knPpxxEcq8EZ0E2HO403OGb?=
	=?iso-8859-1?Q?MTXu1/2KkxfTWe59KnzArKrB2Oe5SSwKHMVntUjmmduRA=3D=3D?=
x-microsoft-antispam-prvs: <BMXPR01MB10615485DC6A2FCE53A548F691700@BMXPR01MB1061.INDPRD01.PROD.OUTLOOK.COM>
x-forefront-prvs: 096507C068
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(36756003)(107886003)(2351001)(105586002)(14454004)(106356001)(316002)(81166006)(8676002)(81156014)(1730700003)(7736002)(6436002)(2501003)(14444005)(256004)(478600001)(53936002)(72206003)(66574012)(305945005)(5640700003)(6512007)(6486002)(6306002)(99286004)(8936002)(6506007)(386003)(3846002)(26005)(486006)(102836004)(6116002)(71200400001)(52116002)(6916009)(50226002)(71190400001)(186003)(2906002)(4326008)(68736007)(97736004)(5660300002)(86362001)(476003)(2616005)(25786009)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BMXPR01MB1061;
	H:BMXPR01MB0854.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TPuljWCME7hQOrsfTnz7I7Oae75YgcFSkUoWKpFuZmKR+xplYcOnJ4lLekatHj4KeiRPgHNEV8pOqrqOmIUDCbFCMx7sN8nCExptwCDwaM5RCNW3XtQKK75BP0ohNc7ekn0OVf9guANnWUV/6Lhf+kdG3tROru9pZejytRB482C5xB9Pj2LWsDNLCRTj+3mgetcBgFI+p9x8fRkbrlPxubNFZePnxBDidr3Onm/FseCl0WRRCSTHRu6nQAeQrQdEuZ6mjL1SSjKI89onbcIbmvzI2ClPGZu5ed4e4XVtjgNB0IO/giW9ZLqhWUnaz70I5XmPfTJgf3easZ4FNrM4RaweD9MUh6C9hziyRCbygBioH4lYppFPzN9cYO+j1uSmM/cNXFh+l4X5t/jbOeSMUaIk7jSUFKPNZgEFCvjeMSw=
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22de612b-9569-4999-1920-08d69fdcc6f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2019 13:33:10.4670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BMXPR01MB1061
Subject: [meta][sumo][PATCH] lighttpd: added ptest
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 03 Mar 2019 13:48:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Reused lighttpd internal tests and did minimal patching to fix paths.

Upstream-Status: Pending

Signed-off-by: Aditya Tayade <Aditya.Tayade@kpit.com>
---
 ...-use-standard-sbin-and-lib-path-for-ptest.patch | 37 ++++++++++++
 meta/recipes-extended/lighttpd/lighttpd/run-ptest  |  4 ++
 meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb  | 66 ++++++++++++++++++=
+++-
 3 files changed, 106 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-extended/lighttpd/lighttpd/0002-use-standa=
rd-sbin-and-lib-path-for-ptest.patch
 create mode 100644 meta/recipes-extended/lighttpd/lighttpd/run-ptest

diff --git a/meta/recipes-extended/lighttpd/lighttpd/0002-use-standard-sbin=
-and-lib-path-for-ptest.patch b/meta/recipes-extended/lighttpd/lighttpd/000=
2-use-standard-sbin-and-lib-path-for-ptest.patch
new file mode 100644
index 0000000..cd4b2b3
--- /dev/null
+++ b/meta/recipes-extended/lighttpd/lighttpd/0002-use-standard-sbin-and-li=
b-path-for-ptest.patch
@@ -0,0 +1,37 @@
+lighttpd-ptest: use standard installation path
+
+ptest should do testing against installed library or executable
+at standard installation path, hence using standard installation
+path for MODULES_PATH and LIGHTTPD_PATH variables.
+
+Upsteam-Status: Pending
+
+Signed-off-by: Aditya Tayade <aditya.tayade@kpit.com>
+
+diff --git a/tests/LightyTest.pm b/tests/LightyTest.pm
+index 74caea1..2de02d0 100644
+--- a/tests/LightyTest.pm
++++ b/tests/LightyTest.pm
+@@ -65,19 +65,10 @@ sub new {
+ $lpath =3D (defined $ENV{'srcdir'} ? $ENV{'srcdir'} : '.');
+ $self->{SRCDIR} =3D abs_path($lpath);
+
++$self->{SBINDIR} =3D '/usr/sbin';
++$self->{MODULES_PATH} =3D '/usr/lib';
+
+-if (mtime($self->{BASEDIR}.'/src/lighttpd') > mtime($self->{BASEDIR}.'/bu=
ild/lighttpd')) {
+-$self->{BINDIR} =3D $self->{BASEDIR}.'/src';
+-if (mtime($self->{BASEDIR}.'/src/.libs')) {
+-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/src/.libs';
+-} else {
+-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/src';
+-}
+-} else {
+-$self->{BINDIR} =3D $self->{BASEDIR}.'/build';
+-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/build';
+-}
+-$self->{LIGHTTPD_PATH} =3D $self->{BINDIR}.'/lighttpd';
++$self->{LIGHTTPD_PATH} =3D $self->{SBINDIR}.'/lighttpd';
+ $self->{PORT} =3D 2048;
+
+ my ($name, $aliases, $addrtype, $net) =3D gethostbyaddr(inet_aton("127.0.=
0.1"), AF_INET);
diff --git a/meta/recipes-extended/lighttpd/lighttpd/run-ptest b/meta/recip=
es-extended/lighttpd/lighttpd/run-ptest
new file mode 100644
index 0000000..b6781c0
--- /dev/null
+++ b/meta/recipes-extended/lighttpd/lighttpd/run-ptest
@@ -0,0 +1,4 @@
+#!/bin/bash
+
+make -C tests -k check-TESTS
+make -C src -k runtest-TESTS
diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb b/meta/recip=
es-extended/lighttpd/lighttpd_1.4.48.bb
index 3c4444c..6a9677e 100644
--- a/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb
+++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb
@@ -9,6 +9,42 @@ SECTION =3D "net"
 RDEPENDS_${PN} =3D "lighttpd-module-dirlisting \
                   lighttpd-module-indexfile \
                   lighttpd-module-staticfile"
+
+RDEPENDS_${PN}-ptest +=3D "bash \
+                         ${PN} \
+                         ${PN}-module-compress \
+                         ${PN}-module-simple-vhost \
+                         ${PN}-module-rewrite \
+                         ${PN}-module-cgi \
+                         ${PN}-module-evhost \
+                         ${PN}-module-redirect \
+                         ${PN}-module-fastcgi \
+                         ${PN}-module-setenv \
+                         ${PN}-module-extforward \
+                         ${PN}-module-secdownload \
+                         ${PN}-module-auth \
+                         ${PN}-module-authn-file \
+                         ${PN}-module-status \
+                         ${PN}-module-expire \
+                         ${PN}-module-userdir \
+                         ${PN}-module-ssi \
+                         ${PN}-module-proxy \
+                         perl-module-tap-base \
+                         perl-module-tap-parser-sourcehandler-executable \
+                         perl-module-tap-formatter-file \
+                         perl-module-tap-formatter-file-session \
+                         perl-module-tap-formatter-base \
+                         perl-module-tap-formatter-session \
+                         perl-module-tap-formatter-console-session \
+                         perl-module-tap-parser-scheduler \
+                         perl-module-tap-parser \
+                         perl-module-io-socket \
+                         perl-module-test-more \
+                         perl-module-test-harness \
+                         perl-module-tap-object \
+                         perl-module-tap-formatter-console \
+                        "
+
 RRECOMMENDS_${PN} =3D "lighttpd-module-access \
                      lighttpd-module-accesslog"

@@ -18,6 +54,8 @@ SRC_URI =3D "http://download.lighttpd.net/lighttpd/releas=
es-1.4.x/lighttpd-${PV}.t
         file://lighttpd \
         file://lighttpd.service \
         file://0001-Use-pkg-config-for-pcre-dependency-instead-of-config.p=
atch \
+        file://run-ptest \
+        file://0002-use-standard-sbin-and-lib-path-for-ptest.patch \
         "

 SRC_URI[md5sum] =3D "1e3a9eb5078f481e3a8a1d0aaac8c3c8"
@@ -49,7 +87,7 @@ PACKAGECONFIG[lua] =3D "--with-lua,--without-lua,lua5.1"

 EXTRA_OECONF +=3D "--enable-lfs"

-inherit autotools pkgconfig update-rc.d gettext systemd
+inherit autotools pkgconfig update-rc.d gettext systemd ptest

 INITSCRIPT_NAME =3D "lighttpd"
 INITSCRIPT_PARAMS =3D "defaults 70"
@@ -73,6 +111,32 @@ do_install_append() {
 ln -sf ${localstatedir}/tmp ${D}/www/var
 }

+do_install_ptest() {
+    t=3D"${D}${PTEST_PATH}"
+    for i in tests src
+    do
+        cp -r "${S}/${i}" "${t}"
+        cp -r "${B}/${i}"/* "${t}/${i}"
+        rm -rf "${t}/${i}"/*.lo "${t}/${i}"/*.la "${t}/${i}"/*.c "${t}/${i=
}"/*.o "${t}/${i}"/*.h
+    done
+
+    install -D "${B}/${TARGET_PREFIX}libtool" "${t}/${TARGET_PREFIX}libtoo=
l"
+
+    # Remove build host references...
+    find "${t}" -name "Makefile" | xargs \
+    sed -i -e "s/^srcdir =3D \(.*\)/srcdir =3D ./" \
+           -e "s/^Makefile/_Makefile/" \
+           -e "s,--sysroot=3D${STAGING_DIR_TARGET},,g" \
+           -e "s/^abs_builddir =3D \(.*\)/abs_builddir =3D ./" \
+           -e "s/^abs_srcdir =3D \(.*\)/abs_srcdir =3D ./" \
+           -e "s/^top_srcdir =3D \(.*\)/abs_srcdir =3D ../" \
+           -e "s,${TARGET_PREFIX}gcc,gcc,g" \
+           -e "s/^abs_top_srcdir =3D \(.*\)/abs_top_srcdir =3D ./" \
+           -e "s,${S},,g" \
+           -e "s,${B},,g" \
+           -e "s,${STAGING_DIR_NATIVE},,g"
+}
+
 FILES_${PN} +=3D "${sysconfdir} /www"

 CONFFILES_${PN} =3D "${sysconfdir}/lighttpd.conf"
--
2.7.4

This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

