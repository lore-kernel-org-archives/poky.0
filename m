Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 710B44C80B71
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 05:01:12 -0600 (CST)
Received: from [10.250.128.97] (unknown [158.43.2.102])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id D7DED12EC1CD
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 05:38:15 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <d08034b54b5cd2dbf4acf072441d1bc31d916a0f.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
	<d08034b54b5cd2dbf4acf072441d1bc31d916a0f.1290046217.git.sgw@linux.intel.com>
Date: Thu, 18 Nov 2010 11:01:03 +0000
Message-ID: <1290078063.2487.9.camel@scimitar>
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
X-List-Received-Date: Thu, 18 Nov 2010 11:01:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hey Saul,

On Sun, 2010-11-07 at 09:16 -0800, Saul Wold wrote:
> This is the next stage of recipe reorganization, in this stage
> many recipes where moved to a new meta-demoapps layer since this
> is more appropriate for demo usage then the core.  Additional some
> recipes were moved to meta-extras to indicate they may be depercated
> at a future time.
> 
> A number of recipes were modified since dependencies need to be
> corrected.

This seems like a good move to make, however I'm disturbed by some of
the things that have been moved to meta-demoapps. 

I'd like to see this literally just containing applications, I think we
should support any libraries in the core metadata so that people can
more easily build on them.

Some explicit examples are telepathy-gabble (XMPP connection manager for
telepathy) and telepathy-farsight (audio/video framework used by
Telepathy). I can see quite a few of our users wanting to use these
libraries.

Further you've moved gnome-settings-daemon to meta-demoapps, I'm a bit
worried about having an images dependencies live in a separate
(potentially disabled) layer to the image. Any particular reason for
this move? Is the intention to move the whole Sato UI to meta-demoapps?

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


