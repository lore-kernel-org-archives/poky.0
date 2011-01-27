Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71D1E4C81207
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 04:46:34 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 0AC1D12EC1CA
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:27:35 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <619d62d8c1d6a761e2aff146d789d482fd45a409.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
	<619d62d8c1d6a761e2aff146d789d482fd45a409.1296095614.git.lianhao.lu@intel.com>
Date: Thu, 27 Jan 2011 10:46:26 +0000
Message-ID: <1296125186.2711.11.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 4/6] classes/populate_sdk_*: remove blanks.
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
X-List-Received-Date: Thu, 27 Jan 2011 10:46:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 10:51 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> Remove unnecessary blanks introduced in commit
> 2fc923582dbf15d1a694c0f7764f48e97b30116a and
> 6af64af67102945a08e640e1100ea14831c6d794.

These changes should be squashed into the patches which introduce the
whitespace, this sort of thing is only necessary as a separate commit
once the changes are in master.

git rebase (and its interactive mode) are useful for tidying up a
branch before submitting a pull request.

http://book.git-scm.com/4_interactive_rebasing.html


Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


