Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C118E0072A
	for <poky@yoctoproject.org>; Wed, 21 Dec 2011 01:47:14 -0800 (PST)
Received: by wibhq4 with SMTP id hq4so2578543wib.35
	for <poky@yoctoproject.org>; Wed, 21 Dec 2011 01:47:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.19.138 with SMTP id f10mr15874600wie.3.1324460833145; Wed,
	21 Dec 2011 01:47:13 -0800 (PST)
Received: by 10.227.100.82 with HTTP; Wed, 21 Dec 2011 01:47:12 -0800 (PST)
X-Originating-IP: [79.117.116.240]
Received: by 10.227.100.82 with HTTP; Wed, 21 Dec 2011 01:47:12 -0800 (PST)
In-Reply-To: <4EF174E6.2070503@linux.intel.com>
References: <4EEF748A.5020204@linux.intel.com> <4EF06CFD.5050907@gherzan.ro>
	<4EF0D18D.3040104@linux.intel.com> <4EF11D46.7090604@gherzan.ro>
	<4EF174E6.2070503@linux.intel.com>
Date: Wed, 21 Dec 2011 11:47:12 +0200
Message-ID: <CAK18fxGhDiRVa5vxN4n=MRpio-mJtNbFFypANDiWL0JPAY3A2A@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Saul Wold <sgw@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: gnutls-2.12.14-r3.1 - strange rpm names yocto
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
X-List-Received-Date: Wed, 21 Dec 2011 09:47:16 -0000
Content-Type: multipart/alternative; boundary=bcaec53d550d7a82f504b49711a6

--bcaec53d550d7a82f504b49711a6
Content-Type: text/plain; charset=ISO-8859-1

Yes.  Absolutely. I will attach a patch to that bug today.
On Dec 21, 2011 7:55 AM, "Saul Wold" <sgw@linux.intel.com> wrote:

