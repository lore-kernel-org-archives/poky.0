Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B84FBE00C9B; Thu, 21 Nov 2019 12:47:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2628BE00A9A
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 12:47:53 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id z188so2239330pgb.1
	for <poky@yoctoproject.org>; Thu, 21 Nov 2019 12:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=7hfFt9GTWIRDNQiiHwqSaAN6FkmLVLVRUqkyA5zDkbA=;
	b=sh6eijxe1Ae41dRrNkhDn+0N7HBfpB48zthV9yFTThaPRMev9gHs98dhrjZqOObaGt
	zb782SAyNUxlPcDkPPLMtHqvML/o7aEzaaNlhaQn56yeTbxsJP7g2AZyoOwDziFTlquF
	cQqAY6wu1GY5lX+4Qr8mlHXgyrvmTWZP8hld6HD/uWieh89DBZPrhA5IriAOfImbcmDL
	ygMNHTXD5uRnK34XVx1cE43XfHXb5FZ64q4mGoM1h2BljyUoM8K4L9GAT714COAjS9Fn
	znTSpSg2JgGMrAxhouLyoNTGACQaZI3T/L6eLh8oZlrFsiKT88j3dJNtd/GNC/lKSYrJ
	zHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=7hfFt9GTWIRDNQiiHwqSaAN6FkmLVLVRUqkyA5zDkbA=;
	b=kOTIUhO00xp7s6O7Jsv6Cr92OPcLgDgkRzStt2gFZCqkB7w+SXiU1i3eGlzxFte/6t
	DEEMSbI1SSbwE/+dIZ6X/a6edVjj4Ar9mZ7Zo8oPtiecGHy4PKDRJaGP0/s4fBhPy7ot
	/+cxko8y9U7Al0eHy0aT8i2DC7Lcf0+RWdpu1+heIUr0jvk6TRee9W7HFLxrv50d3L+L
	MV8JNBs+OWfJElaf1ae8l8lKwwqcXcMs8+Y8f13XmtadVzHCvW8IbJ0dShNEfnhZ1khI
	E3da2v9U4EtEI+M4SiANaEfhtzyY1kuCGnoyt8iggLbkJVw9gwzi7NrId46SPcIP5AC5
	3niQ==
X-Gm-Message-State: APjAAAUpv/+kh9jf2pvZ0ry8XtEezLslOAVWtBUL3TIdyPC4qcd9IVwO
	E1xIgRdFztr1H68bFzABJM+bu3Nd
X-Google-Smtp-Source: APXvYqyU2/aqyC0KwwzMun6Jy0uiubkFDYF9FeqnY49/uAlKFEkyTzLZ2eQXVFjuksbWviczr6+Cgw==
X-Received: by 2002:a62:e708:: with SMTP id s8mr13447172pfh.80.1574369272450; 
	Thu, 21 Nov 2019 12:47:52 -0800 (PST)
Received: from [10.20.245.11] ([45.19.219.178])
	by smtp.gmail.com with ESMTPSA id
	w62sm4718906pfb.15.2019.11.21.12.47.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Nov 2019 12:47:51 -0800 (PST)
To: Tom Rini <trini@konsulko.com>, Alexander Kanavin <alex.kanavin@gmail.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
	<d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
	<CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
	<20191121204251.GO971@bill-the-cat>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <3b2ba6b6-548c-cdf5-c6e1-2c4e9b0b70cd@gmail.com>
Date: Thu, 21 Nov 2019 12:47:50 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191121204251.GO971@bill-the-cat>
Cc: Wang Nan <wangnan0@huawei.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: Python2 maintenance will expired
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
X-List-Received-Date: Thu, 21 Nov 2019 20:47:53 -0000
X-Groupsio-MsgNum: 11819
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="PHcgAaVKdGUemC3gBjmwhjJtpIfSaVpVS"

--PHcgAaVKdGUemC3gBjmwhjJtpIfSaVpVS
Content-Type: multipart/mixed; boundary="V8rkHPDuxUyL0PoHZt6AiV7qn6lUxSO9Y";
 protected-headers="v1"
From: akuster808 <akuster808@gmail.com>
To: Tom Rini <trini@konsulko.com>, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Wang Nan <wangnan0@huawei.com>, Poky Project <poky@yoctoproject.org>
Message-ID: <3b2ba6b6-548c-cdf5-c6e1-2c4e9b0b70cd@gmail.com>
Subject: Re: [poky] Python2 maintenance will expired
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <20191121204251.GO971@bill-the-cat>
In-Reply-To: <20191121204251.GO971@bill-the-cat>

--V8rkHPDuxUyL0PoHZt6AiV7qn6lUxSO9Y
Content-Type: multipart/alternative;
 boundary="------------6FCCBDAF33E43A6D5A954B48"
Content-Language: en-US

