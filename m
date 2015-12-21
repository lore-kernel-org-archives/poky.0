Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF10AE00AFD; Mon, 21 Dec 2015 03:12:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89AD5E00825
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 03:12:33 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id l126so63912860wml.1
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 03:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=aerPDDYYeBJK1zquREAl9aqD90CjWE6Fypw68uVTgzg=;
	b=seszejgA9DtOKdRwjPz862OOnCZo6u7LPfNjrjXcxuKPlrgzYUD2pwqazhmJVRbT1O
	MEfNGW+eYLOk8GihfBHqXcYOaOYWSPJMTFDacF61ZsW5dRAjw1J5WThLZmEpbGx9ks5j
	SeI0W7jWygmo7RnRSRVMT2IPaeFJrJEQARdWsTjtGKzS8+dPLqSK6NZ3/BPUTyFBSxri
	zmehWNrsUEVVd+prAVs9ce3XAS7zncRqLL99GEoBdaaEg5l15P+zvCfBvINuMDKrACd6
	hcJP0TVZxKAv4ijQhJhqgQ1yc1Zbu3NIWq10InMLuKpAd1IjlHe1R9gFXJXTsn52u4q7
	OE7Q==
MIME-Version: 1.0
X-Received: by 10.194.109.194 with SMTP id hu2mr19459625wjb.134.1450696351532; 
	Mon, 21 Dec 2015 03:12:31 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 21 Dec 2015 03:12:31 -0800 (PST)
In-Reply-To: <CAA2DH4sgPE=1GsviLt=QkHV5G9PWy7q1HURQNGzGKf-hNPUFpA@mail.gmail.com>
References: <CAA2DH4sgPE=1GsviLt=QkHV5G9PWy7q1HURQNGzGKf-hNPUFpA@mail.gmail.com>
Date: Mon, 21 Dec 2015 16:42:31 +0530
Message-ID: <CAA2DH4u+xi4ZGOt1hLCJs6Kt4TjnHC7YiYs=J3dZbTrZ+EK4kQ@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Recipe to edit a start script
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
X-List-Received-Date: Mon, 21 Dec 2015 11:12:38 -0000
Content-Type: multipart/alternative; boundary=089e0102f9d4b5ce080527669089

--089e0102f9d4b5ce080527669089
Content-Type: text/plain; charset=UTF-8

Sorry I hit the send button before completing my mail.


=========


Hi,

I'm creating a custom layer and I would like to edit exisiting start
scripts (networking & dropbear).


For dropbear: should I create a dropbear_PV.bbappend file and patch the
start script. Something like this:

do_install_append() {
     patch -i ${D}${sysconfdir}/init.d/dropbear {WORKDIR}/dropbear.patch
}



Would this work out?
Or any recommended/better way to do this?



Regards, Pj

--089e0102f9d4b5ce080527669089
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry I hit the send button before completing my mail=
.<br><br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br></div><div><br><div><div><d=
iv><div>Hi,<br><br></div>I&#39;m creating a custom layer and I would like t=
o edit exisiting start scripts (networking &amp; dropbear).<br><br></div><b=
r></div>For dropbear: should I create a dropbear_PV.bbappend file and patch=
 the start script. Something like this:<br><br></div>do_install_append() {<=
br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 patch -i ${D}${sysconfdir}/init.d/dr=
opbear  {WORKDIR}/dropbear.patch<br>}<br><br><br><br></div><div>Would this =
work out?<br></div><div>Or any recommended/better way to do this?<br><br><b=
r><br></div><div>Regards, Pj<br></div></div>

--089e0102f9d4b5ce080527669089--
