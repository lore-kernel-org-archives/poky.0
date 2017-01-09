Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1416E007A7; Sun,  8 Jan 2017 23:27:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.51 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17030E0050B
	for <poky@yoctoproject.org>; Sun,  8 Jan 2017 23:27:05 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id c85so88869062wmi.1
	for <poky@yoctoproject.org>; Sun, 08 Jan 2017 23:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TjlNSvR8NGgvzjvjESL+1Gnsv4Xo8U4+gKClBOfAfxM=;
	b=LNGr/VhCIjFzCcNUva0qHPD7Y7/Ezzblrgmnt0K6i/X0j6/vvDbYs4fcZK4c0jlYlw
	Spl2djFlQuPYqgxCAkK/0pWQcZhbA3DBV+7bU3PJWaONYzTQp3nqDrT82zaszCx5uTrN
	H3EC/T8eV123kwdhCCPto39oWVMxIr/VEQkhb+Oqn3owIMv9naBg1F1K9pw9Ivv3BqmV
	rp1i/YP2egfW/0Gk58DImKE1KO6p/TdnoFq4HCAcXfQEf05xy/XWOpumQDT0GNGR+nO1
	KhSosX7GnlLwzrL+IXimSvxZu2YJWujcGx+OWETABIPMUzmnMROsVuOtdypGlTardBYw
	meIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TjlNSvR8NGgvzjvjESL+1Gnsv4Xo8U4+gKClBOfAfxM=;
	b=AuVZ6l7N1QR4ItguyqdTaLiik2mQ5M9XfOOqxVlNiwWa2bX2u+k1Y1RFYpxgonBR0t
	fL+S3/P7XpgohM+Li1x0Gu0zh06U8bwgkoVLp8c+Pc+GtARA4ltETiEULXQ6gGPEaWc7
	dIOodnLYAi4W9YSjT3NHf+4fzyZoN20gHgxOroxZqTW8s9M39Cte/wWW5xqQDS18RkMt
	Pptqsqz2qCHaO68rA1YXMQFeJhLnnk3kCalmjOI1EMnz+I4rlC4pfjgHf7IsF51WvqTJ
	O4AhQ36ejn1SvU/qoRArpjoc/UpRlyfvqEJL3/84WLk/q/NF6dJYbfBrQBQoMC87m5hy
	xcdw==
X-Gm-Message-State: AIkVDXKyByWH/xQJ1J9UngaGdfnQkxFYwmKyNtpz86KpgDwfNWv/2H46Fp8lylalm00sbLvwuhyCus1lILQe2g==
X-Received: by 10.223.171.65 with SMTP id r1mr12548114wrc.123.1483946824300;
	Sun, 08 Jan 2017 23:27:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.192.1 with HTTP; Sun, 8 Jan 2017 23:27:03 -0800 (PST)
From: praveen vattipalli <praveen.vatt@gmail.com>
Date: Mon, 9 Jan 2017 12:57:03 +0530
Message-ID: <CA+pXca3WE=848ZU1kX-+2DZR1aWU+Z1yBfg_bYGmhYEwAL2vYw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: error while compiling Altera kernel
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
X-List-Received-Date: Mon, 09 Jan 2017 07:27:08 -0000
Content-Type: multipart/alternative; boundary=94eb2c1cc15c53fa8f0545a44b8d

--94eb2c1cc15c53fa8f0545a44b8d
Content-Type: text/plain; charset=UTF-8

Hi,
I am upgrading Yocto version from daisy to krogoth. In this process when
building kernel, i am getting below error

ERROR: linux-altera-ltsi-3.10-r1 do_deploy: Taskhash mismatch
c4875fc746f382558fe137fc1188dfe7
verses 1c5cadda9369cc54cb44d732ed6004e8 for
/home/rajesh/k2_poky-krogoth/k2/source/platform/build/../meta-altera/recipes-kernel/linux/linux-altera-ltsi_3.10.bb.do_deploy
ERROR: Taskhash mismatch c4875fc746f382558fe137fc1188dfe7 verses
1c5cadda9369cc54cb44d732ed6004e8 for
/home/rajesh/k2_poky-krogoth/k2/source/platform/build/../meta-altera/recipes-kernel/linux/linux-altera-ltsi_3.10.bb.do_deploy

In linux-altera.inc file i have below lines

do_deploy_dtb() {

DTB_NAME="${DTB_FILE}-${DATETIME}.dtb"

}

do_deploy_dtb[vardepsexclude] = "DATETIME"

If i commet do_deploy_dtb[vardepsexclude] = "DATETIME" also iam facing same
error.

Any suggestions...

Thanks in Advance.

Thanks,
Praveen

--94eb2c1cc15c53fa8f0545a44b8d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br></div>I am upgra=
ding Yocto version from daisy to krogoth. In this process when building ker=
nel, i am getting below error<br><br>ERROR: linux-altera-ltsi-3.10-r1 do_de=
ploy: <span style=3D"color:rgb(255,0,0)">Taskhash mismatch </span>c4875fc74=
6f382558fe137fc1188dfe7 verses 1c5cadda9369cc54cb44d732ed6004e8 for /home/r=
ajesh/k2_poky-krogoth/k2/source/platform/build/../meta-altera/recipes-kerne=
l/linux/linux-altera-ltsi_3.10.bb.do_deploy<br>ERROR: Taskhash mismatch c48=
75fc746f382558fe137fc1188dfe7 verses 1c5cadda9369cc54cb44d732ed6004e8 for /=
home/rajesh/k2_poky-krogoth/k2/source/platform/build/../meta-altera/recipes=
-kernel/linux/linux-altera-ltsi_3.10.bb.do_deploy<br><br></div>In linux-alt=
era.inc file i have below lines<br><br>do_deploy_dtb() {<br><br>DTB_NAME=3D=
&quot;${DTB_FILE}-${DATETIME}.dtb&quot;<br><br>}<br><br>do_deploy_dtb[varde=
psexclude] =3D &quot;DATETIME&quot;<br><br></div>If i commet do_deploy_dtb[=
vardepsexclude] =3D &quot;DATETIME&quot; also iam facing same error.<br><br=
></div>Any suggestions...<br><br></div>Thanks in Advance.<br><br></div>Than=
ks,<br></div>Praveen<br><div><div><div><div><div><br><br></div></div></div>=
</div></div></div>

--94eb2c1cc15c53fa8f0545a44b8d--
