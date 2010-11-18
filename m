Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7915F4C80BD4
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 12:22:38 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id D2DE712EC1C4
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 12:59:42 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <1290078063.2487.9.camel@scimitar>
References: <cover.1290046217.git.sgw@linux.intel.com>
	<d08034b54b5cd2dbf4acf072441d1bc31d916a0f.1290046217.git.sgw@linux.intel.com>
	<1290078063.2487.9.camel@scimitar>
Date: Thu, 18 Nov 2010 18:22:29 +0000
Message-ID: <1290104549.2487.58.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: Re: [PATCH 1/5] Meta: Recipe Reogranization
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
X-List-Received-Date: Thu, 18 Nov 2010 18:22:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-18 at 11:01 +0000, Joshua Lock wrote:
> Further you've moved gnome-settings-daemon to meta-demoapps, I'm a bit
> worried about having an images dependencies live in a separate
> (potentially disabled) layer to the image. Any particular reason for
> this move? Is the intention to move the whole Sato UI to meta-demoapps?

Apologies, I've had a thinko here - we don't use gsd in sato.

Ignore this point.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


