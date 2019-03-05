Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2A75E00D26; Tue,  5 Mar 2019 07:38:09 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A39E00CE6
	for <poky@yoctoproject.org>; Tue,  5 Mar 2019 07:38:08 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id a48so9361842qtb.4
	for <poky@yoctoproject.org>; Tue, 05 Mar 2019 07:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=B+1adui81TkP3KIWVr+VAKhV4FRPW7iQgHXaIr1zt1o=;
	b=TxGGV2zVyUNWGzBL8Fbp0phextfBsqzbsjfU9DkyOytXNjfvYCRCTd82YmkGQ9OKIZ
	ZSFNmjBngWg2wKxHHzW2ln/DhEGAbxfgroLQ0nLQzjnPs1yM3T9qrLJgLc8+p45sIY0k
	c9WEuEY3dB0VCz0T2NwQ9lvkFp0x4HMR6+dhTKaN/ZqkFPNeQh3H/Rm1FydtDy1ncbe+
	hx80CH897SFL46kcWVAoJ0oy/UphqUn9qJqPPZQ3T+yvyZf05lfdmQW62ykvCdf0kSiS
	prjtZ8F3rRn1osm9tpVU91beVuDV3Xg4icZaBCuocJfg6lyjRfB03n/AxNsjZHGw9mdN
	Ev9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=B+1adui81TkP3KIWVr+VAKhV4FRPW7iQgHXaIr1zt1o=;
	b=bQ+f8CJ/WdeOnq3wnRQ9esKvPapPCEhSSAxi36Q+wM5JCyfGNyqTMtvQNXZ1/qpjUe
	8dH7A3qWuKLTdRJLR5Q+M5O5tqz8qhhu/u2Q3ILq+yu16zBtbINW3rJq65X1+yqeAoi7
	te+VQhQ1wNJq6kKG7tFx2AYlSVzsTieHUOr3SNOQlspIncxvwlLEpIaagnKY5xS3PpTQ
	38Sx8SgzTSeiL4XFcZDTws/8f7NE9NfgIfx13HQjx6WteBw3R0As0S7+ezPLIwqNjt9M
	yxkuwTbyAiggXSVemHq8anU+9jlWcNKve73GY0qkX9Ag1Aa7p0Q34wXWvTYnnT0RMZgH
	H4ng==
X-Gm-Message-State: APjAAAUaeycjeRD4ukbqM4K72KXnDgz+cTVwJC2UMsjtQG/pfaX87tf+
	EN46totAAtbVegsO+x40HqrDLfW0Z54=
X-Google-Smtp-Source: APXvYqwozjbUpfqYOPjdrGv1qv4macQSvtORKs2AsWOG7KgsUMQNhd7MhNcN3Yk4i+rQtKAVci2swQ==
X-Received: by 2002:a0c:91e1:: with SMTP id r30mr2542704qvr.136.1551800288402; 
	Tue, 05 Mar 2019 07:38:08 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	m128sm5378219qkf.53.2019.03.05.07.38.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 05 Mar 2019 07:38:07 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <6BA75DB5-679A-4D21-A3E9-5482522AD410@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Date: Tue, 5 Mar 2019 10:38:06 -0500
In-Reply-To: <9DD11444-CE07-4C32-BA50-E20C733A7AE4@gmail.com>
To: Adrian Bunk <bunk@stusta.de>
References: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
	<20190304185937.GC1170@localhost>
	<9DD11444-CE07-4C32-BA50-E20C733A7AE4@gmail.com>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: paul.eggleton@linux.intel.com, Poky Project <poky@yoctoproject.org>
Subject: Re: /usr/include/libnl3 or /usr/include
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
X-List-Received-Date: Tue, 05 Mar 2019 15:38:09 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A77B99F8-2A33-4859-871F-C5BD54FFFE03"

--Apple-Mail=_A77B99F8-2A33-4859-871F-C5BD54FFFE03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

clue...

> On Mar 5, 2019, at 10:32, Jean-Francois Dagenais =
<jeff.dagenais@gmail.com> wrote:
>=20
> I tried many variations of pkg-config use inspired by all the examples =
already
> present in poky and meta-oe, none worked. I get=20

I got it working with this in my recipe (global scope):

CFLAGS +=3D "`pkg-config --cflags libnl-3.0`"

I still don't get why wpa-supplicant_%.bb works without this.=

--Apple-Mail=_A77B99F8-2A33-4859-871F-C5BD54FFFE03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">clue...<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Mar 5, 2019, at 10:32, =
Jean-Francois Dagenais &lt;<a href=3D"mailto:jeff.dagenais@gmail.com" =
class=3D"">jeff.dagenais@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">I tried many =
variations of pkg-config use inspired by all the examples =
already</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">present in =
poky and meta-oe, none worked. I get<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""></div></blockquote></div><br class=3D""><div =
class=3D"">I got it working with this in my recipe (global =
scope):</div><div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D"">CFLAGS +=3D "`pkg-config --cflags libnl-3.0`"</div></div><div =
class=3D""><br class=3D""></div><div class=3D"">I still don't get why =
wpa-supplicant_%.bb works without this.</div></body></html>=

--Apple-Mail=_A77B99F8-2A33-4859-871F-C5BD54FFFE03--
