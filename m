Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B884E00988; Sun, 17 May 2015 13:23:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f173.google.com (mail-ob0-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD8CE007B6
	for <poky@yoctoproject.org>; Sun, 17 May 2015 13:23:30 -0700 (PDT)
Received: by obcus9 with SMTP id us9so109530263obc.2
	for <poky@yoctoproject.org>; Sun, 17 May 2015 13:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZU6g8KKcWmNHNHErRh11YPhK+44kIb4R0XMmowqz5qE=;
	b=OFpZxIcn1lxbUVidCs4gb/dprjKTaBPvSlHTwVfJxLQNL22FjnvNqTOU21+Ezf3v14
	s1bKIwhh1ZkQYxv5m3oUFbvuLnC+5mA31UYf2g6CUuLSvYV7ph12N2xmqcuA73eo32Tr
	5wt4Z0kwMKL0GyyRfTRillqh8D+5g24CmpiXTkU5R36NDlfxqktIxjPkJeHaJt3U8Cnf
	hy6+3dT0oULOdkqyvWFXktD6H7mA6Nyq8PDhWTtTiecny7BFLeAFgbEevU7phlRXHGeK
	wOFikfBH6pPeTdPihU0dWBCVVzb0+a9E2sG9yX4KsQOGgFKFpLDTWxjaDLKt055IwBL2
	Ca7A==
MIME-Version: 1.0
X-Received: by 10.182.128.6 with SMTP id nk6mr17234107obb.70.1431894209925;
	Sun, 17 May 2015 13:23:29 -0700 (PDT)
Received: by 10.202.128.9 with HTTP; Sun, 17 May 2015 13:23:29 -0700 (PDT)
Date: Mon, 18 May 2015 01:53:29 +0530
Message-ID: <CACj2azs1yrQ0fVuJhrgkDTj_kk5G=z4pqmNLjiLeNZFpQv-Lxg@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: poky@yoctoproject.org
Subject: Multiple versions of libx11 are due to be built
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
X-List-Received-Date: Sun, 17 May 2015 20:23:36 -0000
Content-Type: multipart/alternative; boundary=047d7b675af6bd174d05164cd9c1

--047d7b675af6bd174d05164cd9c1
Content-Type: text/plain; charset=UTF-8

Hello,

I want to understand the process of choosing a recipe by bitbake

There is a libx11_1.3.2.bb in a layer called A with higher priority of 6.

There is another libx11_1.4.0.bb in a layer called B with priority of 5.

So bitbake sshould automatically pick up libx11  from A right ? Why is it
giving me error like:

" Multiple versions of libx11 are due to be built. Only one version of a
given PN should be built in any given build. You likely need to set
PREFERRED_VERSION_libx11 to select the correct version or don't depend on
multiple versions."

Why should i even prefer a version? This happens when I build an image. But
when I directly call

bitbake libx11

the one from layer A is getting picked up.

I am confused. Can you please tell me ?

Thanks,
Nithyakala.

--047d7b675af6bd174d05164cd9c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I want to understand =
the process of choosing a recipe by bitbake</div><div><br></div>There is a =
<a href=3D"http://libx11_1.3.2.bb">libx11_1.3.2.bb</a> in a layer called A =
with higher priority of 6.<div><br></div><div>There is another <a href=3D"h=
ttp://libx11_1.4.0.bb">libx11_1.4.0.bb</a> in a layer called B with priorit=
y of 5.</div><div><br></div><div>So bitbake sshould automatically pick up l=
ibx11 =C2=A0from A right ? Why is it giving me error like:</div><div><br></=
div><div>&quot; Multiple versions of libx11 are due to be built. Only one v=
ersion of a given PN should be built in any given build. You likely need to=
 set PREFERRED_VERSION_libx11 to select the correct version or don&#39;t de=
pend on multiple versions.&quot;<br></div><div><br></div><div>Why should i =
even prefer a version? This happens when I build an image. But when I direc=
tly call</div><div><br></div><div>bitbake libx11</div><div><br></div><div>t=
he one from layer A is getting picked up.</div><div><br></div><div>I am con=
fused. Can you please tell me ?</div><div><br></div><div>Thanks,</div><div>=
Nithyakala.</div></div>

--047d7b675af6bd174d05164cd9c1--
