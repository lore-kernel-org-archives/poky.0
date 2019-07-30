Return-Path: <vijaikumar.kanagarajan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54362E00CD5; Tue, 30 Jul 2019 12:37:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vijaikumar.kanagarajan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B700DE00C94;
	Tue, 30 Jul 2019 12:37:58 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id z4so64241532qtc.3;
	Tue, 30 Jul 2019 12:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=uZJ82a/6j7PIHPzwtuVA1oJzAKNoj5Ux1IAv7KlM4aQ=;
	b=WL492dxks31Eq17uOCp6hiJ9FS1B/7itmKlYYCzr6aO+M0Un9HAiUhTAqAryoUqXuV
	/EE0arKzdt3yXgYV30Tbp84PdU7ZldHCpqZtA7lm8C4a8IK6nBu8qIHktP6WERfZolTU
	MLddrBls6tF1uEtzB1YDPbabxzHczzb9TWAYI/aS1viV125vZQf2czGFW/YKpaowsPEU
	l1P2PhoadRPjRXl/jruqMcWHmV1EDHCuGcORtvsQKVuhKqm9TOHvfLZMH8280g5hvAT5
	rdubpDmESjZFwy4NMLQjuJJ2JRg/xfPXiP/IUvcts9k8MVbxl9oPjyKBd08qbF3TCK4v
	viyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=uZJ82a/6j7PIHPzwtuVA1oJzAKNoj5Ux1IAv7KlM4aQ=;
	b=gYSd5npvOyu26N7Yf421A061gTL1Y4bbiVzb2lpVMetp5wRcLGeDNUuSQuzQ602/bU
	KhvjDtquzoxhnXm2i2YW9qBJBHoMXDrwpeJRQt5hbeYHcRzpU+xKI7ipgSj4FVy9irjK
	D4ISojKf5TzTFsYn2Zj4Ytqd7Flkf6npfmvX0noTepK+akG73onWgKIilgeJVCkTSeGc
	caTscr1PhNVdHWbiJcjuYepM8vlQbiokuJJBW1HptUzOfZLFgQSvgj0XBD2aVz5meINY
	cbZW92ZzH8Xj1SWUebNREbegEJDeFoJV6WhPHIxtDSAaWK8uTr3xuHbaSv04x7FPkS7m
	T31g==
X-Gm-Message-State: APjAAAVYepb4d3Z+yfC688JDvYcYir99Uy3hV+NX+0KtxKSP3OJJaU/j
	LGQQPOy32pIiMxgwC0WsldBCy8Ci2RjPsvTxCsJUdJWC
X-Google-Smtp-Source: APXvYqyZYRW5wdYMEXg/E+05WlOonlR1fMdq0AGxpxY5Q7zh3fUX1bjHPKREd1ApzxRAROdbUcTdHTsFwH4cHBuhc+Y=
X-Received: by 2002:ac8:1c42:: with SMTP id j2mr82184664qtk.68.1564515477857; 
	Tue, 30 Jul 2019 12:37:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074732.GA11134@chikyu>
In-Reply-To: <20190729074732.GA11134@chikyu>
From: vijai kumar <vijaikumar.kanagarajan@gmail.com>
Date: Wed, 31 Jul 2019 01:07:46 +0530
Message-ID: <CALLGG_J=yJncdF1UY_f9cxpiqnNXfxN6RF1-dq-PVMBBVfZrqA@mail.gmail.com>
To: poky@yoctoproject.org, yocto@yoctoproject.org
Subject: gnupg: Fix for host clashes(2d678cd3f4) - reg
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
X-List-Received-Date: Tue, 30 Jul 2019 19:37:59 -0000
Content-Type: multipart/alternative; boundary="0000000000004dbeab058eeb2573"

--0000000000004dbeab058eeb2573
Content-Type: text/plain; charset="UTF-8"

Hi All,

I have been using the rpm signing facility of poky for sometime now.

Looks like
https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-support/gnupg/gnupg?id=2d678cd3f4746adce9d89b8daa877fd669f2ca2d
introduced a patch for gnupg native to change the socket name from
S.gpg-agent to S.gpg-agent.yocto-native.

This might break builds when you have gnupg socket redirection setup as
below in the host.

https://wiki.gnupg.org/NFS.

One could easily setup docker to volume mount the agent socket to the
container and setup S.gpg-agent as above to redirect requests to the
host's socket. You would just need the public keys in the container.
This is one such case where this patch could cause problems.

Thoughts?


- Vijai Kumar K

--0000000000004dbeab058eeb2573
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">Hi All,<br></div>
<br>
I have been using the rpm signing facility of poky for sometime now.<br>
<br>
Looks like <br>
<a href=3D"https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-s=
upport/gnupg/gnupg?id=3D2d678cd3f4746adce9d89b8daa877fd669f2ca2d" rel=3D"no=
referrer noreferrer" target=3D"_blank">https://git.yoctoproject.org/cgit.cg=
i/poky/commit/meta/recipes-support/gnupg/gnupg?id=3D2d678cd3f4746adce9d89b8=
daa877fd669f2ca2d</a><br>
introduced a patch for gnupg native to change the socket name from<br>
S.gpg-agent to S.gpg-agent.yocto-native.<br>
<br>
This might break builds when you have gnupg socket redirection setup as<br>
below in the host.<br>
<br>
<a href=3D"https://wiki.gnupg.org/NFS" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://wiki.gnupg.org/NFS</a>.<br>
<br>
One could easily setup docker to volume mount the agent socket to the<br>
container and setup S.gpg-agent as above to redirect requests to the<br>
host&#39;s socket. You would just need the public keys in the container.<br=
>
This is one such case where this patch could cause problems.</div><div clas=
s=3D"gmail_quote" dir=3D"auto"><br></div><div class=3D"gmail_quote" dir=3D"=
auto">Thoughts?<br>
<br>
<br>
- Vijai Kumar K<br>
</div></div></div>

--0000000000004dbeab058eeb2573--
