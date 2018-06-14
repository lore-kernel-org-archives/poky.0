Return-Path: <evd16i006@iiitdm.ac.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CD0DE01F0E; Thu, 14 Jun 2018 01:24:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.52 listed in list.dnswl.org]
Received: from mail-pl0-f52.google.com (mail-pl0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5AD8E013EB
	for <poky@yoctoproject.org>; Thu, 14 Jun 2018 01:24:13 -0700 (PDT)
Received: by mail-pl0-f52.google.com with SMTP id 6-v6so2576541plb.0
	for <poky@yoctoproject.org>; Thu, 14 Jun 2018 01:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=iiitdm-ac-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=SxbaFKyuy0PBokv+W1h9CwpX+yI8ifF5ipdREedEE24=;
	b=SW6bQqKP6YHQc+orM7uRee/h0r6PLbDm/wqKIVDQlDs/eDyWxvG8HuU9ootz008WW8
	tAcIW3B2CDGYV1zEzZOq3BZHiHUkaGeAVknj20Tg6nW8xAmlkqoNfLZb7xPz7MKdx2Gd
	SdUOuSEasnCMtQujphAzC4J5oyYF4ULSKdP00MmcegQY8tub+nNiAIpaj9YQ1ysF/Ukj
	uLnvFUXb63dkfujpMD3EM9Kz/x9wFz0m4ZH4xblC0raies0ANiuUZwMEHGykSk1CyPfm
	i2o+iKg+tysLPfvryF2YGI/P9JUbLCQPXmn17poMWmC+XAnsir+dpZnxU9tb0fmFPjg3
	5Spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SxbaFKyuy0PBokv+W1h9CwpX+yI8ifF5ipdREedEE24=;
	b=iAOoYVW1RyUHXXC2u2WQOaC+g26Zbiy7YRTsnZq2YJJDU8FvAMqqHOou8zaDXxyGmz
	HuKiytXIGaoi98ePaVCNVqR8EN7+PXkz1Cz2muA1wi/1O+JRWxJNDP0s7sZCGyjOInlJ
	inlIj0osCx9iBXBwQhhdzB4zaGXoQco1KZwcfjiK8jPXSpjUpMimBiyBuIq3wQ4iF8nk
	dnJRNiS1Q5i8aFjkyfhBwUUj+RTqIgYe/TfPFYQ2nE1Rs6YHvYHYMBvKZG6UmPm3eJpu
	zEqg98wY/vBfL25665W81w1zH+txT+aT3DbsN10Lhdnmqr8o5AIcVi78nf2i0JuDLKGk
	6S/A==
X-Gm-Message-State: APt69E1mBvp5Q+C6gO3WyPf2I2VrsSPKfPER/eqmXdsERL20bFpNzbz1
	pV37v9+gKHgdc4VYMYk8Ysz7X9i6D0NogOI/N7fr8A==
X-Google-Smtp-Source: ADUXVKJQ6UU7O/wXYGoxl/T5fih/9uBUmmKHCXHTNjmzKnNJFGwCHFVB2gk68G+HvtLrxH+49QkSM3pgsHsbswLmgwI=
X-Received: by 2002:a17:902:bc44:: with SMTP id
	t4-v6mr1893928plz.139.1528964652871; 
	Thu, 14 Jun 2018 01:24:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:a081:0:0:0:0 with HTTP; Thu, 14 Jun 2018 01:24:12
	-0700 (PDT)
From: HRISHIKESH HEMANT BORATE HRISHIKESH HEMANT BORATE
	<evd16i006@iiitdm.ac.in>
Date: Thu, 14 Jun 2018 08:24:12 +0000
Message-ID: <CACW=nhRcgr7iA+2fxDe+VDXcwTADdnr16yGU=aBNySYhYMn3Mw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Building Poky without compressed instructions
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
X-List-Received-Date: Thu, 14 Jun 2018 08:24:14 -0000
Content-Type: multipart/alternative; boundary="0000000000000242cb056e95d395"

--0000000000000242cb056e95d395
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to build Poky kernel without compressed instructions using
bitbake tool.
So far, from riscv forum, I understood that I will have to modify the
riscv-gnu-toolchain, rebuild the kernel and add "-march = rv64imafd" flags
to run it without compressed instructions.

But, I am unable to change the gnu-toolchain.

How should I proceed ?

Thanks and Regards,
Hrishikesh

--0000000000000242cb056e95d395
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I am trying to build =
Poky kernel without compressed instructions using bitbake tool.</div><div>S=
o far, from riscv forum, I understood that I will have to modify the riscv-=
gnu-toolchain, rebuild the kernel and add &quot;-march =3D rv64imafd&quot; =
flags to run it without compressed instructions.</div><div><br></div><div>B=
ut, I am unable to change the gnu-toolchain. <br></div><div><br></div><div>=
How should I proceed ?</div><div><br></div><div>Thanks and Regards,</div><d=
iv>Hrishikesh<br></div></div>

--0000000000000242cb056e95d395--
