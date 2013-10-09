Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F974E015BA
	for <poky@yoctoproject.org>; Wed,  9 Oct 2013 15:15:47 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C5DCFF811FE; Wed,  9 Oct 2013 16:15:45 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A2A93F811EA;
	Wed,  9 Oct 2013 16:15:42 -0600 (MDT)
Message-ID: <5255D598.7040007@mlbassoc.com>
Date: Wed, 09 Oct 2013 16:15:52 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <7BDD69127112414F90CF3FED4711BF150D15A47D1C@IAD2MBX05.mex02.mlsrvr.com>
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47D1C@IAD2MBX05.mex02.mlsrvr.com>
Subject: Re: Zeromq recipe
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Oct 2013 22:15:48 -0000
X-Groupsio-MsgNum: 9256
Content-Type: multipart/mixed; boundary="------------000809070705030507080809"

--------------000809070705030507080809
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-10-09 14:20, Michael Davis wrote:
> Hi there,  I would like to cross-compile zeromq-3.2.3 source (http://download.zeromq.org/) into my poky build for zynq zx3.  I figured that the best way would be to create a new
> layer with a bb recipe that can find the source.  I am trying to use something like this recipe:
> https://github.com/openembedded/openembedded/blob/b8e90091aca8777092aa410fbfbb5c5d8cc7cbcb/recipes/zeromq/zeromq_2.1.6.bb
>
> I’ve created a new layer with a .bb file like this and a simple layer.conf to find it.  I’ve also added the layer to bblayers.conf.  Poky doesn’t seem to want to build the source
> though.  It recognizes the layer and parses the bb file but never builds the package or integrates it to my ramdisk image.  This is my first try at making a bb recipe, so perhaps I
> am just missing something important.  Should I be specifying compile and install steps other than the default steps?  Any info on creating layers and recipes would be greatly
> appreciated.  Thank you!

I'm not sure why your recipe doesn't work, but the attached
one builds fine (a slightly older package rev).  You might try it.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------000809070705030507080809
Content-Type: text/plain; charset=UTF-8;
 name="zeromq_3.2.0.bb"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="zeromq_3.2.0.bb"

DESCRIPTION = "Zeromq - The Intelligent Transport Layer"
LICENSE = "GPLv3 | LGPLv3"
LIC_FILES_CHKSUM = " \
		 file://COPYING;md5=f7b40df666d41e6508d03e1c207d498f \
		 file://COPYING.LESSER;md5=8edeb3c8f93fd8487fefa07fcb5567d3 \
"

SRC_URI = "http://download.zeromq.org/zeromq-${PV}-rc1.tar.gz"
SRC_URI[md5sum] = "e700b4d447ca6c159ae5c12e357f7d72"
SRC_URI[sha256sum] = "6418523f281f618b9da677b8b640c158049a4f7e6f9f391909101b242e4cc991"

inherit autotools gettext


--------------000809070705030507080809--
