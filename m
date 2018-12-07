Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BE42E00C6D; Fri,  7 Dec 2018 01:42:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B5A4E00C4E
	for <poky@yoctoproject.org>; Fri,  7 Dec 2018 01:42:33 -0800 (PST)
Received: by mail-ed1-f50.google.com with SMTP id f9so3165492eds.10
	for <poky@yoctoproject.org>; Fri, 07 Dec 2018 01:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=btMLX7M3omuanidqmQ1+ZI5FwccpTMutF3Y1+7OaFx4=;
	b=JRIzlEvLS+UHW0Pao5NPxcb4hf1OORVCRjwixZZck3IApsZzljymlPczS74uktiMhy
	C0/DfM5kBsrhL/KA0sDfaSJX0u+Sk24st4CON+WFvzG/HU8IQu5JMQCayVos7XDdcA+F
	uYdkvUhMiRG+jmpWUMl15/+8MG2JV9jm/HxAeTTuPuex6IT10FW45zIXkYKIpA2H4kNQ
	ZZR3tfgb9iVF0pIamBaiMUEXaIt0YiepARV/zKIKJ4l9ta/KlcU7oeWT5Xmk5ajFIpN0
	COHdclB7sLPIpbipyAmeyPyZi45m4m8UuxbFJXbENJDm0YpmnmWIe2fb7duIRWRdwanT
	Vjlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=btMLX7M3omuanidqmQ1+ZI5FwccpTMutF3Y1+7OaFx4=;
	b=HT3iRzRtJ73toUKeCn27uN76gcwY3S539532lYy1h/1gs7SEfrNgxEd43jNwbMIOSE
	oVeV0nSbaEZwFbzPCcnfynFXVnyDVltslXCM6qQApERxwXq4bDS5aj7K4rBTmFBZNaTs
	4pOm7abMaNyIOERfgCsbFpiKGmeNhAk/yxtfQRMVaKjBjmEu89NknEvjnDLXF/kdGvfF
	leosPyJb7bsW+nXXtFs7RtHjbOr2I1Ny1P79B9rkA1HQppAtQ4+IWu3AsvD9f8EbdI30
	dV6AvWzWQmjunyExqqDJect0Ui151PHKO7RaKfB+VTppJzKNl/PptxqSW46YC6k4e66r
	mvdQ==
X-Gm-Message-State: AA+aEWbUn5rREqA05xzx9zS39tgt6IT4xksic6Xw4uwB4xiODBOogLem
	MnAHk7ZetOTrwIV24HzHWYXzUUK7iMQtj+FYiBmk56x3
X-Google-Smtp-Source: AFSGD/X4PMcxS3srFfhljaBbMZP6rh3cK2MHAvAvUNgSDRURVNwS+Z8lFjPReg3SSqR+Mhp5rfqm8YjO7WPpSGYXSqY=
X-Received: by 2002:a17:906:4d41:: with SMTP id
	b1-v6mr1389361ejv.171.1544175752432; 
	Fri, 07 Dec 2018 01:42:32 -0800 (PST)
MIME-Version: 1.0
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Fri, 7 Dec 2018 11:42:20 +0200
Message-ID: <CADnUhn2TRDD8623A6SwPGP7RP4sc7uhSxNbTz6S0NDDqJwJtiw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: nspr-4.16-r0 do_package: Function failed: split_and_strip_files
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
X-List-Received-Date: Fri, 07 Dec 2018 09:42:35 -0000
Content-Type: multipart/alternative; boundary="00000000000031d102057c6b6f3b"

--00000000000031d102057c6b6f3b
Content-Type: text/plain; charset="UTF-8"

Hi!
My build stops while packaging nspr-4.16-r0 do_package while executing
split_and_strip_files.
I try now building Poky based image using docker container (crops/poky). I
already had to add HOSTTOOLS_append = " svn " to get SRCREV = "${AUTOREV}"
statement work that I did not need in direct PC installation.

Could this also be something resembling i.e. something related to host sw
because I have not had this problem in similar set-up with same PC but
without docker. In fact there I did not use repo system but just checked
out layers manually.

Poky revision is 68a612b7d31d270348ef5439d7f779c309bdb6ec. It is supposed
to be "rocko" tag, but I'm not quite sure what repo took. Git does not
report any branch. Repo set-up was:
  <project remote="yocto"
revision="90414ecd5cf72995074f3dc6b05cfbee0a1dab67" upstream="rocko"
name="poky" path="sources/poky"/>

I hope someone can guide me with this problem.
Thanks,
Matti

--00000000000031d102057c6b6f3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi!</div><div>My build sto=
ps while packaging nspr-4.16-r0 do_package while executing split_and_strip_=
files.</div><div>I try now building Poky based image using docker container=
 (crops/poky). I already had to add HOSTTOOLS_append =3D &quot; svn &quot; =
to get SRCREV =3D &quot;${AUTOREV}&quot; statement work that I did not need=
 in direct PC installation.<br></div><div><br></div><div>Could this also be=
 something resembling i.e. something related to host sw because I have not =
had this problem in similar set-up with same PC but without docker. In fact=
 there I did not use repo system but just checked out layers manually.<br><=
/div><div><br></div><div>Poky revision is 68a612b7d31d270348ef5439d7f779c30=
9bdb6ec. It is supposed to be &quot;rocko&quot; tag, but I&#39;m not quite =
sure what repo took. Git does not report any branch. Repo set-up was:</div>=
<div>=C2=A0 &lt;project remote=3D&quot;yocto&quot;=C2=A0=C2=A0=C2=A0=C2=A0 =
revision=3D&quot;90414ecd5cf72995074f3dc6b05cfbee0a1dab67&quot; upstream=3D=
&quot;rocko&quot;=C2=A0=C2=A0=C2=A0=C2=A0 name=3D&quot;poky&quot; path=3D&q=
uot;sources/poky&quot;/&gt;<br></div><div><br></div><div>I hope someone can=
 guide me with this problem.</div><div>Thanks,</div><div>Matti<br></div></d=
iv></div></div></div></div></div></div>

--00000000000031d102057c6b6f3b--
