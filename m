Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A80844C81065
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 03:00:31 -0600 (CST)
Received: by wye20 with SMTP id 20so1584955wye.35
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 01:00:30 -0800 (PST)
Received: by 10.227.58.73 with SMTP id f9mr374336wbh.171.1295600430122;
	Fri, 21 Jan 2011 01:00:30 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m13sm6709871wbz.9.2011.01.21.01.00.29
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 21 Jan 2011 01:00:29 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295600248.2382.10.camel@scimitar>
Date: Fri, 21 Jan 2011 10:00:28 +0100
Message-Id: <3E98DC04-B56F-4E97-A7AD-F2CFA0FB166C@dominion.thruhere.net>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com> <4D38DFB5.3000907@intel.com>
	<1295600248.2382.10.camel@scimitar>
To: Joshua Lock <josh@openedhand.com>
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
X-List-Received-Date: Fri, 21 Jan 2011 09:00:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Op 21 jan 2011, om 09:57 heeft Joshua Lock het volgende geschreven:

> On Fri, 2011-01-21 at 09:21 +0800, Zhai, Edwin wrote:
>> I am always challenged by the version checking system that why not=20
>> upgrade to latest version:(
>> See my comments below for these packages...
>>=20
>> Wold, Saul wrote:
>>> On 01/18/2011 04:46 PM, Zhai Edwin wrote:
>>>=20
>>>> Saul,
>>>> This is the 2nd pull request for gtk+,gdk-pixbuf,apr. Also added =
webkit-gtk.
>>>> Qemu upgrade is under test across all platforms, and will be out =
soon.
>>>>=20
>>>>=20
>>>=20
>>>=20
>>> Edwin,
>>>=20
>>> It was noticed that you updated a little too aggressively!  For the=20=

>>> gtk+, webkit, eds-dbus and glib, you moved to the development =
versions.
>>>=20
>>> In some open source project even releases are stable and odd =
releases=20
>>> are unstable, so in this case we want to go to the following:
>>>=20
>>> gtk+: 2.22.1
>>>=20
>>=20
>> There is also 2.90.X there. And I treated it as development branch, =
and=20
>> stick to lower version.
>> I have compared between 2.22.1 and 2.23.2, and found no much =
difference.=20
>> One case is 2.23.2 support libtool 2.4, but 2.22.1 doesn't, so we may=20=

>> have some autoconf issue there. Anyway, if you want to stick with =
stable=20
>> version=EF=BC=8C I can downgrade it to 2.22.1.
>=20
> GNOME version naming should be fairly well documented, version numbers
> are split into x.y.z components.
> The policy is Major.Minor.Release, with an odd minor number indicating =
a
> development release and an even minor number indicating a stable
> release.
>=20
> http://live.gnome.org/ReleasePlanning/ModuleRequirements/Platform
>=20
> 2.90.X is the development series for Gtk+3, a major release with no =
ABI
> guarantee to 2.x - though admittedly this seems to disagree with the
> versioning scheme above.
> If we're going to package 2.90.x it should be in addition to a 2.x
> release, be parallel installable and the recipe be named sufficiently =
to
> indicate that this is gtk+ 3.
>=20
> The 2.23.x unstable branch is towards making a new release of Gtk+ =
with
> the API/ABI guarantees of the 2.x series for people who are not in a
> position to upgrade to Gtk+3. Most distributions will ship 2 and 3 for
> at least a release or two while non-GNOME software is updated.
>=20
>>=20
>>> glib: 2.26.1
>>>=20
>>=20
>> Dongxiao owned this?
>>> eds-dbus: 2.32
>>>=20
>>=20
>>=20
>> My previous upgrade is 2.32.1. But with added nss/nspr, it's =
rejected.=20
>> Working is in progress.
>>=20
>>> webkit-gtk 1.2.6
>>>=20
>>=20
>> Our poky seems never has stable release, and always use development=20=

>> branch. Maybe we want some new feature? RP can comment. Another =
benefit=20
>> is development branch is under svn, so we can selectively pick some=20=

>> modules instead of big whole repo. Given development branch, there is =
no=20
>> even/odd difference.
>>=20
>> I have a plan to change it to stable release with the cost of long=20
>> download & compile time, but I'm afraid can't make it in this release =
cycle.
>=20
> I think we need someone else to own downgrading this recipe for the =
next
> release then, we can't commit to a 6month stable cycle with an =
unstable
> software package.=20

You might want to fix glib-2.0 as well, only a 2.27.x recipe is in yocto =
currently=

