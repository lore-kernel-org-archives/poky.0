Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id CAC144C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:10:08 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 7C4A212EC338
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 13:49:01 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky <poky@yoctoproject.org>
Date: Mon, 20 Dec 2010 19:10:00 +0000
Message-ID: <1292872200.2466.58.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Poky Laverne point release
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 20 Dec 2010 19:10:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi all,

I've a branch on poky-contrib (josh/laverne) which fixes the Makefiles
in several recipes such that I can do builds of all our targets on
Fedora 14 with it's new, stricter, make version (3.82).

This makes me think it's time to start pulling together a Laverne point
release but we don't really have a handle on what these should include.

For the Green point release I cooked I just went through commits since
the release and did sniff testing, but I think we can do better.
Plus I started to do that for Laverne but there's been some almost 900
commits since then... 

So, to the point of this message, I'm looking for people to nominate
fixes for the Laverne branch. Even better if you share a git hash.

To start the ball rolling I'm going to suggest:
* Make 3.82 fixes
* Qemu script enhancements/fixes
* Bitbake fetcher fixes


And you? What fixes would you suggest?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


