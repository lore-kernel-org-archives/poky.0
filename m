Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.200.1599844029458890091
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 10:07:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=Zd/P99fN;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1599844027;
	bh=D5ZT4U4Hhq4AXA9lU6LGsPy7Adm/RT5Kglz8wGYJXHQ=;
	h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
	b=Zd/P99fN1CcrwRotKEhWQprKBWVrvclwE65Gi31i7ioY7Vons8J6ZytuJ9Ah8zXkz
	 VnUhK/SPcomwRIh+NCzmSz18sgAFbDEvW6nGkh9vte64ugVvVdSzd6udOI1JjGwnj5
	 A+GMpjiNcH7wGQWJdRDpEEQLg8m2qxn5DDsmMeYk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.3.33] ([84.185.247.166]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MfHAH-1kiQM40EMF-00gsjA; Fri, 11
 Sep 2020 19:07:07 +0200
Subject: Re: [poky] add a -dev package to SDK (in sysroot)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 poky@lists.yoctoproject.org
References: <21bed7fc-b057-c97c-ae5d-3d84f45c69b4@gmx.li>
 <ef6241acac0e9124077509c79af3bffc63088d3e.camel@linuxfoundation.org>
From: "Steve" <star@gmx.li>
Message-ID: <dcdd105f-fcb3-c0d2-f606-2ac1d39ed347@gmx.li>
Date: Fri, 11 Sep 2020 19:07:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ef6241acac0e9124077509c79af3bffc63088d3e.camel@linuxfoundation.org>
X-Provags-ID: V03:K1:dKxxvVuHuRfne4eZNGz7/6ODm8vnaLtQca65sa6X0XdAb5DB6t7
 hnj1ErvElQvTUU8QqQsNdtCR85e0woFnm4bDkTAWbKtCJaSJKV24QuJ+xk7TbJKdQNiBjwa
 fMmms6yqZJQ3MVPlLA2fso8iVW3D0eRa61Zq7tujT9PJcef81LzPpdPvaVxPuyBje3Bv0zT
 ANI4qjWH+ANe0tTVrKzsQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AXUQBDsvpGY=:/P9TT6mnITCs7Quepq7PgW
 dmgSVb4Wq+G18p9LWZYT0MAxEw6pHQdv/3yufE/cIPSdlPHDeU8CjYDnLgikafj1ttdZhy/s8
 KoyAUKiib66HmeP5vkaiesbW9WGBziypktWxGUepRYmxMei3tNe9qk/QK6LaqSzDFxMOD6PXs
 lqDb1Lo7slzv0AJYxNctspZyAu93Wh82ttg6MYbnJ/wluvQwSXp+6edqYliiTydVut5ugcuP9
 TWYI11gTksJ5QcJ6b24cXipocR2H70nrRxU/YTNdqcvNJBfRgBZ2MdM3SK0AavHIjFHgfrff3
 4q6jTbg8IQFij9FC9B7Op0oEWc8Am8XNXU4afQOTnZ7DY8qd0bliJG/0fw10xcsDKVb3OOSAT
 cAHK8SlBXMYC4BPs4cCV/0zXB3ZldtzWg+9old6t0WWWeCojaBopy6O+fmiaITriTLojCoifh
 wDvjsU0r+4n4fB3K2WRFO/6FDuiOLwNlulULs/Vb+aJSGODQu7JaECnntM0dFQ7SeBEA5RG9r
 Zh54mnSSSDTzT60YMjw0dZoM3QU5DTigz49Xn6k+aZUaMTjVNbfU9xucwioTm2BghRFc3h5Xn
 fbX57KY7cp2bVJL6PNxaFODx5H30eHECqpkH1Fvu/GNw5BOfUAJFnrVNAHUSj3zPFnnEn2y9R
 Ssbz61VrHzOID5DW/mCK4oBKWyxZAXnl5WjIbmbPzIf85nnsy0PYE9PmzB7hYjKSHHhON4icW
 f7dhsDlKZPN6Wa3rgSWkATB0LdDmaDa1i/QphhYiITBDPEitWMVv3arUTEN37MkJXQYD3NobN
 OO9XGUTKAidkIII2I9IS6v+FegR1fs7xWTTySIcVNXpEUrqTmo2+FRuoSn7nqN0icGe1DW0Zo
 UUUlh4Q8/2AHVLtbJjDMT2RmBLD/JGjGk083OYAp05frE9m596IwJEu8ea6gU94Ou+95pKWNH
 JGcKzqqid7WwnkzpMT3ph79fNCDZsOnmCIwTahO5dTKNgj+0UGV7rSigkkX+BwgEGRX9M0fuJ
 8ebV5YaDNcvBGN0tz0pNjAkNoRXJe5Q/gDfqdPGsYc+GgCyJqsn/I7/JzZlJqD5XGCbFx/Ib7
 46/SypBwv8psh0AzbQTIAcfPfKwT/S+HAV8On/mAkOZgZcF1sT0k0hgqkbs7lrRyFsUtVy3Nx
 0G+G8s+uDpTLoyT9EuKjmgiy5yvg6ywcqcOmyhIhQU4crFWrQaey4oUQybmqLYFygzALWOHvu
 iMt9x4eRPKjcDQg0C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 11.09.20 14:22, Richard Purdie wrote:
> On Fri, 2020-09-11 at 12:01 +0200, Steve wrote:
>> I try to add websocketpp-dev to my SDK, but fail.
>>
>> I did a
>>
>> IMAGE_INSTALL =3D "... websocketpp ..."
>>
>> and to get the dev-package into SDK:
>>
>> TOOLCHAIN_TARGET_TASK_append =3D websocketpp-dev"
>>
>> The result is an error in
>>
>> bitbake .... -c populate_sdk
>>
>> Unable to install packages. ...
>>
>> Problem 1: Nothing provides websocketpp =3D 0.8.1-r0 needed by
>> websocketpp-dev-0.8.1-r0...
>>
>> Solution: so not ask to install a package providing websocketpp-dev
>>
>>
>> If I see this right this approach works for other dev-Packages like cur=
l
>> and curlpp, but doesn't seem to work for websocketpp. What am I doing
>> wrong? Where is the bug? What is the trick?
>>
>> Somewhere I have read that just creating the SDK by -c populate_sdk is
>> adding *-dev packages to sysroot in SDK, but this is definitely not tru=
e
>> for all packages.
>>
>> Thanks for any help!
>>
>>
>> PS: I can see in deploy that package websocketpp-dev with all the
>> /usr/include/websocket/...) has been created.
> I suspect that websocketpp is an empty package and not being
> generated?
>
> If so, you either need to remove the dependency from websocketpp-dev on
> websocketpp or generate an empty package.
>
> Cheers,
>
> Richard

Thanks Richard for leaving me not alone. Checked that. You are right,
there is no websocketpp package created ?!? There is just a empty -dbg
package, the wanted -dev-package and no websocketpp-package at all. Mh,
how is this to understand? Usually there is a package with a lib or
binary, a package with debug info and one with headers and stuff to
develop with. But just a dev-package? That is bizarre to me (a colleage
wanted to have this inside SDK, so no idea what to do with it).

Regarding your suggestions to solve it:=C2=A0 I just found the recipe for
websocketpp,
(meta-openembedded/meta-oe/recipes-support/websocketpp/websocketpp_0.8.1bb=
)
where is nothing mentioned about -dev and dependencies. (I can see your
eyes rolling, sorry for my ignorance - I just can guess there is some
inherent rule to build the dev).

Creating an empty package. No idea how to do so as there is already a bb
with this name So I ended up in cp and rename the empty -dbg package
from deploy/ipk folder in websocketpp_0.8.1.ipk, but that doesn't solve
the problem either. Can you or someone else give me a further hint?

Best regards and a nice weekend,

Steve




