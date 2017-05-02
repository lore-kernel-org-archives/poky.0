Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C89F2E00710; Tue,  2 May 2017 03:38:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.173 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DF8CE00546
	for <poky@yoctoproject.org>; Tue,  2 May 2017 03:38:50 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id 203so66562268ywe.0
	for <poky@yoctoproject.org>; Tue, 02 May 2017 03:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b7vt6lUgAIx4RmzNQqG3ZaFm5poBywyc2tpPj5j5+vY=;
	b=KQ1rDaeLA6uggBSSbEr/0GXHXfleZfUE7WbMU5lWoo0KTeOqW2GYjnxWF+wGd7bQ/m
	lZk9jILc/SZAp0d/3Xzjv3odFw/lFBWyLvD/92QUIbDQ1Z1Lk53NDIqXSF6u+SSr8SJ5
	JcRmvwpXE6ynm2OtIW9WqjyY6YHjSHaVLgJSr5orVIO3/w7/DZEoYgiIyyj3Sr8XRER3
	1yELKlc21Q6hRqh9HrwVnSS/P/N+yVD99c7XFhH/U9Mdgf9k/Yow0RVh3T8HQbJR9geQ
	b5xL7sQnEvGPKHSED+xrm7Du3YUA+pAhMzZNKXnZgXMWinEneDycCcRHcJhntdwQDknb
	MEtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b7vt6lUgAIx4RmzNQqG3ZaFm5poBywyc2tpPj5j5+vY=;
	b=VbR5MER4u+qYjZubBzm+hsboYHAZAmv9EMD/Ns6DA1ukr1LVU5t64FapB17XqWD39C
	3u1PDLUIXADElMT9NLsSCDxi5HPpDhpdvzzhN1M1AzWPYS6Lp9pMxBsXf5NZmM2mlQqY
	3bXY1hT5F9NLqsAKV6dpvBODxrt1qtiv9MqETLbx36CbArZ9Ra57gBoFMpAMX3mNbAnz
	0fbRxMAEMpdDtqoxbSZ6MUdjMqdeOsKaJaStWi4f4Nfx2tjwyG1R7nZgJY48JAoi3dXP
	PpfagtUbYFQbfqSaeQe6kIgkV+H0efjlHtchBGFVxHZhYGipjx+tvNnv8aimYWfPJ/8t
	zidQ==
X-Gm-Message-State: AN3rC/409mOKAxVqB37JF2PB2YNrdEbrifNIqZOzBNMnjpin7Uj0pMzQ
	9U/z3zjt2SpTcuWD91qnemqRGNWszzH8
X-Received: by 10.129.99.139 with SMTP id x133mr1646419ywb.59.1493721529954;
	Tue, 02 May 2017 03:38:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Tue, 2 May 2017 03:38:19 -0700 (PDT)
In-Reply-To: <trinity-eae6d646-630d-4bb9-8464-6b557d1fd33e-1493719611703@3capp-gmx-bs49>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
	<CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>
	<1493382620.10199.3.camel@intel.com>
	<trinity-eae6d646-630d-4bb9-8464-6b557d1fd33e-1493719611703@3capp-gmx-bs49>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 2 May 2017 13:38:19 +0300
Message-ID: <CAHiDW_FdSg3_Us8-U=Rogo9vMBa+vTVorOHSK2e3wuABpVNN9w@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gnupg strip down
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
X-List-Received-Date: Tue, 02 May 2017 10:38:53 -0000
Content-Type: multipart/alternative; boundary=001a114916c42ff55a054e8825f9

--001a114916c42ff55a054e8825f9
Content-Type: text/plain; charset=UTF-8

On 2 May 2017 at 13:06, Arno Steffens <star@gmx.li> wrote:

