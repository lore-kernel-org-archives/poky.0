Return-Path: <gyula.kovacs.kkb.tech@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799FEE00D4E; Mon,  2 Sep 2019 02:15:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gyula.kovacs.kkb.tech[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69B65E00782
	for <poky@yoctoproject.org>; Mon,  2 Sep 2019 02:15:19 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id n6so838662uaq.3
	for <poky@yoctoproject.org>; Mon, 02 Sep 2019 02:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LlV2JFBsTnRzKelhvV1+5jEaeJHl+7SbCertMc16fIE=;
	b=UpkxHnf+R/oeKHRVm+a7Huny5yFJdl9wKNxNb3eR/y4l0a0igokQdI/JugTlkCe2/B
	Rzsw8T+W7kQ1mpd4+NaRIEJEox46+KH1W0dNpG1567ZVtxfbu3J/wdZlaI4VeZQGPQjj
	5evBBX5VOJIuX9U594W6PO6Xc6n4wzdsIO7JkmxPyDpiqyx37ZmSptPbbvUD1f4bxsBz
	cYAXsS4pLT4g2+Cv0IhoVc5edCIvHb2Amy7e0vmRWJmRqivqut+Y4MFFEuy/kpnkQ6TQ
	Uxi5tZWFcFklrkfrQjDrX+FKBZBoDiWElyROy+WoeZtqmui3unZ9+/2/SklqHfTdx+Cj
	zBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LlV2JFBsTnRzKelhvV1+5jEaeJHl+7SbCertMc16fIE=;
	b=Z7v7ith1tYuVkokt6CLVyV5+xfv6OGk2DpchDsQEzG55IniDkpwQwPUohNGrg8gtg/
	2zyJalnhT69UZUy4bgKmun49yjdOZ51tVX6qtRtNi4Ane44l/OSa4jcam085eELWfmpv
	yHBGxdClc0w3/Aej9ghE1wdavYyIIGQXIpSEjErdwB8Vz1WBYDfh2hlgVcdi3LFAKdfP
	669+okn8qp2BVpZmrorDtVNQpXYRCsaLSvigoXx9tH7VHJyd8sV5L1kuqSQOuMG1XolK
	73vWMBZSjHkFePx63Sc8eOLB3S0gImfUQL0jWTGuzxpBPuc0xGwlcGMVksGDoCOLV4Ax
	lfxw==
X-Gm-Message-State: APjAAAVGhyUZCh4mePqr5+RvynheSo0PbHKEWbuaFkfN6WzFtoshopXL
	zVVqjUa1tIRzqb+k0TZJDFHlOp9Z5pL0VjBhBp8BtLah
X-Google-Smtp-Source: APXvYqwjRCa1EuyunzzK8qFSWtCq2pq9+s1/UttiuG3XQQxTUKoVUjzr3ZfzRcgc3A8+qMCaoBFrYKG4PaMsYr9TNGE=
X-Received: by 2002:ab0:5990:: with SMTP id g16mr6224869uad.105.1567415718069; 
	Mon, 02 Sep 2019 02:15:18 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Gyula_Kov=C3=A1cs?= <gyula.kovacs.kkb.tech@gmail.com>
Date: Mon, 2 Sep 2019 11:15:07 +0200
Message-ID: <CAG6kgP4ZgS4gERCqfGUNYJGJ1zD1NDX59UzHLTM_UGq1s1U0Jw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: circular references in recipe-depends.dot file
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
X-List-Received-Date: Mon, 02 Sep 2019 09:15:20 -0000
Content-Type: multipart/alternative; boundary="000000000000174b4e05918e69b0"

--000000000000174b4e05918e69b0
Content-Type: text/plain; charset="UTF-8"

Hi,

I generated the recipe-depends.dot for yocto 2.6.3 (this is the base of our
system) and wanted to create a simplified graph of the dependencies. (The
recipe-depends.dot contains all dependencies which is not best suited for
displaying. So I wanted to build a dependency level structure that does not
include indirect dependencies. E.g. If acl depends on attr, the attr's
dependencies are not listed for acl.)
During the simplification I found that the recipe-depends.dot contains
circular dependencies. E.g. acl depends on attr (which is OK) but attr also
depends on acl, which is obviously impossible.
I checked different yocto versions, and the problem is also found in
versions 2.7, 2.5, 2.4, 2.3.
The simplification works for the older versions (2.2, 2.1 and 2.0), which
produced pn-depends.dot file.
Has anybody ever encountered this problem?
Have you ever tried to create a simplified, easier-to-read format from
recipe-depends.dot?

Best regards,
Gyula

--000000000000174b4e05918e69b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi,=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">I generated the recipe-d=
epends.dot for yocto 2.6.3 (this is the base of our system) and wanted to c=
reate a simplified graph of the dependencies. (The recipe-depends.dot conta=
ins all dependencies which is not best suited for displaying. <span class=
=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" =
class=3D"gmail-">So I wanted to build a dependency level structure that doe=
s not include indirect dependencies. E.g. If acl depends on attr, the attr&=
#39;s dependencies are not listed for acl.)</span></span></div><div class=
=3D"gmail_default" style=3D"font-size:small"><span class=3D"gmail-tlid-tran=
slation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><s=
pan class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span ti=
tle=3D"" class=3D"gmail-">During the simplification I found that the recipe=
-depends.dot contains circular dependencies. E.g. acl depends on attr (whic=
h is OK) but attr also depends on acl, <span class=3D"gmail-tlid-translatio=
n gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">which is=
 obviously impossible.</span></span></span></span></span></span></div><div =
class=3D"gmail_default" style=3D"font-size:small"><span class=3D"gmail-tlid=
-translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail=
-"><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><sp=
an title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-=
translation" lang=3D"en"><span title=3D"" class=3D"gmail-">I checked differ=
ent yocto versions, and the problem is also found in versions 2.7, 2.5, 2.4=
, 2.3.</span></span></span></span></span></span></div><div class=3D"gmail_d=
efault" style=3D"font-size:small"><span class=3D"gmail-tlid-translation gma=
il-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=
=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" =
class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"" class=3D"gmail-">The simplification works for t=
he older versions (2.2, 2.1 and 2.0), which produced pn-depends.dot file.</=
span></span></span></span></span></span></div><div class=3D"gmail_default" =
style=3D"font-size:small"><span class=3D"gmail-tlid-translation gmail-trans=
lation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-=
tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"g=
mail-"><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"=
><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gm=
ail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Has anybody =
ever encountered this problem?</span></span></span></span></span></span></s=
pan></span></div><div class=3D"gmail_default" style=3D"font-size:small"><sp=
an class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span tit=
le=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-transl=
ation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-t=
lid-translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gm=
ail-"><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en">=
<span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gma=
il-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Have you ever=
 tried to create a simplified, easier-to-read format from recipe-depends.do=
t?</span></span></span></span></span></span></span></span></span></span></d=
iv><div class=3D"gmail_default" style=3D"font-size:small"><span class=3D"gm=
ail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=
=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translation" lang=
=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-transla=
tion gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span=
 class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=
=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translat=
ion" lang=3D"en"><span title=3D"" class=3D"gmail-"><br></span></span></span=
></span></span></span></span></span></span></span></div><div class=3D"gmail=
_default" style=3D"font-size:small"><span class=3D"gmail-tlid-translation g=
mail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=
=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" =
class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-translation" l=
ang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-tran=
slation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><s=
pan class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><span ti=
tle=3D"" class=3D"gmail-">Best regards,</span></span></span></span></span><=
/span></span></span></span></span></div><div class=3D"gmail_default" style=
=3D"font-size:small"><span class=3D"gmail-tlid-translation gmail-translatio=
n" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-=
translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-=
"><span class=3D"gmail-tlid-translation gmail-translation" lang=3D"en"><spa=
n title=3D"" class=3D"gmail-"><span class=3D"gmail-tlid-translation gmail-t=
ranslation" lang=3D"en"><span title=3D"" class=3D"gmail-"><span class=3D"gm=
ail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" class=
=3D"gmail-">Gyula<br></span></span></span></span></span></span></span></spa=
n></span></span></div></div>

--000000000000174b4e05918e69b0--