> On 12/20/2011 03:41 PM, Andrei Gherzan wrote:
>
>> On 12/20/2011 08:18 PM, Saul Wold wrote:
>>
>>> On 12/20/2011 03:09 AM, Andrei Gherzan wrote:
>>>
>>>> I can look over this as well but there would be a problem: i don't know
>>>> what solution to choose. I can take this package out from WHITELIST,
>>>> ican make wpa_supplicant to compile with openssl and not with gnutls...
>>>> i can compile wpa-supplicant without gnutls-extra and so on... What do
>>>> you say?
>>>>
>>> I think it needs to stay in the WHITELIST for know, until we have some
>>> kind of future change that can determine package based LICENSE info
>>> and build accordingly (that's a different issue then this right now).
>>>
>>> What does wpa-supplicant use from gnutls-extra? What functionality
>>> could be lost? This might be the best approach, and could be a
>>> conditional patch based on GPLv3 or not (see code in util-linux_2.19.1)
>>>
>>> For WPA-supplicant and openssl, are there know issues?
>>>
>>> Sau!
>>>
>>>  ______________________________**_________________
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>>>>
>>>>
>> Well things seem to be like this. wpa-supplicant has 3 ways of
>> implementing TLS:
>> 1. internal
>> 2. openssl
>> 3. gnutls + optional gnutls extra.
>>
>> For internal there are only these features:
>> 1. can be used in place of an external TLS/crypto library
>> 2. TLSv1
>> 3. X.509 certificate processing
>> 4. PKCS #1
>> 5. ASN.1
>> 6. RSA
>> 7. bignum
>> 8. minimal size (ca. 50 kB binary, parts of which are already needed for
>> WPA; TLSv1/X.509/ASN.1/RSA/bignum parts are about 25 kB on x86)
>>
>> OpenSSL has a license problem (as i recall). It is not GPL compatible.
>>
>> gnutls comes optionally with gnutls-extra. This rpm implements TLS/IA.
>>
>> "The TLS/IA protocol was designed to be used in the EAP-TTLSv1
>> protocol, to perform user authentication of Wireless LAN network nodes
>> using IEEE 802.1x. The TLS/IA and TTLSv1 protocols were published
>> through the IETF and descriptions"
>>
>> My choice would be to eliminate this feature and build wpa-suplicant
>> without gnutls-extra. In this way we have a solid TLS implementations,
>> GPL compatible with a little compromise. Obviously, this would be only
>> in a non-GPLv3 build.
>>
> That was also the direction I was leaning as you might have been able to
> tell, I just to be sure of the functionality lose.  Do you think it's
> possible to implement it as a conditional on the INCOMPATIBLE_LICENSE
> having GPLv3?
>
> Thanks again
>        Sau!
>

--bcaec53d550d7a82f504b49711a6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Yes.=A0 Absolutely. I will attach a patch to that bug today. </p>
<div class=3D"gmail_quote">On Dec 21, 2011 7:55 AM, &quot;Saul Wold&quot; &=
lt;<a href=3D"mailto:sgw@linux.intel.com">sgw@linux.intel.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 12/20/2011 03:41 PM, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 12/20/2011 08:18 PM, Saul Wold wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 12/20/2011 03:09 AM, Andrei Gherzan wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I can look over this as well but there would be a problem: i don&#39;t know=
<br>
what solution to choose. I can take this package out from WHITELIST,<br>
ican make wpa_supplicant to compile with openssl and not with gnutls...<br>
i can compile wpa-supplicant without gnutls-extra and so on... What do<br>
you say?<br>
</blockquote>
I think it needs to stay in the WHITELIST for know, until we have some<br>
kind of future change that can determine package based LICENSE info<br>
and build accordingly (that&#39;s a different issue then this right now).<b=
r>
<br>
What does wpa-supplicant use from gnutls-extra? What functionality<br>
could be lost? This might be the best approach, and could be a<br>
conditional patch based on GPLv3 or not (see code in util-linux_2.19.1)<br>
<br>
For WPA-supplicant and openssl, are there know issues?<br>
<br>
Sau!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
<br>
</blockquote></blockquote>
<br>
Well things seem to be like this. wpa-supplicant has 3 ways of<br>
implementing TLS:<br>
1. internal<br>
2. openssl<br>
3. gnutls + optional gnutls extra.<br>
<br>
For internal there are only these features:<br>
1. can be used in place of an external TLS/crypto library<br>
2. TLSv1<br>
3. X.509 certificate processing<br>
4. PKCS #1<br>
5. ASN.1<br>
6. RSA<br>
7. bignum<br>
8. minimal size (ca. 50 kB binary, parts of which are already needed for<br=
>
WPA; TLSv1/X.509/ASN.1/RSA/bignum parts are about 25 kB on x86)<br>
<br>
OpenSSL has a license problem (as i recall). It is not GPL compatible.<br>
<br>
gnutls comes optionally with gnutls-extra. This rpm implements TLS/IA.<br>
<br>
&quot;The TLS/IA protocol was designed to be used in the EAP-TTLSv1<br>
protocol, to perform user authentication of Wireless LAN network nodes<br>
using IEEE 802.1x. The TLS/IA and TTLSv1 protocols were published<br>
through the IETF and descriptions&quot;<br>
<br>
My choice would be to eliminate this feature and build wpa-suplicant<br>
without gnutls-extra. In this way we have a solid TLS implementations,<br>
GPL compatible with a little compromise. Obviously, this would be only<br>
in a non-GPLv3 build.<br>
</blockquote>
That was also the direction I was leaning as you might have been able to te=
ll, I just to be sure of the functionality lose. =A0Do you think it&#39;s p=
ossible to implement it as a conditional on the INCOMPATIBLE_LICENSE having=
 GPLv3?<br>

<br>
Thanks again<br>
 =A0 =A0 =A0 =A0Sau!<br>
</blockquote></div>

--bcaec53d550d7a82f504b49711a6--