>
>
> > Gesendet: Freitag, 28. April 2017 um 14:30 Uhr
> > Von: "Wold, Saul" <saul.wold@intel.com>
> > An: "star@gmx.li" <star@gmx.li>, "Kukkonen, Jussi" <
> jussi.kukkonen@intel.com>
> > Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>, "
> alexander.kanavin@linux.intel.com" <alexander.kanavin@linux.intel.com>
> > Betreff: Re: [poky] gnupg strip down
> >
> > On Fri, 2017-04-28 at 11:35 +0300, Jussi Kukkonen wrote:
> > > On 28 April 2017 at 10:31, Arno Steffens <star@gmx.li> wrote:
> > > > I did as advised, created a bbappend for gnupg, like that:
> > > >
> > > > do_install_append() {
> > > >         rm ${D}${bindir}/gpgv
> > > >         rm ${D}${bindir}/gpgsm
> > > >         rm ${D}${bindir}/gpg-connect-agent
> > > >         rm ${D}${bindir}/dirmngr-client
> > > >         rm ${D}${bindir}/gpgscm
> > > >         rm ${D}${bindir}/watchgnupg
> > > >         rm ${D}${bindir}/gpgparsemail
> > > >         rm ${D}${bindir}/gpgconf
> > > >         rm ${D}${bindir}/dirmngr
> > > >         rm ${D}${bindir}/gpgtar
> > > >         rm ${D}${bindir}/gpgv2
> > > >         rm ${D}${bindir}/gpg-agent
> > > >         rm ${D}${bindir}/kbxutil
> > > >         rm ${D}/usr/sbin/*
> > > >         rmdir ${D}/usr/sbin
> > > >         rm ${D}/usr/share/gnupg/help*
> > > >         rm ${D}/usr/libexec/gpg-*
> > > >         rm ${D}/usr/libexec/scdaemon
> > > >         rmdir ${D}/usr/libexec
> > > > }
> > > >
> > > > First I get errors, cleaning files and leave directory, but than I
> > > > get it, that I have to remove empty folders too. Ok, that could be
> > > > done smarter. So just gpg and few small files left.
> > > >
> > > > But I don't have an idea howto remove the libs, that seems to be
> > > > required only by the removed binaries,
> > > > like libgnutils.so, libgmp.so - which are rather big ...
> > >
> > > I don't see evidence that the binaries you mentioned would depend on
> > > those libraries (at least with current sysroot behaviour -- it might
> > > happen by mistake on older releases). But there is this line in the
> > > recipe:
> > > RDEPENDS_${PN} = "gnutls"
> > >
> > > Saul, do you happen to remember why that was added (more than two
> > > years ago in poky 31059be9).
> > >
> > Sorry no, too long ago, but looking at the patch it seems that the
> > dirmngr_LDADD had LIBGNUTLS before and after the change so possibly
> > that showed it should have been available.
> >
> > If something has changed with dirmngr than maybe that can be removed.
>
> How would you avoid installation of this gnutls in this case? So what do I
> have to add in my bbappend (see above)? To my shame: my skill are rather
> limited in handling this.
>

The runtime dependency on gnutls can be removed in the original recipe file
by just removing the RDEPENDS_{PN} line. If you want to do it in a bbappend
then this should work:
   RDEPENDS_${PN}_remove = "gnutls"
That should lead to gnutls not being automatically added to the image when
gnupg is added.

I think this change won't break anything but there's only one way to find
out...

Jussi

--001a114916c42ff55a054e8825f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
 May 2017 at 13:06, Arno Steffens <span dir=3D"ltr">&lt;<a href=3D"mailto:s=
tar@gmx.li" target=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><br>
<br>
&gt; Gesendet: Freitag, 28. April 2017 um 14:30 Uhr<br>
&gt; Von: &quot;Wold, Saul&quot; &lt;<a href=3D"mailto:saul.wold@intel.com"=
>saul.wold@intel.com</a>&gt;<br>
&gt; An: &quot;<a href=3D"mailto:star@gmx.li">star@gmx.li</a>&quot; &lt;<a =
href=3D"mailto:star@gmx.li">star@gmx.li</a>&gt;, &quot;Kukkonen, Jussi&quot=
; &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.kukkonen@intel.com<=
/a>&gt;<br>
&gt; Cc: &quot;<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.o=
rg</a>&quot; &lt;<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject=
.org</a>&gt;, &quot;<a href=3D"mailto:alexander.kanavin@linux.intel.com">al=
exander.kanavin@linux.<wbr>intel.com</a>&quot; &lt;<a href=3D"mailto:alexan=
der.kanavin@linux.intel.com">alexander.kanavin@linux.<wbr>intel.com</a>&gt;=
<br>
&gt; Betreff: Re: [poky] gnupg strip down<br>
<div><div class=3D"gmail-h5">&gt;<br>
&gt; On Fri, 2017-04-28 at 11:35 +0300, Jussi Kukkonen wrote:<br>
&gt; &gt; On 28 April 2017 at 10:31, Arno Steffens &lt;<a href=3D"mailto:st=
ar@gmx.li">star@gmx.li</a>&gt; wrote:<br>
&gt; &gt; &gt; I did as advised, created a bbappend for gnupg, like that:<b=
r>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; do_install_append() {<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgsm<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-connect-<wb=
r>agent<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr-client<=
br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgscm<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/watchgnupg<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgparsemail<br=
>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgconf<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgtar<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv2<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-agent<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/kbxutil<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/sbin/*<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/sbin<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/share/gnupg/help*<br=
>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/gpg-*<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/scdaemon<br>
&gt; &gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/libexec<br>
&gt; &gt; &gt; }<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; First I get errors, cleaning files and leave directory, but =
than I<br>
&gt; &gt; &gt; get it, that I have to remove empty folders too. Ok, that co=
uld be<br>
&gt; &gt; &gt; done smarter. So just gpg and few small files left.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; But I don&#39;t have an idea howto remove the libs, that see=
ms to be<br>
&gt; &gt; &gt; required only by the removed binaries,<br>
&gt; &gt; &gt; like libgnutils.so, libgmp.so - which are rather big ...=C2=
=A0<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t see evidence that the binaries you mentioned would de=
pend on<br>
&gt; &gt; those libraries (at least with current sysroot behaviour -- it mi=
ght<br>
&gt; &gt; happen by mistake on older releases). But there is this line in t=
he<br>
&gt; &gt; recipe:<br>
&gt; &gt; RDEPENDS_${PN} =3D &quot;gnutls&quot;<br>
&gt; &gt;<br>
&gt; &gt; Saul, do you happen to remember why that was added (more than two=
<br>
&gt; &gt; years ago in poky 31059be9).<br>
&gt; &gt;<br>
&gt; Sorry no, too long ago, but looking at the patch it seems that the<br>
&gt; dirmngr_LDADD had LIBGNUTLS before and after the change so possibly<br=
>
&gt; that showed it should have been available.<br>
&gt;<br>
&gt; If something has changed with dirmngr than maybe that can be removed.<=
br><br>
</div></div>How would you avoid installation of this gnutls in this case? S=
o what do I have to add in my bbappend (see above)? To my shame: my skill a=
re rather limited in handling this.<br>
</blockquote></div></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">The runtime dependency on gnutls can be removed in the origin=
al recipe file by just removing the RDEPENDS_{PN} line. If you want to do i=
t in a bbappend then this should work:</div><div class=3D"gmail_extra">=C2=
=A0 =C2=A0RDEPENDS_${PN}_remove =3D &quot;gnutls&quot;</div><div class=3D"g=
mail_extra">That should lead to gnutls not being automatically added to the=
 image when gnupg is added.</div><div class=3D"gmail_extra"><br></div><div =
class=3D"gmail_extra">I think this change won&#39;t break anything but ther=
e&#39;s only one way to find out...</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Jussi</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra"><br></div></div>

--001a114916c42ff55a054e8825f9--
