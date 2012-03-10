Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A720E0059B
	for <poky@yoctoproject.org>; Sat, 10 Mar 2012 07:31:51 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8F82AF811F4; Sat, 10 Mar 2012 08:31:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 52E3EF811F3;
	Sat, 10 Mar 2012 08:31:50 -0700 (MST)
Message-ID: <4F5B73E6.9040908@mlbassoc.com>
Date: Sat, 10 Mar 2012 08:31:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Poky doesn't play nice with meta-oe
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
X-List-Received-Date: Sat, 10 Mar 2012 15:31:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I wanted to do some experimenting with midori (a webkit based
browser that is [arguably] better than web2) in my familiar Poky
environment.  I've run midori in the past by cobbling in the
recipes and dependencies, but I wanted to see if I could just
use the whole meta-oe layer, as is.  Here's what I tried:

* Build core-image-sato for qemuarm from latest master
   Everything works as expected

* Add in meta-oe layers, in particular (I used my up-to-date checkout
   of Angstrom for this):
     /local/new-angstrom/sources/meta-openembedded/meta-xfce \
     /local/new-angstrom/sources/meta-openembedded/meta-multimedia \
     /local/new-angstrom/sources/meta-openembedded/meta-gpe \
     /local/new-angstrom/sources/meta-openembedded/meta-initramfs \
     /local/new-angstrom/sources/meta-openembedded/meta-efl \
     /local/new-angstrom/sources/meta-openembedded/meta-oe \
     /local/new-angstrom/sources/meta-openembedded/meta-gnome \

* Rebuild core-image-sato
   Lots of packages get rebuilt, down to GCC which has been updated
   to r27 from r22.  I thought the poky meta "core" was tracking meta-oe
   and openembedded-core more closely than this.

   Image will boot, but most things are broken, no X, no network, ...

It looks like the evil systemd has pervaded meta-oe (which IMO should
be at least a DISTRO decision).

I guess the only way I'll be able to test this in Poky, if at all,
will be to only import the midori recipes and its dependencies, which
there seem to be many.

Oh well, so much for my "simple" test.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

