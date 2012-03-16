Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66105E013A2
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 07:55:44 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id ACFDFF811FD; Fri, 16 Mar 2012 08:55:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 692F8F811F9;
	Fri, 16 Mar 2012 08:55:42 -0600 (MDT)
Message-ID: <4F63546E.4000407@mlbassoc.com>
Date: Fri, 16 Mar 2012 08:55:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Can't build web-webkit
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
X-List-Received-Date: Fri, 16 Mar 2012 14:55:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm getting an error fetching for meta/recipes-sato/web/web-webkit_git.bb
I tried running the clone by hand:

   $ git clone git://git.yoctoproject.org/web-webkit
   Cloning into 'web-webkit'...
   fatal: remote error: access denied or repository not exported: /web-webkit

Query: I have a tar package of this (I built it yesterday! using only that)
Why is the fetcher trying to go to the network for it now?

Note: if I populate ${BUILD}/downloads/git2/git.yoctoproject.org.web-webkit
from my tarball, the build succeeds without problems.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

