Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F382BE00BC0; Thu, 22 Jun 2017 05:38:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC707E00B8B
	for <poky@yoctoproject.org>; Thu, 22 Jun 2017 05:38:36 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id 16so10675084qkg.2
	for <poky@yoctoproject.org>; Thu, 22 Jun 2017 05:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fDBYtT8HhOltb26YblC3km8h/pMAYvF3/SKW4n+XvYE=;
	b=GvQ+OgQuEiX9+zVEwFpEt+QMgwg3R+Tl0DeiJJPjtyWuNaN3ikxvIqqq6OnGP/b5bV
	jjMG5AUDeHmk6uuPuOJA8AqSQY187UTpZ8g52apnhlAnhVbjBAqqKEMFxPDMY1tN384+
	elviIWXB0UTlGhDcJEbvFP7OuVj9n9DcU5/VoeXkqD+Fq7lQZ7WSNcB9HfQW17IkCOGg
	SV/ViA+jDOq9O7bpxQvFd6hRXlRBZY1Cs7SEkqN1FHWETBc+cs6NO7PgRl/fhJpcWNbJ
	XQhYAjqE0xCJBZekxmlSZM412SiV7j8ZwSKnpARV67OORyFP+B9xdxINW9ZmTD8IHvRo
	zQbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fDBYtT8HhOltb26YblC3km8h/pMAYvF3/SKW4n+XvYE=;
	b=fjgz9mbOfaSO/xeV53hFc2+j+GNT9/Ey9V0xdC7NZ/GhKcYj28FGnt2vJ5JCC0kDlZ
	995rzAr2kATPq0/Iagw5e6YrsgFUFAvhrMQcjXBsUxQAooJQVEflp/MaTIajrFrp5447
	yQs8GNMjV0y//QjahzGbLf/QhsF+H0q0rrxobfoaA2bQKRbWu5LEuU6QHGGD+Z+PiclW
	fEn+Dr2Oj5AlxJtsEMlLbvFWFJC3Lzu7OZVW+DmxVRh4QkhKmdT5qlHoeQ1I4uBZvOf1
	13+/itG5jrMkuTLLlI0oiNDvDvC8JTGkwTa0YKbQXFXTFE79lDOjo8KZWa3uurkkjrLm
	jRJQ==
X-Gm-Message-State: AKS2vOx9KCW07etVGXIFEOZyGEbjBkkkENw2ur8CCMoIcCG1vvdrx/5y
	1Qj/nR1hsUIspVzLzz1H/+EIW0H7c3Aw
X-Received: by 10.55.31.162 with SMTP id n34mr2420865qkh.46.1498135115536;
	Thu, 22 Jun 2017 05:38:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 22 Jun 2017 05:38:15 -0700 (PDT)
In-Reply-To: <20170620124824.ndyxisbbwhqt6fn5@hiutale>
References: <20170601125029.wli6reydiovo7xjk@hiutale>
	<1496332394-6615-1-git-send-email-mikko.rapeli@bmw.de>
	<20170620124824.ndyxisbbwhqt6fn5@hiutale>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Jun 2017 13:38:15 +0100
Message-ID: <CAJTo0LZDtOq9_s=+NjGzZ6Y_V=1WQZK9V=fgqCx3pJmF6WXiiw@mail.gmail.com>
To: Mikko Rapeli <Mikko.Rapeli@bmw.de>
Cc: Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [PATCH 3/3 v2] meta: Fix return value checks from subprocess.call()'s
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
X-List-Received-Date: Thu, 22 Jun 2017 12:38:40 -0000
Content-Type: multipart/alternative; boundary="001a1147e5f8632e8705528bc3b2"

--001a1147e5f8632e8705528bc3b2
Content-Type: text/plain; charset="UTF-8"

On 20 June 2017 at 13:48, <Mikko.Rapeli@bmw.de> wrote:

> The bitbake and scripts parts from this patch series were merged already,
> but
> this not.
>
> Are there problems with this patch?
>

Sorry, didn't get around to replying.  It doesn't apply to master, can you
rebase please?

Cheers,
Ross

--001a1147e5f8632e8705528bc3b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 June 2017 at 13:48,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Mikko.Ra=
peli@bmw.de" target=3D"_blank">Mikko.Rapeli@bmw.de</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div id=3D":3c7" class=3D"a3s aXjCH m15cc58=
c83867c775">The bitbake and scripts parts from this patch series were merge=
d already, but<br>
this not.<br>
<br>
Are there problems with this patch?<br></div></blockquote></div><br>Sorry, =
didn&#39;t get around to replying.=C2=A0 It doesn&#39;t apply to master, ca=
n you rebase please?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Cheers,</div><div class=3D"gmail_extra">Ross</div></div>

--001a1147e5f8632e8705528bc3b2--
