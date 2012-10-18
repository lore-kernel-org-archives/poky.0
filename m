Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A2E8E01275
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 09:37:11 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BADA1F81205; Thu, 18 Oct 2012 10:37:10 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D0C7BF811F2;
	Thu, 18 Oct 2012 10:37:08 -0600 (MDT)
Message-ID: <5080305D.2060001@mlbassoc.com>
Date: Thu, 18 Oct 2012 10:37:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121011 Thunderbird/16.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Issue with git fetcher
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
X-List-Received-Date: Thu, 18 Oct 2012 16:37:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I like to run Poky/Yocto with a pre-populated source cache,
built up over time, and rely on BB_NO_NETWORK to tell me
when stuff actually needs to come from the network.  This
works quite well - only when there is a new/changed recipe
do I have to relax BB_NO_NETWORK and once I've built the
offending recipe, I save the sources (I also use BB_GENERATE_MIRROR_TARBALLS="1")
back to my source cache.

I ran across an issue with this with a recipe I imported from
meta-openembedded/meta-oe.  It contained these lines:
   SRCREV = "2fb4be9a99a2c2a9435339830e3d940171cc0d9b"
   SRC_URI = "git://git.libav.org/libav.git;protocol=git;branch=release/0.8"

So, the first time I built it without BB_NO_NETWORK, then I saved
the resulting tar file.  However, when I tried to build it again,
this time in a new build tree with BB_NO_NETWORK set, it failed!
I went looking through the tar file (just a bare clone of the git tree)
and found that the revision in question was not there.

The only thing I could see that's unique about this recipe is the
'branch=release/0.8'.  To see if this was the issue, I removed it
and replayed the whole process (rebuilding the tar file) & now fetch
works even with BB_NO_NETWORK :-)

Is this expected, or is it a bug?

n.b. I hammer on this functionality as I have to deliver fixed source
packages to customers (some of whom may not have easy network access,
some who just want to know what they are getting/using), so I rely
on being able to build with BB_NO_NETWORK set.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

