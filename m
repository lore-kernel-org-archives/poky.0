Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66D39E00C28; Thu, 17 Mar 2016 09:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE9F9E00929
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:40:57 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id n5so127594214pfn.2
	for <poky@yoctoproject.org>; Thu, 17 Mar 2016 09:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=lTm5vkn+OL5G95vsDrR3mkKHhYrzp17SaiiuClyB6tw=;
	b=XPo3rC0TidQVWesKRP3IoWx9m2py9m2lK/nSmXPC7m2xHBMXuHk+VT01xPsaPrcoZF
	I5W+wJhsV0EinkC0+F7ImoeIniQueOFouPv6PzRmccIe/K8VR2BCJzTEV88c8Fl9g0a5
	4/E1zYohI8ZZ1nqBoacqMELlS2X7CR+0430iqfKRelO4D/RldRIPhVJhgjrLLNEwieVO
	fwBQtrvNYOfpvavsb3lfSW9c/emFVuLAayAbl31DE8V1fwzK13EyaGHHl665tIQ5d7JG
	wbEVPO/WKJDxJe1BotGF/9xFRB/9chkEPQK/yW3Mhbs7xd6xw69AqlCbYiLL6ozxFhpU
	FQvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=lTm5vkn+OL5G95vsDrR3mkKHhYrzp17SaiiuClyB6tw=;
	b=XlmjETAdXHCqPZ6hPtxinhmOlCJaYuia5ApD6v5oQ1WJc9gb+1oI9Lz202Dg+QCQgn
	+8EQwKOODREUUU9MS1R01NJ1CEYuGhYfJGF6O1KE2Rpb9URVqjbvqZVCPZMY6ShHpDN6
	y324z6bs94wKNXLkCu/Huq/ijlTPZBKBLblbtTUHTAY3TQTdYj2WwgnSN/3I/aocXfAN
	Wn5XXJddeQc6sFP4OWBgIgQVR1LjpsRTrdkkwmBeqvc/YXr3FzRhawU8GHFFRebqatfO
	rNMuUA7PFz8Pj1GJov/uV3RnTt9A3ozCn5V/YV5oLF78vkQl5dApy+6GTAyCk0raZ6Y3
	hAjA==
X-Gm-Message-State: AD7BkJLCjEU9QbVon1PKwRspc0njSP7NByA7+tEfFs/Ss31gZMWTlxvadBz+/EuhQBxmug==
X-Received: by 10.66.250.199 with SMTP id ze7mr16384180pac.103.1458232857056; 
	Thu, 17 Mar 2016 09:40:57 -0700 (PDT)
Received: from [10.234.78.1] ([50.141.35.53]) by smtp.gmail.com with ESMTPSA id
	sj4sm14550188pab.43.2016.03.17.09.40.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Mar 2016 09:40:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LZWPxU4q84Vt-YBNhbf2ga6eTrdA4OgnL4hoYJH3Su5KQ@mail.gmail.com>
Date: Thu, 17 Mar 2016 09:40:51 -0700
Message-Id: <254F6BAF-4C4B-4D9C-9D78-98369D69C1A4@gmail.com>
References: <1458227722-28660-1-git-send-email-nick@leverton.org>
	<A288F972-E86D-4135-910D-D4743DC6D603@gmail.com>
	<CAJTo0LZWPxU4q84Vt-YBNhbf2ga6eTrdA4OgnL4hoYJH3Su5KQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3112)
Cc: Nick Leverton <nick@leverton.org>, Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] lighttpd: fix /usr/lib/mod_cgi.so: undefined symbol: chunkqueue_written
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
X-List-Received-Date: Thu, 17 Mar 2016 16:40:59 -0000
X-Groupsio-MsgNum: 10352
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8234286A-B6F7-4D03-96C1-CD5BAA1D20B8";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8234286A-B6F7-4D03-96C1-CD5BAA1D20B8
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DCED4855-EB22-4EE5-9CE7-E563C476BBEC"

--Apple-Mail=_DCED4855-EB22-4EE5-9CE7-E563C476BBEC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Mar 17, 2016, at 9:39 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 17 March 2016 at 16:33, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
> I think a fix should be accompanying the removal, otherwise we regress =
on memory issue.
>=20
> The bug report that accompanies this patch (#9289) states that the =
memory problem isn't fixed upstream, and this patch is broken.

ah ok


--Apple-Mail=_DCED4855-EB22-4EE5-9CE7-E563C476BBEC
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><br class=""><div><blockquote type="cite" class=""><div class="">On Mar 17, 2016, at 9:39 AM, Burton, Ross &lt;<a href="mailto:ross.burton@intel.com" class="">ross.burton@intel.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><div class=""><div dir="ltr" class=""><div class="gmail_extra"><br class=""><div class="gmail_quote">On 17 March 2016 at 16:33, Khem Raj <span dir="ltr" class="">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank" class="">raj.khem@gmail.com</a>&gt;</span> wrote:<br class=""><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=":wz" class="a3s" style="overflow:hidden">I think a fix should be accompanying the removal, otherwise we regress on memory issue.<br class="">
<div class="HOEnZb"></div></div></blockquote></div><br class="">The bug report that accompanies this patch (#9289) states that the memory problem isn't fixed upstream, and this patch is broken.</div></div></div></blockquote><div><br class=""></div>ah ok</div><div><br class=""></div></body></html>

--Apple-Mail=_DCED4855-EB22-4EE5-9CE7-E563C476BBEC--

--Apple-Mail=_8234286A-B6F7-4D03-96C1-CD5BAA1D20B8
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbq3hcACgkQuwUzVZGdMxRDsgCeKwDPYraD4s0LcU+gKGm24Uxk
t1sAnjjqEoTNT3K3WItSKwuDmKZj8wBA
=qUfw
-----END PGP SIGNATURE-----

--Apple-Mail=_8234286A-B6F7-4D03-96C1-CD5BAA1D20B8--
