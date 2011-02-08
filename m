Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 101754C80A7C
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 04:49:22 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p18AnJlQ032525;
	Tue, 8 Feb 2011 10:49:19 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32356-03; Tue,  8 Feb 2011 10:49:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p18An8ic032519
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Feb 2011 10:49:09 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
Date: Tue, 08 Feb 2011 10:49:03 +0000
Message-ID: <1297162143.1350.25883.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Chasing fetcher issues in circles
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
X-List-Received-Date: Tue, 08 Feb 2011 10:49:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Bruce,

I've been chasing a fetcher issue around in circles, I have something
concrete to report back now.

We need to have the fetcher code work for the kernel recipes without
network access. The problem is that the kernel git recipe is complex,
has multiple branches and supports a variety of configurations. The root
of some of the problems is the chunk of anonymous python in
kernel-yocto.bbclass.

The trouble is we have a race between the variable PV being expanded
*anywhere* and that anonymous python running. The race is that other
anonymous python may run before the recipes anonymous python and that
other code can touch trigger an expansion of PV.

What happens if PV is expanded first?

Basically, the fetcher variables aren't setup and it falls back to the
UNDEFINED machine, the revisions are then set based on the undefined
machine rather that the true machine branch and confusion ensues. Worse
again, the fetcher can cache the first set of values it calculates.

One symptom of this and how it triggers a network access is that
SRCREV_machine can be set to "yocto/standard/base". I added:

http://git.pokylinux.org/cgit.cgi/poky/commit/?id=32dbc70e86c3b186658dcaa84a8c7cd76a50e069

a short while ago so at least this is something resolvable (the fetcher
would do a "git ls-remote" on this) but it still means a network access
and it still means the fetcher config is broken at some point and at
risk of being cached.

So firstly, to fulfil our network access concerns when the kernel is
used with an undefined machine, we need one more SRCREV to be added to
poky-default-revisions.inc. I've done this in the following rfc commit:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/kernelchange&id=3e7e2a6d2c144a4f45e3cc37a75f78285987d1f9


That is a valid fix we need regardless but I think this race window is
what has been causing various people (like Darren and Tom) a lot of pain
and I really want to stop that *ever* happening again.

Even with the above change, it just stops us hitting the network, the
race still happens and the data is inconsistent.

So the takeaway is that the anonymous python isn't working. As far as I
can tell we can do one of two things:

a) If we really need some python code, there is a nasty way we can hack
it in and ensure it runs before SRCPV is expanded. This is hacktastic
but the patch is:

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/kernelchange&id=8c2105e563e1aa2271201b27242b2936b265c72d

and I've confirmed this does actually work as intended.

b) The other option is we reduce the amount of anonymous python and use
other means to set the require variables.

For example, the 2.6.34 bits could be turned into a separate class which
overrides the default options and is only included by the 2.6.34
recipe(s). For the branch manipulations performed in code it does look a
little backwards since it looks like KMACHINE is following the old style
kernel still. Shouldn't we be detecting the old style and converting
that to new in the 2.6.34 case rather than converting existing variables
to the .37 style?

My worry here is that manipulating variables behind the user's back
tends to confuse them so its fine for upgrading to a new version but
doing it for our new default version is a little concerning.

Anyhow, there is some food for thought here. The patches above did turn
out a lot nicer looking than I thought they would when I started writing
the email!

Cheers,

Richard




