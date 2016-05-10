Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 646B2E00CC8; Mon,  9 May 2016 20:55:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E55E00CBC
	for <poky@yoctoproject.org>; Mon,  9 May 2016 20:55:10 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id y69so502210pfb.1
	for <poky@yoctoproject.org>; Mon, 09 May 2016 20:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=HhQNeZQxDb0996abXDHfFgf65bFG6l12+fBn3hGcCV4=;
	b=Ls5oN71MiqGt8gznIBqw569wAvzsBFEkNsHyMBoqvgMdroHhOnMvPNkQTv+UuxrDOz
	LsLRpgnhSQRviutYYtdgzF+cac8qXMA/NZMFKG7twV5rMVNExgxfSkSvHSO2Qb32m4cz
	V8xqdz4H4Tyka/0S/0KNmbRgZCP0qVx2DS04Od1WE09YosJMQl6r62hDImqGQMktqTQG
	tyRNirOE0qV0Bi3rnqSlpbp8MnvaeMr1ght6ZesZ9/8bf7e6FXhE8kDWD/7A02yVkr+D
	VpQuOnPRDl6IZMoLc6jxPItj163d7jPYqNzTFXmhIg2dYeHsl/mx+9gm/495f/C1Tm1f
	2abw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=HhQNeZQxDb0996abXDHfFgf65bFG6l12+fBn3hGcCV4=;
	b=R0j7LH96s9Q55/RiskU2V9wxKB+mEB2RrXf9YLplHcKHEb++GSCwvCY74PwnzPXfGQ
	Wwg2E2QUDgjbu0ldObT7o9HVN7JR1KmmPFpkbZmJZ6698O32gbsjIcDapYFCc1O2z8Qo
	9L4mV7J5CRY48QQ3JG28nF/GL46LH9f8VbPThE0oJzFv8bu7TW7cQWQgrLLipo++NeJ4
	51kRFFtjCR74a9p3sjegN7MDCb0RwSnhHTaRE3Kxh/4HxYuYgezJ826L2L4jKWOCCiiI
	diBDoEYtMcJflfIvJ0MVaW4NX7lch/wGJBVaT2d2LH7pz4sZyrM/WgmMhxw223Y+7qmM
	OThA==
X-Gm-Message-State: AOPr4FWCEw/FImd1qFxZzQUCpz9bvlP2ktcKzm/uDAChwhnbKIMdKtw3IGCG18FiKycLqQ==
X-Received: by 10.98.96.130 with SMTP id u124mr28312117pfb.28.1462852509798;
	Mon, 09 May 2016 20:55:09 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1462:b3e2:90da:dbff?
	([2601:646:8800:5a9a:1462:b3e2:90da:dbff])
	by smtp.gmail.com with ESMTPSA id u65sm192649pfa.9.2016.05.09.20.55.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 09 May 2016 20:55:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20160510033311.GA5960@pek-khao-d1.corp.ad.wrs.com>
Date: Mon, 9 May 2016 20:55:18 -0700
Message-Id: <47741541-04A6-43DA-8E27-281781BD5022@gmail.com>
References: <877ff73zh2.fsf@babayev.com>
	<20160508130617.GA14034@pek-khao-d1.corp.ad.wrs.com>
	<87zis0ifrw.fsf@babayev.com>
	<20160509123822.GA13739@pek-khao-d1.corp.ad.wrs.com>
	<87eg9bdqju.fsf@babayev.com>
	<20160510033311.GA5960@pek-khao-d1.corp.ad.wrs.com>
To: Kevin Hao <kexin.hao@windriver.com>
X-Mailer: Apple Mail (2.3124)
Cc: Ruslan Babayev <ruslan@babayev.com>, poky@yoctoproject.org
Subject: Re: [PATCH] edgerouter: fix machine tune
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
X-List-Received-Date: Tue, 10 May 2016 03:55:12 -0000
X-Groupsio-MsgNum: 10419
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EA66CEE3-3B7D-4586-8E04-58F2FFD3C55C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_EA66CEE3-3B7D-4586-8E04-58F2FFD3C55C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 9, 2016, at 8:33 PM, Kevin Hao <kexin.hao@windriver.com> wrote:
>=20
> On Mon, May 09, 2016 at 11:39:17AM -0700, Ruslan Babayev wrote:
>>=20
>> Kevin Hao writes:
>>=20
>>>>=20
>>>> Without this change OpenSSH (ssh-keygen) dies with SIGILL at
>>>> runtime.
>>>=20
>>> The ssh-keygen works pretty well for me. Could you show the steps to
>>> reproduce this issue?
>>>=20
>>=20
>> Sorry, I should have mentioned I have seen the crash with TCLIBC =3D
>> "musl" only. Not sure what's going on. Perhaps glibc by default falls
>> back to soft-float at run-time.
>=20
> Since the kernel has FPU emulation, we should not run into this crash =
even if
> musl use the hard float instructions. That is also why the edgerouter =
BSP
> can works previously. It seems a bug in musl.

it would be good if you can narrow it down. musl supports both hf and sf =
variants for mips64


--Apple-Mail=_EA66CEE3-3B7D-4586-8E04-58F2FFD3C55C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlcxW6oACgkQuwUzVZGdMxTtIQCbBOINjcGstlqykfSgRwyVLLwH
4QwAmwZutQj9jpmCwHxezjvVAil5AxNB
=rKOi
-----END PGP SIGNATURE-----

--Apple-Mail=_EA66CEE3-3B7D-4586-8E04-58F2FFD3C55C--
