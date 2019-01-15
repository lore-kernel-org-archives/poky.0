Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DFF1E00CF4; Mon, 14 Jan 2019 17:08:56 -0800 (PST)
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
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ADCDE00872
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 17:08:54 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id t13so1295469qtn.3
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 17:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=tnxaQOn0Kuwm6hTpSjkOJF8r+XmwHKh47a+tyduHAA0=;
	b=IekW1j4BoOh5kASuTVC6yHc+YR/NzHupCqYxZWraMyhjMT1XXi4SHrkucyfdfKnIYh
	LTCxVgAsE3khg+w13QkjrbMj9F4ViVIRgTeKYXT/0uKIH0UqfFsUDZiGQjBx86WyRw5S
	a1OE6Vf5eAacxCDmGnCWpYZsxmDynNy3zvWPVlgOb55y4n6IbREOH938Fninw427yzHR
	zoYjXqU77j6Uik6gx25dmBQkaONZc9fXUyIk08ROFgZNaytKvOfXa6o3Pl8qhlsRYm3K
	+9q8GTZ3qFkoccjqW9bSJ5Tj0/CLLdsYZraKCkDj6VfpkwWSvBlIdDHBkKnKOi4t3UpI
	Gm+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=tnxaQOn0Kuwm6hTpSjkOJF8r+XmwHKh47a+tyduHAA0=;
	b=DqDz/cvvV3xVvTdFS8DNrtrGETabb4pv5/jUFdgRLBcrqEiXfu03W3ANsaKSQbSJxa
	sfvg7EMl1vK+jy3SttA5mM7Awo+HUYH9Fn/jRuPhNi7PnBsxxz2aj4brUisgQSMErY7f
	JvO/++5i9g8vkEJ1WeZapk6Mod1uIZ0y5oKl6QT0oiOZr3+9CvoDmKPW8gbs8L8JH/cK
	vmLILefrB2ygGfu7rrV39X+duxpOzQWhGwxMvHUk6YZ9wvC4ibHyQCEIxpaKJHeJfA7j
	cEDsyS1fe5CE3fgIuGWKhV1o4pnc5Zn0kPbueL2jPOjc8TmhePtdwKmZkgtidlyqHJ4s
	qNOg==
X-Gm-Message-State: AJcUukfEOsgQiy8NM/1vhwSmk/qFqtI2n8asLBx1zW+nkVaamwMhl5P4
	Kgzdi0a/plaZZb0ZAESra/w=
X-Google-Smtp-Source: ALg8bN4YxduhZRddmoL7qtUMreJ+bKwdC/JHc5GDixk3i2YPHra8JxeMwXZAE5KFmt4JadhcsPaPVA==
X-Received: by 2002:a0c:d40f:: with SMTP id t15mr1008748qvh.117.1547514534401; 
	Mon, 14 Jan 2019 17:08:54 -0800 (PST)
Received: from [192.168.100.201]
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	x5sm51253314qtc.43.2019.01.14.17.08.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 17:08:53 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <68FFED83-260C-43D6-949C-E50283EA5BDD@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Date: Mon, 14 Jan 2019 20:08:51 -0500
In-Reply-To: <CAJTo0LY90e53Q1yQoqzYdC6V4Vo25eE99j5yeET+pmRAPDDSjA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
	<CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
	<40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
	<725EBE10-0967-4DE2-9116-E3C5EEE4582C@gmail.com>
	<CAJTo0LY90e53Q1yQoqzYdC6V4Vo25eE99j5yeET+pmRAPDDSjA@mail.gmail.com>
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
X-List-Received-Date: Tue, 15 Jan 2019 01:08:56 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_95C738B8-A2EE-49F3-BADD-3AB69097DDAD"

--Apple-Mail=_95C738B8-A2EE-49F3-BADD-3AB69097DDAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jan 14, 2019, at 19:42, Burton, Ross <ross.burton@intel.com> wrote:
>=20
> If you're not going to fix this, could you please file a bug in =
bugzilla.yoctoproject.org <http://bugzilla.yoctoproject.org/> so this =
doesn't get forgotten about?
>=20

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13141

Sorry I couldn't do more.=

--Apple-Mail=_95C738B8-A2EE-49F3-BADD-3AB69097DDAD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jan 14, 2019, at 19:42, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">If =
you're not going to fix this, could you please file a bug in<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://bugzilla.yoctoproject.org/" =
class=3D"">bugzilla.yoctoproject.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>so this doesn't get =
forgotten about?</div><br =
class=3D"Apple-interchange-newline"></div></blockquote></div><br =
class=3D""><div class=3D""><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13141" =
class=3D"">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13141</a></=
div><div class=3D""><br class=3D""></div><div class=3D"">Sorry I =
couldn't do more.</div></body></html>=

--Apple-Mail=_95C738B8-A2EE-49F3-BADD-3AB69097DDAD--
