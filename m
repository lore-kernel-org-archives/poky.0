Return-Path: <ochz86er@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD507E00C3D; Mon, 31 Jul 2017 01:26:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ochz86er[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39C09E00C12
	for <poky@yoctoproject.org>; Mon, 31 Jul 2017 01:26:23 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id t37so14497116qtg.2
	for <poky@yoctoproject.org>; Mon, 31 Jul 2017 01:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/ISziAUX3Y/b8t2Iy81MSDascVNgXCVyYUOXDvsH8DU=;
	b=iUuNwpwIK2UXAoaf5cO3RhNij6jpbdpm6Tzx3lQvBTNAqjXmfxLGRjq2TpplpVP2w5
	wq/Vi46g/0lwEWMHU3hX0vor3T1QvYSHZFFmuvVY6RU2/qXJqWI0rkRH53OdI/APMfiv
	ItJeq9DPYIqkBcdAL8bNpYkwhegIB410Oqhm1ubsKgFsBKLOJL+pc+79XUHuFyy7fQFU
	TV7ViJKYlfj1hMaW5cSvlcZvetutl/U2+bGwyknWYPRpe/26GQRhGyJPvDBWirb286EW
	u2vzbs2lW6EPHo9xQYgJxIhxhgFpVeVEKr618FjxsuX1nt1n9onjFv3S4AFMKkQanyIr
	hKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/ISziAUX3Y/b8t2Iy81MSDascVNgXCVyYUOXDvsH8DU=;
	b=VIKLF2X1zw7di096cBiO7NA137sp5Ooe5dL3WBJ5rqwRXL5KY8IWCsHezq1IC6tC4n
	lHNo21IgBnfeXkKMjB42sgvsJMcrhH6n1xh4d6Xdjt5KmcSsicEOBPB48w0J13U3jZ5s
	G4kQ/cC5FjoXUP3EL0dL9Y0170jbRD0HEv1DJA3PdYfyX3ofeHnn3tLsFhGYIqK0LE7a
	rFD8HV0pRsnjwOQzu17pUIsjzIMdhFDy4s3oD/Dbaeem+GE+g7euqSuUqkHfxsKlBC7p
	N2xZpaKE4k1pwhe5Of0tVXzRw52moCKZdb9qqvFVLRQ97+ik17i2QjHIOCLyijN3Q4W2
	tfNA==
X-Gm-Message-State: AIVw113ZHJk1ibNS4duwxDrt+YExFAPQeJoDFTeGgh07twK9SdAP2hlf
	OnZgm77FqQ3tEenXli9wznfhP7LG5G6pvi/cqw==
X-Received: by 10.200.47.247 with SMTP id m52mr21657906qta.187.1501489583012; 
	Mon, 31 Jul 2017 01:26:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.23.164 with HTTP; Mon, 31 Jul 2017 01:26:22 -0700 (PDT)
From: Franz F <ochz86er@gmail.com>
Date: Mon, 31 Jul 2017 10:26:22 +0200
Message-ID: <CAAezey6EbRohPwdq78M36r7PEdHBpy=tuHRFwN9Yq2opYXP6fQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Enable gccgo
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 31 Jul 2017 08:26:24 -0000
Content-Type: multipart/alternative; boundary="001a1137dac23ac18a055598c961"

--001a1137dac23ac18a055598c961
Content-Type: text/plain; charset="UTF-8"

Hi! I am currently using the pyro branch with my raspberry pi. I'd like to
enable and use gccgo. How can this be achieved in Yocto? When I add "go" in
the LANGUAGES variable in the gcc recipes i get tons of errors like this
when building gcc:

| ../src/c++98/.libs/libc++98convenience.a(istream-
string.o):istream-string.cc:(.text._ZSt7getlineIwSt11char_
traitsIwESaIwEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_+0x0): first
defined here
| ../src/c++98/.libs/libc++98convenience.a(collate_members.o): In function
`std::collate<char>::_M_compare(char const*, char const*) const':
| collate_members.cc:(.text._ZNKSt7collateIcE10_M_compareEPKcS2_+0x0):
multiple definition of `std::collate<char>::_M_compare(char const*, char
const*) const'
| ../src/c++98/.libs/libc++98convenience.a(collate_members_cow.o):collate_
members_cow.cc:(.text._ZNKSt7collateIcE10_M_compareEPKcS2_+0x0): first
defined here
| ../src/c++98/.libs/libc++98convenience.a(collate_members.o): In function
`std::collate<char>::_M_transform(char*, char const*, unsigned int) const':
| collate_members.cc:(.text._ZNKSt7collateIcE12_M_transformEPcPKcj+0x0):
multiple definition of `std::collate<char>::_M_transform(char*, char
const*, unsigned int) const'


I could not figure out the cause of this problem. So any help will be
appreciated.

Regards,
Franz

--001a1137dac23ac18a055598c961
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi! I am currently using =
the pyro branch with my raspberry pi. I&#39;d like to enable and use gccgo.=
 How can this be achieved in Yocto? When I add &quot;go&quot; in the LANGUA=
GES variable in the gcc recipes i get tons of errors like this when buildin=
g gcc:</span><div style=3D"font-size:12.8px"><br></div><div style=3D"font-s=
ize:12.8px"><div>| ../src/c++98/.libs/libc++<wbr>98convenience.a(istream-<w=
br>string.o):istream-string.cc:(.<wbr>text._ZSt7getlineIwSt11char_<wbr>trai=
tsIwESaIwEERSt13basic_<wbr>istreamIT_T0_ES7_RSbIS4_S5_T1_<wbr>ES4_+0x0): fi=
rst defined here</div><div>| ../src/c++98/.libs/libc++<wbr>98convenience.a(=
collate_<wbr>members.o): In function `std::collate&lt;char&gt;::_M_<wbr>com=
pare(char const*, char const*) const&#39;:</div><div>| collate_members.cc:(=
.text._<wbr>ZNKSt7collateIcE10_M_<wbr>compareEPKcS2_+0x0): multiple definit=
ion of `std::collate&lt;char&gt;::_M_<wbr>compare(char const*, char const*)=
 const&#39;</div><div>| ../src/c++98/.libs/libc++<wbr>98convenience.a(colla=
te_<wbr>members_cow.o):collate_<wbr>members_cow.cc:(.text._<wbr>ZNKSt7colla=
teIcE10_M_<wbr>compareEPKcS2_+0x0): first defined here</div><div>| ../src/c=
++98/.libs/libc++<wbr>98convenience.a(collate_<wbr>members.o): In function =
`std::collate&lt;char&gt;::_M_<wbr>transform(char*, char const*, unsigned i=
nt) const&#39;:</div><div>| collate_members.cc:(.text._<wbr>ZNKSt7collateIc=
E12_M_<wbr>transformEPcPKcj+0x0): multiple definition of `std::collate&lt;c=
har&gt;::_M_<wbr>transform(char*, char const*, unsigned int) const&#39;</di=
v><div><br></div></div><div style=3D"font-size:12.8px"><br></div><div style=
=3D"font-size:12.8px">I could not figure out the cause of this problem. So =
any help will be appreciated.</div><div style=3D"font-size:12.8px"><br></di=
v><div style=3D"font-size:12.8px">Regards,</div><div style=3D"font-size:12.=
8px">Franz</div></div>

--001a1137dac23ac18a055598c961--
