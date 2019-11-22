Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2836.1574449521926156753
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 11:05:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=H+S96OV7;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE08E00E45; Fri, 22 Nov 2019 11:05:21 -0800 (PST)
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
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B72A1E00E40
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 11:05:20 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id p6so327487vsj.11
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 11:05:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TpXGrdBHWZiKmluksctGPiRjLzr14Af/xHExFsTnaGo=;
        b=H+S96OV7pd9ODelu54bYAeDuYZ11LyUqxV4HfnWTu9kIXv46DqEgQR/mbqlQmeUU1H
         UGIYd4zeTX2Zo1V0W2H/xZ70iy2fVVTyMW0BZKgVbAnyseKXbSZN72JYOzBp80azf5sh
         ZzmylnsCszxfeTpedwSVHs2x+xd+nBwEzRbX5o5bIFDvFII0qFdOTagYiByIVutkB2UL
         ngJy5/py1GkKamF4x3TDb5dHXQLCyR6UEE0JxLBB1tTbSlwmE9THVgNy9fUa7IvZqkIa
         NAghqueYVu18cY5Q/QhqsEtoZj/LWZcwGkX/Co1fHAdNnIywbIiyraE8oh8FsYS+Swdo
         EeJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TpXGrdBHWZiKmluksctGPiRjLzr14Af/xHExFsTnaGo=;
        b=r2ZYH1DnVbY0tTt3xtH+9fyqA5s+5+BQN1lSPAnLEB3kZFdk/XO7Wbj9s9dB7iytnT
         kuJh2IBuQFyZCATU/kvhdyt9Quw3a+7atSCMOZi3cen6Bat5HDbxTMeN+SDeL7Gx/B5E
         rL5P/9c3mlla6ivfcFQ2Rm2aaBp1r5ddaLiLkR2VQeLlDsO2W02jg7gfIEpYfzYchFip
         XY2rjSXvqKIMwTRclHC2Y5FfVDG/VArT8rSNNPq/pu1u9zr7nCzNcvR/V4dNr0Awbgqv
         2UjO47m7ZBrwlyyC95onXjM5/bhFJVMvFbSgN3E9qmgztX8J8mFnEMa47h7mG4Do6XnZ
         o2xA==
X-Gm-Message-State: APjAAAXYPIHKKRtaDGQRJ3tK1Euz3y5zpGgjFwQpZwfV4Q3OMCv1+i/5
	0XOwG6O8Q05U5ZotRITWnL9UDkunv1zDihpZ32Q=
X-Google-Smtp-Source: APXvYqxOricNhfrNnYkVfNaIx2zM2BPd7JQOcgkKrmttX3v0oaVD/uDuZlpZ2EGSUNabfFPRAFpwJ8ExxIZfmhBqXa4=
X-Received: by 2002:a05:6102:4ab:: with SMTP id r11mr10974220vsa.25.1574449519965;
 Fri, 22 Nov 2019 11:05:19 -0800 (PST)
MIME-Version: 1.0
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org> <b276c80f-16ac-e84a-906d-ba1576d09117@gmail.com>
In-Reply-To: <b276c80f-16ac-e84a-906d-ba1576d09117@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 22 Nov 2019 20:05:08 +0100
Message-ID: <CANNYZj-9Gm2m=y2EDOWf44DPhPZwVKSZeFDtgC2ZAEdMqFSuWA@mail.gmail.com>
Subject: Re: [poky] Python2 maintenance will expired
To: Armpit <akuster808@gmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Junling Zheng <zhengjunling@huawei.com>, Poky Project <poky@yoctoproject.org>, 
	Wang Nan <wangnan0@huawei.com>
Content-Type: multipart/alternative; boundary="0000000000005abbec0597f418ba"

--0000000000005abbec0597f418ba
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Nov 2019 at 19:11, Armpit <akuster808@gmail.com> wrote:

>
> We have several defects open to track the Python2 issue within core.  We
> could use help so please add yourself to a bug you are interested in
> getting it resolved. Since this issue seems to be of interest to many
> folks, now is your time to shine.
>
> Remove python2 recipe from core:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13640
>
> Remove python2 from HOSTTOOLS:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13641
>
> python-native needs python2 on host:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13645
>
> u-boot uses python2 :
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13439
>

All three are addressed here:
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=akanavin/drop-python2
I'll polish this up a bit, and send the patches in.

TBH, the state of meta-oe should be much more concerning at this point,
py2-less oe-core is pretty much done and dusted.

Alex

--0000000000005abbec0597f418ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, 22 Nov 2019 at 19:11, Armpit &lt;=
<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
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
    <span id=3D"gmail-m_5181302175483664296summary_alias_container"><span i=
d=3D"gmail-m_5181302175483664296short_desc_nonedit_display">Remove python2 =
recipe from core:<br>
        <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1364=
0" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13=
640</a><br>
        <br>
      </span></span><span id=3D"gmail-m_5181302175483664296summary_alias_co=
ntainer"> <span id=3D"gmail-m_5181302175483664296short_desc_nonedit_display=
">Remove python2 from HOSTTOOLS:<br>
        <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1364=
1" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13=
641</a><br>
      </span></span><br>
    <span id=3D"gmail-m_5181302175483664296summary_alias_container"> <span =
id=3D"gmail-m_5181302175483664296short_desc_nonedit_display">python-native =
needs python2 on
        host:</span></span><br>
    <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13645" t=
arget=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13645<=
/a><br>
    <br>
    <span id=3D"gmail-m_5181302175483664296summary_alias_container"><span i=
d=3D"gmail-m_5181302175483664296short_desc_nonedit_display">u-boot uses pyt=
hon2</span> :<br>
      <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13439"=
 target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1343=
9</a></span><br>
</div></blockquote><div><br></div><div>All three are addressed here:</div><=
div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?=
h=3Dakanavin/drop-python2">http://git.yoctoproject.org/cgit/cgit.cgi/poky-c=
ontrib/log/?h=3Dakanavin/drop-python2</a></div><div>I&#39;ll polish this up=
 a bit, and send the patches in.</div><div><br></div><div>TBH, the state of=
 meta-oe should be much more concerning at this point, py2-less oe-core is =
pretty much done and dusted.</div><div><br></div><div>Alex<br></div><div><b=
r> </div></div></div>

--0000000000005abbec0597f418ba--
