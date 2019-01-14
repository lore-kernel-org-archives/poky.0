Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A07BBE00CFB; Mon, 14 Jan 2019 10:18:36 -0800 (PST)
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
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BD27E00CE0
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 10:18:35 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id l12so27602299qtf.8
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 10:18:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=q74Fths0H4IrSn6wqC8tchWrWstVOYXYf0es7jox8wo=;
	b=Vf8ZvHTyd1mCkkuDwai8HoOjVubo4CkE6ke/RhzSL6ylWchx5VL5nlpr2qjVhbl2DR
	DMOSrMZSirxn0okVeSH8dcRDkp0SkxVOL+gzjS/KWEY3kFhAEO88UYFedFfqxujFd/kc
	6Ejk4onNzHQehgXrjHYTu9fEC/qfCGjJ8dr15YQTVsXJNJaFOsDVkbEivQqmNenSfCFt
	uMEqXQK6y0Yy0RP5bhP7mgvUkoOUK3VMeiaxvQNTsRkdJ0HqCvbeKLsyM7V0Ry9SyDnt
	SjXh3Ldjy4dvVIG1C9Iye3Mi8efkBhK26p72ukFfL/tukZtSkeBq//YQwnLxZiTpJftn
	dLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=q74Fths0H4IrSn6wqC8tchWrWstVOYXYf0es7jox8wo=;
	b=XaFA7VHw4JWDs3++7wF+A8K1HdyyMzVSLyRxlck9XZLr81N0abPNUyJlPRrl4zpx3+
	UltjRfpCSHJ+W+9Ack4ztcurfqemtyUEG89ZpBwL32sp6ClI0w+Y0/dg6Z5jwCLSjxFn
	dZdsu5xfm5ggk0G/fvV2rbHJnf1FkXSdxXFSNLLypENM+vbPr4LXE0ZyCAs35g0NrMqI
	Wte29FejLixCpZpWk3aNiiFrjJvxwkMeqVx5u1PhceANEyWzlQegU9BY6zhVV3r5zDiO
	83Qw4GFjL5C5Brf37SHrw1gkJ1AZ4B+qbj5QGGmCm1nEMhISTp/iL9JmOjZsRx5GbyVs
	rhZw==
X-Gm-Message-State: AJcUukcBN7LAmuJ8dG/1gb8vRkg2YCA+Bjk8KfVTaEsM4dXnSoVzTAsK
	DHqRIPXCZptQIk9sETr2D1k=
X-Google-Smtp-Source: ALg8bN61OF1J+IVkC3KH6NUGslMcKE6CpcBXOWKz4cOWBs19l7Qud+wLYwIhWYqxkO1Gd3v91siAzg==
X-Received: by 2002:ac8:668c:: with SMTP id d12mr24044679qtp.242.1547489914732;
	Mon, 14 Jan 2019 10:18:34 -0800 (PST)
Received: from [192.168.100.201]
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	w34sm53505973qtj.27.2019.01.14.10.18.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 10:18:33 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <40EBB072-485F-4099-99A6-CA4EB88A2F6D@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Date: Mon, 14 Jan 2019 13:18:32 -0500
In-Reply-To: <CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
References: <4F6CA6D8-E1F6-4AB3-A481-241AA0DE3B28@gmail.com>
	<CAJTo0LbZr=iAv7zgVtNAEDkVGL=MwgvFdEJHaakOqv0AgS5D=Q@mail.gmail.com>
	<F776005A-D6E7-4D5D-BE50-A2E80A405732@gmail.com>
	<CAJTo0LZ+VnFcD0GOarDbYGXz8dLUgr0Qc6MOt_ov7jFUfApX4w@mail.gmail.com>
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
X-List-Received-Date: Mon, 14 Jan 2019 18:18:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_80672CB3-D142-4E68-A562-C6AB7CAFA558"

--Apple-Mail=_80672CB3-D142-4E68-A562-C6AB7CAFA558
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 11, 2019, at 10:55 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
> I'd just grep the systemd source for "/root" and replace the relevant =
ones with ROOTHOMEDIR.  There's probably not that many...

Were there any plans to submit this upstream? Seems a worthy mod. =
Although might not be a need for regular distros.

Should I apply this on poky/master and against v240? Or modify the =
existing patch on thud? Seems like, with J=C3=A9r=C3=B4me's workaround, =
this is not a crucial issue...

Thanks for the help!=

--Apple-Mail=_80672CB3-D142-4E68-A562-C6AB7CAFA558
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jan 11, 2019, at 10:55 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">I'd just grep the systemd source =
for "/root" and replace the relevant ones with ROOTHOMEDIR.&nbsp; =
There's probably not that many...</span></div></blockquote></div><br =
class=3D""><div class=3D"">Were there any plans to submit this upstream? =
Seems a worthy mod. Although might not be a need for regular =
distros.</div><div class=3D""><br class=3D""></div><div class=3D"">Should =
I apply this on poky/master and against v240? Or modify the existing =
patch on thud? Seems like, with J=C3=A9r=C3=B4me's workaround, this is =
not a crucial issue...</div><div class=3D""><br class=3D""></div><div =
class=3D"">Thanks for the help!</div></body></html>=

--Apple-Mail=_80672CB3-D142-4E68-A562-C6AB7CAFA558--
