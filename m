Return-Path: <lpapp@archlinux.us>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD9DE01575
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:12:08 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id g10so770210pdj.40
	for <poky@yoctoproject.org>; Thu, 15 Aug 2013 05:12:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=0bmzQvIe9NIYl0V/WKgN4QKDYQwjuh/kp2u5FXO2n2c=;
	b=YhtDvN/ccTZJ9oBQwuq5oay7gt/zaMnhMRu2DNVgb9OZC/TLeD0JOC3E0xml2quMbJ
	IZq+U7IatgGD3KsLjfqknLJtolvb+qv0IOgCuN0BkInAkxybEuZC6Jvpa/+uEJuqK+oP
	e5jtHeFotLqTfVII+1i0vCrkkYtgum0YElyCfv1wn9ulNpl+nkjSiGIJG2H7rSU7jn/v
	FkUK/0bMqg1CjbdS40KtvXv4wULYOpHp3pUVYcQOW4B390wF6hUQtCVyEn/yf3WPYb3V
	rd6Ilnvy1FmRyEJ229c4AyhRpba9budseqnlI4wf6RwNbbPbMReXWOeU8CPrKauhD5fj
	l3AA==
X-Gm-Message-State: ALoCoQkoddrRNWUxltdUSgDIOzPjxoUK2Ob7MsJHPSrh7UKCZ9s1nHxagWvshmkkHJV5/9UdmY8u
MIME-Version: 1.0
X-Received: by 10.66.155.102 with SMTP id vv6mr6725925pab.89.1376568727371;
	Thu, 15 Aug 2013 05:12:07 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.37.237 with HTTP; Thu, 15 Aug 2013 05:12:07 -0700 (PDT)
In-Reply-To: <520CC46F.9020501@communistcode.co.uk>
References: <CAOMwXhP1MH7aYWAf7_WPm1_5-GX6ugUOtyzZtC6q_+0Wp9jZBg@mail.gmail.com>
	<CAJTo0LZH_tEGaom5n9a7Dd2q8bzfVHNm6sFRTFBqD_JKGKe-dA@mail.gmail.com>
	<CAOMwXhMLBa+qefh1HgDB57EhqU_HJ4Ju9Y-V881PRGU0UYgS4g@mail.gmail.com>
	<520C9E77.1060201@communistcode.co.uk>
	<CAOMwXhMxu1tzsXD7srHm9RBFXFbwojoZz9FcZZy7cPiohgOP1g@mail.gmail.com>
	<520CC328.4020106@communistcode.co.uk>
	<CAOMwXhOe0dNZW4xwsrdjsGmHF2Jp1A0a48Cui7nhi2wdv1kQPw@mail.gmail.com>
	<520CC46F.9020501@communistcode.co.uk>
Date: Thu, 15 Aug 2013 13:12:07 +0100
X-Google-Sender-Auth: ScL5F8-5XpJk0Hj3YAn8MuxzYow
Message-ID: <CAOMwXhMHKviZBUyTmnjhot8D5RC8b4saiOAYiLveJOF_=MD0_Q@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: poky@yoctoproject.org
Subject: Re: Stunnel recipe
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
X-List-Received-Date: Thu, 15 Aug 2013 12:12:09 -0000
Content-Type: multipart/alternative; boundary=047d7b86e3a801055404e3fb62d7

--047d7b86e3a801055404e3fb62d7
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 15, 2013 at 1:07 PM, Jack Mitchell <ml@communistcode.co.uk>wrote:

> I've no idea what stunnel does, I imagine you're more qualified to
> decide on it's sub category.
>

I am not really that qualified with subcategory management in Yocto, so I
hope someone can confirm this...

openembedded-devel will be a better list to contact according to the
MAINTAINERS file:
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/MAINTAINERS

--047d7b86e3a801055404e3fb62d7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Aug 15, 2013 at 1:07 PM, Jack Mitchell <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ml@communistcode.co.uk" target=3D"_blank">ml=
@communistcode.co.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im"><span style=3D"color:rgb(34,34,34)">I&#3=
9;ve no idea what stunnel does, I imagine you&#39;re more qualified to</spa=
n><br>
</div>
decide on it&#39;s sub category.<br></blockquote><div><br></div><div>I am n=
ot really that qualified with subcategory management in Yocto, so I hope so=
meone can confirm this...=A0</div><div><br></div><div>openembedded-devel wi=
ll be a better list to contact according to the MAINTAINERS file:=A0<a href=
=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/MAI=
NTAINERS">http://cgit.openembedded.org/meta-openembedded/tree/meta-networki=
ng/MAINTAINERS</a></div>
</div></div></div>

--047d7b86e3a801055404e3fb62d7--
