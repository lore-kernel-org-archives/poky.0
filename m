Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.3046.1574450411165547186
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 11:20:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d0fAoLAu;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC764E00E4B; Fri, 22 Nov 2019 11:20:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3296DE00E42
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 11:20:10 -0800 (PST)
Received: by mail-qt1-f177.google.com with SMTP id r20so8990600qtp.13
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 11:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sdG2+vtQZFdNe0TRjXdU2ONihh/SEOTPxQOwUUK7HiE=;
        b=d0fAoLAujF8l4CfEfImWplxZ5HKSNADwcydRQFmIXHUq1/vTsHT8sdY+Vq5bAuWWE9
         e3sg+BqvFaUKcNS3GYvfzBswOy6hpN3nv/aB7cHnk/4MhFr1PAWawymo1Ts24RIKDRzL
         lPpJMqScLwFI0dQDJ22gDRVF/Hhp8fra9LbslmbUBBnUY4bJLzBS1JpNwCTJcokpTt7P
         a1vA2pR8ueDq28t9/hyMABffga4lDlktnoIODEJIJWzEqT6bzba1uAMMIbhEIf7k0D0m
         09I7dJZmS/CltplQbufStXvn8J5XRfhWCIquDg7Wlir+uhRv8Vs1WUU/AVSWW0ea7zre
         s7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sdG2+vtQZFdNe0TRjXdU2ONihh/SEOTPxQOwUUK7HiE=;
        b=OgHblRouyMGwi7yxYriNnuCsjpRZ2WTBf0oaTszp2Xr92mdj4f2ZHWQzH6Cqp2QkCd
         56t0RyXOMoCL+TqRjblCvfsWPa5k9JvIh2EMk5NfYB/Vx9GhZYbed+gdThO8VSDnmgFG
         xsaAL87INZYRGMxAmxIS4amfPgKkdqNFXyjK7OT+eTx7PBtu6QfYMbCkZF81l6tEjE/d
         sa00Ta62DLV5J3le6GffYCixqEaJOxKugloiiLwudM2GXHyYs8Gr1/EKcKZBkG1RMyw6
         mnPryYs9rMlK9Y8t6tOf/cxAXfaS8MtCtFKEseEgjqRocG3mRTw4JrqEHSAL5cL+Y0bg
         t/ng==
X-Gm-Message-State: APjAAAWTKIYp1e6AV/zwfxBPrlJHQ9SGn1Gz0UCluJTizWLlrDC7clxk
	cbzsTZaf/b8TS5oQTHJkHa9SfFT6j15bF3yBQWM=
X-Google-Smtp-Source: APXvYqxege6HAqBdsNJVoW9o/OKUdZu+bAhlKK2WT9x5dzYhIk9Vf1hQnGRTNGjp+iXQLlrlBg01aDxVUIJuG2mH6HE=
X-Received: by 2002:aed:2724:: with SMTP id n33mr16188898qtd.194.1574450409171;
 Fri, 22 Nov 2019 11:20:09 -0800 (PST)
MIME-Version: 1.0
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <b276c80f-16ac-e84a-906d-ba1576d09117@gmail.com> <CANNYZj-9Gm2m=y2EDOWf44DPhPZwVKSZeFDtgC2ZAEdMqFSuWA@mail.gmail.com>
In-Reply-To: <CANNYZj-9Gm2m=y2EDOWf44DPhPZwVKSZeFDtgC2ZAEdMqFSuWA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 22 Nov 2019 11:19:58 -0800
Message-ID: <CAMKF1sob_H3EZmv9+F8oo2rRi3MquJ21uRudricfxOpOm6yucQ@mail.gmail.com>
Subject: Re: [poky] Python2 maintenance will expired
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Armpit <akuster808@gmail.com>, Junling Zheng <zhengjunling@huawei.com>, 
	Poky Project <poky@yoctoproject.org>, Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Wang Nan <wangnan0@huawei.com>
Content-Type: multipart/alternative; boundary="0000000000005aefff0597f44d8a"

