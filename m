Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C912DE006DD
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 15:41:59 -0800 (PST)
Received: by eekd49 with SMTP id d49so7738260eek.35
	for <poky@yoctoproject.org>; Tue, 20 Dec 2011 15:41:58 -0800 (PST)
Received: by 10.14.99.78 with SMTP id w54mr1719594eef.33.1324424517051;
	Tue, 20 Dec 2011 15:41:57 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id s16sm13253624eef.2.2011.12.20.15.41.56
	(version=SSLv3 cipher=OTHER); Tue, 20 Dec 2011 15:41:56 -0800 (PST)
Message-ID: <4EF11D46.7090604@gherzan.ro>
Date: Wed, 21 Dec 2011 01:41:58 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4EEF748A.5020204@linux.intel.com> <4EF06CFD.5050907@gherzan.ro>
	<4EF0D18D.3040104@linux.intel.com>
In-Reply-To: <4EF0D18D.3040104@linux.intel.com>
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
X-List-Received-Date: Tue, 20 Dec 2011 23:42:02 -0000
Content-Type: multipart/alternative;
	boundary="------------000103030904090903040009"

--------------000103030904090903040009
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/20/2011 08:18 PM, Saul Wold wrote:
> On 12/20/2011 03:09 AM, Andrei Gherzan wrote:
>> I can look over this as well but there would be a problem: i don't know
>> what solution to choose. I can take this package out from WHITELIST,
>> ican make wpa_supplicant to compile with openssl and not with gnutls...
>> i can compile wpa-supplicant without gnutls-extra and so on... What do
>> you say?
> I think it needs to stay in the WHITELIST for know, until we have some 
> kind of future change that can determine package based LICENSE info 
> and build accordingly (that's a different issue then this right now).
>
> What does wpa-supplicant use from gnutls-extra?  What functionality 
> could be lost?  This might be the best approach, and could be a 
> conditional patch based on GPLv3 or not (see code in util-linux_2.19.1)
>
> For WPA-supplicant and openssl, are there know issues?
>
> Sau!
>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>

Well things seem to be like this. wpa-supplicant has 3 ways of 
implementing TLS:
1. internal
2. openssl
3. gnutls + optional gnutls extra.

For internal there are only these features:
1. can be used in place of an external TLS/crypto library
2. TLSv1
3. X.509 certificate processing
4. PKCS #1
5. ASN.1
6. RSA
7. bignum
8. minimal size (ca. 50 kB binary, parts of which are already needed for 
WPA; TLSv1/X.509/ASN.1/RSA/bignum parts are about 25 kB on x86)

OpenSSL has a license problem (as i recall). It is not GPL compatible.

gnutls comes optionally with gnutls-extra. This rpm implements TLS/IA.

"The TLS/IA protocol was designed to be used in the EAP-TTLSv1
protocol, to perform user authentication of Wireless LAN network nodes
using IEEE 802.1x.  The TLS/IA and TTLSv1 protocols were published
through the IETF and descriptions"

My choice would be to eliminate this feature and build wpa-suplicant 
without gnutls-extra. In this way we have a solid TLS implementations, 
GPL compatible with a little compromise. Obviously, this would be only 
in a non-GPLv3 build.

--------------000103030904090903040009
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 12/20/2011 08:18 PM, Saul Wold wrote:
    <blockquote cite="mid:4EF0D18D.3040104@linux.intel.com" type="cite">On
      12/20/2011 03:09 AM, Andrei Gherzan wrote:
      <br>
      <blockquote type="cite">I can look over this as well but there
        would be a problem: i don't know
        <br>
        what solution to choose. I can take this package out from
        WHITELIST,
        <br>
        ican make wpa_supplicant to compile with openssl and not with
        gnutls...
        <br>
        i can compile wpa-supplicant without gnutls-extra and so on...
        What do
        <br>
        you say?
        <br>
      </blockquote>
      I think it needs to stay in the WHITELIST for know, until we have
      some kind of future change that can determine package based
      LICENSE info and build accordingly (that's a different issue then
      this right now).
      <br>
      <br>
      What does wpa-supplicant use from gnutls-extra?&nbsp; What
      functionality could be lost?&nbsp; This might be the best approach, and
      could be a conditional patch based on GPLv3 or not (see code in
      util-linux_2.19.1)
      <br>
      <br>
      For WPA-supplicant and openssl, are there know issues?
      <br>
      <br>
      Sau!
      <br>
      <br>
      <blockquote type="cite">_______________________________________________
        <br>
        poky mailing list
        <br>
        <a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
        <br>
        <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
        <br>
        <br>
      </blockquote>
    </blockquote>
    <br>
    Well things seem to be like this. wpa-supplicant has 3 ways of
    implementing TLS:<br>
    1. internal<br>
    2. openssl<br>
    3. gnutls + optional gnutls extra.<br>
    <br>
    For internal there are only these features:<br>
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    1. can be used in place of an external TLS/crypto library<br>
    2. TLSv1<br>
    3. X.509 certificate processing<br>
    4. PKCS #1<br>
    5. ASN.1<br>
    6. RSA<br>
    7. bignum<br>
    8. minimal size (ca. 50 kB binary, parts of which are already needed
    for WPA; TLSv1/X.509/ASN.1/RSA/bignum parts are about 25 kB on x86)<br>
    <br>
    OpenSSL has a license problem (as i recall). It is not GPL
    compatible. <br>
    <br>
    gnutls comes optionally with gnutls-extra. This rpm implements
    TLS/IA. <br>
    <br>
    "The TLS/IA protocol was designed to be used in the EAP-TTLSv1<br>
    protocol, to perform user authentication of Wireless LAN network
    nodes<br>
    using IEEE 802.1x.&nbsp; The TLS/IA and TTLSv1 protocols were published<br>
    through the IETF and descriptions"<br>
    <br>
    My choice would be to eliminate this feature and build wpa-suplicant
    without gnutls-extra. In this way we have a solid TLS
    implementations, GPL compatible with a little compromise. Obviously,
    this would be only in a non-GPLv3 build.<br>
  </body>
</html>

--------------000103030904090903040009--
