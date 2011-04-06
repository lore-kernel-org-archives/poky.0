Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8B784C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 13:06:48 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p36I6ESW001866
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Apr 2011 11:06:14 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.1.73]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.01.0255.000;
	Wed, 6 Apr 2011 11:06:14 -0700
From: "Hatle, Mark" <mark.hatle@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [OE-core] Proposed Multilib Implementation Brainstorming
Thread-Index: AQHL89fR9iSKERjfLEG0K3fk5c3eRJRQ/CCAgABffYD//8dVkQ==
Date: Wed, 6 Apr 2011 18:06:14 +0000
Message-ID: <2345F3C7-C595-4F8F-9B31-9F680587B179@windriver.com>
References: <1302001365.24596.459.camel@rex>
	<BANLkTim4ouc6ssOhfU4Dd8OfEq81MfC_gQ@mail.gmail.com>,
	<1302100143.22904.68.camel@rex>
In-Reply-To: <1302100143.22904.68.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Proposed Multilib Implementation Brainstorming
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
X-List-Received-Date: Wed, 06 Apr 2011 18:06:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable





On Apr 6, 2011, at 7:29 AM, "Richard Purdie" <richard.purdie@linuxfoundatio=
n.org> wrote:

> On Wed, 2011-04-06 at 10:47 +0200, Frans Meulenbroeks wrote:
>> I think most embedded systems would only use one lib. To take your
>> lib/lib64 example:
>> If I am developing for an embedded system I know whether it will run
>> as 32 or 64 bit, so there is no need to have both.
>=20
> I agree that this is the most common usecase and that remains unchanged.
>=20

I'd like to stress that existing use-case behavior (non multilib) is impera=
tive to keep the same as we have today.  Multilib is a specialized use case=
 that covers large enough space that it needs to be supported.

>> multilib has its merits when it comes to supporting multiple hardware sy=
stems.
>> However as in the embedded world one is typically targeting a specific
>> hardware configuration.
>> (actually I don't recall having seen requests for multilib on the ML
>> before, although I could have missed it).
>=20
> These have been requests I've received verbally in general but you'll
> see from the replies on the mailing list, Montavista is interested, Koen
> is as are a number of others.
>=20

I'll add Wind River has customers that directly need this functionality.  M=
any of their products are similar to specialized servers, but really are em=
bedded.

>> Also I'm somewhat worried by the actual complexity this adds (to the
>> build process and the recipes, and timewise probably also to the
>> bootstrap process as additional packages have to be built).
>>=20
>> Not sure if that is a desirable route forward, but if we (we as in OE
>> members + developers) feel that OE should go that way, I would
>> sugggest to have a way to opt-in or opt-out
>=20
> Multilib will be opt-in. Things will operate just as they do today
> unless you specify you want a multilib configuration.
>=20
> Cheers,
>=20
> Richard
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

