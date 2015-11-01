Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E6C2E00BC4; Sun,  1 Nov 2015 13:36:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F11D5E00BA1
	for <poky@yoctoproject.org>; Sun,  1 Nov 2015 13:36:12 -0800 (PST)
Received: by pabfh17 with SMTP id fh17so2429054pab.0
	for <poky@yoctoproject.org>; Sun, 01 Nov 2015 13:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=TIoftwGu5aERv369QY9rigyiZ/RMVLlwpRSSb+Gdu7w=;
	b=fWmuR+c7Vs1+OD0CI2R3+9La0FsAEFxEYBe2yajrLVvzhMidccFkAxKsccl19MqMs5
	8ysuPZchBDmaGAF6K4HeNfZflGCQxQ63mBFi6JCtUQk+hCiWEllVRN4fEJqVQk+Nxz6X
	lQ4qHWFiGANKqwxzREXIvOsEzxiqkPWworAWVgA63JttiprWdQOeOWyQ2qQk7Mo5BxZd
	woVfuAPwtASBcd7TQNXZvWRnA7vCdQUzIBNZrTP2EfeYa6z15ygeRiXUU0QOBgi+Oirh
	hWVra6xuuxYm7ER/FF7HEEaRVdUO1MROJs/h/DwDB6ATFleaEg1NeSqXDU+Dp7c/LjvK
	EG7w==
X-Received: by 10.66.153.166 with SMTP id vh6mr23070741pab.83.1446413771751;
	Sun, 01 Nov 2015 13:36:11 -0800 (PST)
Received: from whisper.hsd1.or.comcast.net
	(c-98-232-142-195.hsd1.or.comcast.net. [98.232.142.195])
	by smtp.gmail.com with ESMTPSA id
	qf2sm17221497pbb.3.2015.11.01.13.36.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Nov 2015 13:36:11 -0800 (PST)
From: brian avery <avery.brian@gmail.com>
To: poky@yoctoproject.org
Date: Sun,  1 Nov 2015 13:38:46 -0800
Message-Id: <cover.1446413841.git.avery.brian@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH 0/1] [FIDO] : remove master branch from toasterconf for fido
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
X-List-Received-Date: Sun, 01 Nov 2015 21:36:13 -0000

This is the second part required to fix bug 8154. The fix for meta/conf/toasterconf.json
went in a while ago. This fixes meta-yocto/conf/toasterconf.json.

This is a backport to fido.

-b

The following changes since commit fa55b8e5050c6d7a47ef8e9bc213d0cc9471b43a:

  bitbake: toaster: buildinfohelper Skip packages we have no build info about (2015-10-24 12:01:07 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib bavery/toaster/fido-8154
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=bavery/toaster/fido-8154

brian avery (1):
  toasterconf: remove master as a branch option from fido release

 meta-yocto/conf/toasterconf.json | 23 ++++-------------------
 1 file changed, 4 insertions(+), 19 deletions(-)

--
1.9.1

