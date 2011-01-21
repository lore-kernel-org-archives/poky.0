Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B6974C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 06:58:11 -0600 (CST)
Received: by wye20 with SMTP id 20so1788425wye.35
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:58:11 -0800 (PST)
Received: by 10.216.241.66 with SMTP id f44mr534093wer.70.1295614691247;
	Fri, 21 Jan 2011 04:58:11 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	b30sm4874019wen.25.2011.01.21.04.58.10
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 21 Jan 2011 04:58:10 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295614033.14388.30423.camel@rex>
Date: Fri, 21 Jan 2011 13:58:09 +0100
Message-Id: <9C72B623-6A5C-4943-AD7B-0A90E6077903@dominion.thruhere.net>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com> <4D38DFB5.3000907@intel.com>
	<1295600248.2382.10.camel@scimitar>
	<1295614033.14388.30423.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 12:58:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 jan 2011, om 13:47 heeft Richard Purdie het volgende geschreven:

> On Fri, 2011-01-21 at 08:57 +0000, Joshua Lock wrote:
>> On Fri, 2011-01-21 at 09:21 +0800, Zhai, Edwin wrote:
>=20
>>>> webkit-gtk 1.2.6
>>>>=20
>>>=20
>>> Our poky seems never has stable release, and always use development=20=

>>> branch. Maybe we want some new feature? RP can comment. Another =
benefit=20
>>> is development branch is under svn, so we can selectively pick some=20=

>>> modules instead of big whole repo. Given development branch, there =
is no=20
>>> even/odd difference.
>>>=20
>>> I have a plan to change it to stable release with the cost of long=20=

>>> download & compile time, but I'm afraid can't make it in this =
release cycle.
>>=20
>> I think we need someone else to own downgrading this recipe for the =
next
>> release then, we can't commit to a 6month stable cycle with an =
unstable
>> software package. Do you have a handle on potential impact of
>> downgrading this recipe?
>>=20
>> IIRC only the sato browser (web-webkit) is affected by this recipe?
>=20
> webkit is an odd beast. My gut instinct says we're better off keeping =
up
> to date with webkit and the 1.3.7 version is ok in this case. I don't
> know how "old" 1.2.6 is and how unstable the 1.3 series is though. For
> what we use it for (web-webkit), 1.3.7 is probably fine?

The version is largely concerned with the GTK glue, not really with the =
underlying core webkit stuff. There is an SONAME change (webkit -> =
webkitgtk) in the 1.3.x series that would be nice to have, since it =
fixes namespacing issues when trying to use both webkit-gtk and =
webkit-efl. 1.3.x has been treating me well in angstrom so far.

regards,

Koen=

