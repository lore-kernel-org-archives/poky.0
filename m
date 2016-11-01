Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2D9CE00546; Tue,  1 Nov 2016 10:49:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.51 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 981BAE0049B
	for <poky@yoctoproject.org>; Tue,  1 Nov 2016 10:49:42 -0700 (PDT)
Received: by mail-vk0-f51.google.com with SMTP id p9so33799845vkd.3
	for <poky@yoctoproject.org>; Tue, 01 Nov 2016 10:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VEJ85tvvVTPxwvX/enif4ksGi9AxQquPIW4BImrgmC0=;
	b=Rx1X08bGbhW8KkYauyZF/3yjc1rzkjhzmRlvbM7Os0eUaKr2d8ZoVKY+UfthFx4PI7
	PP/3+8CjEaXlYiEi3FwLfEZ5DN5hVmkE2sAaatApPJJb5/9Ln8mR11Q3B19xhS1nfNbK
	DI3B1MXZY0x2dxTAhXDKB3pNWLPzNysKUfeZbgV6btuCgyVeX2vZ30/RuGpa+BLT0D81
	GcdewdsVUvKTYibSMX/md/rmKByWt5kTKmf6IGqFn8y/2hhFyko9Zfm91XhTvs557/Wl
	sNJDQlx6yTtq0SwyU281Kor45qKep7TgGgqutoZnU3v8wiMZSlTk/s4xLJFU7PbsNtpg
	hZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VEJ85tvvVTPxwvX/enif4ksGi9AxQquPIW4BImrgmC0=;
	b=Zw+xvzDRObtClL7XhNdt/+yGdB/9i+4Agyu+6wX3hhNJhuLWgt7M1bfLek4ZxHMoMZ
	z7vRNb7zidI/CEsdOCqoouVdRwqT26tTS8XanUjqn7G9KfQQ7UdlI+C7cPfVSUIWHY8s
	ZPmsbs2B9YpicOkOiXjGAeLQOCz114NUgHGFO7BM7QThYXOQYZAek+a84W9/LzB5Zd/o
	ExHbcnAk02xYu9T/n0dm1XkMnL9YUhBbPlr79uJ5UV7RymXW/06c+14SP/qe3WGGRGJw
	3lfiJyRNWPmi6MVEe1mLXDPOf01CFMc2wbQksBKpggl9XeDH6mcTRF5p9lRH3dkvpl9d
	Tg+Q==
X-Gm-Message-State: ABUngveq/WrWUDGCWiyUj2S1yFjTYloIEG9vZ9PdTgiKFd166ulVq22zlUV1zlAtbzwMROM6k8Awg5/Ir9FFJg==
X-Received: by 10.31.12.7 with SMTP id 7mr8409335vkm.113.1478022582275; Tue,
	01 Nov 2016 10:49:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Tue, 1 Nov 2016 10:49:41 -0700 (PDT)
In-Reply-To: <d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
References: <CADnUhn2dnK5aK7YGB42uH7ao6DzHWy6QmNHRtmh_BMW38B3DsA@mail.gmail.com>
	<d449b830-fbd4-1625-beed-e7ccb3abeb7f@basmevissen.nl>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Tue, 1 Nov 2016 19:49:41 +0200
Message-ID: <CADnUhn1YhA5ds3GkxvdLK31LF8GyLjGJ3eXL+xNo-HCM0o3tAg@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: svn fetcher crashes
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
X-List-Received-Date: Tue, 01 Nov 2016 17:49:46 -0000
Content-Type: multipart/alternative; boundary=001a11458070fc9574054040f246

--001a11458070fc9574054040f246
Content-Type: text/plain; charset=UTF-8

2016-11-01 19:05 GMT+02:00 Bas Mevissen <abuse@basmevissen.nl>:

> It might be wise to wait a few days and start from the upcoming morthy
> release.
>
Unfortunately I need meta-ti layer and they support only every other main
version. Their latest release is krogoth and they are skipping morthy. In
fact, some update (source revision 4.1.17 -> 4.1.18)  broke kernel that is
why I tried to make this upgrade instead of trying to fix kernel.

