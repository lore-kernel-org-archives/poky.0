Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C21DE00D59; Tue,  6 Aug 2019 03:21:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com
	[209.85.222.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54FE8E00A93
	for <poky@yoctoproject.org>; Tue,  6 Aug 2019 03:21:56 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id c4so6627829uad.1
	for <poky@yoctoproject.org>; Tue, 06 Aug 2019 03:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qR2xT9ty5GAhXF32b4JNcPy2KFcevBPscMZd5QjoJoo=;
	b=u25R+bhwfZmdbLqRznuUiUPivt5salMz++0mwqoNymU2yvwvf3qYnfknMKum9CZgY3
	4nRmHd/SDBhzvaHYSgR8HlKQhz6etYZ9NwpN1Y+IQ1TPOI7kimJr640eyKQsIQheZGDX
	kKqZgzE1mWCQ8HDaMdhta/mi+CfO6+L6f9HmoyfivmelxyxNPFTs3glC001s66Y+5GXe
	zUZ9CYEiCEujlN/muP0bSUTwY9x6cyEWkQSUwShRpVetv5h/K61v3ySSQ08EENYB7IfD
	0nciWuT6sfNBnAXd45UxtH8wJ/8yN985YTZtNHMee9saNtGrtRr3dlegjhDizxlceqC6
	kN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qR2xT9ty5GAhXF32b4JNcPy2KFcevBPscMZd5QjoJoo=;
	b=Svknihs/igGRNw0w9qMH2kTNeWSbVxUCZjMF4EYX9yVglER9dnakOdzXy27IbAsHND
	mM7McPvXxTqyaN415D1XrPdav3xG5O/XgiO18wl5sUwU4guH0DeaC5hhd5Gn7uAYeBTT
	1Tt/QzR0IIqMjK6WHFQx+qNXiBUpdzblajBrnOaks1+eDPcNjT8ynt1ggJNFCQT9ZczB
	YGuhYrjh0+XM83+HjGtIU3dWVgen/Eu7gYzoKJ0kmXLYzhT+E3bKUiMLSdKK/8JtKQh4
	6TTfSHrGKhMDY6TWO8G8/yd9ADLGJJembJSw6zfECqw9zlrvwGaE/2LwCnPd3fU6VnLz
	sXGA==
X-Gm-Message-State: APjAAAUkdGNHCOHyRewenAn1OGL6SgjbK+1VMZGc34dUctIHN/3VyxRz
	y7PRWM+2NXNO9qwWwV62TiqFOy/lqhYn1gS8oGk=
X-Google-Smtp-Source: APXvYqwd9g9TuScA+OKlR2vJ85luG8ee53F2YUQV3BB3xrm+V97KBz6PsNVoduJtph5ZHdRM3GHeQFotn+E1ofPEnTU=
X-Received: by 2002:ab0:70b1:: with SMTP id q17mr1720523ual.100.1565086915544; 
	Tue, 06 Aug 2019 03:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190729074732.GA11134@chikyu>
	<CALLGG_KH9wWtTVBZuq7c8vNAh5-9QjSv4kFBANpmYMqmgx5hEw@mail.gmail.com>
In-Reply-To: <CALLGG_KH9wWtTVBZuq7c8vNAh5-9QjSv4kFBANpmYMqmgx5hEw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 6 Aug 2019 12:21:44 +0200
Message-ID: <CANNYZj-xPPT_Ze_DO1ixzwpgjKyAMWeZqOMw=YpmsQwZYGk=4w@mail.gmail.com>
To: vijai kumar <vijaikumar.kanagarajan@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 06 Aug 2019 10:21:57 -0000
Content-Type: multipart/alternative; boundary="000000000000a4cd2b058f70313c"

--000000000000a4cd2b058f70313c
Content-Type: text/plain; charset="UTF-8"

If there is a problem, we generally expect specific steps that demonstrate
the problem, or a patch that addresses the problem. As your message had
neither, there is nothing to look at really.

Regards,
Alex

On Tue, 6 Aug 2019 at 08:37, vijai kumar <vijaikumar.kanagarajan@gmail.com>
wrote:

> Ping. Did anybody get a chance to look at this?
>
> - Vijai Kumar K
>
>
> On Mon 29 Jul, 2019, 1:17 PM Vijai Kumar K, <
> vijaikumar.kanagarajan@gmail.com> wrote:
>
>> Hi All,
>>
>> I have been using the rpm signing facility of poky for sometime now.
>>
>> Looks like
>>
>> https://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-support/gnupg/gnupg?id=2d678cd3f4746adce9d89b8daa877fd669f2ca2d
>> introduced a patch for gnupg native to change the socket name from
>> S.gpg-agent to S.gpg-agent.yocto-native.
>>
>> This might break builds when you have gnupg socket redirection setup as
>> below in the host.
>>
>> https://wiki.gnupg.org/NFS.
>>
>> One could easily setup docker to volume mount the agent socket to the
>> container and setup S.gpg-agent as above to redirect requests to the
>> host's socket. You would just need the public keys in the container.
>> This is one such case where this patch could cause problems.
>>
>>
>> - Vijai Kumar K
>>
>

--000000000000a4cd2b058f70313c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If there is a problem, we generally expect specific s=
teps that demonstrate the problem, or a patch that addresses the problem. A=
s your message had neither, there is nothing to look at really.</div><div><=
br></div><div>Regards,</div><div>Alex<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 6 Aug 2019 at 08:37,=
 vijai kumar &lt;<a href=3D"mailto:vijaikumar.kanagarajan@gmail.com">vijaik=
umar.kanagarajan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div>Ping. Did anybody get a cha=
nce to look at this?</div><div><br></div><div>- Vijai Kumar K<br></div><div=
 dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon 29 Jul, 2019, 1:17 PM Vijai Kumar K, &lt;<a href=3D=
"mailto:vijaikumar.kanagarajan@gmail.com" target=3D"_blank">vijaikumar.kana=
garajan@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hi All,<br>
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
</blockquote></div>

--000000000000a4cd2b058f70313c--
