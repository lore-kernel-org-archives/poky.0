Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 670934C80BD4;
	Wed, 15 Dec 2010 20:41:30 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Dec 2010 18:41:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="687617253"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 18:41:07 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 10:40:33 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 16 Dec 2010 10:40:32 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Saul Wold <sgw@linux.intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>, "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 16 Dec 2010 10:40:29 +0800
Thread-Topic: [poky] Recipe Updating Status and call to action
Thread-Index: AcucvGebHWzVq86nSRKyRJnao04hbgACfrKw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4093D7@shsmsx502.ccr.corp.intel.com>
References: <4D096431.2000107@linux.intel.com>
In-Reply-To: <4D096431.2000107@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Recipe Updating Status and call to action
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
X-List-Received-Date: Thu, 16 Dec 2010 02:41:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Saul Wold
>Sent: Thursday, December 16, 2010 8:58 AM
>
>Folks,
>
>As we get ready for M3 opening up shortly, I wanted to get folks aware
>of where we are with M2 and the recipe updating process.  Based on my
>rough reckoning, we had about 266 recipes that needed updating at the
>start of M2, we updated about 110 (possibly more).  There are now about
>160 recipes in the update list that need tackling.
>
>Also, the distro tracking data for Version information is getting stale,
>there are about 135 RECIPE_LATEST_VERSION metadata tags that need to be
>updated.
>
>I have attached a spreadsheet that shows the update status of both the
>upstream (RMatch Column) and tracking data (TMatch Column).
>
>I would like to see the team and community pitch in and complete these
>160 recipe updates for the 1.0 Release. Please be sure the ownership /
>RECIPE_MAINTAINER information is correct.
>

I'm kind of surprised when seeing this data, as I thought we have upgraded =
more
than 110 recipes. Then distro team gathered just now to understand whether =
there's
anything mismatch. The major point causing confusion is that the code gener=
ating
above sheet is stateless, which doesn't track historical data while there d=
o have
many packages releasing new versions just in M2 window. This then moves som=
e
packages we do upgrade into the '160' group. Basically we think those items=
 with small=20
version difference fall into this category. So it's not that bad as I origi=
nally thought. :-)

Ke is collecting some data and will reply later to clarify in 160 recieps:
	- what have been upgraded in M2 window already, and
	- what have not been touched at all

With that data we'll see how much work remains in M3 for this task.

On the other hand, along with this I realize that there's one area we need =
further
discuss. How often should we upgrade packages in a given release cycle? Mee=
Go=20
only does once. For Yocto we want to keep our recipes in cutting-edge which=
 is=20
why we schedule two upgrade windows in M2 and M3 this time. The policy for =
each=20
recipe however could be a bit different:

	- M2 is our 1st upgrade window, within which we try to upgrade as many=20
recipes as possible to avoid rush push in last release point. The order is =
done by:
		* first upgrade small version changes in a batch which normally implicate=
s=20
those recipes have been touched in previous release cycle and thus small ri=
sk
		* then upgrade the rest recipes which may need more debug time=20
because they may not been touched for some time or at all

	- M3 (now) is our 2nd upgrade window, within which we try to ensure our=20
final release in cutting-edge. Then I suggest a reverse order:
		* first upgrade recipes which haven't been covered in M2, which implicate=
s=20
more work required and higher risk
		* then upgrade small version changes at end of the window. This way=20
can ensure catching latest version or else we may need to do it multiple ti=
mes if doing
it too early. This has small risk

So in generally I propose to have a longer window for recipes which have be=
en=20
upgraded and got a new version now. For now we can have distro team focusin=
g on
those recipes which haven't been touched yet.

Does it sound OK?

----

BTW, I think our package report system (in experimental phase now) can help
the upgrade decision clearly. A suggested flow will be:

The server checks upstream version every day or every several days. When th=
ere's
a new version newly released, a mail will be sent to the recipe owner and C=
C this
list.

The owner then need react to the notification:
	- verify whether this is a valid message
	- decide whether a upgrade is required. The reason for non-upgrade could b=
e:
		* pure SCM commit (for SCM check we may need more thinking)
		* an unstable release
		* known critical bugs/security holes
		* not worthy of upgrade effort since no new features are introduced
		* ...
	- mark decision on the package report system
		* to-be-upgraded
		* not upgrade (if so, reason). If we still use RECIPE_NO_UPDATE_REASON,
then a patch may be required to update that field
	=09
The package report system will record all the historical versions and decis=
ions, to
avoid trigger unnecessary messages again.

When a upgrade window starts and ends, we can then use above stateful data =
to
draw overall picture and track our progress accurately.

Comments?=20

Thanks
Kevin

