Return-Path: <roman.shaposhnikov@globallogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D852E00444; Mon, 15 Feb 2016 08:41:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C470CE00404
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 08:41:41 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id 9so165201839iom.1
	for <poky@yoctoproject.org>; Mon, 15 Feb 2016 08:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=globallogic.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3VZ5fgspBjkXuDJSw1eQO4qzdFVplxxshJjJqVYKgik=;
	b=eAsDuwMyXTpmx8SHr5Q6T9+gniAo29EilnhYCXsHa36NRHW0WkOROsWp6irZIROXTX
	VW3HyRV6TdQhacGMKXshX8jTk/MLb9Noluu/1SgH88T7l31unj6kH0bIhh2RKPR4xFTF
	Qh2yLFRjCCNcmSsCch4AK4Q1MFAD1TimkP3Io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3VZ5fgspBjkXuDJSw1eQO4qzdFVplxxshJjJqVYKgik=;
	b=VUReOeXAv5CawBi25WMHHgZCfdoW3Hh70i8pUIm5VKvQMWrwIMWtu5JDEh4UYuckwB
	ob9TBJc3y+m7F6i5jra39/Uov4eXwtiIT0md5Ll9GBaKQJJQkD155pqYYhtMjEc7r4L/
	aZ6RGCe6NzvyrykgtoovJqKRvLxO8iUkS5c4/+2BWCFiDNSbW7I538PP44W+B2NKJ2D6
	+AWo7E6TKq5Z7pHDf/ahXucJ7Fc1jX9bshAQPtqH90FuDZ2uLeZpRarXTqAbISb7Lqmh
	uu2zxRUlehZmIzPbT9rJinIcEYIchuLiswwTBHvmv0KqX9VuOIJq/i/gthv2C5+0iTBq
	Rl8w==
X-Gm-Message-State: AG10YOR4bVhNf8wKiOSXJfEhxLwTQs1AMzBxVsmZFTyweFjGtg/dp+H5oSUQajS7uNhndT8LLxoVd/LsPeCNxIpQ
X-Received: by 10.107.14.20 with SMTP id 20mr16676236ioo.39.1455554500870;
	Mon, 15 Feb 2016 08:41:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.15.170 with HTTP; Mon, 15 Feb 2016 08:41:21 -0800 (PST)
In-Reply-To: <CAA2DH4ujkrDqo3RYsm7RCQQsV_Nb6LmvT=1Xns4zaXO0t-PE8w@mail.gmail.com>
References: <CAA2DH4ujkrDqo3RYsm7RCQQsV_Nb6LmvT=1Xns4zaXO0t-PE8w@mail.gmail.com>
From: Roman Shaposhnikov <roman.shaposhnikov@globallogic.com>
Date: Mon, 15 Feb 2016 18:41:21 +0200
Message-ID: <CAN27R1YZcYpOqExRoOx=g83m1aG7CF5zfAyLGhqa=Yo1LmVZ0g@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can I force a particular recipe to rebuild every time?
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
X-List-Received-Date: Mon, 15 Feb 2016 16:41:42 -0000
Content-Type: multipart/alternative; boundary=001a113e99f2f9eef6052bd1b0a7

--001a113e99f2f9eef6052bd1b0a7
Content-Type: text/plain; charset=UTF-8

Hi Prasant,

> Is there a way to force a recipe to be rebuild every time
core-image-minimal-initramfs is built?

There is no way to do this in recipe (except AUTOREV if you want to rebuild
it on SRC update), so the only way it's '-c clean' for package,  but you
will need to run it manually or add to build script.



On Mon, Feb 15, 2016 at 2:38 PM, Prasant J <pj0585@gmail.com> wrote:

> Hi,
>
>
> I'm writing my own layer for the Intel Atom Board.
>
>
> - Is there a way to force a recipe to be rebuild every time
> core-image-minimal-initramfs is built?
>
> - Is there a ROOTFS_POSTPROCESS equivalent for
> core-image-minimal-initramfs image?
>
>
>
> Regards, Pj
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 

