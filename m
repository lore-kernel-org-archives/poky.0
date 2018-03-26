Return-Path: <soemoe.a@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87D48E00857; Mon, 26 Mar 2018 13:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (soemoe.a[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f52.google.com (mail-pl0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C06E00857
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 13:51:37 -0700 (PDT)
Received: by mail-pl0-f52.google.com with SMTP id g20-v6so1426332plo.9
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 13:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=1zrbLUyLR+Iy4ap+teyQRq535Awmrqfywdw8RvPVL74=;
	b=cfKHQ5GHYNEeSDwLgbdpNzt3Uhiw45NLQx4Bmuk0M3em2xyh4finu8+Fag5j2Bep/k
	dd1hYcTzS3ZQq3Uhp4+IPEJo6Z5q0U6IOUoFPp+9yQJfrYo/m30xlTC8LUrAefSe0SAm
	e+64MFdsVnPHvH7XjsyNLf9TOG3TKbujJ9OwCxMBikebqcu0kJ3euSYXXDJbfb7x1+LT
	aVrOYdxVuKBvA6g+xXNBP9muqL44y5Y1rSrgy1Kq3Zgk05wPGMv846fTe8YK54dU1S4H
	A3N0VRL1nCwvo2QxzvuHTBQegyKtGuEec652iaQ6sR4Zqv/5/kS7+rQACgB1Ulef0c0Q
	sTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=1zrbLUyLR+Iy4ap+teyQRq535Awmrqfywdw8RvPVL74=;
	b=kVA7FvIb8mhfpvJNtmcffZ3Yc7qPmlCLePqyTJqum8m9w+A2zs7IHAbKjjlRThlz65
	RrbaLG807hEoi+nxOcWZM8PzhtA9Jl2DVJepG03p2+85QS15qDSeO/yI9wJjvIUm4q+F
	FcWNXLGfF0EkveCwHud+dxJtgZiLuTT3dxUTwIS4vUKCsXlIzrPuXNi6P5JReZwKM9Yy
	E5v3oGi3hX7qYCg0QHkVIn8JW4OFGzrYlMQPtTvhR1U/kgjVGMm0UbbALze27LQij2bn
	zef5Ml/zYnKG3E5oBIYYUJfQcC6efAb8zvBYHxDvF942IqCJy+iMCF1Ky5ajtkpPTrW0
	6xPw==
X-Gm-Message-State: AElRT7GcePhjTyQxH1EXA7p3dTQ/AlvLOzQVIT3SrTqdsk2qp/MWtFUJ
	G+5ijO/SO/97cRCbV8BYdID6Txwh
X-Google-Smtp-Source: AIpwx48f9aou2cW6G0dKu6aRz8HStTSjNYWxGJjkf9HbYdTf1mklc631uFcDELbpor6Q6oAaCH1ZDg==
X-Received: by 2002:a17:902:9a44:: with SMTP id
	x4-v6mr9919356plv.332.1522097496612; 
	Mon, 26 Mar 2018 13:51:36 -0700 (PDT)
Received: from saung2.mtv.corp.google.com
	([2620:0:1000:1b12:c339:a1c5:5655:debf])
	by smtp.gmail.com with ESMTPSA id
	29sm35044958pfj.40.2018.03.26.13.51.35 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Mar 2018 13:51:35 -0700 (PDT)
From: Soemoe Aung <soemoe.a@gmail.com>
To: poky@yoctoproject.org
Date: Mon, 26 Mar 2018 13:51:16 -0700
Message-Id: <cover.1522085586.git.soemoe.a@gmail.com>
X-Mailer: git-send-email 2.17.0.rc0.231.g781580f067-goog
Subject: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Mon, 26 Mar 2018 20:51:38 -0000

This fixes a build issue where bitbake won't run because of an issue with one of the libraries it depends on.

The following changes since commit ea6d21066a7cce2fef08ad66287170c5995bb1e2:

  bitbake: bitbake-user-manual: Fixed porno hack for hello world example (2018-01-17 22:32:46 +0000)

are available in the Git repository at:

  git://push.yoctoproject.org/poky-contrib saung/bitbake-html5lib

Soemoe Aung (2):
  fix build error in included html5lib in bitbake
  fix html5lib fix to be the same as in the krogoth branch

 bitbake/lib/bs4/builder/_html5lib.py | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

-- 
2.17.0.rc0.231.g781580f067-goog


