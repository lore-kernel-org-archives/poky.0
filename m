Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64C294C80B71;
	Thu, 16 Dec 2010 20:02:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 18:02:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="637301612"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 18:02:18 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:02:17 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 10:02:16 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Date: Fri, 17 Dec 2010 10:02:14 +0800
Thread-Topic: [poky] Recipe Updating Status and call to action
Thread-Index: AcudbBtjPLuta1tJTmeqvjJLuebgogAH26Dw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409833@shsmsx502.ccr.corp.intel.com>
References: <4D096431.2000107@linux.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4093D7@shsmsx502.ccr.corp.intel.com>
	<4D0A8B0F.8000208@intel.com>
In-Reply-To: <4D0A8B0F.8000208@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 17 Dec 2010 02:02:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Garman, Scott A
>Sent: Friday, December 17, 2010 5:57 AM
>
>On 12/15/2010 06:40 PM, Tian, Kevin wrote:
>> On the other hand, along with this I realize that there's one area we ne=
ed further
>> discuss. How often should we upgrade packages in a given release cycle? =
MeeGo
>> only does once. For Yocto we want to keep our recipes in cutting-edge wh=
ich is
>> why we schedule two upgrade windows in M2 and M3 this time.
>
>I'd like to question this. Is the goal for Poky/Yocto to track the
>bleeding-edge releases of software, or is the goal to be a well-tested
>and stable foundation for embedded software applications?

I think the both. :-)

>
>Upgrading a recipe within a couple of weeks of its release may end up
>using more of our resources if/when we encounter new bugs that were
>introduced in the new release. Or worse, if we don't encounter them
>during distro builds and then our users take our release and discover
>them for themselves.

This is always being a tradeoff in all distributions. There's no simple gui=
deline
whether there's severe risk to upgrade to a latest release, and I think the
one general rule is to pick up a newer release with enough stability. How t=
o
judge that? This finally goes to the owner of each recipe.

>
>I'm not saying we need to be as conservative as long-term-support
>enterprise Linux distros, but IMHO I think racing to always upgrade our
>recipes to versions released a handful of weeks ago can be
>counterproductive in many situations.
>
>A policy I might put forward for consideration is this: recipe upgrades
>are done once per release cycle, and upstream versions that have come
>out within the last 30 days should not be upgraded unless we have a
>really good reason for doing so.
>

I think there's no simple guideline meaningful in general context like this=
. All the
decisions should come to the actual recipe maintainer, based on his knowled=
ge
in this specific area. Once we involve with upstream more closely, we shoul=
d be
able to tell whether a new release is worthy to go or not in most cases.

Besides that, what in general we can do is about the process.

That's why we come up a two phase upgrade windows in 1.0. With the first wi=
ndow
as the major upgrade, and the 2nd window to catch up minor version changes =
which
should be with little risk. If there's important release coming out in 2nd =
window, we
(again mainly the recipe owner) again need to make decision instead of a si=
mple
global rule "to go" or "not to go". As I raised in early thread, I suggest =
to those=20
minor version upgrade in later of 2nd window.

That's also why we're currently developing the package reporting system, wh=
ich is
expected to check upstream release periodically and once a new release comi=
ng
out the maintainer gets notified to make decision.

So in a nutshell:
	- the general goal is to being cutting-edge
	- we work out a process which give recipe maintainers enough opportunities
to check new releases of packages they own, toward our 'cutting-edge' goal
	- Saul generates a general candidate list from those info in start of each=
=20
upgrade window
	- then it's always recipe maintainers to make decision whether a new relea=
se=20
should go or not, based on its stability, new features and risks given time=
 to Yocto
release point. If there's a decision not to upgrade, the maintainer should =
document
it well

Having said that so far our process is not exactly as expected yet, and our=
 expertise
on each area still need time. But I think that's the what we'll need to be.=
 :-)

Thanks
Kevin

