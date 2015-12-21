Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39D38E00BEF; Mon, 21 Dec 2015 03:07:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEAF9E00825
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 03:07:19 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id l126so64879802wml.1
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 03:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=SkYLBqsBX1Wwzo99HALAxiwI/tsq8Ewzl+D6WyBaKeQ=;
	b=j17eSGY5NLdKnutMZk0FkC2xzI+d2+e9wdmzKtEFae4FgnnQNdl2fK2zN3wAvY+gt6
	taf2o5iUs/pJ/gpsBDsQJwxgQUCrNJNvNq1PNNTUNaptdFBlkjjuP0CEVa1S5Zq/ogYE
	MevjukNr3v1Fd1vIJqgYZEetopmfAZEOF2WttGxpMZ5BYHmAf0INbXFLDFFA5u8N7Kft
	mSW0bbVO8qRQ7+Ce/eUfNJbRQYlCq5odeycVbtVlOJB9ArDGfx6NmEjVFjdZJJihtsz2
	h5gOSQwPWoKAA4TEeRN4P8syXFUGKsUhgkIWjloBbfeu+Bz+d0nRDiSZd5/I9hmg6O5P
	ZovQ==
MIME-Version: 1.0
X-Received: by 10.28.218.75 with SMTP id r72mr18680243wmg.59.1450696038820;
	Mon, 21 Dec 2015 03:07:18 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Mon, 21 Dec 2015 03:07:18 -0800 (PST)
Date: Mon, 21 Dec 2015 16:37:18 +0530
Message-ID: <CAA2DH4sgPE=1GsviLt=QkHV5G9PWy7q1HURQNGzGKf-hNPUFpA@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: poky@yoctoproject.org
Subject: Recipe to edit a start script
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
X-List-Received-Date: Mon, 21 Dec 2015 11:07:23 -0000
Content-Type: multipart/alternative; boundary=001a114710d01232300527667e28

--001a114710d01232300527667e28
Content-Type: text/plain; charset=UTF-8

Hi,

I'm creating a custom layer and I would like to edit exisiting start
scripts (networking & dropbear).


For dropbear: should I create a dropbear_PV.bbappend file and patch the
start script. Something like this:

do_install_append() {


}

--001a114710d01232300527667e28
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br></div>I&#39;m creating a cu=
stom layer and I would like to edit exisiting start scripts (networking &am=
p; dropbear).<br><br></div><br></div>For dropbear: should I create a dropbe=
ar_PV.bbappend file and patch the start script. Something like this:<br><br=
></div>do_install_append() {<br><br><br>}<br><div><div><br></div></div></di=
v>

--001a114710d01232300527667e28--
