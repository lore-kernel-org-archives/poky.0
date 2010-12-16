Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 984D84C81081
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 09:45:27 -0600 (CST)
Received: from [192.168.0.7] (5ad2c26b.bb.sky.com [90.210.194.107])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 17E1912EC1F6
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:24:05 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <201012160949.49288.paul.eggleton@intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
	<c5ab4d56f97a0e45b124d40c9f536541be04c201.1292430240.git.josh@linux.intel.com>
	<4D0916F4.9060703@linux.intel.com>
	<201012160949.49288.paul.eggleton@intel.com>
Date: Thu, 16 Dec 2010 15:45:19 +0000
Message-ID: <1292514319.2472.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 01/14] openssl-native: disable execstack flag to prevent problems with SELinux
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
X-List-Received-Date: Thu, 16 Dec 2010 15:45:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-16 at 09:49 +0000, Paul Eggleton wrote:
> On Wednesday 15 December 2010 19:28:52 Darren Hart wrote:
> > > -	-DTERMIO ${FULL_OPTIMIZATION} -Wall"
> > > +	-DTERMIO ${FULL_OPTIMIZATION}"
> > 
> > Why do we need to remove -Wall? Doesn't that reduce our visibility into 
> > potential issues?
> 
> We don't - actually this was a mistake that I was sure had I removed from the original patch. -Wall should be put back in.

I've merged the patch which does this to josh/laverne.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


