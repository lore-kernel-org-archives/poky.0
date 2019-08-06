Return-Path: <vijaikumar.kanagarajan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E905AE00D5F; Mon,  5 Aug 2019 23:37:41 -0700 (PDT)
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
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A64EAE00D47
	for <poky@yoctoproject.org>; Mon,  5 Aug 2019 23:37:40 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id r6so62100963qkc.0
	for <poky@yoctoproject.org>; Mon, 05 Aug 2019 23:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CZWO60Ih+cONVDDTGYypnF/2GxzEgmjV/4r7cjUTMMg=;
	b=U+wbXPd/HG7K27sIaSI7NwF7Kr16CntF5FutMQ3/jvutqTSPOqW6P3dr100JFIkS5a
	AXFpkue6Ax/Ak9B4L1wxu5qOMUWklPcC7VVr+NuLrWGeIvgAaBbyv8co6cMtKdFUWFBf
	8zYwiW2ibuH89hglk2VXkY9VNxW8W1xwHoPlcbvEG8u8Eyk32LCx/wO85DUr0j43GGPe
	I9xjKfhitiWAkjA5fn87QIduPYZYUWLKir2kp4f75ASW04SGnWo9i0rsnoTu+5xe4D9/
	EA7L+nGqBsquidA1jX9OAAJzt5uLtm5Fe2+dzRUV/il5SpOyqK/VR4cr3+jLAx/DQErO
	ZNfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CZWO60Ih+cONVDDTGYypnF/2GxzEgmjV/4r7cjUTMMg=;
	b=LVfsoxagaXhVMV0G7nIC+gsh3/gloKLN12bvuOwoT9i6MR7ouIfNMtdhUx3AMEIoDI
	UjbuO+KJtTE0dhqW+3dbgLqxTHR+OWFOGgpin4Ak6sJptNEeyW2BvutxNiwXvhkXZ9QN
	SOHmE4hVCjpenfMz+bZq18BTnTWRNWFnNH738ucZJuclF7AvvnnVjONwgN4nUGYOx4OQ
	deY8aAFxIDeNCeJXEan3IJ9DyTG5ihiN+MniiegAPT5nHf7qRWvRFu1jUMDkYKzeYczI
	wdjyXmWs5IY0khBTrLF1k4pgc2PKJisei+1ReVW8MgqT2BcEFz8BycpG+o1+QNr5caaC
	Z9zw==
X-Gm-Message-State: APjAAAVKj+4keyWM6B9DtnHKQ9w/GP5XotUwB5s26sqhwjQehvJZoyFV
	+FF5Ie9aeEqs0NLFABzvMKjLDWgX0EQcVlKx8sF3/Jnw
X-Google-Smtp-Source: APXvYqwN38WvjojxlWmZtNu/yUDcRJEblPTdSzXjuLXBVZINTZLxaHmmbMgsQZko/GjhJyMntGalq3LnBdZx3NBiElk=
X-Received: by 2002:a37:660c:: with SMTP id a12mr1844166qkc.52.1565073459811; 
	Mon, 05 Aug 2019 23:37:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074732.GA11134@chikyu>
In-Reply-To: <20190729074732.GA11134@chikyu>
From: vijai kumar <vijaikumar.kanagarajan@gmail.com>
Date: Tue, 6 Aug 2019 12:07:28 +0530
Message-ID: <CALLGG_KH9wWtTVBZuq7c8vNAh5-9QjSv4kFBANpmYMqmgx5hEw@mail.gmail.com>
To: poky@yoctoproject.org, alex.kanavin@gmail.com
Subject: Re: gnupg: Fix for host clashes(2d678cd3f4) - reg
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
X-List-Received-Date: Tue, 06 Aug 2019 06:37:42 -0000
Content-Type: multipart/alternative; boundary="0000000000009e9a62058f6d0fc5"

--0000000000009e9a62058f6d0fc5
Content-Type: text/plain; charset="UTF-8"

Ping. Did anybody get a chance to look at this?

- Vijai Kumar K


On Mon 29 Jul, 2019, 1:17 PM Vijai Kumar K, <
vijaikumar.kanagarajan@gmail.com> wrote:

> Hi All,
>
> I have been using the rpm signing facility of poky for sometime now.
>
> Looks like
>
> https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-support/gnupg/gnupg?id=2d678cd3f4746adce9d89b8daa877fd669f2ca2d
> introduced a patch for gnupg native to change the socket name from
> S.gpg-agent to S.gpg-agent.yocto-native.
>
> This might break builds when you have gnupg socket redirection setup as
> below in the host.
>
> https://wiki.gnupg.org/NFS.
>
> One could easily setup docker to volume mount the agent socket to the
> container and setup S.gpg-agent as above to redirect requests to the
> host's socket. You would just need the public keys in the container.
> This is one such case where this patch could cause problems.
>
>
> - Vijai Kumar K
>

--0000000000009e9a62058f6d0fc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ping. Did anybody get a chance to look at this?</div>=
<div><br></div><div>- Vijai Kumar K<br></div><div dir=3D"auto"><div><br><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon 29=
 Jul, 2019, 1:17 PM Vijai Kumar K, &lt;<a href=3D"mailto:vijaikumar.kanagar=
ajan@gmail.com" target=3D"_blank">vijaikumar.kanagarajan@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi All,<b=
r>
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
This is one such case where this patch could cause problems.<br>
<br>
<br>
- Vijai Kumar K<br>
</blockquote></div></div></div>
</div>

--0000000000009e9a62058f6d0fc5--
