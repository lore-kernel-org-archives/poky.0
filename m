Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id B4C114C811C1
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 12:43:14 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id F3C9212EC11B
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 13:21:22 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CFE7269.4000507@intel.com>
References: <4CFD94DD.7010906@intel.com>  <4CFE7269.4000507@intel.com>
Date: Tue, 07 Dec 2010 18:43:06 +0000
Message-ID: <1291747386.9405.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: Master Stability
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
X-List-Received-Date: Tue, 07 Dec 2010 18:43:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 09:44 -0800, Elizabeth Flanagan wrote:
> Acked-by: Beth Flanagan
> 
> (Stands on build engineer soap box)
> 
> If at all possible, when you try to verify a fix, do a full clean build
> for more than just one arch using BB_NUMBER_THREADS and PARALLEL_MAKE.
> With the number of pull requests coming through, it becomes more and
> more vital to verify patches prior to sending them out.
> 
> Preferably, I'd like to start seeing people add something like a
> Verified-with: <build target> tag to pull requests, so we can at least
> identify pulls that need more peer review than normal.

Personally I'd like to see links to an autobuilder report showing it has
succeeded and if such a tag is *not* on a pull request it's
automatically pushed to an autobuilder instance with the success of the
build sent back to the list as a reply to the patch thread.

I think hardware constraints make this a bit of a pipe dream though?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


