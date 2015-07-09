Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EA17E009CC; Thu,  9 Jul 2015 05:12:37 -0700 (PDT)
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
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4503AE00978
	for <poky@yoctoproject.org>; Thu,  9 Jul 2015 05:12:30 -0700 (PDT)
Received: by obbkm3 with SMTP id km3so170149329obb.1
	for <poky@yoctoproject.org>; Thu, 09 Jul 2015 05:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=F9cCGpcvUj/bN6L1F8y4r0ksPHx97H8uCC+bv0K9eQk=;
	b=n2M+LpxlJNI6GIV2FxF7CH+8FZkeCKwv+GkMcuDylKmgue29FV3p5eXwvxDbFFa9J1
	GI9WjRT4cY2gm3gv2BoMbFBrii7Nh89m/O8kDUjGafG0FWMhYm1sNxXbNmSMyBsFRpBV
	BOr3Ugbyh/qHtU9mqspCn1XnNp/O/jrOjZrSMTVspYv3Q9BlaCPJi0IMnt+9jlL8GDcT
	HxRizmI9IkD3IYZTFkrJ2HXLx8oZqIeTEJmRxAY0ZCcWR3eMFlRi5/PNbeBwEXZn28iu
	/mtbC81OSPKGqq0Pu0NEMjRfHPoFZJgLl8B9K94o9sEeafm5K0RB2VRL5rSoE+K0vjnh
	cveQ==
MIME-Version: 1.0
X-Received: by 10.60.15.133 with SMTP id x5mr14063914oec.80.1436443949957;
	Thu, 09 Jul 2015 05:12:29 -0700 (PDT)
Received: by 10.202.173.137 with HTTP; Thu, 9 Jul 2015 05:12:29 -0700 (PDT)
Date: Thu, 9 Jul 2015 17:42:29 +0530
Message-ID: <CACj2azvy9HZUsaoJO8jPHzMMrck1t_2O-1ctAffWOT3x9F3oFw@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: poky@yoctoproject.org
Subject: Not able to set env var from anon function
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
X-List-Received-Date: Thu, 09 Jul 2015 12:12:37 -0000
Content-Type: multipart/alternative; boundary=089e014945c060a2da051a702b2c

--089e014945c060a2da051a702b2c
Content-Type: text/plain; charset=UTF-8

Hello all,

I was playing with environmental variables and datastore that I fell into
this situation:

In a reccipe a.bb

export TEMPDIR = "temp"

python() {
        os.environ["TEMPDIR"] = "randomvalue"
}

do_compile() {
        echo ${TEMPDIR }
}

gives me "temp" as the answer. I was expecting "randomvalue". Can I not
modify the environmental variables and create new ones in anon functions ?

But d.setVar("TEMPDIR", "randomvalue") in place of os.environ does the
mgic. Why can't we manipulate the environmental variable using os.environ ?

In bitbake.conf, we see that we can get env vars using os.getenv.

Thanks,
Nithyakala.

--089e014945c060a2da051a702b2c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I was playing with environme=
ntal variables and datastore that I fell into this situation:</div><div><br=
></div><div>In a reccipe <a href=3D"http://a.bb">a.bb</a></div><div><br></d=
iv><div>export TEMPDIR =3D &quot;temp&quot;</div><div><br></div><div>python=
() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 os.environ[&quot;TEMPDIR&quot;] =
=3D &quot;randomvalue&quot;</div><div>}</div><div><br></div><div>do_compile=
() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo ${TEMPDIR=C2=A0}=C2=A0</div=
><div>}</div><div><br></div><div>gives me &quot;temp&quot; as the answer. I=
 was expecting &quot;randomvalue&quot;. Can I not modify the environmental =
variables and create new ones in anon functions ?</div><div><br></div><div>=
But d.setVar(&quot;TEMPDIR&quot;, &quot;randomvalue&quot;) in place of os.e=
nviron does the mgic. Why can&#39;t we manipulate the environmental variabl=
e using os.environ ?</div><div><br></div><div>In bitbake.conf, we see that =
we can get env vars using os.getenv.</div><div><br></div><div>Thanks,</div>=
<div>Nithyakala.</div></div>

--089e014945c060a2da051a702b2c--
