Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30C444C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 04:05:09 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so380669wyb.35
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 02:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=8P9v28DaG6EXv7tD+R89ibdT/4zw59DbBUZOeLu1+l4=;
	b=tqB2ImD3qxFW6mGD3Xui6W/BVHveKqYnLoluPyAVNFRaRxB/6KeqaN9Jw2LWs0FtGw
	2qyRhxjnRRiBRYevAGjIMueBKaEzP9yqoIUaIJq6yC2eF/hD+9/fx1clqa4SDOUgOaxq
	/MnHox/EUNFfuhysFSCOQzBEgHDdkT2tqN7SY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=Nfjmq3XgkuQSDCAlBP07AoTyCEJtoE2sh7mJI6qJNVIO7oHAqAqA3lN1173HcdIEjX
	gS1S/n1Nnev71vGpRH4OpnuQosrdAXyq6xgevN9C8eEhOzliGYrIVoS+KAdsInFqaQl7
	hajah0oEuquXicY++e6RM/jIJhxkNAnBDJymk=
MIME-Version: 1.0
Received: by 10.216.145.23 with SMTP id o23mr682347wej.14.1300179906613; Tue,
	15 Mar 2011 02:05:06 -0700 (PDT)
Received: by 10.216.236.166 with HTTP; Tue, 15 Mar 2011 02:05:06 -0700 (PDT)
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F218AD10F44@shsmsx502.ccr.corp.intel.com>
References: <AANLkTi=bahdLUNge_zTEbqz_EiptcAyV+xpQKfG1NE3Y@mail.gmail.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F218AD10F44@shsmsx502.ccr.corp.intel.com>
Date: Tue, 15 Mar 2011 14:35:06 +0530
Message-ID: <AANLkTinOyNnzdeR0=M4NkuiA-vnhxwmhrZ_QV=ovOYyV@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 15 Mar 2011 09:05:09 -0000
Content-Type: multipart/alternative; boundary=0016e6d7eaa37a52fa049e81b9b3

--0016e6d7eaa37a52fa049e81b9b3
Content-Type: text/plain; charset=ISO-8859-1

Hi Lianhao,
               I have rectified the problem. Any way thanks for your time
and help.

On Tue, Mar 15, 2011 at 1:58 PM, Lu, Lianhao <lianhao.lu@intel.com> wrote:

