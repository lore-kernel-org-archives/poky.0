Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C98B4E00321; Wed,  2 Dec 2015 10:43:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E7F9E0033E
	for <poky@yoctoproject.org>; Wed,  2 Dec 2015 10:43:35 -0800 (PST)
Received: by pacej9 with SMTP id ej9so48157156pac.2
	for <poky@yoctoproject.org>; Wed, 02 Dec 2015 10:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=+O4nlTVifkZ+Sl2RsUaLGsipYC7vdvjZBuOBZMh+7zg=;
	b=MCpI5e/qS2Slx0Yz2oCHWHcWc+nxEO9sgHYgyIyb4qlLKjpVp4qkWTJghtn2vCM293
	OHZmXm/+9lqQmQP4ujKQIvXyDD6dsIF4IVjcN81eIUjZVXyenwQlUKZz75hp1x7UA5X7
	Zj4zYSBuwyIrsgWudc1a2/IIeOaQaXvdx/iZiduGSSoYwYXs5wQHV04iTTj9LzigpRBJ
	agmGVPxOV6CWltRgxGa3qUZqrO/atyfpp97vzf2awSzFppO2EOXEuTWlp+6oft3tCcp/
	K6w7CtC7CMh7uAPYiSyqIzxOd8x7SpA/M3N4f7G7/uOOH1lOtxSrCLyO1EBipfdsioRw
	f1Gw==
X-Received: by 10.66.237.7 with SMTP id uy7mr6919297pac.130.1449081814688;
	Wed, 02 Dec 2015 10:43:34 -0800 (PST)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	kh9sm5828775pad.11.2015.12.02.10.43.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Dec 2015 10:43:34 -0800 (PST)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Wed,  2 Dec 2015 10:47:06 -0800
Message-Id: <cover.1449081916.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/1] meta-yocto/conf/toasterconf.json: remove SDKMACHINE
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
X-List-Received-Date: Wed, 02 Dec 2015 18:43:36 -0000

Hi,
This removes the SDKMACHINE variable from meta-yocto/conf/toasterconf.json
as it is no longer used.

-b

The following changes since commit 698c74c373110ed081a7586e21d4a27b8b44c89b:

  libsdl: remove redundant configure_tweak patch (2015-12-01 21:32:15 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib bavery/remove-SDKMAHINE-meta-yocto-toasterconf
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=bavery/remove-SDKMAHINE-meta-yocto-toasterconf

brian avery (1):
  meta-yocto/conf/toasterconf.json: remove SDKMACHINE variable as it no
    longer used

 meta-yocto/conf/toasterconf.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--
1.9.1

