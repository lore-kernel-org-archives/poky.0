Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192F3E00CB6; Sun,  3 Mar 2019 05:56:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14649E00CA5
	for <poky@yoctoproject.org>; Sun,  3 Mar 2019 05:56:40 -0800 (PST)
Received: by mail-ed1-f65.google.com with SMTP id h58so2078116edb.5
	for <poky@yoctoproject.org>; Sun, 03 Mar 2019 05:56:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=YEhVi3XCCWXVoeRAaVLkZ6SGKtmnSSn+TLeLifpxSqM=;
	b=LB8BkJDBfXIKkXn5mNvFpXNhvEOPR7GIvn0eqRkh2RANnQOR74gQA+BVqI2Yw9flac
	YbWhulKilHiKF/hO39rkvlp6UK7giEMUw14wnsEOYOjt+b223Rq99q0Ej9j43oQ833Wc
	ea4lUFHZcBat3E5N6LYqRmYDIvdcmouOAu9Gwf/jHFyZ4PCXr40C9J2Phf7rWDNldwxN
	B7YOMXRK11mSlvoRQv8r+Qv84IPtAxLY3YXgIWy0X0GI57/5Tv4dfuILrzRknbnFvmdo
	cN2W3cYTNh6hyAd3EmyD3t1AhphBBZRdY1t+CrCx77zVpXKtiOT4IV4dQNYwocECGHQu
	xQ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=YEhVi3XCCWXVoeRAaVLkZ6SGKtmnSSn+TLeLifpxSqM=;
	b=PyA0ZnERZw8BCx9kNQhTT51z2KtvrA5KiDrwsCSf7NFC7S19QIBO18791XHc0MOVkj
	fu1Rng7rfhH1XXksir7tIuxUz8UlBK4IgKbvpoMi7cFglFnuwUh59Vk9RDyLCBRsg9Z6
	tVoEceI1whmrjTwoQMFai3tFWICKXxZFTN9oCaqUbZTrY0+Dju+5I57jRzZ7gkasAKjj
	RaBtYd0yOSw3X7CCCjXCKiVwLCMIqnP62akUmC6/YuWubH0scZYZgBdbbuSfh8dNHGzN
	jxYOUexjAk6tbefd7HYLaChBBhH6KEkRXedDisyLFxG7XsCkcEhq2amyiMOTCqY16+NB
	Rg/g==
X-Gm-Message-State: APjAAAWxO48AECJWxUjm3o2Uwa070xd0YWObOm6bIh/QPBfmlPF1LfK3
	tRovYYo79PKli/ZbR2IPpbI=
X-Google-Smtp-Source: APXvYqwhUqiQDi3ODJF4LAZpjj61URY7DzGqCmHAoOFDVUO5YLHafUsMMLfUFMdEMnxa74zmct8AOw==
X-Received: by 2002:a50:a55d:: with SMTP id z29mr11900562edb.269.1551621399196;
	Sun, 03 Mar 2019 05:56:39 -0800 (PST)
Received: from ?IPv6:2a02:8109:b5c0:1a5d:2ca4:650b:74a1:da5d?
	([2a02:8109:b5c0:1a5d:2ca4:650b:74a1:da5d])
	by smtp.gmail.com with ESMTPSA id
	ay12sm674988ejb.66.2019.03.03.05.56.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Mar 2019 05:56:38 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16D57)
In-Reply-To: <1551619978-3899-1-git-send-email-Aditya.Tayade@kpit.com>
Date: Sun, 3 Mar 2019 14:56:37 +0100
Message-Id: <C1BF35BF-4076-4FAF-8CDB-72512F93E8AC@gmail.com>
References: <1551619978-3899-1-git-send-email-Aditya.Tayade@kpit.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta][sumo][PATCH] lighttpd: added ptest
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
X-List-Received-Date: Sun, 03 Mar 2019 13:56:43 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks, this should be sent to openembedded-core mailing list.

Alex

