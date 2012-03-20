Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AEBE013E9
	for <poky@yoctoproject.org>; Mon, 19 Mar 2012 19:20:34 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 889F8F8122F; Mon, 19 Mar 2012 20:20:33 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 97971F8122C;
	Mon, 19 Mar 2012 20:20:32 -0600 (MDT)
Message-ID: <4F67E970.2020708@mlbassoc.com>
Date: Mon, 19 Mar 2012 20:20:32 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Can't run HOB
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
X-List-Received-Date: Tue, 20 Mar 2012 02:20:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

When I try HOB on my tree, it parses the metadata to around 57%
and then brings up what I guess is a warning (sadly, it only shows
an empty dialogue with an "OK" button).  This seems to happen because
I have meta-ti in my bblayers.conf.  I also have this statement in
my local.conf:
   # Ignore troublesome TI recipes
   BBMASK = ".*/meta-ti/recipes-misc/"

Maybe HOB is not honouring the BBMASK?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

