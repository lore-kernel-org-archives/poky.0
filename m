Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E571E0030D
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 21:55:51 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Dec 2011 21:55:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104512118"
Received: from unknown (HELO [10.255.12.100]) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 20 Dec 2011 21:55:50 -0800
Message-ID: <4EF174E6.2070503@linux.intel.com>
Date: Tue, 20 Dec 2011 21:55:50 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <4EEF748A.5020204@linux.intel.com> <4EF06CFD.5050907@gherzan.ro>
	<4EF0D18D.3040104@linux.intel.com> <4EF11D46.7090604@gherzan.ro>
In-Reply-To: <4EF11D46.7090604@gherzan.ro>
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
X-List-Received-Date: Wed, 21 Dec 2011 05:55:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/2011 03:41 PM, Andrei Gherzan wrote:
> On 12/20/2011 08:18 PM, Saul Wold wrote:
>> On 12/20/2011 03:09 AM, Andrei Gherzan wrote:
>>> I can look over this as well but there would be a problem: i don't know
>>> what solution to choose. I can take this package out from WHITELIST,
>>> ican make wpa_supplicant to compile with openssl and not with gnutls...
>>> i can compile wpa-supplicant without gnutls-extra and so on... What do
>>> you say?
>> I think it needs to stay in the WHITELIST for know, until we have some
>> kind of future change that can determine package based LICENSE info
>> and build accordingly (that's a different issue then this right now).
>>
>> What does wpa-supplicant use from gnutls-extra? What functionality
>> could be lost? This might be the best approach, and could be a
>> conditional patch based on GPLv3 or not (see code in util-linux_2.19.1)
>>
>> For WPA-supplicant and openssl, are there know issues?
>>
>> Sau!
>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>
> Well things seem to be like this. wpa-supplicant has 3 ways of
> implementing TLS:
> 1. internal
> 2. openssl
> 3. gnutls + optional gnutls extra.
>
> For internal there are only these features:
> 1. can be used in place of an external TLS/crypto library
> 2. TLSv1
> 3. X.509 certificate processing
> 4. PKCS #1
> 5. ASN.1
> 6. RSA
> 7. bignum
> 8. minimal size (ca. 50 kB binary, parts of which are already needed for
> WPA; TLSv1/X.509/ASN.1/RSA/bignum parts are about 25 kB on x86)
>
> OpenSSL has a license problem (as i recall). It is not GPL compatible.
>
> gnutls comes optionally with gnutls-extra. This rpm implements TLS/IA.
>
> "The TLS/IA protocol was designed to be used in the EAP-TTLSv1
> protocol, to perform user authentication of Wireless LAN network nodes
> using IEEE 802.1x. The TLS/IA and TTLSv1 protocols were published
> through the IETF and descriptions"
>
> My choice would be to eliminate this feature and build wpa-suplicant
> without gnutls-extra. In this way we have a solid TLS implementations,
> GPL compatible with a little compromise. Obviously, this would be only
> in a non-GPLv3 build.
That was also the direction I was leaning as you might have been able to 
tell, I just to be sure of the functionality lose.  Do you think it's 
possible to implement it as a conditional on the INCOMPATIBLE_LICENSE 
having GPLv3?

Thanks again
	Sau!