Roman Shaposhnikov | Lead Software Engineer | GlobalLogic Inc.

Leaders in Software R&D Services

ARGENTINA | CHINA | INDIA | ISRAEL | UKRAINE | UK | USA

Mobile +380-97-977-7722

www.globallogic.com

Disclaimer: http://www.globallogic.com/email_disclaimer.txt

--001a113e99f2f9eef6052bd1b0a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Prasant,<div><br></div><div>&gt;<span style=3D"font-siz=
e:12.8px">=C2=A0</span><span style=3D"font-size:12.8px">Is there a way to f=
orce a recipe to be rebuild every time</span></div><span style=3D"font-size=
:12.8px">core-image-minimal-initramfs is built?</span><div><span style=3D"f=
ont-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">The=
re is no way to do this in=C2=A0recipe (except=C2=A0AUTOREV if you want to =
rebuild it on SRC update), so the only way it&#39;s &#39;-c clean&#39; for =
package, =C2=A0but you will need to run it=C2=A0manually=C2=A0or add to bui=
ld script.=C2=A0</span></div><div><span style=3D"font-size:12.8px"><br></sp=
an></div><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Mon, Feb 15, 2016 at 2:38 PM, Prasant J <span dir=3D"ltr">&=
lt;<a href=3D"mailto:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<br>
<br>
I&#39;m writing my own layer for the Intel Atom Board.<br>
<br>
<br>
- Is there a way to force a recipe to be rebuild every time<br>
core-image-minimal-initramfs is built?<br>
<br>
- Is there a ROOTFS_POSTPROCESS equivalent for<br>
core-image-minimal-initramfs image?<br>
<br>
<br>
<br>
Regards, Pj<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v><div dir=3D"ltr">
<p style=3D"margin:0px"><span style=3D"font-family:&#39;Calibri&#39;;font-s=
ize:10pt;font-weight:600;color:#333333">Roman Shaposhnikov |=C2=A0</span><s=
pan style=3D"color:rgb(51,51,51);font-family:Calibri;font-size:13.3333px;fo=
nt-weight:600">Lead Software Engineer=C2=A0</span><span style=3D"color:rgb(=
51,51,51);font-family:Calibri;font-size:10pt;font-weight:600">| GlobalLogic=
 Inc.=C2=A0</span></p><p style=3D"margin:0px"><span style=3D"font-family:&#=
39;Calibri&#39;;font-size:10pt;font-weight:600;color:#333399">Leaders in So=
ftware R&amp;D Services</span></p>
<p style=3D"margin:0px"><font color=3D"#333333" face=3D"Calibri"><span styl=
e=3D"font-size:13.3333330154419px;font-weight:600">ARGENTINA | CHINA | INDI=
A | ISRAEL | UKRAINE | UK | USA</span></font><br></p>
<p style=3D"margin:0px"><span style=3D"font-family:&#39;Calibri&#39;;font-s=
ize:10pt;font-weight:600;color:#333333">Mobile +380-97-977-7722</span></p>
<p style=3D"margin:0px"><a href=3D"http://www.globallogic.com/" target=3D"_=
blank"><span style=3D"font-family:&#39;Times New Roman&#39;;font-size:10pt;=
font-weight:600;color:#0000ff">www.globallogic.com</span></a></p>
<p style=3D"margin:0px"><span style=3D"font-family:Calibri;font-size:10pt;f=
ont-weight:600;font-style:italic;color:rgb(0,0,128)">Disclaimer: </span><a =
href=3D"http://www.globallogic.com/email_disclaimer.txt" style=3D"font-size=
:12.8000001907349px" target=3D"_blank"><span style=3D"font-family:&#39;Time=
s New Roman&#39;;font-size:10pt;font-weight:600;font-style:italic;color:#00=
0080">http://www.globallogic.com/email_disclaimer.txt</span></a><br></p></d=
iv></div></div></div></div></div>
</div>

--001a113e99f2f9eef6052bd1b0a7--
