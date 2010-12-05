Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C9844C80039
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 03:43:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Dec 2010 01:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,301,1288594800"; d="scan'208";a="357238337"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 05 Dec 2010 01:43:35 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 17:43:33 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Sun, 5 Dec 2010
	17:43:32 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "He, Qing" <qing.he@intel.com>, Richard Purdie <rpurdie@linux.intel.com>
Date: Sun, 5 Dec 2010 17:43:30 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuQMNP5Y6B8DaeMSu2bzxFmJH7P2gEJX2rg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430ED@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex> <20101130014427.GA6584@qhe2-db>
In-Reply-To: <20101130014427.GA6584@qhe2-db>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Sun, 05 Dec 2010 09:43:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: He, Qing
>Sent: Tuesday, November 30, 2010 9:44 AM
>
>On Mon, 2010-11-29 at 20:25 +0800, Richard Purdie wrote:
>> On Sun, 2010-11-28 at 22:53 -0700, Chris Larson wrote:
>> > On Sun, Nov 28, 2010 at 10:26 PM, Tian, Kevin <kevin.tian@intel.com> w=
rote:
>> > > This also confuses me a bit. When virtclass-native is expanded,
>EXTRA_OECONF_append
>> > > is simply a variable. In that case the expanded value should overrid=
e the 1st
>assignment
>> > > of EXTRA_OECONF_append, and then we should get:
>> > >
>> > > EXTRA_OECONF_append =3D " --without-gnutls "
>> > >
>> > > and then that's what we expect.
>> > >
>> > > I guess I may still overlook something here, and really appreciate y=
our explanation
>> > > on the whole flow which is helpful. :-)
>> >
>> > No, EXTRA_OECONF_append is never a variable.  _append/_prepend are
>> > operations, not part of the name.  The value gets set aside in a list
>> > of appends for that variable.  One _append cannot override/replace
>> > another on the same variable, its always cumulative.
>>
>> Right.
>>
>> Interestingly though, if I add this to curl*.bb:
>>
>> FOO =3D "A"
>> FOO_append =3D "B"
>> FOO_append_virtclass-native =3D "C"
>>
>> and then "bitbake curl-native -e | grep FOO" (he recipe has a
>> BBCLASSEXTEND native) what should I see?
>>
>> I see FOO =3D "AB" which is not what I thought it would do...
>
>This is very interesting, I didn't see "AC" when preparing the patch
>so went the other way. After seeing your experiment, I also tried this:
>
>FOO =3D "A"
>FOO_virtclass-native =3D "B"
>FOO_virtclass-native_append =3D "C"
>
>Then for curl-native, FOO =3D "BC", and there is an explicit variable
>FOO_virtclass-native =3D "BC", this does not exist in RP's test.
>So it's more clear to me now what "*_append is never a variable" means.
>
>
>However, the gut feeling is that this construct introduces some
>inconsistency. If "_append" is never a variable, but "_virtclass-native"
>is, how is bitbake supposed to handle FOO_append_virtclass-native and
>translate it into a FOO_virtclass-native variable?

See finalize() in data_smart.py. the override for _append/_prepend is handl=
ed
specifically which is different from normal overrides tweak. There's some b=
ug
though which I described in another mail. In a nutshell, FOO_append_virtcla=
ss-native
is parsed into a flag for FOO, with name as 'append', the value as ("C", vi=
rtclass-native).
when finalize() handles _append/_prepend, "C" is appended to FOO directly a=
nd
thus there's no FOO_virtclass-native being generated in the middle.

I'm not sure whether FOO_virtclass-native_append =3D "C" is a valid usage t=
hough.
At least it's not in current design. As in your example, finally a new vari=
able
is created (FOO_virtclass-native) with value as 'BC'. Though override is ha=
ndled
before _append/_prepend, finalize() may be invoked multiple times. The 1st =
time
will give you:

FOO =3D "A"
FOO_virtclass-native =3D "BC"

and then later invocations will get:

FOO =3D "BC"
FOO_virtclass-native =3D "BC"

This though gives a right result in the end, it's dangerous as its value is=
 volatile
in the middle.

>
>To be more specific, if append is to be handled earlier than virtclass,
>FOO may not be able to be evaluated at the time when append/prepend is
>processed, as the following test case:
>
>FOO =3D "A"
>FOO_virtclass-native =3D "B"
>FOO_append =3D "C"
>FOO_append_virtclass-nativesdk =3D "D"
>
>How should it be handled?
>

The expected result will be:

a) if you build pkgname, you'll get FOO =3D "AC" as the effect of _append

b) if you build pkgname-native, you'll get FOO =3D "BC" because overrides a=
re
handled before _append/_prepend

a) if you build pkgname-nativesdk, you'll get FOO =3D "AD" because override
appendix is used

Thanks
Kevin