--0000000000005aefff0597f44d8a
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 22, 2019 at 11:05 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Fri, 22 Nov 2019 at 19:11, Armpit <akuster808@gmail.com> wrote:
>
>>
>> We have several defects open to track the Python2 issue within core.  We
>> could use help so please add yourself to a bug you are interested in
>> getting it resolved. Since this issue seems to be of interest to many
>> folks, now is your time to shine.
>>
>> Remove python2 recipe from core:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13640
>>
>> Remove python2 from HOSTTOOLS:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13641
>>
>> python-native needs python2 on host:
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13645
>>
>> u-boot uses python2 :
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13439
>>
>
> All three are addressed here:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=akanavin/drop-python2
> I'll polish this up a bit, and send the patches in.
>
> TBH, the state of meta-oe should be much more concerning at this point,
> py2-less oe-core is pretty much done and dusted.
>

I would think contributors will chime in with the packages they care for
and larger distros are also dropping this so there will be help for porters

If we push for removal early in cycle we might get meta-oe in reasonable
shape the end of dev cycle for this release



> Alex
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11829):
> https://lists.yoctoproject.org/g/poky/message/11829
> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--0000000000005aefff0597f44d8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 22, 2019 at 11:05 AM Alexander Kanavin &lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
On Fri, 22 Nov 2019 at 19:11, Armpit &lt;<a href=3D"mailto:akuster808@gmail=
.com" target=3D"_blank">akuster808@gmail.com</a>&gt; wrote:<br></div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <br>
    We have several defects open to track the Python2 issue within
    core.=C2=A0 We could use help so please add yourself to a bug you are
    interested in getting it resolved. Since this issue seems to be of
    interest to many folks, now is your time to shine.<br>
    <br>
    <span id=3D"m_7010175597180805930gmail-m_5181302175483664296summary_ali=
as_container"><span id=3D"m_7010175597180805930gmail-m_5181302175483664296s=
hort_desc_nonedit_display">Remove python2 recipe from core:<br>
        <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1364=
0" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13=
640</a><br>
        <br>
      </span></span><span id=3D"m_7010175597180805930gmail-m_51813021754836=
64296summary_alias_container"> <span id=3D"m_7010175597180805930gmail-m_518=
1302175483664296short_desc_nonedit_display">Remove python2 from HOSTTOOLS:<=
br>
        <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1364=
1" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13=
641</a><br>
      </span></span><br>
    <span id=3D"m_7010175597180805930gmail-m_5181302175483664296summary_ali=
as_container"> <span id=3D"m_7010175597180805930gmail-m_5181302175483664296=
short_desc_nonedit_display">python-native needs python2 on
        host:</span></span><br>
    <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13645" t=
arget=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13645<=
/a><br>
    <br>
    <span id=3D"m_7010175597180805930gmail-m_5181302175483664296summary_ali=
as_container"><span id=3D"m_7010175597180805930gmail-m_5181302175483664296s=
hort_desc_nonedit_display">u-boot uses python2</span> :<br>
      <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13439"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1343=
9</a></span><br>
</div></blockquote><div><br></div><div>All three are addressed here:</div><=
div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?=
h=3Dakanavin/drop-python2" target=3D"_blank">http://git.yoctoproject.org/cg=
it/cgit.cgi/poky-contrib/log/?h=3Dakanavin/drop-python2</a></div><div>I&#39=
;ll polish this up a bit, and send the patches in.</div><div><br></div><div=
>TBH, the state of meta-oe should be much more concerning at this point, py=
2-less oe-core is pretty much done and dusted.</div></div></div></blockquot=
e><div dir=3D"auto"><br></div><div dir=3D"auto">I would think contributors =
will chime in with the packages they care for and larger distros are also d=
ropping this so there will be help for porters=C2=A0</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">If we push for removal early in cycle we might=
 get meta-oe in reasonable shape the end of dev cycle for this release=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div></div=
><div><br></div><div>Alex<br></div><div><br> </div></div></div>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#11829): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/11829" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/11829</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61302503/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/61302503/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a>=C2=A0 [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem=
@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--0000000000005aefff0597f44d8a--
