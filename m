Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 488D9E00D1B; Fri, 11 Jan 2019 05:48:15 -0800 (PST)
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
	*      [209.85.222.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48077E00CF1
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 05:48:14 -0800 (PST)
Received: by mail-qk1-f182.google.com with SMTP id q1so6497527qkf.13
	for <poky@yoctoproject.org>; Fri, 11 Jan 2019 05:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=2sGCubp3UBEsS5kdiRhr/o8QDiWPxA5aBSTIwa2qeW8=;
	b=iRY0xyQZdt8vbpWJwSAZ2I1elEuI27FVSofSuIqlC1OefaJVyrhJFDRaSFRUckpdAX
	EhiWHus4iHIAZ7KjPOiQYwsytPS9BHzCbiM+xdsgCu8HmNUPZhbKOoBtGc7bt0TGmGHL
	sAbi6XO3YztdlkTj9VqcDLbSRvs5Eo2w2rK56zdcgovzWmmb9kB1Pkobs5St5Z7s1Vsr
	4HvP1SgAF4PAVY0XBe2wfvzZRwpdBnkZJ2lHHwOZEzlyPIhNgDoavYDDdPgvAZbf7jEC
	A9x8X5qIoo0quQ6pELzvGCPHDBSWqQ+uyc58ezgfTdY1jmzMgebftLpTWFvU0lz1uajJ
	NfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=2sGCubp3UBEsS5kdiRhr/o8QDiWPxA5aBSTIwa2qeW8=;
	b=iEFS9qIOy8nMorDg+VKHKg6TBsG/UV9msKAWEul5vjXGT5M9sMQEWo59rStp3vXKtF
	alYG5yfQ9wHwYkF8o0gMH5H+r7fAKf7+P+0KSRvdxQq70/3/KeiYZj1OlNXE8FjPTRxU
	vIyV+t54jvrD47mWS6QUqGYd6yPBMdSTL/gJtMNCHJ4XH9xRdLx9E2sHqtnZKzhTg07R
	tu4sXy8qyPNz7w7Gcr9YHosFtJ2+U7zareJywc3ymlfWGTBirVye1tKrk2EsAfL2/l3r
	CgwCa9GDSqrLfrPNHicj8X7aWH6n5MDlTh4gFMUui5I4gkwtnu9zXQ1SAhVhYwhGm3jV
	De8Q==
X-Gm-Message-State: AJcUukccdyQ9tyAZjrcbb/d1QRZZZZ4mXiKnKBMcVpN3gWOHSJ2PDxga
	R+PMRDNa2GTBE8pWJyEyuzA1MekLZXM=
X-Google-Smtp-Source: ALg8bN6gTZL8cdeQj9O0+xBB1dYmseM99KyjIQ8VZrmFFzUC9qPWpU9VKjS0ibq03zudS92rGQQhsA==
X-Received: by 2002:a37:a745:: with SMTP id q66mr13069598qke.272.1547214493594;
	Fri, 11 Jan 2019 05:48:13 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	c11sm36044353qtn.95.2019.01.11.05.48.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Jan 2019 05:48:12 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Message-Id: <DC8E511B-AC1A-4707-99D3-F251052ABD49@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Date: Fri, 11 Jan 2019 08:48:11 -0500
In-Reply-To: <20190108164538.4015686c@pouet.cJ>
To: =?utf-8?B?SsOpcsO0bWUgQ2FycmV0ZXJv?= <cJ-poky@zougloub.eu>
References: <F240E478-55ED-4D37-A21D-B4C33EC9F501@gmail.com>
	<20190108164538.4015686c@pouet.cJ>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: poky@yoctoproject.org
Subject: Re: systemd privatetmp and symlink to /var/volatile/tmp
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
X-List-Received-Date: Fri, 11 Jan 2019 13:48:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C11796F4-63B5-4DE8-8B65-4AEA901BD0A2"

--Apple-Mail=_C11796F4-63B5-4DE8-8B65-4AEA901BD0A2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Jan 8, 2019, at 4:45 PM, J=C3=A9r=C3=B4me Carretero =
<cJ-poky@zougloub.eu> wrote:
>=20
> Best regards,
>=20
> --=20
> J=C3=A9r=C3=B4me
>=20
> PS: Thud upgrade is quite smooth, if you can do it...
> PPS: You may have trouble building Sumo after a libc update on your
> development machine.

Thanks J=C3=A9r=C3=B4me for this insight.

Since we are still early in our development, yes, I can afford updating =
to thud. I did, it is indeed pretty smooth. The PrivateTmp issue is =
indeed fixed.

I am still testing for regressions. Already another issue I was =
expecting to go away didn't. User root's home is not what's defined in =
bitbake.conf for ROOT_HOME i.e. /home/root but it is /root in systemd.

I will send another thread for that.

Cheers!=

--Apple-Mail=_C11796F4-63B5-4DE8-8B65-4AEA901BD0A2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jan 8, 2019, at 4:45 PM, J=C3=A9r=C3=B4me Carretero &lt;<a =
href=3D"mailto:cJ-poky@zougloub.eu" class=3D"">cJ-poky@zougloub.eu</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><span=
 style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Best =
regards,</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">--<span =
class=3D"Apple-converted-space">&nbsp;</span></span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">J=C3=A9r=C3=B4me</span><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">PS: Thud upgrade is quite smooth, if you can do =
it...</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">PPS: You may =
have trouble building Sumo after a libc update on your</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">development =
machine.</span></div></blockquote></div><br class=3D""><div =
class=3D"">Thanks J=C3=A9r=C3=B4me for this insight.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Since we are still early =
in our development, yes, I can afford updating to thud. I did, it is =
indeed pretty smooth. The PrivateTmp issue is indeed fixed.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I am still testing for =
regressions. Already another issue I was expecting to go away didn't. =
User root's home is not what's defined in bitbake.conf for ROOT_HOME =
i.e. /home/root but it is /root in systemd.</div><div class=3D""><br =
class=3D""></div><div class=3D"">I will send another thread for =
that.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Cheers!</div></body></html>=

--Apple-Mail=_C11796F4-63B5-4DE8-8B65-4AEA901BD0A2--
