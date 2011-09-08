Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9480CE012A9
	for <poky@yoctoproject.org>; Thu,  8 Sep 2011 05:55:14 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3D6B21660591; Thu,  8 Sep 2011 06:55:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6684E166035F;
	Thu,  8 Sep 2011 06:55:12 -0600 (MDT)
Message-ID: <4E68BB30.9070300@mlbassoc.com>
Date: Thu, 08 Sep 2011 06:55:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [OT] splitting GIT repositories
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
X-List-Received-Date: Thu, 08 Sep 2011 12:55:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Sorry for the off-topic question, but I'm sure that I'm not the
only Poky user out there that has a similar dilemma.

When I started working with Poky (quite some years ago), I added
my code/recipes/... to the Poky GIT tree locally.  This let me
keep my parts up to date with the global repository fairly easily.
I've tried to keep things such that my changes are separated from
the Poky master changes.

Now that the layering system is working well, and indeed I could
move from pure Yocto/Poky to oe-core, I'd like to split my files
away from the Poky tree I've been using.  I'd also like to keep
history, etc, for my code as I do this.

Is there some way to purge Poky master from my local tree?  In
other words, remove all the Yocto/Poky files & directories, including
any history/commits/etc that go along with them?

I've experimented some with clone + filter-branch which does
strip away the parts I don't want, but the history is cluttered
with Poky mainline commits.  In the end, I'd like to end up with
just my files and the commits that created them.

Thanks for any pointers or ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

