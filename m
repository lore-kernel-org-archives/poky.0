Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11486E00DD7; Fri, 11 Jan 2019 07:53:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D828FE00D57
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:53:32 -0800 (PST)
Received: by mail-qt1-f179.google.com with SMTP id r14so19342314qtp.1
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 07:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=1QpzkLSdk/hOSkLVYHH7tAs1i89ZoKnc7KRhDemLsd4=;
	b=KnxR6FNEQEwbHT4070xloU3bQjUdmKbRu7nNe6fasuPle/KbVlAddHyoBfzjgrnLZI
	ZXPlRqx/oEXuYPYGufPWvLJSB+yrrmMwE6sTooI6RpIyBZdTNWPjKq6oBkA6xy3rTPLA
	x2/7rSQNs36CDpTtlQvUGQ3qYU8qIm18B719nlrYsMLkAl7DXhqEN0MvBsd7tAYCKnEH
	BdWErkQG73HZN6OK1QJt0wYXM9LPQkAqJ7bkFKmKoLWzQPrh2IYNLcKaoKmwt4TsE3t6
	x5OfzCz+2/6jf4VVNr8ZMGiijPPhXGEb3+EpceJUn2XemQiWj9vnySc9xDRuP2BJhYwL
	1tfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=1QpzkLSdk/hOSkLVYHH7tAs1i89ZoKnc7KRhDemLsd4=;
	b=Z0DBku/FTzkmqnMk1retJdiQvNlB+xeP3FFAfJw3xl6bNBbxpUdtMRDxRSynESJgm7
	wqpdz6tTw0dj45mZZPiNaWvodvHYCNK6NRK59ldXna2Y51fI5bPakDjwJOZY+QFOVyCf
	paNLnWmkEU8nF4ICS9SBg48lLUf+nGi4vwwh9PaS38jSc5FZ0BkvmcLXEj3dHl5kSx8E
	cwHESD3lYamTeNuC2aBPZ5pfQwATa+OuaHz8P+GQY407nk8Dgo9OUaTQRrhvcVx/pibJ
	QxXUOpj9jzOel6bwxcZr1N4VNf//SMDXu0bew/H9LibQLFB5YNXXkdU2XW8AY8XIGnfh
	diww==
X-Gm-Message-State: AJcUukeY9RihrIVhnf7TwS7Sz9DXP74rPzuGCCZ3x8wfu4IFY34qfpLS
	Xay18kvRrlUM0sXkZWU409w=
X-Google-Smtp-Source: ALg8bN6tQT+Ost2oBW/Y2ETPGlh1D1aI2PmHZ31F/DG+oNIFWU9EcXzCSVbqZVslZ9l/f2MQhAwv1g==
X-Received: by 2002:aed:242e:: with SMTP id r43mr14597117qtc.128.1547222012150;
	Fri, 11 Jan 2019 07:53:32 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	n71sm21849269qkl.72.2019.01.11.07.53.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 07:53:31 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Date: Fri, 11 Jan 2019 10:53:30 -0500
In-Reply-To: <CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: thud systemd root home wrong
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
X-List-Received-Date: Fri, 11 Jan 2019 15:53:40 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_98B8DEDD-DF6A-4C5C-A182-869E5D12902F"

--Apple-Mail=_98B8DEDD-DF6A-4C5C-A182-869E5D12902F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 11, 2019, at 10:37 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
> Sounds feasibly, patches like that maintained long-term do suffer from =
bitrot.  Would you be able to dig and fix this?

I will give it a shot yes, stay tuned. Not at all familiar with the code =
base, any hints? Or maybe all the hints I need are in previous (pre rot) =
versions of the patch?=

--Apple-Mail=_98B8DEDD-DF6A-4C5C-A182-869E5D12902F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jan 11, 2019, at 10:37 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Sounds feasibly, patches like =
that maintained long-term do suffer from bitrot.&nbsp; Would you be able =
to dig and fix this?</span></div></blockquote></div><br class=3D""><div =
class=3D"">I will give it a shot yes, stay tuned. Not at all familiar =
with the code base, any hints? Or maybe all the hints I need are in =
previous (pre rot) versions of the patch?</div></body></html>=

--Apple-Mail=_98B8DEDD-DF6A-4C5C-A182-869E5D12902F--
