Return-Path: <nitishjha16@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F36E00B93; Fri, 21 Oct 2016 07:55:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nitishjha16[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A40E00A10
	for <poky@yoctoproject.org>; Fri, 21 Oct 2016 07:55:29 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id l131so142087671lfl.2
	for <poky@yoctoproject.org>; Fri, 21 Oct 2016 07:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=PAkrPr2qz9cDK/xdn1xXfCiQ4xZtWOd1YF3O8M0lWQI=;
	b=r4QYeN4wKDMSwGqU80h8X/agMS1hfeOXniRkEZ5flTCntmhWCaYirMR1bfL/LdWLHA
	/Eavj8vryUji1KMm69uIzdAO/4R0VEDZsdefTmtruc/aYFzXKZWAmOFMrDqfUkvJAU2R
	GqlnR0FAqw/J1AIGGEWweNHUCN3Dh4k8OU9XlgkX2VXdVsVAtrMMko3Sk4BlTVku673T
	ZOnJDdDqehVIHuiRLgATSLTIOuq2srdYgxyX2ee9MJHycsnC3Kxw9E7bsHpbEjqGI8Ly
	uIRW8qjd5blvpeCXFMFvM2EcIhBl9dQmjUDOSnzGonguOXC/xdbk1XHi4OVMJlKYsDzi
	Rw1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=PAkrPr2qz9cDK/xdn1xXfCiQ4xZtWOd1YF3O8M0lWQI=;
	b=L3IdIjPksSyGaj+O/gdm01+VOFFGRSSYFlKzwP8fON5mae3zXRwgMLFvGabKhAJ3uE
	UonBd0QBXOkKL4yP7CTPGZvS0Y9pWUch5BoECeBBF1dOtV4thaGcOA/38lw/tMC/HwyF
	JC/jZQxNlClRe7Qclw5Tnsmu2XUYVqVIFn2CsqrNlmb6BtSPLDeA02Afm69+QnJd1t//
	aSP+IRzD52cG+buUkAm7CmdRkpaelh/9Tl5czjbTWmgjMHPqnEYl3mLpdL+fTXECTVK4
	Tm5XjnTvGEFKFH3jLyyc1ltldDjRElsSZlPZPsWgNzJwJ+5aWn6yd0LjxmM2Umlv127E
	Jt9Q==
X-Gm-Message-State: AA6/9RmcyboKV1HLuK+5rJ8QliDRgaqQVu7NEQu9DJ5nPjk4OXYZ5Ek32RFcPLB9vwBzZvHOtB+rf5mV2EoyWQ==
X-Received: by 10.28.9.141 with SMTP id 135mr3249296wmj.68.1477061727256; Fri,
	21 Oct 2016 07:55:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.131.200 with HTTP; Fri, 21 Oct 2016 07:55:26 -0700 (PDT)
From: nitish jha <nitishjha16@gmail.com>
Date: Fri, 21 Oct 2016 16:55:26 +0200
Message-ID: <CABh+fobJ2oYvPgEk=jAXZo2PRrHiH9+G136PMCG-MS=iLDXS0w@mail.gmail.com>
To: bitbake-devel <bitbake-devel@lists.openembedded.org>, poky@yoctoproject.org
Subject: Eclipse: Yocto Image build and Remote debugg
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
X-List-Received-Date: Fri, 21 Oct 2016 14:55:34 -0000
Content-Type: multipart/alternative; boundary=001a11444dc69084ae053f613b7e

--001a11444dc69084ae053f613b7e
Content-Type: text/plain; charset=UTF-8

Hello All,

I am facing some Issues in Remote debugging of yocto image

Steps I have done:

1) Installing eclipse with CDT plugins,ADT, RSE and TCF plugin
2) Making a project in eclipse using Bitbake Commander
3) Creating a custom image using HOB by adding some custom layers.
4) Running Image on QEMU
5) Creating an sdk and extracting sysroot
6) Configuring Image and Sysroot in Eclipse Yocto ADT settings.
7) Creating a TCF Connection and providing this connection to c++ remote
application

But launch fails by saying that this is not valid C++ project

I have following questions regarding this

1) I understand this is not a c++ project as it is created by Bitbake
commander but How I will be able to debug the code I have added in my image.
2) When I use new TCF instance in Debug Configuration its not detecting
automatically my QEMU which is running my image.

Can anybody help me in debugging Software I have installed in my image as
extra layer by any ways i.e. TCF debugging/Eclipse remote application
debugging.

Thanks in advance.


-- 
*Nitish Jha*

--001a11444dc69084ae053f613b7e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I am facing some Issues in R=
emote debugging of yocto image</div><div><br></div><div>Steps I have done:<=
/div><div><br></div><div>1) Installing eclipse with CDT plugins,ADT, RSE an=
d TCF plugin</div><div>2) Making a project in eclipse using Bitbake Command=
er</div><div>3) Creating a custom image using HOB by adding some custom lay=
ers.</div><div>4) Running Image on QEMU</div><div>5) Creating an sdk and ex=
tracting sysroot</div><div>6) Configuring Image and Sysroot in Eclipse Yoct=
o ADT settings.</div><div>7) Creating a TCF Connection and providing this c=
onnection to c++ remote application</div><div><br></div><div>But launch fai=
ls by saying that this is not valid C++ project</div><div><br></div><div>I =
have following questions regarding this</div><div><br></div><div>1) I under=
stand this is not a c++ project as it is created by Bitbake commander but H=
ow I will be able to debug the code I have added in my image.</div><div>2) =
When I use new TCF instance in Debug Configuration its not detecting automa=
tically my QEMU which is running my image.</div><div><br></div><div>Can any=
body help me in debugging Software I have installed in my image as extra la=
yer by any ways i.e. TCF debugging/Eclipse remote application debugging.</d=
iv><div><br></div><div>Thanks in advance.</div><div><br clear=3D"all"><div>=
<br></div>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div style=3D"font-family:arial;font-size:small"><div><b>Nitish Jha</b></d=
iv><div><br></div></div></div></div></div></div></div>
</div></div>

--001a11444dc69084ae053f613b7e--
