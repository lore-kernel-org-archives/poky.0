Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC19E4C80BEF
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 20:48:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Dec 2010 18:48:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,327,1288594800"; d="scan'208";a="360162192"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 10 Dec 2010 18:48:11 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 11 Dec 2010 10:48:10 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 11 Dec 2010 10:48:08 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Sat, 11 Dec 2010 10:48:06 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuYw+rPyOSXCouAQJqqH8k2KIg2EgAF3wEw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6D81@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
	<1291893846.1554.793.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
	<1291898758.1554.819.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>
	<1292024521.14420.99.camel@rex>
In-Reply-To: <1292024521.14420.99.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Sat, 11 Dec 2010 02:48:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Thu, 2010-12-09 at 22:44 +0800, Xu, Dongxiao wrote:
>> I made the following patch (setVarFlag.patch) to move everything in
>> setVar to setVarFlag, please help to review it.
>>=20
>> Please note one place that I modified, see the indent of
>> "self._seen_overrides[override].add( var )", I thought it was a bug
>> in original code.
>=20
> No, its not. Its making sure [override] exists before trying to add
> var to it. It could also be:=20
>=20
> if override not in self._seen_overrides:
>     self._seen_overrides[override] =3D set(var)
> else:
>     self._seen_overrides[override].add( var )

Thanks, I understand now.

For overrides, we only override the variable flag "content", and there is n=
o concept for overriding the other variable flags. Does my understanding co=
rrect?
If this is the case, we should add the following constraint.

+            if override not in self._seen_overrides:
+                self._seen_overrides[override] =3D set()
+            if flag =3D=3D "content":
+                self._seen_overrides[override].add( var )

Otherwise, each time when setVarFlag() for a certain key, all flag values w=
ill will be added to self._seen_overrides[override], and for different flag=
s, the value may be different types, and there will be errors like:

NOTE: Handling BitBake files: | (0116/0765) [15 %]ERROR: cannot concatenate=
 'str' and 'NoneType' objects while parsing /home/dongxiao/poky/meta/recipe=
s-devtools/dpkg/dpkg_1.15.8.5.bb.=20

>=20
>> After adding this, the "two lines" in original "??=3D" optimization
>> patch are no longer needed.=20
>>=20
>> +            if bb.data.getVarFlag(key, "content", data) is None:
>> +                bb.data.setVar(key, None, data)
>>=20
>> I rerun "time bitbake -p" with the two patches (see below, one is
>> setVarFlag.patch, another is the "??=3D" optimization patch) The
>> result is:=20
>>=20
>> real    0m27.049s
>> user    0m26.340s
>> sys     0m0.440s
>>=20
>> The parsing time is a bit longer ( < 1 sec) than without the
>> following "setVarFlag.patch".
>=20
> Patches look good to me other than the above. I also talked to Chris
> on irc on #oe earlier today and we agreed this is a good move for
> setVar bringing both into line although the whole way the datastore
> works could still be better.  =20
>=20
> Could you send these patches through a pull request please and lets
> get them merged.=20

OK, I will make a pull request after the above question got clear.

Thanks,
Dongxiao

>=20
> Cheers,
>=20
> Richard


