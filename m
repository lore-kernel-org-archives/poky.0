Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 741E5E00C58; Fri,  7 Dec 2018 01:55:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF439E00C49
	for <poky@yoctoproject.org>; Fri,  7 Dec 2018 01:55:46 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id f23so3221699edb.3
	for <poky@yoctoproject.org>; Fri, 07 Dec 2018 01:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=jVWWPFtPQIzmUqLmZYXCT1NzjPtJwhzkYNgKnRSCaPY=;
	b=MY/84lwZnxrFpcitjRh4OpQl+bXj/6ZHQmIQR6R2siOzChfLCeZDjuE9/7KABEO1vX
	hLBofSLNqFgwiLi05UCm4UXEU9o9r+reJrf5HJ2rHmjY9yBTaPUETTs7ruG3KhJ2BKtW
	/nRM+GN82SO8j229HM/y5/xSwFa8oa/M8A5iyk5O5Fp1YzBLsvbZIGbBcaOlkh6A1pXX
	fsgvM5eu7lrS4qM4KQypXpjnhj+fSXz5IsdmSzV096O58YiS8VHBjcjjwf7puDbd1Sdv
	gxjKiWUBAjLtxyzkP3FXkQUei6P/Ix/2q/HqpoY7SrP51JHcDfpc7OcmTWQs/e1HrfNu
	ryng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=jVWWPFtPQIzmUqLmZYXCT1NzjPtJwhzkYNgKnRSCaPY=;
	b=oQiGHN0GGoCYPgXFiVKifo+qoU5Og8pXoB++uOCG4ImmyeM+JNcR0NJFHx2YMnStYr
	WkKWAd9C01HKj1eZj/QMbmhu1xZewmi81n7FomN9enmn0DkIHGFZ9D+ZSaBE/j1lmQN8
	BHq5wFNLQ3qeCbJyw1jGbZ/8VC7XeQ9DKlVZFyUbMQbRASBE/QHeTCxuJWdBpjFIvn2v
	xW50BZj5bCDQKY0ZkYTbWxDgi5Z07NT1NW5ZgrV8XsgkRBlHjrnt//KlF/nhxdPDejoN
	PYaFDRo3COtSMqWQFuocSReXiakFKI+YjJbalxlqFzM+fBFU9V3WlJCN0EHWSVoc2d8g
	TBsQ==
X-Gm-Message-State: AA+aEWZDCm3zzys/1BLDNBlxgijsCJt/FXCloUzhVxTxi8L029xiQa3f
	A71IcU5zfcIQTC0NIhxeRTvTan1YDl53KbxTq2wxamSD
X-Google-Smtp-Source: AFSGD/XtGgbJRRitvHwqxRX1cklVAcJScXxxS08D83ZU3WUqZzweptSa3okIqx5/zGVFW6/OXA0daHdbXSNbWji7yWs=
X-Received: by 2002:a17:906:4d41:: with SMTP id
	b1-v6mr1420808ejv.171.1544176545655; 
	Fri, 07 Dec 2018 01:55:45 -0800 (PST)
MIME-Version: 1.0
References: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
In-Reply-To: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 7 Dec 2018 11:55:33 +0200
Message-ID: <CADnUhn0yqSb09atcqNakJMHMFwoG8qdLUww90D8gPRRu+913hw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Fri, 07 Dec 2018 09:55:47 -0000
Content-Type: multipart/alternative; boundary="000000000000797252057c6b9eee"

--000000000000797252057c6b9eee
Content-Type: text/plain; charset="UTF-8"

I checked that tag. It seems to be correct:
68a612b7d31d270348ef5439d7f779c309bdb6ec    refs/heads/rocko

pe 7. jouluk. 2018 klo 11.42 matti kaasinen (matti.kaasinen@gmail.com)
kirjoitti:

> Hi!
> My build stops while packaging nspr-4.16-r0 do_package while executing
> split_and_strip_files.
> I try now building Poky based image using docker container (crops/poky). I
> already had to add HOSTTOOLS_append = " svn " to get SRCREV = "${AUTOREV}"
> statement work that I did not need in direct PC installation.
>
> Could this also be something resembling i.e. something related to host sw
> because I have not had this problem in similar set-up with same PC but
> without docker. In fact there I did not use repo system but just checked
> out layers manually.
>
> Poky revision is 68a612b7d31d270348ef5439d7f779c309bdb6ec. It is supposed
> to be "rocko" tag, but I'm not quite sure what repo took. Git does not
> report any branch. Repo set-up was:
>   <project remote="yocto"
> revision="90414ecd5cf72995074f3dc6b05cfbee0a1dab67" upstream="rocko"
> name="poky" path="sources/poky"/>
>
> I hope someone can guide me with this problem.
> Thanks,
> Matti
>

--000000000000797252057c6b9eee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I checked that tag. It seems to be c=
orrect:</div><div>68a612b7d31d270348ef5439d7f779c309bdb6ec=C2=A0=C2=A0=C2=
=A0 refs/heads/rocko<br></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">pe 7. jouluk. 2018 klo 11.42 matti kaasinen (<a href=3D"mail=
to:matti.kaasinen@gmail.com">matti.kaasinen@gmail.com</a>) kirjoitti:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div>Hi!</div><div>My build stops while packaging ns=
pr-4.16-r0 do_package while executing split_and_strip_files.</div><div>I tr=
y now building Poky based image using docker container (crops/poky). I alre=
ady had to add HOSTTOOLS_append =3D &quot; svn &quot; to get SRCREV =3D &qu=
ot;${AUTOREV}&quot; statement work that I did not need in direct PC install=
ation.<br></div><div><br></div><div>Could this also be something resembling=
 i.e. something related to host sw because I have not had this problem in s=
imilar set-up with same PC but without docker. In fact there I did not use =
repo system but just checked out layers manually.<br></div><div><br></div><=
div>Poky revision is 68a612b7d31d270348ef5439d7f779c309bdb6ec. It is suppos=
ed to be &quot;rocko&quot; tag, but I&#39;m not quite sure what repo took. =
Git does not report any branch. Repo set-up was:</div><div>=C2=A0 &lt;proje=
ct remote=3D&quot;yocto&quot;=C2=A0=C2=A0=C2=A0=C2=A0 revision=3D&quot;9041=
4ecd5cf72995074f3dc6b05cfbee0a1dab67&quot; upstream=3D&quot;rocko&quot;=C2=
=A0=C2=A0=C2=A0=C2=A0 name=3D&quot;poky&quot; path=3D&quot;sources/poky&quo=
t;/&gt;<br></div><div><br></div><div>I hope someone can guide me with this =
problem.</div><div>Thanks,</div><div>Matti<br></div></div></div></div></div=
></div></div></div>
</blockquote></div>

--000000000000797252057c6b9eee--
