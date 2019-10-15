Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18F1AE00B8E; Tue, 15 Oct 2019 11:45:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26DFFE008D9
	for <poky@yoctoproject.org>; Tue, 15 Oct 2019 11:45:41 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id w12so48361767iol.11
	for <poky@yoctoproject.org>; Tue, 15 Oct 2019 11:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qfg2c7vMzeK2XvgRcy8uk/rY2pS+/g+8qaAl0IYJjdo=;
	b=f/+R9HZCQuA0EiWB8BMxTwjO74QBwC2S2eqvFqU2kGW42labXVY+o35Lpn10LTiT5d
	xkhaUDD+FR6I6edDzZ/+iwVZUluYzxjkRfVoRd20L3WPFtix3JJc/ER2Dqs1jAkXOVzu
	gfbC2xsg/Tf9bSEaR1qtjUAjir+1sI8x9R3CO8mZJZf3LJQpyGlbvS0dHwyl/uVDOX/M
	WXN2a2+wx483erGgYVB16hfzf6NfjE/nqR2UFeDtzkwQ4tlnGr3H6eihk2zTxvswHQyG
	tmzksXwp/vSkctC8RGFYQp5+yI5xTDY96NFhhJgof61vUC7qwFVIy+2hKnIZcYalWfG8
	LFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qfg2c7vMzeK2XvgRcy8uk/rY2pS+/g+8qaAl0IYJjdo=;
	b=fzMyytVQxdJnM9ls4opGvBmo/cfTRzhETT6COqMfzw/6ZJvyFG/MG36TVmQbFRVIC8
	69X0XWx5onKF22rmPXi9dzlHBw0hscSuJNXib0IpTgCVjfWqZxDBtIqn+aWhg9Mu3UJK
	YcrG8zz7+ql9PIWqfzbIrAIQ1Vb9MAKLx9ugoI2z9rBSQANuDqxH7Ai1tFgZWX6eh9+u
	ri3dGtBTW0AVuT9Bgy2F8iO0kbyysJGBmkml06csxOqarNzaN21e3ubt1/jeEIg7jD+K
	vW89+zsZ81kAhr6pJrbUkpNi5V0qSOXI92LrNrBCTv/LtItpbREGZluXFjWIb5yx0IsX
	op5w==
X-Gm-Message-State: APjAAAXy/vZXXI84UKRbb+1F6X7fdhxuoTDzlhg3SPGxT7YFhp7V7Z72
	hBG05Hi5q+Pb1Vy3FPMVjSOGnr0S/s+9ynZX5kzPBou1
X-Google-Smtp-Source: APXvYqzUe9PeXyhoG5hkkof5q5NajdKJ2soNwr9Yofw9OWAgTLx6oN3fAqjWFGxJ9cKvruzgl4zM0HvB77SCoClbiIU=
X-Received: by 2002:a6b:b282:: with SMTP id
	b124mr22826007iof.247.1571165140542; 
	Tue, 15 Oct 2019 11:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
	<CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
	<eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
	<CAMKF1sqgLZ3Rfyiy1Qsv=Y1xEt7m4eKX4Brk8v_7AGET9Hv9zQ@mail.gmail.com>
	<CAOe0dAV0ou+XC7tNMf1Ufngp_5BeOy24OVcUa8_UG-dVCG5kjg@mail.gmail.com>
	<CANNYZj87+UE1AOm=7u5EsnYwMp8JtJPLSo45J21w7XkJtKycgg@mail.gmail.com>
In-Reply-To: <CANNYZj87+UE1AOm=7u5EsnYwMp8JtJPLSo45J21w7XkJtKycgg@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Wed, 16 Oct 2019 00:15:29 +0530
Message-ID: <CAOe0dAVKK14BnXdQ_2M3z301kpO=JuLXZQDiRBtFOwu581RziA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Tue, 15 Oct 2019 18:45:42 -0000
Content-Type: multipart/alternative; boundary="00000000000015eb040594f764df"

