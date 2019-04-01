Return-Path: <nicholas.clark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32752E00994; Mon,  1 Apr 2019 11:28:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nicholas.clark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f53.google.com (mail-yw1-f53.google.com
	[209.85.161.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4468E008CA
	for <poky@yoctoproject.org>; Mon,  1 Apr 2019 11:28:09 -0700 (PDT)
Received: by mail-yw1-f53.google.com with SMTP id x129so3631148ywc.1
	for <poky@yoctoproject.org>; Mon, 01 Apr 2019 11:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=pgPU4+ACEedt+gX1Q9kOo9k2eIYaZ+KAjTo/qcG8Gfw=;
	b=TXrddDRzkYbPLRM+BCpAjqECVynXUlxHytdzfl+NM/VTa4cQkiuRhEwuBBFBWDau/b
	1ZyzbWH07xNt6hMc92fnZePr2sTcDTV0v2ukmuKes/DU6446ttoWT5WKgmM7n6+N4RWy
	/SEo/IewC2gYUr8KcorRab4Rmly30DHO6V1XQ5MZXMp6v9F9TYLIP9Q6aMlanaKv9STV
	f+37kt1zh1If0QnehHyG//1kmPUWysKYBUrGon+Om815qHYh19zAoQzRbCxUGAiWmrZl
	C5euJkJtP9AX9rua2wx3YszPTQqQ6U1Q68mVWum4YdtZ3Hf33sxCJulHMoyRFxCs5WWD
	kLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=pgPU4+ACEedt+gX1Q9kOo9k2eIYaZ+KAjTo/qcG8Gfw=;
	b=IqaEDLreVXb2VE0QePZAF5fYQYD4McPbyKEa2QnvYOA8iyApFIuIDXaQy9IYGXhPSn
	kJgE2GQge9XmdVRb5uKk5ZPjKEEiB5+frI3rDbp8dlyPGcKSW/MyAJcyqRdam3EegBAb
	trEO1gpm19ncug0iqjeR2F1Je1JAM2EnH/s/1oPTUw+vYZTpmDJD6SdU/N6+I1jAMs9x
	sM0cMDBhjmFPOrZFkm38LOo4PIZOKKMidZVFxnINHbQDf//mWetG12Tuia67whsLHVJU
	Qre/CDBFuP5eNgcI+h47aHKahxUiO90nMm8G/wj87HqUmw/FBtrBm7m4oIezV8D42IMp
	qXWA==
X-Gm-Message-State: APjAAAXTt8n97R4std70tjZR1wqGSvXFbT2/odwXiHUSBOt9ZeEPrVhz
	36QHa00F8iw18wxMwCmwYcGLMMZ/e9D2wtaF64DnPyUH
X-Google-Smtp-Source: APXvYqyr08X7EQsvyydFk/FKl102p9pMSm9rc6XYOq3yTwnTbsWjz8JZoQQB2Mq5STFGyP0t/3oJLhu1EL07tpsg7d8=
X-Received: by 2002:a81:7086:: with SMTP id
	l128mr55956021ywc.407.1554143288811; 
	Mon, 01 Apr 2019 11:28:08 -0700 (PDT)
MIME-Version: 1.0
From: Nicholas Clark <nicholas.clark@gmail.com>
Date: Mon, 1 Apr 2019 12:27:33 -0600
Message-ID: <CAKNeuBrHVJXBgREM0R9CvrKMt=k9Rkf7TM0hn1vAFHGg=sehnA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: do_deploy_archives for multiple images
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
X-List-Received-Date: Mon, 01 Apr 2019 18:28:10 -0000
Content-Type: multipart/alternative; boundary="000000000000a8e61d05857c2e28"

--000000000000a8e61d05857c2e28
Content-Type: text/plain; charset="UTF-8"

I'm working on a design with a two different variants of a base image. One
variant (a developer image) has some company-proprietary tools, and also
some GPLv3 tools. The other variant (our production image) is fully
license-compliant.

In order to make sure that we're ready if/when we get GPL requests, I'd
like to generate a releasable source tarball at build-time. Each image's
do_deploy_archives task looks like it provides the right stuff, but they
all go into the same shared directory (making it harder to separate them
afterwards).

Is there any way for me to set up image-specific archive directories,
instead of having everything go to ${BUILD_DIR}/tmp/deploy/sources?

--000000000000a8e61d05857c2e28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I&#39;m working on a design with a t=
wo different variants of a base image. One variant (a developer image) has =
some company-proprietary tools, and also some GPLv3 tools. The other varian=
t (our production image) is fully license-compliant.</div><div><br></div><d=
iv>In order to make sure that we&#39;re ready if/when we get GPL requests, =
I&#39;d like to generate a releasable source tarball at build-time. Each im=
age&#39;s do_deploy_archives task looks like it provides the right stuff, b=
ut they all go into the same shared directory (making it harder to separate=
 them afterwards).</div><div><br></div><div>Is there any way for me to set =
up image-specific archive directories, instead of having everything go to $=
{BUILD_DIR}/tmp/deploy/sources?<br></div></div></div>

--000000000000a8e61d05857c2e28--
