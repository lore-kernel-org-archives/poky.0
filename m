Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6ADDE0073F
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 12:12:58 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2A02FF811EA; Wed, 20 Jun 2012 13:12:58 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A4FB0F81188;
	Wed, 20 Jun 2012 13:12:56 -0600 (MDT)
Message-ID: <4FE220B8.2080903@mlbassoc.com>
Date: Wed, 20 Jun 2012 13:12:56 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: New warning
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
X-List-Received-Date: Wed, 20 Jun 2012 19:12:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

For a while now, I've been seeing warnings like this:
   WARNING: Unable to get checksum for some-pkg SRC_URI entry some.patch: file could not be found
This happens when I have two intertwined layers - I have a recipe in layer1
which references a file satisfied only by layer2.  This is how I handle common
recipes with many targeted [BSP] layers in addition.

Why is this warning happening?
What can I do to suppress it?

I suppose that someday, these warnings might get elevated to errors
so I'd really like to know how to fix them.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

