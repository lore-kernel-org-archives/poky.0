Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CBBF4C80FE8
	for <poky@yoctoproject.org>; Wed, 18 May 2011 16:08:14 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D382E1660320; Wed, 18 May 2011 15:08:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E72261660332;
	Wed, 18 May 2011 15:08:10 -0600 (MDT)
Message-ID: <4DD4353A.9040607@mlbassoc.com>
Date: Wed, 18 May 2011 15:08:10 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4DD42F74.7040009@mlbassoc.com>
In-Reply-To: <4DD42F74.7040009@mlbassoc.com>
Subject: Re: Poky master broken
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
X-List-Received-Date: Wed, 18 May 2011 21:08:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/18/2011 02:43 PM, Gary Thomas wrote:
> Just merged with 3ea694cf688f26d47149200d0dc522da51a87e58
> Try to build perl for beagleboard fails - see log at
> http://www.mlbassoc.com/poky/perl-do_compile

Seems to have been caused by
   commit 5a3d24e6bfc371ce9445cd2676dfa20ac82cb7a0
   Author: Tom Rini <tom_rini@mentor.com>
   Date:   Mon May 16 13:14:12 2011 -0700

     perl-native: create_wrapper on perl${PV} too

Reverting this change lets me build the target perl.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

