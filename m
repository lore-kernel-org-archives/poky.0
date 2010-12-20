Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DC764C80039
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 06:32:17 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 215F112EC331
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 07:10:59 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <8a1b03e53beef4537adab1dcdab062ad8e5bd742.1290442820.git.paul.eggleton@intel.com>
References: <cover.1290442820.git.paul.eggleton@intel.com>
	<8a1b03e53beef4537adab1dcdab062ad8e5bd742.1290442820.git.paul.eggleton@intel.com>
Date: Mon, 20 Dec 2010 12:31:59 +0000
Message-ID: <1292848319.2466.19.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/1] sstate.bbclass: delete sstate files when doing cleanall
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
X-List-Received-Date: Mon, 20 Dec 2010 12:32:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-22 at 16:05 +0000, Paul Eggleton wrote:
> This fixes the cleanall task to actually delete the sstage cache files. This
> was not working correctly before due to attempting to use the current task's
> hash in the package file name to be deleted, which of course is the hash of
> the cleanall task when doing cleanall. The siginfo files are now deleted as
> well.
> 
> Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>

Acked-by: Joshua Lock <josh@linux.intel.com>

I can confirm that this bug still exists and that this patch fixes it.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