--------------6FCCBDAF33E43A6D5A954B48
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 11/21/19 12:42 PM, Tom Rini wrote:
> On Thu, Nov 21, 2019 at 12:07:14PM +0100, Alexander Kanavin wrote:
>> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
>> richard.purdie@linuxfoundation.org> wrote:
>>
>>> The project has been working hard to remove python2 dependencies wher=
e
>>> we can and in OE-Core, on target usage has been removed and at build
>>> time, u-boot is one of the main remaining pieces that still needs it.=

>>> Their next release should address that issue.
>>>
>>> There is still a need for python2 in HOSTTOOLS but that is also being=

>>> looked at.
>>>
>> I can confirm (from local testing) that as far as oe-core is concerned=
,
>> u-boot is actually the last piece, and after it's been moved to use py=
3,
>> py2 can be removed entirely, including a link in HOSTTOOLS, and native=
 and
>> target recipes.
> And for the slightly wider audience, the v2020.01 release is scheduled =
for
> release on January 6th and Alex has tested the current -rc within
> oe-core to confirm we're all good with respect to just using Python 3
> now.

There is a yocto bug tracking this:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13439

- armin

>
>


--------------6FCCBDAF33E43A6D5A954B48
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 11/21/19 12:42 PM, Tom Rini wrote:<=
br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:20191121204251.GO971@bill-the-c=
at">
      <pre class=3D"moz-quote-pre" wrap=3D"">On Thu, Nov 21, 2019 at 12:0=
7:14PM +0100, Alexander Kanavin wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">On Thu, 21 Nov 2019 at 09:=
39, Richard Purdie &lt;
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:richard.purdie@linux=
foundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:

</pre>
        <blockquote type=3D"cite">
          <pre class=3D"moz-quote-pre" wrap=3D"">The project has been wor=
king hard to remove python2 dependencies where
we can and in OE-Core, on target usage has been removed and at build
time, u-boot is one of the main remaining pieces that still needs it.
Their next release should address that issue.

There is still a need for python2 in HOSTTOOLS but that is also being
looked at.

</pre>
        </blockquote>
        <pre class=3D"moz-quote-pre" wrap=3D"">
I can confirm (from local testing) that as far as oe-core is concerned,
u-boot is actually the last piece, and after it's been moved to use py3,
py2 can be removed entirely, including a link in HOSTTOOLS, and native an=
d
target recipes.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
And for the slightly wider audience, the v2020.01 release is scheduled fo=
r
release on January 6th and Alex has tested the current -rc within
oe-core to confirm we're all good with respect to just using Python 3
now.</pre>
    </blockquote>
    <br>
    There is a yocto bug tracking this:<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D13439">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13439</a><br>
    <br>
    - armin<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:20191121204251.GO971@bill-the-c=
at">
      <pre class=3D"moz-quote-pre" wrap=3D"">

</pre>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------6FCCBDAF33E43A6D5A954B48--

--V8rkHPDuxUyL0PoHZt6AiV7qn6lUxSO9Y--

--PHcgAaVKdGUemC3gBjmwhjJtpIfSaVpVS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJd1vf2AAoJEO6LtJn0Vuf54I0P/AgX92znLK1q8vRseazL9Wwg
OCGhbk8HVLWvK5P//0htaKBdK1iiAOtC+XUbrnvC3Dn9hokojoFLKzWcgFuSJv05
mUlCnQ3wA4x73DOg/tcabJ/XgchljRx/5nSgJeCy3GAFkjfXwC8lJoYwr+7wCqL7
jYLQ3bj6+5y2DxNDCLOfLB/epkM+wUPOZWyVG7wIw88l4oqTiPY6iVHMsG8ecRrP
sxlGRf4UFxQAK7Qsysg2rGyLhEemDs0Z1YQy+9DUvPwSXHv0K3q57y3gx0jXtO/N
I8JrV4+YSSFhl0nYTRsFR/y/Q6uMTnEwUZgv9F6Rdr+mpA47sL3KTOCii4wsKq1i
kGzEq9IrrFcSV6X4/RHNPgENWqxzzAVp+0Qr2bZzZbpxbUGIo6khc4fuh7HqyNJO
ic3vEeOKBzBjXSacl/eFhRqhJJAqya3KQIKeStOEJJ+u0igohl/SKL2Bgjgbk/lG
ZfAoKmRDmPBhrrVEveoZQiAs+jFwId6Ifve3wdDYZfbZ6q4PYw43n3h9nqjEQIXJ
o0t7UhVJ/9JiTwz0aRId8Dds7wz6aJMsZ0LVk0rzZwsMhYfGcREzORqf0ATFhxFC
ZxbUh0+kRfJZajbTtr/lmAJrHLHQbPPcIFJyZMOrl7vh9/hE65UXjOwc4whBWyQJ
nCmdDWi0QZiOjSdCrlhO
=JWb1
-----END PGP SIGNATURE-----

--PHcgAaVKdGUemC3gBjmwhjJtpIfSaVpVS--
