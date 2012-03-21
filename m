Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA65E0070C
	for <poky@yoctoproject.org>; Wed, 21 Mar 2012 04:25:55 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id F1351F811F6; Wed, 21 Mar 2012 05:25:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 64593F811F0;
	Wed, 21 Mar 2012 05:25:54 -0600 (MDT)
Message-ID: <4F69BAC2.30902@mlbassoc.com>
Date: Wed, 21 Mar 2012 05:25:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: abi_version.conf
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
X-List-Received-Date: Wed, 21 Mar 2012 11:25:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Poky has two:
   meta/conf/abi_version.conf
   meta-yocto/conf/abi_version.conf
and they are different:
   $ diff -u meta/conf/abi_version.conf meta-yocto/conf/abi_version.conf
   --- meta/conf/abi_version.conf  2012-03-16 05:28:23.000000000 -0600
   +++ meta-yocto/conf/abi_version.conf    2012-03-16 05:28:23.000000000 -0600
   @@ -4,4 +4,4 @@
    # that breaks the format and have been previously discussed on the mailing list
    # with general agreement from the core team.
    #
   -OELAYOUT_ABI = "7"
   +OELAYOUT_ABI = "8"

So, as Robert Day pointed out, depending on how these layers are
processed, you get different build results...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

