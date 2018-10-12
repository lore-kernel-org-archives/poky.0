Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A5A7E00B23; Thu, 11 Oct 2018 22:39:16 -0700 (PDT)
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
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95AC0E0090C
	for <poky@yoctoproject.org>; Thu, 11 Oct 2018 22:39:15 -0700 (PDT)
Received: by mail-oi1-f175.google.com with SMTP id 22-v6so8990272oiz.2
	for <poky@yoctoproject.org>; Thu, 11 Oct 2018 22:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GbJvUj39K6anzF/tpQhHIr+JgjMlq4YT7JoEr6wY0nU=;
	b=Zyj+ujuOpThCF/i/OUimptpOXG+8vYbVSRmOiy39VbE+sPPmUFMLKXgN9X63+JKq/z
	UGAzzRHIrtmaGdmfsodniCPLLSyEyR4r+RFVwRxKHg/tFv7/2EdPvOYAg2oG9lPU2Nf9
	GhCEdBcaEZJVmZRPbCdUrOfxTJlfiz/4TR/ge5fnqiNinXc34Wn76+9nuafxvJq9Y3O5
	ln1CoU3qth+agXzWVGi4M4TK2KwNmixCjMiqXx+cYyXdLdCgqqBZzt0YSwWItaNq0520
	JVh0m8mJ7gypWl3DsmmSzlYEpGKmy15fDiR1TcrGu5rTttj7HoHDR/sZvspbmfPiWb01
	4ONw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GbJvUj39K6anzF/tpQhHIr+JgjMlq4YT7JoEr6wY0nU=;
	b=KjNW83n6C9xVE/HPKXK2IlNw9y0x/ob19kG8473rNJYxsb9pCv3/weQBHpobG6e+9r
	7EG2R5TGhRMQ/HpWxkZioyNzjvRBaqsrpTLiyiUmfzkZMRHgqIIekhcw5VUHm0FsE7y8
	s7c7fWvCVNjyDBK7hRpfrS3/solGBqZMDpecNrHMCfrXl9OBI3dYGS+L3XyuhtWRAJZ6
	2sSLy6H2UY2rdi8F/ZG9X/fShMsRWwNJiEpDhaUIIyhDO8Ml88qKabImK3hUV6v1vM/s
	Ope1KNe8/4bnu/9Yz84bm1rFlqs/EEw+zNJxRjHNMiQVJx/XFuMa2ZZBDRsY5ec8GXZQ
	ML5w==
X-Gm-Message-State: ABuFfogffA48s3nU2YYhwrrvqMOn3LUkSiXWOhfZAueOCDdh9+OTkwz4
	zfO/c6UswAc+FkMBg8bevOwy3G/lPFr4rVluC20Cdw==
X-Google-Smtp-Source: ACcGV63yWkgEWWQNO8PqgRQBZ6FFlbC6hBLbu/8h6Y7A7GRnn3tj0McUYp+Q5ezHDuhmLuIyLKWsoYjeHp68iB4iWdU=
X-Received: by 2002:aca:4454:: with SMTP id
	r81-v6mr2367844oia.248.1539322754769; 
	Thu, 11 Oct 2018 22:39:14 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Fri, 12 Oct 2018 11:09:03 +0530
Message-ID: <CALd6x_u=sexRvr0RKjcBZABVW5StS+HzUGby7BRi5KCR9LzMYA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: PACKAGE EXCLUDING in build:
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
X-List-Received-Date: Fri, 12 Oct 2018 05:39:16 -0000
Content-Type: multipart/alternative; boundary="000000000000fe288e05780181a2"

--000000000000fe288e05780181a2
Content-Type: text/plain; charset="UTF-8"

Hi Team,

I'm trying to exclude packages by adding a line PACKAGE_EXCLUDE in
local.conf but it is not working.

Can you please let me know how to exclude the packages that are installed.


Thanks,
Kumar

--000000000000fe288e05780181a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Team,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#=
39;m trying to exclude packages by adding a line PACKAGE_EXCLUDE in local.c=
onf but it is not working.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">Can you please let me know how to exclude the packages that are installe=
d.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thanks,</div><div dir=3D"auto">Kumar</div></div>

--000000000000fe288e05780181a2--
