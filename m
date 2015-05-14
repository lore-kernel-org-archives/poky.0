Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19398E009A6; Wed, 13 May 2015 23:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
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
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88534E00985
	for <poky@yoctoproject.org>; Wed, 13 May 2015 23:54:20 -0700 (PDT)
Received: by oiko83 with SMTP id o83so49313283oik.1
	for <poky@yoctoproject.org>; Wed, 13 May 2015 23:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hNgEVvZSJzDTDe9/w3kIDFU2vutZWebAu4GVu3FEE04=;
	b=CNYV8DQJZUpUGSIr1xM/ZO7PKR6o99/rHnQ/sPOm4tcjH9GQDGoTT0pzzFsh+n+PuN
	BIgVduB+alusKK1SDBtH52fgOS9ZL84c/bPd75ROhNbPUACjGvDA3wSEi9VopHDryGyn
	Px3gC0YuDFKenUTzFNuMfoNFKEpLVPgUmSmN/z00ozyYHhIJECXEzMzVg8NR+Z998t/Y
	tRKP1CccmyXEhREmfDg7LOVVNlylmUb6M0TQjLQd3j0XIqbItW/UtCu2cCN4zZf31b62
	9ZwxTjpJr/EXpCBtALzSpAkVIUf1hGZeFSfHfATRytn35mmiHW+kOOm8NIF4l5wKoY2M
	H/rw==
MIME-Version: 1.0
X-Received: by 10.60.15.133 with SMTP id x5mr2248161oec.80.1431586459459; Wed,
	13 May 2015 23:54:19 -0700 (PDT)
Received: by 10.202.76.7 with HTTP; Wed, 13 May 2015 23:54:19 -0700 (PDT)
In-Reply-To: <7657553.W1F7CTlKPl@peggleto-mobl.ger.corp.intel.com>
References: <CACj2azstX2gWPHTh54mE-FD_BVvNWk-Y0+Gmt1g3fN_gvtod7w@mail.gmail.com>
	<3121103.EhpPnjp5rp@peggleto-mobl.ger.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EF45AB@ORSMSX101.amr.corp.intel.com>
	<7657553.W1F7CTlKPl@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 14 May 2015 12:24:19 +0530
Message-ID: <CACj2azv3BFcpSA3_GdT1R+9Yiz_QBJG=nmKWXFduQJyWSE5hVQ@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: UNKNOWN_CONFIGURE_WHITELIST
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
X-List-Received-Date: Thu, 14 May 2015 06:54:26 -0000
Content-Type: multipart/alternative; boundary=089e014945c061a73005160532e1

--089e014945c061a73005160532e1
Content-Type: text/plain; charset=UTF-8

Thanks all :-)

Nithya.

On Wed, May 13, 2015 at 8:48 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> (note: CC fixed)
>
> On Wednesday 13 May 2015 14:22:05 Rifenbark, Scott M wrote:
> > Can a bug be filed for this against the docs?
>
> Done:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7755
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e014945c061a73005160532e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks all :-)<div><br></div><div>Nithya.</div></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, May 13, 2015 a=
t 8:48 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggle=
ton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">(note: CC fixed)<br>
<span class=3D""><br>
On Wednesday 13 May 2015 14:22:05 Rifenbark, Scott M wrote:<br>
</span><span class=3D"">&gt; Can a bug be filed for this against the docs?<=
br>
<br>
</span>Done:<br>
<br>
<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7755" target=
=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7755</a><br=
>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--089e014945c061a73005160532e1--
