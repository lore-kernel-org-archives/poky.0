Return-Path: <narkewoody@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E75FE00C4D; Tue,  8 Jan 2019 18:22:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (narkewoody[at]gmail.com)
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E544E00B81
	for <poky@yoctoproject.org>; Tue,  8 Jan 2019 18:22:41 -0800 (PST)
Received: by mail-qt1-f169.google.com with SMTP id e5so6747986qtr.12
	for <poky@yoctoproject.org>; Tue, 08 Jan 2019 18:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=74zS1VtHQPX6W75+eZz8YUcCWIpRDR8vdzQ/KfR4fqY=;
	b=eDbDvnydGeNoz3UJCdNowPTSBXjcdFinBnK/HSGbacH+5IAhybLbNuZmKKKIqAJtri
	3r56Uge/Aku8FZblqy1b2//UDKuI5Azj5Dibp6Hg2bmaVWN8UCRcj5+j8yLn+/Ax8SdV
	XA1N8XyQBYnNAkU3dS0x2Uk0s5aAkbm/BL/Q0Q8gJ68TzMUPiTgtf6K4P9NNRxROMJVo
	oqtUz4cMIJ9lXJqd2fgxbbOwXjz1i1vZWak8TOmPNQpV4aCsCrVKAOvi6UEEp/SVbdtv
	8YKuxszPd1CDtYvcWfHDNVnNMsFcnLWMfcTiJofEDvC5sj6ANYjR0gqlqK6cmge3HkVb
	mb+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=74zS1VtHQPX6W75+eZz8YUcCWIpRDR8vdzQ/KfR4fqY=;
	b=eXtEHZRJ7o3yxyed/r4fsL7qC42+X1Z31rCg8oDlt4NECjGuxIOdY26iHO7DzDjTSj
	CK5o8VqgwMEmzx74KVIXNMm4CHMmVyAiHJ/UZtfERAgDxRKnTh8rzHKy+xvPS3WK5dVP
	cKyFP2+c20+WbFfa6bbi5Kz3foLA+sCshPUHKC5I5rFmu+grMxTLeA4XSptBW6ncKL66
	7pVijXI7kESckVYG7kSnFI3AiVRy+E3UXfyLaC4U8LBBQOP5vtXMcaX4opxfUxdh3Trc
	bbVK+93zaxcw7j3m/uOHu4YaQkDFJHjC0z3iutRTWjQ6q7xXUK67nxZFCw0qzSXle2Ja
	Y7bQ==
X-Gm-Message-State: AJcUukdCy5majXGgXtk43/NRCJ8GjJ4PkmPDh93efNFZW2NlU0sAN1DD
	IOGUDDJEL/DWrHiHeAlxybO0VlIBKeKdYK+n465IKqY/
X-Google-Smtp-Source: ALg8bN6GEYkBnB0uvHV0ONIAUU0foD19x/aGs8tKqr/GsOrvrU2HTpxw3B2wfkyz8AQjRsOsSz4lrveb8U5CHFzMH7Q=
X-Received: by 2002:a0c:a402:: with SMTP id w2mr4100872qvw.129.1547000560861; 
	Tue, 08 Jan 2019 18:22:40 -0800 (PST)
MIME-Version: 1.0
References: <CAAsE_udSqjYWVyeAq5tzF+mqr5ZpW+8wQtNLX0GtM-Q7_snuwQ@mail.gmail.com>
	<CANNYZj8YM_TJo4Ho6q9tAbnCy+VzrRTsBC1+mRffY+Ewzb2dnQ@mail.gmail.com>
In-Reply-To: <CANNYZj8YM_TJo4Ho6q9tAbnCy+VzrRTsBC1+mRffY+Ewzb2dnQ@mail.gmail.com>
From: Woody Wu <narkewoody@gmail.com>
Date: Wed, 9 Jan 2019 10:22:28 +0800
Message-ID: <CAAsE_ucYg-dmsDa7XViCZt+giJ7jtnh1hqSCHme5bhf24J=7oA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: First try of Yocto Failed
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
X-List-Received-Date: Wed, 09 Jan 2019 02:22:42 -0000
Content-Type: multipart/alternative; boundary="000000000000e5c698057efd22bc"

--000000000000e5c698057efd22bc
Content-Type: text/plain; charset="UTF-8"

Ok, I'll check it out.

On Tue, Jan 8, 2019 at 8:07 PM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Tue, 8 Jan 2019 at 12:52, Woody Wu <narkewoody@gmail.com> wrote:
> > My system is ubuntu 18.10 and I have python 2 and python 3.
> >
> > Can someone please give me a clue? Thanks!
>
> Please check out the tip of the thud branch, it seems to contain a fix for
> this.
>
> Alex
>


-- 
Life is the only flaw in an otherwise perfect nonexistence
    -- Schopenhauer

woody
public key at http://subkeys.pgp.net:11371 (narkewoody@gmail.com)

--000000000000e5c698057efd22bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:large">Ok,=
 I&#39;ll check it out.=C2=A0<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr">On Tue, Jan 8, 2019 at 8:07 PM Alexander Kanavin &lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, 8 Jan 2=
019 at 12:52, Woody Wu &lt;<a href=3D"mailto:narkewoody@gmail.com" target=
=3D"_blank">narkewoody@gmail.com</a>&gt; wrote:<br>
&gt; My system is ubuntu 18.10 and I have python 2 and python 3.<br>
&gt;<br>
&gt; Can someone please give me a clue? Thanks!<br>
<br>
Please check out the tip of the thud branch, it seems to contain a fix for =
this.<br>
<br>
Alex<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Life is the only flaw in an otherwise perfect no=
nexistence<br>=C2=A0 =C2=A0 -- Schopenhauer<br><br>woody<br>public key at <=
a href=3D"http://subkeys.pgp.net:11371" target=3D"_blank">http://subkeys.pg=
p.net:11371</a> (<a href=3D"mailto:narkewoody@gmail.com" target=3D"_blank">=
narkewoody@gmail.com</a>)<br><br></div>

--000000000000e5c698057efd22bc--
