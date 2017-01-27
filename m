Return-Path: <nitishjha16@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFEB8E0092C; Fri, 27 Jan 2017 07:01:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nitishjha16[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7462CE0052B
	for <poky@yoctoproject.org>; Fri, 27 Jan 2017 07:01:45 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id l66so62384200ioi.1
	for <poky@yoctoproject.org>; Fri, 27 Jan 2017 07:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=KUxS4L5846nlaC1rWYgngx5VJxSFmMQUnmsQPKz3Znc=;
	b=Z8mIgyX/DJ2wsvKuVoDlIuVh+5Y+RwQFpmrKwS1iUoj84Xz8Vk1lDTjwE7irS9o539
	hu3cwxDf+0Ka2JYc87mmS4H4HKOmWIGE2rS/98Eeei5DCiCvh9ULovc+zoipj34SEoFV
	ERKIE+krtup4rRrfYROKVxiLGT1XGyiDyNWSwVI5Dk8/9FGVY+BogY6fz57pKvmGylO4
	fZH61jmXMRIZSxVK82zLRCMHWYxKdc+47kSF1HO3e/JssW+6NzSixc68WQE7aqX+ajfV
	QpO8upIa8IrbwkzQNnBTSyekCiLZHbiDU8MUyGaz2odXsdzpQDFlyk/P8zaBFS53Kr+i
	a0QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=KUxS4L5846nlaC1rWYgngx5VJxSFmMQUnmsQPKz3Znc=;
	b=c6nCY7nWrh3+2O1JCXmVwnpoAu+k3irXLkQfTeLk+JP3kFDOrJ7srVeqIY4XG/Bapy
	bTkW3hjayIFRAJA9iPL0+m0Lez8x06zmvIJevPTu6QnPs0ETbnXXkjGWf5JB7gQNP8d0
	ErHxzriHHdX7TWkjUX4IGmkY37awzIADOEOoXTGUqbjh3bnoFxLdlFuoKDy0LPIE0TvC
	GdJeAlRtWEPxJwsxQdeByMan4gPtNOpzCjP46AIhrhmt8gGl8lO3tdBZYMcgC5CrD2oD
	Aek0QMy+bpSr6mefRuxaMRIC6acAEp/CLSFMGWsWOGTqhlOzBVU1iURuPAr7T4+2z00s
	2D6w==
X-Gm-Message-State: AIkVDXIC6+gmQKM2d39TNiGdheZbQFjguWhq6SM3ZbShAcbMjHFWNJtoYW8boklFhhMdRtHpjrt3JqQPOIbLUw==
X-Received: by 10.107.11.159 with SMTP id 31mr7269475iol.20.1485529304354;
	Fri, 27 Jan 2017 07:01:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.142.205 with HTTP; Fri, 27 Jan 2017 07:01:43 -0800 (PST)
In-Reply-To: <CABh+fob2rRDKGYhGRm5bjHZU+v-KoKvCaTHDEFNNmmmMYPS82w@mail.gmail.com>
References: <CABh+fob2rRDKGYhGRm5bjHZU+v-KoKvCaTHDEFNNmmmMYPS82w@mail.gmail.com>
From: nitish jha <nitishjha16@gmail.com>
Date: Fri, 27 Jan 2017 16:01:43 +0100
Message-ID: <CABh+fobghFmHfXFJ7hRzKZGG5oriqpkhezR0PCzq73tisn9fTA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Change default OS in YOCTO poky distro
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
X-List-Received-Date: Fri, 27 Jan 2017 15:01:45 -0000
Content-Type: multipart/alternative; boundary=001a113edcd47d6361054714be9b

--001a113edcd47d6361054714be9b
Content-Type: text/plain; charset=UTF-8

Hello All,

I have few question regarding Yocto poky distribution, it may be very silly
question but if somebody could help to clear my doubts it will be very
useful.

Q1. What is the default OS in Yocto Poky build.

Q1. What Steps I need to do in case I want to have some different
OS(Android) or Type 1 Hypervisor on my Yocot Poky distro, which layers I
need to add or remove from default Yocto Poky distro


Thanks and Regards

-- 
*Nitish Jha*

--001a113edcd47d6361054714be9b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">Hello All,=C2=
=A0<div><br></div><div>I have few question regarding Yocto poky distributio=
n, it may be very silly question but if somebody could help to clear my dou=
bts it will be very useful.</div><div><br></div><div>Q1. What is the defaul=
t OS in Yocto Poky build.</div><div><br></div><div>Q1. What Steps I need to=
 do in case I want to have some different OS(Android) or Type 1 Hypervisor =
on my Yocot Poky distro, which layers I need to add or remove from default =
Yocto Poky distro</div><div><br></div><div><br></div><div>Thanks and Regard=
s<span class=3D"HOEnZb"><font color=3D"#888888"><br clear=3D"all"><div><br>=
</div>-- <br><div class=3D"m_-6628212725948940854gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"font-family:arial;font-si=
ze:small"><div><b>Nitish Jha</b></div><div><br></div></div></div></div></di=
v></div></div></div></font></span></div></div></div>
</div>

--001a113edcd47d6361054714be9b--
