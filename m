Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E8DE011D1
	for <poky@yoctoproject.org>; Tue, 29 May 2012 03:12:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4TACnu2011718;
	Tue, 29 May 2012 11:12:49 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07953-09; Tue, 29 May 2012 11:12:45 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4TACfPS011711
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 29 May 2012 11:12:42 +0100
Message-ID: <1338286361.20169.101.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 29 May 2012 11:12:41 +0100
In-Reply-To: <1860364.RiBI5vjcRR@helios>
References: <4FC3B862.7040305@mlbassoc.com> <1860364.RiBI5vjcRR@helios>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Unexpected bugzilla behaviour
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
X-List-Received-Date: Tue, 29 May 2012 10:12:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-29 at 10:57 +0100, Paul Eggleton wrote:
> On Monday 28 May 2012 11:39:46 Gary Thomas wrote:
> > I was making a reply to bug #1570 and the next thing I know I had
> > a full-up page for bug #1587 where I errantly added an attachment.
> > 
> > My recall was that bugzilla would stay with the bug you're working
> > on - I could make a comment and then add an attachment without leaving
> > the same bug report.  That doesn't seem to be the case now and it
> > left me not only confused but putting comments and attachments in
> > the wrong place.
> > 
> > Did this change with the bugzilla "upgrade"?
> 
> AFAIK Bugzilla has always had this mis-feature. The worst thing is it's not 
> consistent - if you didn't have a bug "list" (previous search results) then it 
> will stay on the current bug.
> 
> I've even heard of a Firefox add-on that will override this behaviour, but I 
> never looked into it.

Its always done this but there is an option in your preferences to stop
it doing it. I know I set that a while ago for me and it is still set
after the upgrade...

Cheers,

Richard


