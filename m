Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6D86E00F3E; Tue, 19 Apr 2016 19:50:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30690E00CFC
	for <poky@yoctoproject.org>; Tue, 19 Apr 2016 19:50:52 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id fs9so12809150pac.2
	for <poky@yoctoproject.org>; Tue, 19 Apr 2016 19:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=7lPEfHS5pNMyy7ol+KXniW9g7Mr/ad6utWp0SIhYMq0=;
	b=OufwZmaCE9n1TRtPtZMlNaXduWWvzTy+E1YIpAVGuFv1H4ePXnO2ckrMrnPr/GxMGM
	oLUkdAzCcobPLMZw2TmZp8ZH31KewaG2lNCYIjND/a13gLYOTXwKIgKGKuEI74SP7OIT
	8qgNXWEi3rtkTT3hrQSD6qMetW/d3D14fhi8j+7UKCgTU88uyBVAbWG58jB7gMur2qMj
	ZR15kEW8P1Nye+uBcNhwjZ1BhPUKjQZM2Z7HPrbqUYW5dH2Qn9Cp2P1RtiKqjstq9x9J
	Fuseds5gqBQ6y/Y0Mgvy0IO1YwnhxAU+NbrgqBPHS3kQAjqYC4cAA0i7vwBikfdYq/bE
	9y8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=7lPEfHS5pNMyy7ol+KXniW9g7Mr/ad6utWp0SIhYMq0=;
	b=Yq/9bMrGHSyRorgxlBK2UpjOmNDepugQf0CJbMv4ntUGncVjhRCpzHMnk6BmsDfKBq
	LoveUHmbQap6Y/BVO6dYUZCXxO5evaczztWv1o/SXHOyTNgSrNbLRzeVQM4VkydSjc4K
	T3iwJZ8CYwRQ7exW+bSueEMq1f/Bl9zKLCEcpMF/FxBU6TX2lAcTNNLtbXfhq7jP59j+
	6sTDLL6hBlTwq1Kq2TpizTkFkHCA4KG6b5SgwT3FuI8qRTzu3S6HVbQpuxBUkGPTqrHW
	xqNec1rSV6YIpr0j/Yr4xtwJ9at0fvVStLz3SoTLGBrT0oIHO2HWidsy2oklv80P/EPS
	QN0g==
X-Gm-Message-State: AOPr4FVczvq52heR9MSe1VjGFGBct2tm1SJxB69SbVjNMY7JsEmPKFQjgJe/ls//zRRSeg==
X-Received: by 10.66.139.9 with SMTP id qu9mr8892837pab.101.1461120652692;
	Tue, 19 Apr 2016 19:50:52 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:10a3:c576:fd60:f183?
	([2601:646:8800:5a9a:10a3:c576:fd60:f183])
	by smtp.gmail.com with ESMTPSA id
	a205sm26182148pfa.6.2016.04.19.19.50.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Apr 2016 19:50:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5715889A.9010407@windriver.com>
Date: Tue, 19 Apr 2016 19:50:46 -0700
Message-Id: <771CB1EF-9595-4A02-9836-25263BE46F54@gmail.com>
References: <cover.1460297985.git.liezhi.yang@windriver.com>
	<570B0354.7040201@windriver.com> <570B0E9A.90602@windriver.com>
	<570BA579.9040408@windriver.com> <57144AC0.4060606@windriver.com>
	<648F21BE-64DE-409C-8FC8-F93735E77A4D@gmail.com>
	<57147456.3010707@windriver.com>
	<CAMKF1spv-h62p7CAPsFmVXyoAo=mN6s4bskH80Txcpqru1pOSA@mail.gmail.com>
	<5715889A.9010407@windriver.com>
To: Robert Yang <liezhi.yang@windriver.com>
X-Mailer: Apple Mail (2.3124)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] poky-tiny.conf: set PREFERRED_VERSION_linux-yocto-tiny to 4.4
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
X-List-Received-Date: Wed, 20 Apr 2016 02:50:54 -0000
X-Groupsio-MsgNum: 10397
Content-Type: multipart/signed;
	boundary="Apple-Mail=_7378C98C-DAFA-4BF2-A384-97C4AC34BCCA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_7378C98C-DAFA-4BF2-A384-97C4AC34BCCA
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Apr 18, 2016, at 6:23 PM, Robert Yang <liezhi.yang@windriver.com> wrote:
> 
> 
> On 04/18/2016 07:37 PM, Khem Raj wrote:
>> You are talking about different problem.
> 
> What did you mean, please ?

see

https://lists.yoctoproject.org/pipermail/yocto/2016-April/029518.html



--Apple-Mail=_7378C98C-DAFA-4BF2-A384-97C4AC34BCCA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcW7ooACgkQuwUzVZGdMxSbKACePERhYfFbYMgtvBAmz2bjjg2n
uFUAnRflzqo3QSGBg4F4DsXtq/AAJmlw
=YRlw
-----END PGP SIGNATURE-----

--Apple-Mail=_7378C98C-DAFA-4BF2-A384-97C4AC34BCCA--
