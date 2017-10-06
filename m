Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0979BE00DAE; Fri,  6 Oct 2017 16:23:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.65 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81FC9E00D8F
	for <poky@yoctoproject.org>; Fri,  6 Oct 2017 16:23:14 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id t134so3848224oih.5
	for <poky@yoctoproject.org>; Fri, 06 Oct 2017 16:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jV5MikWX4tN3yNml+KXh2sBtSZ4Twnz3YhQ+DRfblnQ=;
	b=VIJ976DZag8Q8L/BNCaXSANeBO9RsiErFJK4efi3Q1yPQmLAnrBtU7TlKA6DlUcO6Z
	7jfOAbmkYrZOSOn9rseO0MUqzlIO5sLuKa+eTS5Pg5uevuU6VpqvbZWxskifGZUMFgE0
	GyHcWt5r64ttQcetXSMO8EFYIqt1n17NEney3OVaUmoUVNq31bvreQjoBrzS9gnl7tuE
	dZS4AyQL5UqSEy3UKIyZM3PfLMzSXmtjx2QDbd6brVi2UOZENEgbAl8y/elQBEEtwY/Q
	sYIEK38bMuF7poVpmL458ngqO1ju0oyrw0f29p1KkGckBm7tewd5uKGH8wHECHUcF5p4
	BmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jV5MikWX4tN3yNml+KXh2sBtSZ4Twnz3YhQ+DRfblnQ=;
	b=q9ZEbZZ8bMh7xPRsJyfrp5q6eMFIM+ieCoGz+FHnHDH0XIx9JuPx2lF/PzFQlTf5o5
	QPeiBL0xtg/t1P3YtNtxcKFc1+DlP8XTUSgBZn7ruycnlKwfOwGXTBwnJ7J+cR8eTmeP
	Ne0r2XcKzuCIbRm4Mm8hF1I5pHBg2ZtBOVHxBkdHAIsebpMoMzEYHfomrJDoki7VYyBw
	6RmSteUogpJDzast/0ZQID2Cg58+GgyRo8kJto+OBGfsp54ChQfIUsygAHUsH+Hli29Z
	38oCBn70ln7xsFPQbgRTrwWnJh5dTz4jvG6akoFJz1f7n7nFtXPBVoiiG4JHg3DUpSpc
	bX/w==
X-Gm-Message-State: AMCzsaUfijfH5xBPy/Ei8zVbKj8cOjFCEEszUAbPTDIw7mNz7XpE4QeN
	HW627d659JrrkCnXuJLkX8UhiKS8JnijUJHDgMI=
X-Google-Smtp-Source: AOwi7QBNRT/Bfp7Zad57vnAILF1XyHvEGGmXwY2NmlhS9PIDP5LhKhhE5kdnI03088occYdmFIx7uT7Ayt6fMtwfnrw=
X-Received: by 10.157.4.80 with SMTP id 74mr1983093otc.470.1507332193486; Fri,
	06 Oct 2017 16:23:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.22.247 with HTTP; Fri, 6 Oct 2017 16:23:13 -0700 (PDT)
In-Reply-To: <1d859ba8-4bec-4879-fa44-6eac14be7435@xevo.com>
References: <20171006174212.15669-1-mkelly@xevo.com>
	<CAFNP8OtfrEW4fyJBzc4vsBcyQ2T8ciG4b4orfCTww2j4bviV-w@mail.gmail.com>
	<1d859ba8-4bec-4879-fa44-6eac14be7435@xevo.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 6 Oct 2017 16:23:13 -0700
Message-ID: <CAFNP8Otib0oGT_MUDp0cDeB2sibm4CgHkaUGvH2cAo6eiLXR7Q@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add debian-9 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 06 Oct 2017 23:23:15 -0000
Content-Type: multipart/alternative; boundary="001a113d736cf38f7a055ae91f59"

--001a113d736cf38f7a055ae91f59
Content-Type: text/plain; charset="UTF-8"

Unbelievable..... fixed.... thanks

http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros


On Fri, Oct 6, 2017 at 4:15 PM, Martin Kelly <mkelly@xevo.com> wrote:

