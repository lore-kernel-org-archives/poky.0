Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 508294C80039
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 03:49:01 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Dec 2010 01:48:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,301,1288594800"; d="scan'208";a="357239214"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 05 Dec 2010 01:48:58 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 17:48:56 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 17:48:56 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Sun, 5 Dec 2010
	17:48:55 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Frans Meulenbroeks
	<fransmeulenbroeks@gmail.com>
Date: Sun, 5 Dec 2010 17:48:54 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuP2Jc83bQu78lxRe6t+Z4wYC2WygEiMYvw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430EE@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTi=3f9NUcm3+1xNz2bL0+gaasfGN8-bU6Zov6Ut-@mail.gmail.com>
	<1291043827.14277.1149.camel@rex>
In-Reply-To: <1291043827.14277.1149.camel@rex>
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
X-List-Received-Date: Sun, 05 Dec 2010 09:49:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Monday, November 29, 2010 11:17 PM
>
>On Mon, 2010-11-29 at 14:04 +0100, Frans Meulenbroeks wrote:
>> 2010/11/29 Richard Purdie <rpurdie@linux.intel.com>:
>> > Interestingly though, if I add this to curl*.bb:
>> >
>> > FOO =3D "A"
>> > FOO_append =3D "B"
>> > FOO_append_virtclass-native =3D "C"
>> >
>> > and then "bitbake curl-native -e | grep FOO" (he recipe has a
>> > BBCLASSEXTEND native) what should I see?
>> >
>> > I see FOO =3D "AB" which is not what I thought it would do...
>> >
>>
>> Hm.
>> Please allow me the remark that, if this does not do what you as
>> expert expect it to to, that probably for mere mortals like me, this
>> is a construct that is way too complicated.
>
>Its not that its too complicated, its just that its not following what
>I've understood to be the rules that variables follow. This is probably
>a bug in the parser but I'm very careful about jumping to that
>conclusion as there could be another explanation, not least the way
>virtclass as an override is implemented. I'd be interested in Chris'
>opinion which is why I was non-committal in calling it a bug ;-).
>
>> What is the rationale that _append is not a variable? Wouldn't it be
>> more logical/orthogonal/clearer if it was (and get appended at the end
>> as most people seem to expect/assume)
>
>The point is that appends should stack and this is exactly the same as
>normal variable rules, e.g.:
>
>FOO =3D "A"
>FOO +=3D "B"
>FOO +=3D "C"
>
>and you'd expect the result to be "A B C", not "A C" which it would be
>if +=3D was the append operator did not stack.
>

then what about:

FOO =3D "A"
FOO_append =3D "B"
FOO_append_virtclass-native =3D "C"

should it be "A C" or "A B C"?

I think I find the problem in current code (sent out in another mail), but =
the
fix would depend on the answer here. From the current code, it looks design=
ed
for "A C".

Thanks
Kevin

