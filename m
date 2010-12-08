Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C70A94C80FFE
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 07:02:43 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2010 05:02:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="634338635"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2010 05:02:27 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 21:02:26 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	21:02:25 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Wed, 8 Dec 2010 21:02:23 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuWwvrDSdKYfTdKRRuU73KRtggVxQACGNOgAAKuB4AAAFP7IA==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F2BBB@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DDB@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D0DDB@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
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
X-List-Received-Date: Wed, 08 Dec 2010 13:02:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tian, Kevin wrote:
>> From: Tian, Kevin
>> Sent: Wednesday, December 08, 2010 7:35 PM
>>=20
>>> From: Richard Purdie
>>> Sent: Wednesday, December 08, 2010 6:30 PM
>>>=20
>>> Hi Dongxiao,
>>>=20
>>> On Wed, 2010-12-01 at 09:57 +0800, Xu, Dongxiao wrote:
>>>> Recently when investigating the file parsing speed, I found the
>>>> implementation of "??=3D" is another hot spot. This operator will not
>>>> apply the default assignment until the end of the parse, which is
>>>> different from "?=3D". According to current poky, the users for "??=3D=
"
>>>> is mostly the scm revisions stored in poky-default-revisions.inc.
>>>>=20
>>>> Currently the final assignment logic for "??=3D" is added in
>>>> finalize(), which costs about 20% parsing time.
>>>=20
>>> Can I take a look at the graph showing that? I'm a little surprised
>>> it takes 20% of the time, that is a rather scary amount!
>>>=20
>>=20
>> I don't have the graph, but did do a simple test by printing the lazy
>> value list in finalize(). There're 166 items in total. Regarding
>> finalize() may be invoked multiple times for same recipe and we have
>> over 700 recipes scanned in a fresh run, it may contribute obvious
>> overhead just like what Dongxiao previously optimized for distro
>> tracking fields.=20
>>=20
>> I think we could remove the lazy key from the list after grabbing it
>> as=20
>> the default value, and is now testing it...
>>=20
>=20
> I have a simple patch:
>=20
> diff --git a/bitbake/lib/bb/parse/ast.py
> b/bitbake/lib/bb/parse/ast.py index 870ae65..4b98799 100644 ---
> a/bitbake/lib/bb/parse/ast.py +++ b/bitbake/lib/bb/parse/ast.py
> @@ -301,10 +301,13 @@ def handleInherit(statements, m):
>      statements.append(InheritNode(m.group(1)))
>=20
>  def finalize(fn, d, variant =3D None):
> +    assigned =3D bb.data.getVar("__lazy_assigned", d) or ()
>      for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
>          if bb.data.getVar(lazykey, d) is None:
>              val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
>              bb.data.setVar(lazykey, val, d)
> +            assigned.remove(lazykey)
> +    bb.data.setVar("__lazy_assigned", assigned, d)
>=20
>      bb.data.expandKeys(d)
>      bb.data.update_data(d)
>=20
> However it doesn't work as I expect. Every time the lazy list always
> contains 166 items. It looks that each finalize() is invoked in
> different database context, while I haven't found the global copy
> yet. Or did I make some silly mistake here? :/  =20

Per my understanding, "d" is an object instance, each time when doing final=
ize, "d" is a different instance.
Therefore each round "d" will always have 166 items.

Thanks,
Dongxiao

>=20
> Thanks
> Kevin


