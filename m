Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id E453C4C80B6B
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 11:23:11 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 492F912EC1C5
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 12:00:31 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CE6A7FF.4040507@windriver.com>
References: <cover.1290179273.git.josh@linux.intel.com>
	<00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
	<4CE6A7FF.4040507@windriver.com>
Date: Tue, 23 Nov 2010 17:22:56 +0000
Message-ID: <1290532976.9539.16.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/1] poky.conf: move the SDK install into versiondirectories
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
X-List-Received-Date: Tue, 23 Nov 2010 17:23:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-19 at 10:38 -0600, Mark Hatle wrote:
> As we move beyond 1.0 work.  Would it make sense to focus on making sure the SDK
> tooling works no matter where it is installed?

It sure would. Theoretically that's already the case we just default to
extracting the SDK to a sane place.

Are you suggesting that we just inflate to a child of cwd and do the leg
work to ensure this *should* work?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


