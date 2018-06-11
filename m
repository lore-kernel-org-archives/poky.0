Return-Path: <bjarkefh@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 546B6E01C89; Sun, 10 Jun 2018 23:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bjarkefh[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73540E00EAA
	for <poky@yoctoproject.org>; Sun, 10 Jun 2018 23:55:07 -0700 (PDT)
Received: by mail-lf0-f49.google.com with SMTP id j13-v6so28818416lfb.13
	for <poky@yoctoproject.org>; Sun, 10 Jun 2018 23:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=hp4R8JAFVKV6/0R52fvVS8ZkhKyRekCsYyaxPXzXh2E=;
	b=RVKNLk3cAQlIK78+Vi8T0msCjrXHIjbWZMrNf3GN7d3iNk6xfKXuL8iuV54gLgm6MP
	vXiMJk25DjyHZ+NFx+DQh4UAg8vfzBt5dKjs+YRD/ZoO42ILiY59MVVfASPTJ8nTi3Xs
	qxM77+YZc2BZkmPCkaRWPa6NjLng6N9etjWUDpPaklILYbSlD3du3Ms58UWGBbBmw3va
	PZbY2N/1+V2rv0/uqSsEv5jKuVRz5N8EzTthaOtI2QpKX7W+/HbfA8+fuhy/6tJEGfcw
	ub7sroP4kjclQtFzHNrfXfrdsidqVTxExox2JWG+xOjSxAfmasnH7EPCUlfRwfxyOTXn
	8mcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hp4R8JAFVKV6/0R52fvVS8ZkhKyRekCsYyaxPXzXh2E=;
	b=Qsuxx0WtkQ3n/yUlffn9TpkZjBcY7Z4hTWDXFTfmiNxgVyWFNc1x6fLu0j1O06VA12
	OL5pG5QmR2UlpHSDvgQs+cNMICKfZ5yHucvCTVhANZSb+fWkacR+Uxydn5wABYmW6YaL
	J0wonK+dSzBPAGftebUNB2ouoXOAibJR/0rfRDOuxtXon7jiJzMu8xSuP9QjJQKIbufM
	VoBeGD3zrWaCbpJLKMR29juvc77Wsv6vcilji8YzapIe/zRhnCZ9KGg7VeBCMERbVZPo
	fM8BM8+T9cgn+G936FObULmABIpSX5GPFQlfrCJ4Qv/HEjDK7cFAFd8tDtmFV/V0NqgE
	Cd2w==
X-Gm-Message-State: APt69E2CSW0gSrQ8b3krlBVnsgtqn1XCj15tqoJJkl0PTiZEh/NfQ9nT
	h7LRKL+vCkZDs8gBAAece7qM5wXp9dCstc1wKF44/Q==
X-Google-Smtp-Source: ADUXVKJzaB6JpHurZdhMqroe7FP3mjzD8AhaR2nIdBqIXdM5HLElY2rJVKhMUWL/25eb4vOS2k9T2bkB0U0ybMjolQQ=
X-Received: by 2002:a19:de0a:: with SMTP id
	v10-v6mr9071030lfg.94.1528700106067; 
	Sun, 10 Jun 2018 23:55:06 -0700 (PDT)
MIME-Version: 1.0
From: Bjarke Freund-Hansen <bjarkefh@gmail.com>
Date: Mon, 11 Jun 2018 08:54:55 +0200
Message-ID: <CANf15E_D1k92UHZLPKFYV+tcTMtbkZwpWZpXxzZtSetuaHNf9w@mail.gmail.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PULL] waf: Fix building recipes with EXTERNALSRC defined
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
X-List-Received-Date: Mon, 11 Jun 2018 06:55:08 -0000
Content-Type: multipart/alternative; boundary="000000000000ca54ef056e583a70"

--000000000000ca54ef056e583a70
Content-Type: text/plain; charset="UTF-8"

waf does not support being executed from another directory than the one
containing the wscript file.

Normally this is not a problem as CWD will be the same as the one
containg the waf build tool script and the wscript file. However when
building with EXTERNALSRC defined for a recipe waf would be executed
with CWD set to the normal build dir, where it cannot find wscript
and thus fails.

The solution is to change CWD to the dir containg the waf script
before executing waf.


The following changes since commit fe6e6231441188c3ffe52ef5811a8f30d29ea952:

local.conf.sample: update libsdl mentions to libsdl2 (2018-06-07 08:53:19
+0100)


are available in the Git repository at:

git://push.yoctoproject.org/poky-contrib bjarkefh/waf-fix-externalsrc-build


Bjarke Freund-Hansen (1):
waf: Fix building recipes with EXTERNALSRC defined


meta/classes/waf.bbclass | 9 ++++++---
1 file changed, 6 insertions(+), 3 deletions(-)


-- 
2.17.1


/Bjarke Freund-Hansen

--000000000000ca54ef056e583a70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">waf does not support being executed from another directory=
 than the one<br>containing the wscript file.<br><br>Normally this is not a=
 problem as CWD will be the same as the one<br>containg the waf build tool =
script and the wscript file. However when<br>building with EXTERNALSRC defi=
ned for a recipe waf would be executed<br>with CWD set to the normal build =
dir, where it cannot find wscript<br>and thus fails.<br><br>The solution is=
 to change CWD to the dir containg the waf script<br>before executing waf.<=
br><br><br>The following changes since commit fe6e6231441188c3ffe52ef5811a8=
f30d29ea952:<br><br>  local.conf.sample: update libsdl mentions to libsdl2 =
(2018-06-07 08:53:19 +0100)<br><br><br>are available in the Git repository =
at:<br><br>  git://<a href=3D"http://push.yoctoproject.org/poky-contrib">pu=
sh.yoctoproject.org/poky-contrib</a> bjarkefh/waf-fix-externalsrc-build<br>=
<br><br>Bjarke Freund-Hansen (1):<br>  waf: Fix building recipes with EXTER=
NALSRC defined<br><br><br> meta/classes/waf.bbclass | 9 ++++++---<br> 1 fil=
e changed, 6 insertions(+), 3 deletions(-)<br><br><br>-- <br>2.17.1<br><br>=
<br>/Bjarke Freund-Hansen</div>

--000000000000ca54ef056e583a70--