--00000000000015eb040594f764df
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex ,

Using these pointers from webpage Alex shared can relate to reason of error
and its solution
1) Note section of
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#autom=
atically-added-runtime-dependencies
2)
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-A=
LLOW_EMPTY
3) Looking FILE_{PN} values of bitbake -e <RECIPE>

Thanks Richard / Khem Raj / Alex for pointers.
Ashish




On Mon, Oct 14, 2019 at 9:55 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Mon, 14 Oct 2019 at 18:01, AshishKumar Mishra <
> ashish.emailaddress@gmail.com> wrote:
>
>>
>> Would it be possible to share any link / pointers to help me understand
>> the
>> "packaging " aspect of recipe
>>
>> *Predominantly , how are the package being created from the files being
>> copied to {D)<some-folder>*
>> *and what are the essential rules i need to know .*
>> (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D we are informing that th=
e package can be
>> empty )
>>
>> But i am not able to understand :-
>> a) Who & how are packages being created from files copied in
>> {D)<some-folder>
>> b) What are the rules (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1 ) for empty=
 package ?
>> c) When would we get an empty package.
>>
>
> I think you could start here, an overview of everything that happens when
> you bitbake a recipe, and particularly where things are written and what
> bitbake variables are involved:
>
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#bit=
bake-dev-environment
>
> Alex
>
>
>

--00000000000015eb040594f764df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alex , <br></div><div><br></div><div>Using these p=
ointers from webpage Alex shared can relate to reason of error and its solu=
tion <br></div><div>1) Note section of <a href=3D"https://www.yoctoproject.=
org/docs/latest/mega-manual/mega-manual.html#automatically-added-runtime-de=
pendencies">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manua=
l.html#automatically-added-runtime-dependencies</a></div><div>2) <a href=3D=
"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-=
ALLOW_EMPTY">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manu=
al.html#var-ALLOW_EMPTY</a></div><div>3) Looking FILE_{PN} values of bitbak=
e -e &lt;RECIPE&gt; <br></div><div><br></div><div>Thanks Richard / Khem Raj=
 / Alex for pointers. <br></div><div> Ashish <br></div><div><br></div><div>=
<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Oct 14, 2019 at 9:55 PM Alexander Kanavin =
&lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr">On Mon, 14 Oct 2019 at 18:01, AshishKumar Mishra=
 &lt;<a href=3D"mailto:ashish.emailaddress@gmail.com" target=3D"_blank">ash=
ish.emailaddress@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><=
div>Would it be possible to share any link / pointers to help me understand=
 the <br></div><div>&quot;packaging &quot; aspect of recipe <br></div><br><=
div><u><b>Predominantly , how are the package being created from the files =
being copied to {D)&lt;some-folder&gt;</b></u></div><div><u><b>and what are=
 the essential rules i need to know .</b></u></div><div>(Like ALLOW_EMPTY_$=
{PN} =3D =E2=80=9C1=E2=80=9D we are informing that the package can be empty=
 ) </div><div><br></div><div>But i am not able to understand :-</div><div>a=
) Who &amp; how are packages being created from files copied in {D)&lt;some=
-folder&gt;</div><div>b) What are the rules (Like ALLOW_EMPTY_${PN} =3D =E2=
=80=9C1 ) for empty package ?</div><div>c) When would we get an empty packa=
ge. </div></div></blockquote><div><br></div><div>I think you could start he=
re, an overview of everything that happens when you bitbake a recipe, and p=
articularly where things are written and what bitbake variables are involve=
d:</div><div><br></div><div><a href=3D"https://www.yoctoproject.org/docs/la=
test/mega-manual/mega-manual.html#bitbake-dev-environment" target=3D"_blank=
">https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#bit=
bake-dev-environment</a></div><div><br></div><div>Alex<br></div><div><br></=
div><div><br> </div></div></div>
</blockquote></div>

--00000000000015eb040594f764df--