> Great, thanks! By the way, looks like there's a small typo in the ref
> manual:
>
> "Dibian" --> "Debian"
>
> On 10/06/2017 03:41 PM, Scott Rifenbark wrote:
>
>> Martin - Updated the list of supported distros appropriately in the
>> ref-manual - see http://www.yoctoproject.org/do
>> cs/2.4/ref-manual/ref-manual.html#detailed-supported-distros
>>
>> Thanks
>>
>> On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly <mkelly@xevo.com <mailto:
>> mkelly@xevo.com>> wrote:
>>
>>     I have been working with OE on debian-9 for several months now without
>>     issue. In addition, I tested a build + runqemu for core-image-sato
>>     following the quickstart guide and had no issues.
>>
>>     Signed-off-by: Martin Kelly <mkelly@xevo.com <mailto:mkelly@xevo.com
>> >>
>>     ---
>>       meta-poky/conf/distro/poky.conf | 1 +
>>       1 file changed, 1 insertion(+)
>>
>>     diff --git a/meta-poky/conf/distro/poky.conf
>>     b/meta-poky/conf/distro/poky.conf
>>     index 5b8eeb2..6d365e0 100644
>>     --- a/meta-poky/conf/distro/poky.conf
>>     +++ b/meta-poky/conf/distro/poky.conf
>>     @@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
>>                   fedora-26 \n \
>>                   centos-7 \n \
>>                   debian-8 \n \
>>     +            debian-9 \n \
>>                   opensuse-42.1 \n \
>>                   opensuse-42.2 \n \
>>                   "
>>     --
>>     2.11.0
>>
>>     --
>>     _______________________________________________
>>     poky mailing list
>>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/poky
>>     <https://lists.yoctoproject.org/listinfo/poky>
>>
>>
>>

--001a113d736cf38f7a055ae91f59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unbelievable..... fixed.... thanks<br><br><a href=3D"http:=
//www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-support=
ed-distros">http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html=
#detailed-supported-distros</a><br><br></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Fri, Oct 6, 2017 at 4:15 PM, Martin Kelly <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:mkelly@xevo.com" target=3D"_blank">mk=
elly@xevo.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Great=
, thanks! By the way, looks like there&#39;s a small typo in the ref manual=
:<br>
<br>
&quot;Dibian&quot; --&gt; &quot;Debian&quot;<span class=3D""><br>
<br>
On 10/06/2017 03:41 PM, Scott Rifenbark wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Martin - Updated the list of supported distros appropriately in the ref-man=
ual - see <a href=3D"http://www.yoctoproject.org/docs/2.4/ref-manual/ref-ma=
nual.html#detailed-supported-distros" rel=3D"noreferrer" target=3D"_blank">=
http://www.yoctoproject.org/do<wbr>cs/2.4/ref-manual/ref-manual.<wbr>html#d=
etailed-supported-<wbr>distros</a><br>
<br>
Thanks<br>
<br></span><span class=3D"">
On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly &lt;<a href=3D"mailto:mkelly@=
xevo.com" target=3D"_blank">mkelly@xevo.com</a> &lt;mailto:<a href=3D"mailt=
o:mkelly@xevo.com" target=3D"_blank">mkelly@xevo.com</a>&gt;&gt; wrote:<br>
<br>
=C2=A0 =C2=A0 I have been working with OE on debian-9 for several months no=
w without<br>
=C2=A0 =C2=A0 issue. In addition, I tested a build + runqemu for core-image=
-sato<br>
=C2=A0 =C2=A0 following the quickstart guide and had no issues.<br>
<br></span>
=C2=A0 =C2=A0 Signed-off-by: Martin Kelly &lt;<a href=3D"mailto:mkelly@xevo=
.com" target=3D"_blank">mkelly@xevo.com</a> &lt;mailto:<a href=3D"mailto:mk=
elly@xevo.com" target=3D"_blank">mkelly@xevo.com</a>&gt;&gt;<span class=3D"=
"><br>
=C2=A0 =C2=A0 ---<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0meta-poky/conf/distro/poky.c<wbr>onf | 1 +<br>
=C2=A0 =C2=A0 =C2=A0=C2=A01 file changed, 1 insertion(+)<br>
<br>
=C2=A0 =C2=A0 diff --git a/meta-poky/conf/distro/poky.c<wbr>onf<br>
=C2=A0 =C2=A0 b/meta-poky/conf/distro/poky.c<wbr>onf<br>
=C2=A0 =C2=A0 index 5b8eeb2..6d365e0 100644<br>
=C2=A0 =C2=A0 --- a/meta-poky/conf/distro/poky.c<wbr>onf<br>
=C2=A0 =C2=A0 +++ b/meta-poky/conf/distro/poky.c<wbr>onf<br>
=C2=A0 =C2=A0 @@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fedora-=
26 \n \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0centos-=
7 \n \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debian-=
8 \n \<br>
=C2=A0 =C2=A0 +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debian-9 \n \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensus=
e-42.1 \n \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensus=
e-42.2 \n \<br>
=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<=
br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 2.11.0<br>
<br>
=C2=A0 =C2=A0 --<br>
=C2=A0 =C2=A0 ______________________________<wbr>_________________<br>
=C2=A0 =C2=A0 poky mailing list<br></span>
=C2=A0 =C2=A0 <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">po=
ky@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:poky@yoctoproject.org"=
 target=3D"_blank">poky@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listi=
nfo/poky</a><br>
=C2=A0 =C2=A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/poky" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or<wbr>g/li=
stinfo/poky</a>&gt;<br>
<br>
<br>
</blockquote>
</blockquote></div><br></div>

--001a113d736cf38f7a055ae91f59--