> kubera samrat wrote on 2011-03-14:
> > Hi all,
> >           I have added krb5 to my recipe. While building all the
> > stages are getting succcesful but while do_rootfs stage I am getting
> > an error as stated below.
> >
> >  Processing krb5...
> > | Unable to find package krb5!
> > | ERROR: Task failed: ('function do_rootfs failed',.....
> >
> > When I see krb5-1.6.3-r6/krb5-1.6.3   in build/tmp/work directory. I
> > observed quite unusual that all the files configure, configure.in
> > ....etc., are in the /src directory. So I mentioned in my bb file S =
> > "${WORKDIR}/${PN}-${PV}/src/". I herewith attached bb file below.
> >
> > Please give me suggestions to solve this problem.
> >
> >
> > ****************************************************************
> > ****************************************** #DEPENDS = "perl-native
> > ncurses util-linux-ng e2fsprogs-native" DEPENDS = "perl-native ncurses
> > util-linux e2fsprogs" inherit autotools binconfig
> >
> > SRC_URI = "
> http://web.mit.edu/kerberos/dist/krb5/1.6/krb5-1.6.3-signed.tar \
> > #SRC_URI = "git://git.srobo.org/~jmorse/kerberos.git<http://git.srobo.org/%7Ejmorse/kerberos.git>\
> >            file://fix-uclibc-ruserpass-collision.patch;apply=no \
> >            file://copyperms.patch;apply=no"
> > S = "${WORKDIR}/${PN}-${PV}/src/"
> >
> > # Will clean this up...
> > EXTRA_OECONF += " --without-tcl
> > krb5_cv_attr_constructor_destructor=yes ac_cv_func_regcomp=yes \
> >                   ac_cv_printf_positional=yes
> >                   ac_cv_file__etc_environment=yes \
> >                   ac_cv_file__etc_TIMEZONE=no --with-system-et"
> > CFLAGS_append += "-DDESTRUCTOR_ATTR_WORKS=1 -I${STAGING_INCDIR}/et"
> > LDFLAGS_append += "-lpthread"
> >
> > FILES_${PN}-doc += /usr/share/examples
> >
> > krb5_do_unpack() {
> >       tar xzf ${WORKDIR}/krb5-1.6.3.tar.gz -C ${WORKDIR}/
> >       patch -d ${S} -p1 < ${WORKDIR}/fix-uclibc-ruserpass-collision.patch
> >       patch -d ${S} -p1 < ${WORKDIR}/copyperms.patch
> > }
> >
> > python do_unpack() {
> >       bb.build.exec_func('base_do_unpack', d)
> >       bb.build.exec_func('krb5_do_unpack', d)
> > }
> > do_configure() {
> >       oe_runconf
> > }
> >
> >
> > do_install() {
> >       oe_libinstall -so -C util/support libkrb5support ${STAGING_LIBDIR}
> >       oe_libinstall -so -C util/et libcom_err ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/crypto libk5crypto ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/krb5 libkrb5 ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/des425 libdes425 ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/krb4 libkrb4 ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/gssapi libgssapi_krb5 ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/rpc libgssrpc ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/kdb libkdb5 ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/kadm5/clnt libkadm5clnt ${STAGING_LIBDIR}
> >       oe_libinstall -so -C lib/kadm5/srv libkadm5srv ${STAGING_LIBDIR}
> >
> >       install -d ${STAGING_INCDIR}/krb5       for X in krb5.h
> locate_plugin.h         do
> >               install -m 0644 ${S}/include/krb5/$X
> ${STAGING_INCDIR}/krb5/$X  done
> >
> >       install -d ${STAGING_INCDIR}/gssapi     for X in gssapi_generic.h
> gssapi.h
> > gssapi_krb5.h         do              install -m 0644
> ${S}/include/gssapi/$X
> > ${STAGING_INCDIR}/gssapi/$X   done    install -m 0644
> > ${S}/lib/gssapi/mechglue/mechglue.h ${STAGING_INCDIR}/gssapi/mechglue.h
> >
> >       install -d ${STAGING_INCDIR}/kerberosIV         for X in krb.h
> des.h
> > mit-copyright.h krb_err.h kadm_err.h  do              install -m 0644
> > ${S}/include/kerberosIV/$X ${STAGING_INCDIR}/kerberosIV/$X    done
> >
> >       install -d ${STAGING_INCDIR}/gssrpc     for X in auth.h auth_gss.h
> > auth_gssapi.h auth_unix.h clnt.h netdb.h pmap_clnt.h pmap_prot.h
> > pmap_rmt.h rename.h rpc.h rpc_msg.h svc.h svc_auth.h xdr.h types.h    do
> >               install -m 0644 ${S}/include/gssrpc/$X
> ${STAGING_INCDIR}/gssrpc/$X
> >       done
> >
> >       # com_err.h needs to be added here if you choose to use this
> builtin
> >       for X in krb5.h profile.h gssapi.h
> >       do
> >               install -m 0644 ${S}/include/$X ${STAGING_INCDIR}/$X
> >       done
> > }
>
> The problem might be here in do_install(). It installs all the files into
> STAGING_DIR, which in poky is the task of do_populate_sysroot. What
> do_install should do in poky is that install the files into ${D}, which will
> be later used by do_populate_sysroot and do_package.
>
> > SRC_URI[md5sum] = "2dc1307686eb1c2bf1ab08ea805dad46" SRC_URI[sha256sum]
> > = "7a1bd7d4bd326828c8ee382ed2b69ccd6c58762601df897d6a32169d84583d2a "
> >
> > ****************************************************************
> > ****************************************************************
> > ***********************************************************
> >
> > Thanks and regards,
> > V kubera Samrat
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> Best Regards,
> Lianhao
>
>
>


Thanks and regards,
V kubera Samrat

--0016e6d7eaa37a52fa049e81b9b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Lianhao,<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 I have rectified =
the problem. Any way thanks for your time and help.<br><br><div class=3D"gm=
ail_quote">On Tue, Mar 15, 2011 at 1:58 PM, Lu, Lianhao <span dir=3D"ltr">&=
lt;<a href=3D"http://lianhao.lu">lianhao.lu</a>@<a href=3D"http://intel.com=
">intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">kubera samrat wro=
te on 2011-03-14:<br>
<div><div></div><div class=3D"h5">&gt; Hi all,<br>
&gt; =A0 =A0 =A0 =A0 =A0 I have added krb5 to my recipe. While building all=
 the<br>
&gt; stages are getting succcesful but while do_rootfs stage I am getting<b=
r>
&gt; an error as stated below.<br>
&gt;<br>
&gt; =A0Processing krb5...<br>
&gt; | Unable to find package krb5!<br>
&gt; | ERROR: Task failed: (&#39;function do_rootfs failed&#39;,.....<br>
&gt;<br>
&gt; When I see krb5-1.6.3-r6/krb5-1.6.3 =A0 in build/tmp/work directory. I=
<br>
&gt; observed quite unusual that all the files configure, <a href=3D"http:/=
/configure.in" target=3D"_blank">configure.in</a><br>
&gt; ....etc., are in the /src directory. So I mentioned in my bb file S =
=3D<br>
&gt; &quot;${WORKDIR}/${PN}-${PV}/src/&quot;. I herewith attached bb file b=
elow.<br>
&gt;<br>
&gt; Please give me suggestions to solve this problem.<br>
&gt;<br>
&gt;<br>
&gt; ****************************************************************<br>
&gt; ****************************************** #DEPENDS =3D &quot;perl-nat=
ive<br>
&gt; ncurses util-linux-ng e2fsprogs-native&quot; DEPENDS =3D &quot;perl-na=
tive ncurses<br>
&gt; util-linux e2fsprogs&quot; inherit autotools binconfig<br>
&gt;<br>
&gt; SRC_URI =3D &quot;<a href=3D"http://web.mit.edu/kerberos/dist/krb5/1.6=
/krb5-1.6.3-signed.tar" target=3D"_blank">http://web.mit.edu/kerberos/dist/=
krb5/1.6/krb5-1.6.3-signed.tar</a> \<br>
&gt; #SRC_URI =3D &quot;git://<a href=3D"http://git.srobo.org/%7Ejmorse/ker=
beros.git" target=3D"_blank">git.srobo.org/~jmorse/kerberos.git</a> \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0file://fix-uclibc-ruserpass-collision.patch;app=
ly=3Dno \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0file://copyperms.patch;apply=3Dno&quot;<br>
&gt; S =3D &quot;${WORKDIR}/${PN}-${PV}/src/&quot;<br>
&gt;<br>
&gt; # Will clean this up...<br>
&gt; EXTRA_OECONF +=3D &quot; --without-tcl<br>
&gt; krb5_cv_attr_constructor_destructor=3Dyes ac_cv_func_regcomp=3Dyes \<b=
r>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ac_cv_printf_positional=3Dyes<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ac_cv_file__etc_environment=3Dyes =
\<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ac_cv_file__etc_TIMEZONE=3Dno --wi=
th-system-et&quot;<br>
&gt; CFLAGS_append +=3D &quot;-DDESTRUCTOR_ATTR_WORKS=3D1 -I${STAGING_INCDI=
R}/et&quot;<br>
&gt; LDFLAGS_append +=3D &quot;-lpthread&quot;<br>
&gt;<br>
&gt; FILES_${PN}-doc +=3D /usr/share/examples<br>
&gt;<br>
&gt; krb5_do_unpack() {<br>
&gt; =A0 =A0 =A0 tar xzf ${WORKDIR}/krb5-1.6.3.tar.gz -C ${WORKDIR}/<br>
&gt; =A0 =A0 =A0 patch -d ${S} -p1 &lt; ${WORKDIR}/fix-uclibc-ruserpass-col=
lision.patch<br>
&gt; =A0 =A0 =A0 patch -d ${S} -p1 &lt; ${WORKDIR}/copyperms.patch<br>
&gt; }<br>
&gt;<br>
&gt; python do_unpack() {<br>
&gt; =A0 =A0 =A0 bb.build.exec_func(&#39;base_do_unpack&#39;, d)<br>
&gt; =A0 =A0 =A0 bb.build.exec_func(&#39;krb5_do_unpack&#39;, d)<br>
&gt; }<br>
&gt; do_configure() {<br>
&gt; =A0 =A0 =A0 oe_runconf<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; do_install() {<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C util/support libkrb5support ${STAGING=
_LIBDIR}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C util/et libcom_err ${STAGING_LIBDIR}<=
br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/crypto libk5crypto ${STAGING_LIBD=
IR}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/krb5 libkrb5 ${STAGING_LIBDIR}<br=
>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/des425 libdes425 ${STAGING_LIBDIR=
}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/krb4 libkrb4 ${STAGING_LIBDIR}<br=
>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/gssapi libgssapi_krb5 ${STAGING_L=
IBDIR}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/rpc libgssrpc ${STAGING_LIBDIR}<b=
r>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/kdb libkdb5 ${STAGING_LIBDIR}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/kadm5/clnt libkadm5clnt ${STAGING=
_LIBDIR}<br>
&gt; =A0 =A0 =A0 oe_libinstall -so -C lib/kadm5/srv libkadm5srv ${STAGING_L=
IBDIR}<br>
&gt;<br>
&gt; =A0 =A0 =A0 install -d ${STAGING_INCDIR}/krb5 =A0 =A0 =A0 for X in krb=
5.h locate_plugin.h =A0 =A0 =A0 =A0 do<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 install -m 0644 ${S}/include/krb5/$X ${STA=
GING_INCDIR}/krb5/$X =A0done<br>
&gt;<br>
&gt; =A0 =A0 =A0 install -d ${STAGING_INCDIR}/gssapi =A0 =A0 for X in gssap=
i_generic.h gssapi.h<br>
&gt; gssapi_krb5.h =A0 =A0 =A0 =A0 do =A0 =A0 =A0 =A0 =A0 =A0 =A0install -m=
 0644 ${S}/include/gssapi/$X<br>
&gt; ${STAGING_INCDIR}/gssapi/$X =A0 done =A0 =A0install -m 0644<br>
&gt; ${S}/lib/gssapi/mechglue/mechglue.h ${STAGING_INCDIR}/gssapi/mechglue.=
h<br>
&gt;<br>
&gt; =A0 =A0 =A0 install -d ${STAGING_INCDIR}/kerberosIV =A0 =A0 =A0 =A0 fo=
r X in krb.h des.h<br>
&gt; mit-copyright.h krb_err.h kadm_err.h =A0do =A0 =A0 =A0 =A0 =A0 =A0 =A0=
install -m 0644<br>
&gt; ${S}/include/kerberosIV/$X ${STAGING_INCDIR}/kerberosIV/$X =A0 =A0done=
<br>
&gt;<br>
&gt; =A0 =A0 =A0 install -d ${STAGING_INCDIR}/gssrpc =A0 =A0 for X in auth.=
h auth_gss.h<br>
&gt; auth_gssapi.h auth_unix.h clnt.h netdb.h pmap_clnt.h pmap_prot.h<br>
&gt; pmap_rmt.h rename.h rpc.h rpc_msg.h svc.h svc_auth.h xdr.h types.h =A0=
 =A0do<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 install -m 0644 ${S}/include/gssrpc/$X ${S=
TAGING_INCDIR}/gssrpc/$X<br>
&gt; =A0 =A0 =A0 done<br>
&gt;<br>
&gt; =A0 =A0 =A0 # com_err.h needs to be added here if you choose to use th=
is builtin<br>
&gt; =A0 =A0 =A0 for X in krb5.h profile.h gssapi.h<br>
&gt; =A0 =A0 =A0 do<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 install -m 0644 ${S}/include/$X ${STAGING_=
INCDIR}/$X<br>
&gt; =A0 =A0 =A0 done<br>
&gt; }<br>
<br>
</div></div>The problem might be here in do_install(). It installs all the =
files into STAGING_DIR, which in poky is the task of do_populate_sysroot. W=
hat do_install should do in poky is that install the files into ${D}, which=
 will be later used by do_populate_sysroot and do_package.<br>

<div class=3D"im"><br>
&gt; SRC_URI[md5sum] =3D &quot;2dc1307686eb1c2bf1ab08ea805dad46&quot; SRC_U=
RI[sha256sum]<br>
&gt; =3D &quot;7a1bd7d4bd326828c8ee382ed2b69ccd6c58762601df897d6a32169d8458=
3d2a &quot;<br>
&gt;<br>
&gt; ****************************************************************<br>
&gt; ****************************************************************<br>
&gt; ***********************************************************<br>
&gt;<br>
&gt; Thanks and regards,<br>
&gt; V kubera Samrat<br>
</div>&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
Best Regards,<br>
<font color=3D"#888888">Lianhao<br>
<br>
<br>
</font></blockquote></div><br><br clear=3D"all"><br>Thanks and regards, <br=
>V kubera Samrat<br>

--0016e6d7eaa37a52fa049e81b9b3--
