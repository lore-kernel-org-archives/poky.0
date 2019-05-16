Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7E53E00B43; Thu, 16 May 2019 08:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08459E00ADB
	for <poky@yoctoproject.org>; Thu, 16 May 2019 08:45:35 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id 188so3530605ljf.9
	for <poky@yoctoproject.org>; Thu, 16 May 2019 08:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Dcm212cC0+KzPhOMD4Qlp3MpnDrvKoYVq3MLqy0gioQ=;
	b=YJHK/IW0f9QF2fNcIQE6GXcBSO9AYPFOJFkVpPLRaNlycjo83GmKk04xo/y+CDPm2c
	MGk2eOqkIdsdNibxAQ/JC7GbhVUczYF6CvVoQZc0WkpbhRza5Dm1u2g7F5sFgYod4c91
	5/I6V4DfPOoHgVKxAy59MhKZGWRfrwUoCjJfOXi4gaTo7ze069KVnZB2DEpfC3xxvBRh
	grjJbctg69jwYnSFGru+76asiIV0U3mjfMdxC9A7B1T/eH8KzGryv/E5BCKImgvEhigN
	/MI3KDb6dkb/XyvgXHoASwPY/wTk6vEgbLIBW8w50QluvdlWwaAPiCEz2XdA3okpZBd3
	eKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Dcm212cC0+KzPhOMD4Qlp3MpnDrvKoYVq3MLqy0gioQ=;
	b=rwqDDuG+f+yeWzjMwUg5NniviUdtl5rGiydXOO4jJtshIfJT7oK+QZaNebbFXCHr/G
	EhyZfdiJOMkpzW7Hm+rxCs8+N9v/yCrIiuMpUoSVku1K+gLLXxzLwovi0j48SkcF4HNb
	8f00T2YKXStHY0iYz/m28zhwBR396PO14YIoynZm2t7/sH94u0rPpqK18vhFVxL6egt4
	v5Tr9znTx9PJwbwIOqrPsDNZcIvNfXRIj9Khf7tvCRJmgoOpH8MIzSq+5NlNkIvAtBqx
	VIN+2fXcGTTuoLTt0VyHnDMUk4W66mL4zUISkRhdEBr6kU7IoTkC9gbjbKUKg2lMrub6
	XLVw==
X-Gm-Message-State: APjAAAW6Pr9tItl4FrfrXdqcrzcVR/CDXEznBGvQB7uzuUfzrcNuqaiD
	0p8X1+vKCTTEdzKdlqYEj44/87NybSP1DPdcWZ7HxIYG
X-Google-Smtp-Source: APXvYqyd0YGOX8geH/7MCKcIxeyBq7NG234cRohB0KLPgEihBSjpFpn7ki8c4R1PdDep55vZcYcjlygfv0XTWr4iQzo=
X-Received: by 2002:a2e:8796:: with SMTP id n22mr12177409lji.75.1558021534422; 
	Thu, 16 May 2019 08:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
In-Reply-To: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Thu, 16 May 2019 11:45:22 -0400
Message-ID: <CACfi_Z0vWtHrkQv2k=rWWwi03EERuPRQB+SJJAsXnq_p0xRTtg@mail.gmail.com>
To: poky@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Upgrading to Sumo triggered issue with python3 autopackaging - "ERROR: Nothing RPROVIDES 'python3-signal'"
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
X-List-Received-Date: Thu, 16 May 2019 15:45:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I upgraded to Sumo(2.5) and now bitbake is complaining that nothing
rprovides python3-signal.

ERROR: Nothing RPROVIDES 'python3-signal' (but
/home/worker/building/sources/meta-bluetooth/recipes-bluetooth/bluetooth-app/bluetooth-app.bb
RDEPENDS on or otherwise requires it)

After some searching I found that this is related to the restructuring
of python3 packaging in Sumo
(http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b6777878ff03c3e956386020a19d11c875c835ae)

So according to the instructions in the above commit, I'm supposed to
first create a manifest file using:

$ bitbake python3 -c create_manifest

and then the json file appears to get created:

build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/python3/3.5.5-r1.0/python3-manifest.json

After a quick inspection of the created python3-manifest.json, I see
that signal.py already appears on the list.

    "core": {
        "cached": [
            ...
            "${libdir}/python3.5/__pycache__/signal.*.pyc",
            ...
        ],
        "files": [
             ...
            "${libdir}/python3.5/signal.py",
             ...
        ],
        "rdepends": [],
        "summary": "Python interpreter and core modules"
    },

Assuming that nothing else needs to be done, I then proceed to again
bitbake my application but unfortunately the original error persists.

What am I missing?

Thank you,

Davis Roman

