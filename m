Return-Path: <madhu1313b@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8631E00CCC; Tue, 12 Feb 2019 02:50:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhu1313b[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4EC2E00CBA
	for <poky@yoctoproject.org>; Tue, 12 Feb 2019 02:50:26 -0800 (PST)
Received: by mail-qt1-f171.google.com with SMTP id r9so2363298qtt.3
	for <poky@yoctoproject.org>; Tue, 12 Feb 2019 02:50:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UCdwuxZhfjz54OMFe+GcC1pNGLy+nzAenE8+8x8D6Xw=;
	b=s9XxgZ/G+kRr5Fb1bdsFuSEI0l2y1x8uePrSnMWwW8i2G6x8y4uOhjSI7fCTciGud7
	J85Ezvt8VN083R3zBvRuf734iHZf0vxJf2uE72dLjDq7yrEFEzHV2nO6XVE2T6BC5YaA
	TF3/1YYmysEnn272sReaBxuvIt975r3ABV9LkszLGYzmO6w4gfCtyRx/w51v9WfhT7m2
	V+S1sQwJoa3oIBIxcBTzZ+tcgbK1RRkp2blFCxseH6dVofJ5OX17B9gC6WHrxgBI9LAc
	R2GF5SHMTROGzECsZahVuekSskdh5Q1c0WmtFNAQqE13D2PJsZAibCKDV9mzjWk1URZB
	Clng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UCdwuxZhfjz54OMFe+GcC1pNGLy+nzAenE8+8x8D6Xw=;
	b=tyogw3tkPSDutYGA8SzPPYY/1Wk3HQEDNqhlKIFbQkaff0DtJwtCr0QuAot5Ris853
	ybAWzvE7GHGvltSeclwCmqBJZi8zk/cjWnDcgTsXHYr6GDtVoQrIUmUfwSFKnTXKsAw4
	5h9srXx8B8438nEick8tuOhete2iCPopzuwOf0DLvct4D60o1EK4VpzFNs8OVuqVpWoc
	Rqr9RDTgY3CYg9Z75p933qLGdpfMxgfeur4uNatLz7smDHTpcnqHGNj3bT8LeP+skO8W
	9gcYo6BZjExSjVTGQmmTbat7TRVwM7Rkbq7YM0y58L4u1ktXph9y8oMzUlUC3KnKPP5o
	b+lw==
X-Gm-Message-State: AHQUAubDY1VPhmjDWV4zw7mUJHH05qsP6xYVHUKwcPxxNYGQBdM4Li85
	x+A9s9r0+6rAQbBEOaEiyo0gXj8+V4m7xMVfXz0=
X-Google-Smtp-Source: AHgI3IbVdSl2HdLmxQwQyOXjKLg16BUk/VuwABh5B896H1Z2sMNugKaHqwdRnNlvlX3jeY085Y9hhwu5i+2hFt/zTpQ=
X-Received: by 2002:ac8:285c:: with SMTP id 28mr2188512qtr.54.1549968626262;
	Tue, 12 Feb 2019 02:50:26 -0800 (PST)
MIME-Version: 1.0
References: <CAH5YvUtMEkHQCGZvrnviknkmwQBc_gVNC3cd2f7qb=kCCfk3Kw@mail.gmail.com>
	<CAJTo0LbUuk-EUKwMiemP34dhz51f++qM-psFskqx8bYimoD--Q@mail.gmail.com>
In-Reply-To: <CAJTo0LbUuk-EUKwMiemP34dhz51f++qM-psFskqx8bYimoD--Q@mail.gmail.com>
From: Madhu B <madhu1313b@gmail.com>
Date: Tue, 12 Feb 2019 16:20:14 +0530
Message-ID: <CAH5YvUuXHk+7i4be=D_=1JgsoSWPmqK3XNqNVd-0E4sXU=bRjQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	openembedded-core@lists.openembedded.org
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Getting an syntax error with 'sed' in systemd-serialgetty.bb
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
X-List-Received-Date: Tue, 12 Feb 2019 10:50:27 -0000
X-Groupsio-MsgNum: 11572
Content-Type: multipart/mixed; boundary="00000000000061c7570581b03128"

--00000000000061c7570581b03128
Content-Type: multipart/alternative; boundary="00000000000061c7550581b03126"

--00000000000061c7550581b03126
Content-Type: text/plain; charset="UTF-8"

Hi Ross,
                Attached the patch file.

Regards,
-Madhu.

On Tue, Feb 12, 2019 at 3:52 PM Burton, Ross <ross.burton@intel.com> wrote:

> That looks reasonable to me, can you send it as a proper patch
> (git-send-email, nice commit message, signed-off-by tag) to
> openembedded-core@lists.openembedded.org?
>
> Ross
>
> On Tue, 12 Feb 2019 at 06:42, Madhu B <madhu1313b@gmail.com> wrote:
> >
> > Hello everyone,
> >                        While trying to build the AGL image, I am getting
> an syntax error lik e "sed: -e expression #1, char 19: unterminated `s'
> command".
> >
> > With the below patch, I resolved that syntax error.
> > diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb
> b/meta/recipes-core/systemd/systemd-serialgetty.bb
> > index d934716..78b07c2 100644
> > --- a/meta/recipes-core/systemd/systemd-serialgetty.bb
> > +++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
> > @@ -17,7 +17,7 @@ do_install() {
> >                 install -d ${D}${systemd_unitdir}/system/
> >                 install -d
> ${D}${sysconfdir}/systemd/system/getty.target.wants/
> >                 install -m 0644 ${WORKDIR}/serial-getty@.service
> ${D}${systemd_unitdir}/system/
> > -               sed -i -e s/\@BAUDRATE\@/$default_baudrate/g
> ${D}${systemd_unitdir}/system/serial-getty@.service
> > +               sed -i -e 's/\@BAUDRATE\@/$default_baudrate/g'
> ${D}${systemd_unitdir}/system/serial-getty@.service
> >
> >                 tmp="${SERIAL_CONSOLES}"
> >                 for entry in $tmp ; do
> >
> > Is it really missed or am I missing anything?
> >
> > Regards,
> > -Madhu.
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>

--00000000000061c7550581b03126
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ross,</div><div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Attached the patc=
h file.</div><div><br></div><div>Regards,</div><div>-Madhu.<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Feb 12, 2019 at 3:52 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">That looks reasonable to me, can you send it =
as a proper patch<br>
(git-send-email, nice commit message, signed-off-by tag) to<br>
<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_blan=
k">openembedded-core@lists.openembedded.org</a>?<br>
<br>
Ross<br>
<br>
On Tue, 12 Feb 2019 at 06:42, Madhu B &lt;<a href=3D"mailto:madhu1313b@gmai=
l.com" target=3D"_blank">madhu1313b@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 While trying to build the AGL image, I am getting an syntax e=
rror lik e &quot;sed: -e expression #1, char 19: unterminated `s&#39; comma=
nd&quot;.<br>
&gt;<br>
&gt; With the below patch, I resolved that syntax error.<br>
&gt; diff --git a/meta/recipes-core/systemd/<a href=3D"http://systemd-seria=
lgetty.bb" rel=3D"noreferrer" target=3D"_blank">systemd-serialgetty.bb</a> =
b/meta/recipes-core/systemd/<a href=3D"http://systemd-serialgetty.bb" rel=
=3D"noreferrer" target=3D"_blank">systemd-serialgetty.bb</a><br>
&gt; index d934716..78b07c2 100644<br>
&gt; --- a/meta/recipes-core/systemd/<a href=3D"http://systemd-serialgetty.=
bb" rel=3D"noreferrer" target=3D"_blank">systemd-serialgetty.bb</a><br>
&gt; +++ b/meta/recipes-core/systemd/<a href=3D"http://systemd-serialgetty.=
bb" rel=3D"noreferrer" target=3D"_blank">systemd-serialgetty.bb</a><br>
&gt; @@ -17,7 +17,7 @@ do_install() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -=
d ${D}${systemd_unitdir}/system/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -=
d ${D}${sysconfdir}/systemd/system/getty.target.wants/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -=
m 0644 ${WORKDIR}/serial-getty@.service ${D}${systemd_unitdir}/system/<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sed -i -e s/\@=
BAUDRATE\@/$default_baudrate/g ${D}${systemd_unitdir}/system/serial-getty@.=
service<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sed -i -e &#39=
;s/\@BAUDRATE\@/$default_baudrate/g&#39; ${D}${systemd_unitdir}/system/seri=
al-getty@.service<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp=3D&qu=
ot;${SERIAL_CONSOLES}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for entry=
 in $tmp ; do<br>
&gt;<br>
&gt; Is it really missed or am I missing anything?<br>
&gt;<br>
&gt; Regards,<br>
&gt; -Madhu.<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br=
>
</blockquote></div>

--00000000000061c7550581b03126--

--00000000000061c7570581b03128
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-systemd-serialgetty.bb-Fix-the-syntax-error-related-.patch"
Content-Disposition: attachment; 
	filename="0001-systemd-serialgetty.bb-Fix-the-syntax-error-related-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_js1n9j380>
X-Attachment-Id: f_js1n9j380

RnJvbSBlNzRhMTkzMWFmOWM1Yjg4MzM0NTM0NWEwM2E2YTllYmY2ODIxY2IwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYWRodSA8bWFkaHUxMzEzYkBnbWFpbC5jb20+CkRhdGU6IFR1
ZSwgMTIgRmViIDIwMTkgMTY6MDM6NDcgKzA1MzAKU3ViamVjdDogW1BBVENIXSBzeXN0ZW1kLXNl
cmlhbGdldHR5LmJiOiBGaXggdGhlIHN5bnRheCBlcnJvciByZWxhdGVkIHRvIHNlZAoKVGhlIGN1
cnJlbnQgc3ludGF4IG9mIHNlZCBpcyBub3QgY29ycmVjdCwgaXQgd2lsbCByZXBvcnQgYW4gY29t
cGlsZQp0aW1lIGVycm9yIGFzIGJlbG93OgogInNlZDogLWUgZXhwcmVzc2lvbiAjMSwgY2hhciAx
OTogdW50ZXJtaW5hdGVkIGBzJyBjb21tYW5kIgoKU2lnbmVkLW9mZi1ieTogTWFkaHUgPG1hZGh1
MTMxM2JAZ21haWwuY29tPgotLS0KIG1ldGEvcmVjaXBlcy1jb3JlL3N5c3RlbWQvc3lzdGVtZC1z
ZXJpYWxnZXR0eS5iYiB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1jb3JlL3N5c3RlbWQvc3lzdGVt
ZC1zZXJpYWxnZXR0eS5iYiBiL21ldGEvcmVjaXBlcy1jb3JlL3N5c3RlbWQvc3lzdGVtZC1zZXJp
YWxnZXR0eS5iYgppbmRleCBkOTM0NzE2Li43OGIwN2MyIDEwMDY0NAotLS0gYS9tZXRhL3JlY2lw
ZXMtY29yZS9zeXN0ZW1kL3N5c3RlbWQtc2VyaWFsZ2V0dHkuYmIKKysrIGIvbWV0YS9yZWNpcGVz
LWNvcmUvc3lzdGVtZC9zeXN0ZW1kLXNlcmlhbGdldHR5LmJiCkBAIC0xNyw3ICsxNyw3IEBAIGRv
X2luc3RhbGwoKSB7CiAJCWluc3RhbGwgLWQgJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0v
CiAJCWluc3RhbGwgLWQgJHtEfSR7c3lzY29uZmRpcn0vc3lzdGVtZC9zeXN0ZW0vZ2V0dHkudGFy
Z2V0LndhbnRzLwogCQlpbnN0YWxsIC1tIDA2NDQgJHtXT1JLRElSfS9zZXJpYWwtZ2V0dHlALnNl
cnZpY2UgJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0vCi0JCXNlZCAtaSAtZSBzL1xAQkFV
RFJBVEVcQC8kZGVmYXVsdF9iYXVkcmF0ZS9nICR7RH0ke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVt
L3NlcmlhbC1nZXR0eUAuc2VydmljZQorCQlzZWQgLWkgLWUgJ3MvXEBCQVVEUkFURVxALyRkZWZh
dWx0X2JhdWRyYXRlL2cnICR7RH0ke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVtL3NlcmlhbC1nZXR0
eUAuc2VydmljZQogCiAJCXRtcD0iJHtTRVJJQUxfQ09OU09MRVN9IgogCQlmb3IgZW50cnkgaW4g
JHRtcCA7IGRvCi0tIAoxLjkuMQoK

--00000000000061c7570581b03128--
