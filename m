Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF01CE00E0D; Tue, 12 Nov 2019 05:12:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF39E00D8E
	for <poky@yoctoproject.org>; Tue, 12 Nov 2019 05:12:53 -0800 (PST)
Received: by mail-il1-f175.google.com with SMTP id q15so10338473ils.8
	for <poky@yoctoproject.org>; Tue, 12 Nov 2019 05:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A8NMBuBiDf+PaP4T6gxJPxlgsRORnXb1XNdR6ZpOR5A=;
	b=KHD9rbEtoTJwd7lF630SxTbPeQe21wVmxWLl8aNqQt3exNfdWc46V6kH4111Vmvjhj
	1MrcOoW7Z/V20eoBK2AMJPxoNo0DvhHBZj6wlLdAa+JI0o0cDvc7YRMYB3eXHs6FxB7d
	S9xi4dn0RkNT3UH4lyY4beP19ZOteQgMGU+SibAVYvnMM/vvRwvIDd1+SVDiD4Rw7cJb
	Fj80UQAj8FgOFPsPhgtBhdfS2hfMRV6YpIUi68xkJD/QIoTw6eGh7XIw+LNrBfiMqql4
	CVD7VoE1S3SQaaxo4QSxzuqPO4hnmRwDWUKdtm0Gt6ikdpSlZCTFdmwLVS4HiIRGHV1B
	haZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A8NMBuBiDf+PaP4T6gxJPxlgsRORnXb1XNdR6ZpOR5A=;
	b=VGtlq4Q2MNkIzRvOb0DqfROZC4MoGvBOCO0sRlvyvscvZEbpXWMK3p3Vu+b5SF2uiu
	lMo9IQQOuVgZXm4GDvSsM9QsJNvdFZYjMA0O/n+cwsl1deKAvD1JAZQqpcPOK/z4ihCS
	Pj175AGgcowTF92tmGZzNq4mAcgJKjj53U73wV3sFMSRhq/6dxGstki3rbHMCdo9nw63
	oI5PGsDx7QBkhVPfm794tJOy63CYzcpXS7pRVeJP+SHlNTaLmpnzJBYPMLqiJwJ0ftc9
	EevjJbFS5cjbjXKewrxRsefuNmpbFnbWYScRkkR23Yqe/OsJD4ot7GwWooS4I/Mj7cFX
	ptZw==
X-Gm-Message-State: APjAAAXl6guFTPUsDWPlza4eiKRwBggr8uUplKxdRwT8yMCstkIIhvGQ
	LghVGyNqZQPTKpawmTr180w5SivVmfMJPPLCIAXx7jEj
X-Google-Smtp-Source: APXvYqxiic6sb1ItqoEtKtBish50bpE/t3Grv6Ir9QIctAcFrDHnL+kzk7ccBR13WQUcII9CiF9TD/wf62RIFftVeqQ=
X-Received: by 2002:a05:6e02:cc1:: with SMTP id
	c1mr38351991ilj.139.1573564372726; 
	Tue, 12 Nov 2019 05:12:52 -0800 (PST)
MIME-Version: 1.0
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Tue, 12 Nov 2019 18:42:42 +0530
Message-ID: <CAOe0dAWrBf9zOav+m8Dz7_Z597u0TpQrE-AG4a9BprNN3q-8dw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: What's the standard way to verify X-server with touchscreen without meta-sato
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
X-List-Received-Date: Tue, 12 Nov 2019 13:12:54 -0000
Content-Type: multipart/alternative; boundary="00000000000077b69b0597260103"

--00000000000077b69b0597260103
Content-Type: text/plain; charset="UTF-8"

Hi Team ,

I am working with Yocto setup and want to test if setup with touchscreen
is properly configured in the BSP which i am developing.

(1) Currently i have added tslib package in the yocto and verified that the
     tslib package is installed in the RFS.
     I mapped the touchscreen event to tslib & checked that the
     ts_test & ts_calibrate  works file.

     Since TS_TEST works fine , can i consider that the setup is properly
configured ???
     or there is any other standard functionality which should be verified
before
     confirming that the setup is configured.

(2) My understanding is that the meta-sato is an layer which works on top
of
     X-11 server .
     i.e hardware -> kernel-driver -> tslib -> X-11 server -> sato
     Am i correct here ????

(3) We don't want meta-sato as part of BSP as product will have QT5 based
app
     as front end for customer.
     In this case , whats the Yocto suggested way to prove till X-11 .
     i.e how can i verify that X-11 is properly configured without using
meta-sato

Apologies if my understanding are wrong , idea here is to
learn from community the proper way of doing things

Thanks
Ashish

--00000000000077b69b0597260103
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Team , <br></div><div><br></div><div>I am working =
with Yocto setup and want to test if setup with touchscreen <br></div><div>=
is properly configured in the BSP which i am developing. <br></div><div><br=
></div><div>(1) Currently i have added tslib package in the yocto and verif=
ied that the <br></div><div>=C2=A0=C2=A0 =C2=A0 tslib package is installed =
in the RFS. <br></div><div>=C2=A0 =C2=A0=C2=A0 I mapped the touchscreen eve=
nt to tslib &amp; checked that the <br></div><div>=C2=A0=C2=A0 =C2=A0 ts_te=
st &amp; ts_calibrate=C2=A0 works file. <br></div><div>=C2=A0=C2=A0=C2=A0=
=C2=A0 <br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 Since TS_TEST works fine , c=
an i consider that the setup is properly configured ???</div><div>=C2=A0=C2=
=A0=C2=A0=C2=A0 or there is any other standard functionality which should b=
e verified before <br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 confirming that t=
he setup is configured. <br></div><div><br></div><div>(2) My understanding =
is that the meta-sato is an layer which works on top of <br></div><div>=C2=
=A0=C2=A0=C2=A0=C2=A0 X-11 server .</div><div>=C2=A0=C2=A0=C2=A0=C2=A0 i.e =
hardware -&gt; kernel-driver -&gt; tslib -&gt; X-11 server -&gt; sato <br><=
/div><div>=C2=A0=C2=A0=C2=A0=C2=A0 Am i correct here ????</div><div>=C2=A0=
=C2=A0 <br></div><div>(3) We don&#39;t want meta-sato as part of BSP as pro=
duct will have QT5 based app <br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 as fro=
nt end for customer. <br></div><div>=C2=A0=C2=A0=C2=A0=C2=A0 In this case ,=
 whats the Yocto suggested way to prove till X-11 .</div><div>=C2=A0=C2=A0=
=C2=A0=C2=A0 i.e how can i verify that X-11 is properly configured without =
using meta-sato <br></div><div><br></div><div>Apologies if my understanding=
 are wrong , idea here is to <br></div><div>learn from community the proper=
 way of doing things <br></div><div><br></div><div>Thanks <br></div><div>As=
hish<br></div><div><br></div><div><br></div><div><br></div><div><br></div><=
div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><=
div><br></div><div><br></div><div>=C2=A0=C2=A0=C2=A0 <br></div><div><br></d=
iv><div><br></div></div>

--00000000000077b69b0597260103--
