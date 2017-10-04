Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7383BE00D50; Tue,  3 Oct 2017 19:38:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 068CFE00D4E
	for <poky@yoctoproject.org>; Tue,  3 Oct 2017 19:38:44 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id c67so9579314qkg.2
	for <poky@yoctoproject.org>; Tue, 03 Oct 2017 19:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=r+q7r1palp9jFQkk8q1pQtprEeClM4IhS3NmGARyzFM=;
	b=hYT3yfw9ZgB/RltFFk+/Eq6VzdAbmiXEISihluFeH730LMUOKW+HOBbZcwSM8HuElm
	4QeiOg7rePtWf7ay2Lzm0r1rVAFFnuakgdO8XGWTslTjxC/8rE3dgNq6r48kG0TIYRCb
	npUkhQrb13bSTD81e6GAvKZHlKR1xFmiEVeZZQbg+Ph0WVjRH0g8QVgwTmcTBuqV1PQj
	9tbdcJgrKjFXcT3Y5iTbr924CjrU4ktEscpZb5RD5TfwW3Yxe7IA1jOR4evhpwVGgTgL
	wCU0AyNFari7TLc5IulperFrtXlqhKtcW6guIZ66lSTC4ozmht9FxnePr7Bq2kCxNu+L
	ExVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=r+q7r1palp9jFQkk8q1pQtprEeClM4IhS3NmGARyzFM=;
	b=DCY95ZOZ+3wPUiyu+fBR0uEl8Oo2Qlp1QDnvAycKCI1onlFJUXP3/Hk4QMUdjG9fsC
	N3F/bN0bKsud3/+JW/Yjg2LWauCjbukYDrgTdmGBqBfjtL88InJhoEaqmKRL30wV9w35
	15HjJMcZ1j7xu8vhXhxZOOsNL2fFIo3GTSipcL2ZZTJWDXnIGB3p4jQuSIqXLdIbyWXb
	EJzAPphovqM0McmwkkewKNjVyeon95/0izL/s6yFMZ5ctGUSQxuGCRh3FBvkkXcLjtgm
	Xh9NcmDh/CwVQ8JX7X8xB9xRNAvFx7i7Ie0Zjb9pylx9c/UC2NM4rtaIaaMsJwa4JA7g
	5+Yg==
X-Gm-Message-State: AMCzsaWGiFbmtKCA6p3SPZ2JniXIN5HlPABX1q4yQ6TNp3SQ0o8DRLAa
	wtpuQWkU+ExFnovx6YmQH4R7pXXV54EOWVdDWHVovQ==
X-Google-Smtp-Source: AOwi7QAbNoLIRRwmUNCcBnGo8xX2jgk36wbNd+SPbdebSd89wX/vlDtNeD8qfxDNvx4BIDi4EdaOSc4vdyqWCcrHN/8=
X-Received: by 10.55.159.209 with SMTP id i200mr20445914qke.277.1507084723901; 
	Tue, 03 Oct 2017 19:38:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.96.34 with HTTP; Tue, 3 Oct 2017 19:38:43 -0700 (PDT)
From: Mark Hieber <hieberm@gmail.com>
Date: Tue, 3 Oct 2017 19:38:43 -0700
Message-ID: <CAPxJQ9HbdcmXm4fdWP4wKeHgyTEhBgy4k+eaXdSB9A5Tqu96fw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Isse adding SELINUX to my image
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
X-List-Received-Date: Wed, 04 Oct 2017 02:38:45 -0000
Content-Type: multipart/alternative; boundary="001a114d7f6e9d5b57055aaf81ab"

--001a114d7f6e9d5b57055aaf81ab
Content-Type: text/plain; charset="UTF-8"

I am having issues adding SELINUX to my image. I posted a question at
https://stackoverflow.com/questions/46554907/using-selinux-in-yocto-poky if
anyone can please help me.

Thanks,

Mark

--001a114d7f6e9d5b57055aaf81ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am having issues adding SELINUX to my image. I posted a =
question at=C2=A0<a href=3D"https://stackoverflow.com/questions/46554907/us=
ing-selinux-in-yocto-poky">https://stackoverflow.com/questions/46554907/usi=
ng-selinux-in-yocto-poky</a> if anyone can please help me.<div><br></div><d=
iv>Thanks,</div><div><br></div><div>Mark</div></div>

--001a114d7f6e9d5b57055aaf81ab--