> On 3 Mar 2019, at 14.33, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
>=20
> Reused lighttpd internal tests and did minimal patching to fix paths.
>=20
> Upstream-Status: Pending
>=20
> Signed-off-by: Aditya Tayade <Aditya.Tayade@kpit.com>
> ---
> ...-use-standard-sbin-and-lib-path-for-ptest.patch | 37 ++++++++++++
> meta/recipes-extended/lighttpd/lighttpd/run-ptest  |  4 ++
> meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb  | 66 ++++++++++++++++++=
+++-
> 3 files changed, 106 insertions(+), 1 deletion(-)
> create mode 100644 meta/recipes-extended/lighttpd/lighttpd/0002-use-standa=
rd-sbin-and-lib-path-for-ptest.patch
> create mode 100644 meta/recipes-extended/lighttpd/lighttpd/run-ptest
>=20
> diff --git a/meta/recipes-extended/lighttpd/lighttpd/0002-use-standard-sbi=
n-and-lib-path-for-ptest.patch b/meta/recipes-extended/lighttpd/lighttpd/000=
2-use-standard-sbin-and-lib-path-for-ptest.patch
> new file mode 100644
> index 0000000..cd4b2b3
> --- /dev/null
> +++ b/meta/recipes-extended/lighttpd/lighttpd/0002-use-standard-sbin-and-l=
ib-path-for-ptest.patch
> @@ -0,0 +1,37 @@
> +lighttpd-ptest: use standard installation path
> +
> +ptest should do testing against installed library or executable
> +at standard installation path, hence using standard installation
> +path for MODULES_PATH and LIGHTTPD_PATH variables.
> +
> +Upsteam-Status: Pending
> +
> +Signed-off-by: Aditya Tayade <aditya.tayade@kpit.com>
> +
> +diff --git a/tests/LightyTest.pm b/tests/LightyTest.pm
> +index 74caea1..2de02d0 100644
> +--- a/tests/LightyTest.pm
> ++++ b/tests/LightyTest.pm
> +@@ -65,19 +65,10 @@ sub new {
> + $lpath =3D (defined $ENV{'srcdir'} ? $ENV{'srcdir'} : '.');
> + $self->{SRCDIR} =3D abs_path($lpath);
> +
> ++$self->{SBINDIR} =3D '/usr/sbin';
> ++$self->{MODULES_PATH} =3D '/usr/lib';
> +
> +-if (mtime($self->{BASEDIR}.'/src/lighttpd') > mtime($self->{BASEDIR}.'/b=
uild/lighttpd')) {
> +-$self->{BINDIR} =3D $self->{BASEDIR}.'/src';
> +-if (mtime($self->{BASEDIR}.'/src/.libs')) {
> +-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/src/.libs';
> +-} else {
> +-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/src';
> +-}
> +-} else {
> +-$self->{BINDIR} =3D $self->{BASEDIR}.'/build';
> +-$self->{MODULES_PATH} =3D $self->{BASEDIR}.'/build';
> +-}
> +-$self->{LIGHTTPD_PATH} =3D $self->{BINDIR}.'/lighttpd';
> ++$self->{LIGHTTPD_PATH} =3D $self->{SBINDIR}.'/lighttpd';
> + $self->{PORT} =3D 2048;
> +
> + my ($name, $aliases, $addrtype, $net) =3D gethostbyaddr(inet_aton("127.0=
.0.1"), AF_INET);
> diff --git a/meta/recipes-extended/lighttpd/lighttpd/run-ptest b/meta/reci=
pes-extended/lighttpd/lighttpd/run-ptest
> new file mode 100644
> index 0000000..b6781c0
> --- /dev/null
> +++ b/meta/recipes-extended/lighttpd/lighttpd/run-ptest
> @@ -0,0 +1,4 @@
> +#!/bin/bash
> +
> +make -C tests -k check-TESTS
> +make -C src -k runtest-TESTS
> diff --git a/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb b/meta/reci=
pes-extended/lighttpd/lighttpd_1.4.48.bb
> index 3c4444c..6a9677e 100644
> --- a/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb
> +++ b/meta/recipes-extended/lighttpd/lighttpd_1.4.48.bb
> @@ -9,6 +9,42 @@ SECTION =3D "net"
> RDEPENDS_${PN} =3D "lighttpd-module-dirlisting \
>                   lighttpd-module-indexfile \
>                   lighttpd-module-staticfile"
> +
> +RDEPENDS_${PN}-ptest +=3D "bash \
> +                         ${PN} \
> +                         ${PN}-module-compress \
> +                         ${PN}-module-simple-vhost \
> +                         ${PN}-module-rewrite \
> +                         ${PN}-module-cgi \
> +                         ${PN}-module-evhost \
> +                         ${PN}-module-redirect \
> +                         ${PN}-module-fastcgi \
> +                         ${PN}-module-setenv \
> +                         ${PN}-module-extforward \
> +                         ${PN}-module-secdownload \
> +                         ${PN}-module-auth \
> +                         ${PN}-module-authn-file \
> +                         ${PN}-module-status \
> +                         ${PN}-module-expire \
> +                         ${PN}-module-userdir \
> +                         ${PN}-module-ssi \
> +                         ${PN}-module-proxy \
> +                         perl-module-tap-base \
> +                         perl-module-tap-parser-sourcehandler-executable \=

> +                         perl-module-tap-formatter-file \
> +                         perl-module-tap-formatter-file-session \
> +                         perl-module-tap-formatter-base \
> +                         perl-module-tap-formatter-session \
> +                         perl-module-tap-formatter-console-session \
> +                         perl-module-tap-parser-scheduler \
> +                         perl-module-tap-parser \
> +                         perl-module-io-socket \
> +                         perl-module-test-more \
> +                         perl-module-test-harness \
> +                         perl-module-tap-object \
> +                         perl-module-tap-formatter-console \
> +                        "
> +
> RRECOMMENDS_${PN} =3D "lighttpd-module-access \
>                      lighttpd-module-accesslog"
>=20
> @@ -18,6 +54,8 @@ SRC_URI =3D "http://download.lighttpd.net/lighttpd/relea=
ses-1.4.x/lighttpd-${PV}.t
>         file://lighttpd \
>         file://lighttpd.service \
>         file://0001-Use-pkg-config-for-pcre-dependency-instead-of-config.p=
atch \
> +        file://run-ptest \
> +        file://0002-use-standard-sbin-and-lib-path-for-ptest.patch \
>         "
>=20
> SRC_URI[md5sum] =3D "1e3a9eb5078f481e3a8a1d0aaac8c3c8"
> @@ -49,7 +87,7 @@ PACKAGECONFIG[lua] =3D "--with-lua,--without-lua,lua5.1"=

>=20
> EXTRA_OECONF +=3D "--enable-lfs"
>=20
> -inherit autotools pkgconfig update-rc.d gettext systemd
> +inherit autotools pkgconfig update-rc.d gettext systemd ptest
>=20
> INITSCRIPT_NAME =3D "lighttpd"
> INITSCRIPT_PARAMS =3D "defaults 70"
> @@ -73,6 +111,32 @@ do_install_append() {
> ln -sf ${localstatedir}/tmp ${D}/www/var
> }
>=20
> +do_install_ptest() {
> +    t=3D"${D}${PTEST_PATH}"
> +    for i in tests src
> +    do
> +        cp -r "${S}/${i}" "${t}"
> +        cp -r "${B}/${i}"/* "${t}/${i}"
> +        rm -rf "${t}/${i}"/*.lo "${t}/${i}"/*.la "${t}/${i}"/*.c "${t}/${=
i}"/*.o "${t}/${i}"/*.h
> +    done
> +
> +    install -D "${B}/${TARGET_PREFIX}libtool" "${t}/${TARGET_PREFIX}libto=
ol"
> +
> +    # Remove build host references...
> +    find "${t}" -name "Makefile" | xargs \
> +    sed -i -e "s/^srcdir =3D \(.*\)/srcdir =3D ./" \
> +           -e "s/^Makefile/_Makefile/" \
> +           -e "s,--sysroot=3D${STAGING_DIR_TARGET},,g" \
> +           -e "s/^abs_builddir =3D \(.*\)/abs_builddir =3D ./" \
> +           -e "s/^abs_srcdir =3D \(.*\)/abs_srcdir =3D ./" \
> +           -e "s/^top_srcdir =3D \(.*\)/abs_srcdir =3D ../" \
> +           -e "s,${TARGET_PREFIX}gcc,gcc,g" \
> +           -e "s/^abs_top_srcdir =3D \(.*\)/abs_top_srcdir =3D ./" \
> +           -e "s,${S},,g" \
> +           -e "s,${B},,g" \
> +           -e "s,${STAGING_DIR_NATIVE},,g"
> +}
> +
> FILES_${PN} +=3D "${sysconfdir} /www"
>=20
> CONFFILES_${PN} =3D "${sysconfdir}/lighttpd.conf"
> --
> 2.7.4
>=20
> This message contains information that may be privileged or confidential a=
nd is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you a=
re not authorized to read, print, retain copy, disseminate, distribute, or u=
se this message or any part thereof. If you receive this message in error, p=
lease notify the sender immediately and delete all copies of this message. K=
PIT Technologies Ltd. does not accept any liability for virus infected mails=
.
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

