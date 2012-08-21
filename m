Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFAECE0044A
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 07:10:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 18F6DF811F3; Tue, 21 Aug 2012 08:10:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9D3BCF811ED;
	Tue, 21 Aug 2012 08:09:58 -0600 (MDT)
Message-ID: <503396C3.9020705@mlbassoc.com>
Date: Tue, 21 Aug 2012 08:10:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: knotty2
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
X-List-Received-Date: Tue, 21 Aug 2012 14:10:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I just updated to master:6ed4012fefee1294d98f2ea76163d44acf3d045
The new "knotty2" interface is very impressive and a welcome improvement
from the old CLI :-)

One thing I noticed though - during much of the first phase(*) of a
new build (where it's building the early native packages), I only
get one task running at a time even though I've set BB_NUMBER_THREADS ?= "4"
What needs to be so serialized?

Once it gets past this phase and into building the main recipes,
it goes back to running more than one task at a time.

(*) Do these various build phases have names?  Is this documented?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

