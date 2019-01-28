Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFE5E00C75; Sun, 27 Jan 2019 23:03:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33014E00B5C;
	Sun, 27 Jan 2019 23:03:54 -0800 (PST)
Received: by mail-oi1-f196.google.com with SMTP id w13so12165231oiw.9;
	Sun, 27 Jan 2019 23:03:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YVWSLaElrPrzIsMF+yTdb3wjd/oOZgqFWVXGHB0Gr0Y=;
	b=lCnmqAAlQ39/KtUAAwb2Bu6RUdn0wvHMg4zS9G8U21d3wxSVSjVUU66jkMF3hnOeQi
	eCh46h4wLnjdRgh2mae9cFiWVVbqcXFYbNo0EoSigecV/umVYWqSSFhpsdhalWA16EHq
	g90004Bhk+la4mD9vLe1pDj/SYYhf3MYVJMOM3sI1kRCHN7PQHXkdsN4/EFJS5cHtsGR
	Uk6traqlUFJblcDqjGY0lQ9KwVHDyDO59/JcnWoFG9IIka9J6BnFItuBqj5RSDYe872E
	wQfR8Xt/ZiUyylEY9hd0zVfhCmqHItiJ3XmPNYpfo9/zAzqpQjmJ3P3VpEkoibrS/91/
	Hokg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YVWSLaElrPrzIsMF+yTdb3wjd/oOZgqFWVXGHB0Gr0Y=;
	b=gwXkrktrjaQ6SUVplPLtUbWwfZDnKpDhIiIAXv2/sd6V9W8/YEijRLShAx7aDWqGRf
	ehZLuMxXx1JE8k8jDYn2tN6zhF8yciXj0WDDITSQlhjS2RL0+tlZQclCws9eWDthHX/a
	mKpD+1e2JD6Plc7DgwkGOPceqfx+NPk2DoWLql5YHxhQoPpLl8xskLSxLsTfhwfObshI
	6aReBtpYTcHIeXxAB2BnvXkVRff9OIuYnt2YnvLK9XqOEykg25fhHMOrCjJ6gfZjpuFG
	c1Zs5Jac30VaXNwe4CNaP5s1IaQcdmYnHRJ7aNKRBiLySoiY7H8nGJZB3CBYCkuy/dgJ
	LwDA==
X-Gm-Message-State: AJcUukeEns/8g2QE+Fv4crnnHN09UJANBMROjU9yfnCjVRbBDVXAAKXC
	F9ZamAIsRP6IgyDXCtC/OrJpD7jDYX+nTf01mcwYHA==
X-Google-Smtp-Source: ALg8bN4kQWRt+BnTmbE2zO0UHn+dTCl2t6b4v7KWiCaXRxcLfyk0ISyBZpRG5ydLqQDYqWEROaXurIKdmX1lzEypu0M=
X-Received: by 2002:aca:4d3:: with SMTP id 202mr5505149oie.345.1548659033295; 
	Sun, 27 Jan 2019 23:03:53 -0800 (PST)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Mon, 28 Jan 2019 15:03:41 +0800
Message-ID: <CALd6x_uvR57xrXKkxZi+Y_fLZXLcziEMsS_nyguJrnNymHeA-w@mail.gmail.com>
To: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: Bitbake Issue in Yocto 2.7 M2 rc1:
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
X-List-Received-Date: Mon, 28 Jan 2019 07:03:54 -0000
Content-Type: multipart/alternative; boundary="0000000000008ed0eb05807f47fb"

--0000000000008ed0eb05807f47fb
Content-Type: text/plain; charset="UTF-8"

Hi Team,

While running bitbake command, I'm facing issue as:
Error: OE-cores config sanity checker detected a potential
misconfiguaration.
Either fix the cause of this error or at your own risk disable the checker
(see sanity.conf)

Does the issue is in the build or in my system.(I have run in multiple
systems)

--0000000000008ed0eb05807f47fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Team,<div dir=3D"auto"><br></div><div dir=3D"auto">Whi=
le running bitbake command, I&#39;m facing issue as:</div><div dir=3D"auto"=
>Error: OE-cores config sanity checker detected a potential misconfiguarati=
on.</div><div dir=3D"auto">Either fix the cause of this error or at your ow=
n risk disable the checker (see sanity.conf)</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Does the issue is in the build or in my system.(I have=
 run in multiple systems)</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><br></div></div>

--0000000000008ed0eb05807f47fb--