>
> Recipes that used to work
>> before are now crashing. I get long listing of warnings telling
>> "Exception during build_dependencies for S". At the end will come:
>> svn: /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libssl.so.1.0.0:
>> version `OPENSSL_1.0.0' not found (required by
>> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)
>> svn:
>> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/./././libcrypto.so.1.0.0:
>> version `OPENSSL_1.0.0' not found (required by
>> /CPR3/sysroots/x86_64-linux/usr/bin/../lib/././libserf-1.so.1)
>>
>>
> Did you start with a clean work area?
>
No, I did not, I deleted SSTATE_DIR, though. I'll clean it tomorrow.

>
> Post the output of a single package, including the logs.
>
Ok, I'll do it tomorrow, if problems don't vanish.

>
> Location these error messages are referring has following libssl modules:
>> libssl3.so
>> libssl.a
>> libssl.so
>> libssl.so.1.0.0
>> ssl
>>
>>
> That is something we will probably sort out in the process. Guess the
> current openssl is 1.0.2 and the old 1.0.0 is no longer in your staging.
>

--001a11458070fc9574054040f246
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2016-11-01 19:05 GMT+02:00 Bas Mevissen <span dir=3D"ltr">&lt;<a target=3D"=
_blank" href=3D"mailto:abuse@basmevissen.nl">abuse@basmevissen.nl</a>&gt;</=
span>:<br><blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex" class=3D"gmail_quote"><div class=3D"g=
mail-a3s gmail-aXjCH gmail-m15820e2be9c24069" id=3D"gmail-:m0">It might be =
wise to wait a few days and start from the upcoming morthy release.<span cl=
ass=3D"gmail-"><br></span></div></blockquote><div>Unfortunately I need meta=
-ti layer and they support only every other main version. Their latest rele=
ase is krogoth and they are skipping morthy. In fact, some update (source r=
evision 4.1.17 -&gt; 4.1.18)=C2=A0 broke kernel that is why I tried to make=
 this upgrade instead of trying to fix kernel.=C2=A0 =C2=A0 <br></div><bloc=
kquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex" class=3D"gmail_quote"><div class=3D"gmail-a3s gmail-=
aXjCH gmail-m15820e2be9c24069" id=3D"gmail-:m0"><span class=3D"gmail-">
<br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex" class=3D"gmail_quote">
Recipes that used to work<br>
before are now crashing. I get long listing of warnings telling<br>
&quot;Exception during build_dependencies for S&quot;. At the end will come=
:<br>
svn: /CPR3/sysroots/x86_64-linux/us<wbr>r/bin/../lib/./././libssl.so.<wbr>1=
.0.0:<br>
version `OPENSSL_1.0.0&#39; not found (required by<br>
/CPR3/sysroots/x86_64-linux/us<wbr>r/bin/../lib/././libserf-1.so.<wbr>1)<br=
>
svn:<br>
/CPR3/sysroots/x86_64-linux/us<wbr>r/bin/../lib/./././libcrypto.<wbr>so.1.0=
.0:<br>
version `OPENSSL_1.0.0&#39; not found (required by<br>
/CPR3/sysroots/x86_64-linux/us<wbr>r/bin/../lib/././libserf-1.so.<wbr>1)<br=
>
<br>
</blockquote>
<br></span>
Did you start with a clean work area?<br></div></blockquote><div>No, I did =
not, I deleted SSTATE_DIR, though. I&#39;ll clean it tomorrow. </div><block=
quote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex" class=3D"gmail_quote"><div class=3D"gmail-a3s gmail-a=
XjCH gmail-m15820e2be9c24069" id=3D"gmail-:m0">
<br>
Post the output of a single package, including the logs<span class=3D"gmail=
-">.<br></span></div></blockquote><div>Ok, I&#39;ll do it tomorrow, if prob=
lems don&#39;t vanish. <br></div><blockquote style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex" class=3D"gmail=
_quote"><div class=3D"gmail-a3s gmail-aXjCH gmail-m15820e2be9c24069" id=3D"=
gmail-:m0"><span class=3D"gmail-">
<br>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex" class=3D"gmail_quote">
Location these error messages are referring has following libssl modules:<b=
r>
libssl3.so<br>
libssl.a<br>
libssl.so<br>
libssl.so.1.0.0<br>
ssl<br>
<br>
</blockquote>
<br></span>
That is something we will probably sort out in the process. Guess the curre=
nt openssl is 1.0.2 and the old 1.0.0 is no longer in your staging.</div></=
blockquote></div><br><br></div></div>

--001a11458070fc9574054040f246--
