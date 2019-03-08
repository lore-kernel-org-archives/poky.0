Return-Path: <vishwavtu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0E81E00D01; Fri,  8 Mar 2019 10:58:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vishwavtu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FC11E0049C
	for <poky@yoctoproject.org>; Fri,  8 Mar 2019 10:58:42 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id i12so22469657wrw.0
	for <poky@yoctoproject.org>; Fri, 08 Mar 2019 10:58:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YzxshKRR6EV0emQ2Zkscw49eGLEofjdWtIrwUqd753c=;
	b=Z8gveEyT7/SJXL4QxSQw/W21IP+4mV3uGADtPHFoFw1ofViHSZu90R/GhgNWFiV4G6
	oWT12UPKWC1nScSAjSid6KbH3QZHe0YplY0VRPQaQ7gcGSVAWR4QYegtenw2FJwm86JQ
	JBfuYfYfHcKvcATetE1eEgsGYYR+SRQJz/LMQ+zf732OuhLYKHyjlLT9J8EC0httsP8V
	cMo/o7EUCk4ctl7ek3t02Sdw+UzXzr4C6zbd8NC/heP23ouVX7HfIh0p1oFKc8ipu8iR
	VeZEV47ClD/SU36l3vBMOyI6hg9/jrQ3wPSRReKo1cHYoP1puehMQJzsIfp2wnfIOdp4
	R8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YzxshKRR6EV0emQ2Zkscw49eGLEofjdWtIrwUqd753c=;
	b=fl5G7kGMsSU2Kfd1ASiaewm1UcRBMadxDvh683quuDut6+rqqoifq02qlP+lMxZ3AL
	gCPOlSLrbbkHOzCevtwcDxcIJsOjkZ5I2uPen/6PhXIK4o9IzyK34NiZf6/KH4cwrBRa
	owd/EpfEEvD1BQq+6mMVrPR6YYqsnL1JMfvA9a/QhteWiQqwuoYHgVF7SCnXAagg5WQU
	qUCNyRHh3nU5b2R/sgNsswLAWTmZlOBn3gfRX30qDY8OTZLEPZ1P+lvTV3/CtmsW42wX
	pkxq563XwM2SEOkAA0SXWdhCvOCXPDEFOqbAK19KWNUzY7GWp65WJWtM28eVTW1Qz1Z0
	lpPA==
X-Gm-Message-State: APjAAAVobqfeU4PucpOf1xi2HfYZ7jeitKPV7AsXOffGsE5rnLkZj8B4
	5Lp8A/XzIHVADqXYF6ij2xp2PRCPqsJtqgHXxesndudrETY=
X-Google-Smtp-Source: APXvYqyRXbTbavnBwdugqYKDJqSiB/Jko5gGGhUnAc2m2IBr0kc4u49QNXmW9SGYV1CXhkiOluMAs42q6JM31X8w9Qs=
X-Received: by 2002:a5d:5504:: with SMTP id b4mr3206281wrv.137.1552071521036; 
	Fri, 08 Mar 2019 10:58:41 -0800 (PST)
MIME-Version: 1.0
From: Vishwanath Chandapur <vishwavtu@gmail.com>
Date: Sat, 9 Mar 2019 00:28:30 +0530
Message-ID: <CALQBcOceX12jYhk73jVHVeF3ObeEHEGPgVMqmCrp-w7JD-7_UQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Delete /run/nologin after boot up
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
X-List-Received-Date: Fri, 08 Mar 2019 18:58:43 -0000
Content-Type: multipart/alternative; boundary="000000000000ad6c85058399cf9c"

--000000000000ad6c85058399cf9c
Content-Type: text/plain; charset="UTF-8"

Hi Team,

We are using poky thud version with systemd .we have enabled pam module for
authentication because of which  non-root users no longer able to login to
terminal/ssh.
I have gone through systemd documentation according that  "/run/nologin"
should be deleted after boot up so that pam module can allow to login.

There is already init script is available but it deletes /etc/login not
/run/login.

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/initscripts-1.0/rmnologin.sh

With Regards
Vishwa

--000000000000ad6c85058399cf9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Team,</div><div><br></div><div>We are using poky t=
hud version with systemd .we have enabled pam module for=C2=A0<br></div><di=
v>authentication because of which=C2=A0 non-root users no longer able to lo=
gin to terminal/ssh.</div><div>I have gone through systemd documentation ac=
cording that=C2=A0 &quot;/run/nologin&quot; should be deleted after boot up=
 so that pam module can allow to login.<br></div><div><br>There is already =
init script is available but it deletes /etc/login not /run/login.<br><br><=
a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes=
-core/initscripts/initscripts-1.0/rmnologin.sh" target=3D"_blank">https://g=
it.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initscripts/i=
nitscripts-1.0/rmnologin.sh</a><br><br></div><div>With Regards</div><div>Vi=
shwa</div></div>

--000000000000ad6c85058399cf9c--
