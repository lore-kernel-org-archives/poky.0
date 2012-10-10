Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C73E5E011DB
	for <poky@yoctoproject.org>; Wed, 10 Oct 2012 02:48:39 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so546890iea.35
	for <poky@yoctoproject.org>; Wed, 10 Oct 2012 02:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Zex09/U1fLrCWT9j5cYIhXnsFRkjGIt1sStl9+dQGwY=;
	b=ccOZtBBN0CbmbYiHSk6SjUdt7tIBRmn/w+GDA/tI5+CNAK89AyHD6H33kDFAeUt7fy
	wkPcFJr8ldBQqXnfW5/FGbHGrQv+on2Ubw3dgA3BFNhtRs+HEpV+0SlJju9ccbD643St
	SPWs3fHYTedx2jfoIkUmSqwb2JyKy7zHCGwJhEkbMPz0d7o2K0T+xRJI7loe3Okkouu0
	PLeDgsuc1O0oPCqxB8MfjO86EuWLEVnThUY58psC/Arihlxk3E+GHVjNUH772bQEVB6J
	FJkBnoTdWKaEwmcU9B/32RAGksUogCNPoWBMsB9aBjwFEYjZxv1Vl7Rvn4W4pFB/WqPH
	w8oQ==
Received: by 10.50.100.137 with SMTP id ey9mr4655731igb.57.1349862516935; Wed,
	10 Oct 2012 02:48:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.52.8 with HTTP; Wed, 10 Oct 2012 02:48:16 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
References: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 10 Oct 2012 12:48:16 +0300
Message-ID: <CAK18fxEK3gDsDzEzd7h-TwBNdTOju27sA6_1h5NUyw2KguOAcQ@mail.gmail.com>
To: Alexander Khryukin <alexander@mezon.ru>
X-Gm-Message-State: ALoCoQlUXBcUKK5NJfNurjMmZCIOGLpUKzFWT7jb4cBpA0qlGg86Vh0EOi/NOHXDhvvWEpIqsllu
Cc: poky@yoctoproject.org
Subject: Re: docbook-utils-native-0.6.14-r3
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
X-List-Received-Date: Wed, 10 Oct 2012 09:48:39 -0000
Content-Type: multipart/alternative; boundary=e89a8f23532bd14a4004cbb15b15

--e89a8f23532bd14a4004cbb15b15
Content-Type: text/plain; charset=KOI8-R

Check https://bugzilla.yoctoproject.org/show_bug.cgi?id=2972

ag


On Fri, Oct 5, 2012 at 12:12 PM, Alexander Khryukin <alexander@mezon.ru>wrote:

> Hello!
>
> I faced with strange error
>
> http://pastie.org/4913775
>
>
> | jade: symbol lookup error:
> /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
> undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE
>
>
> I'm already trying to google it, and found simple solution but not working
> for me
>
> >Try install the XML parser perl module on your host machine and see if it
> resolves it
>
>
>
> rpm -qa | grep -i xml
>
> lib64xml2_2-2.8.0-1-mdv2012.0.x86_64
> perl-XML-NamespaceSupport-1.110.0-5-mdv2012.0.noarch
> perl-XML-SAX-Base-1.80.0-1-mdv2012.0.noarch
> perl-XML-SAX-0.990.0-1-mdv2012.0.noarch
> perl-XML-LibXML-1.980.0-1-mdv2012.0.x86_64
> perl-XML-Parser-2.410.0-5-mdv2012.0.x86_64
> perl-XML-Twig-3.380.0-5-mdv2012.0.noarch
> perl-XML-XPath-1.130.0-5-mdv2012.0.noarch
> lib64xml1-1.8.17-19-mdv2012.0.x86_64
> lib64xml1-devel-1.8.17-19-mdv2012.0.x86_64
> libxml2-utils-2.8.0-1-mdv2012.0.x86_64
> lib64xml2-devel-2.8.0-1-mdv2012.0.x86_64
> docbook-dtd42-xml-1.0-13-mdv2011.0.noarch
>
> Please help .
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--e89a8f23532bd14a4004cbb15b15
Content-Type: text/html; charset=KOI8-R
Content-Transfer-Encoding: quoted-printable

Check=9A<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2972=
">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2972</a><div><br></di=
v><div>ag<br>
<br><br><div class=3D"gmail_quote">On Fri, Oct 5, 2012 at 12:12 PM, Alexand=
er Khryukin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander@mezon.ru" tar=
get=3D"_blank">alexander@mezon.ru</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">

Hello!<br><br>I faced with strange error<br><br><a href=3D"http://pastie.or=
g/4913775" target=3D"_blank">http://pastie.org/4913775</a><br><br><br>| jad=
e: symbol lookup error: /home/user/poky/build/tmp/sysroots/x86_64-linux/usr=
/bin/../../usr/lib/libospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8=
ClassDef12sgmlDocumentE<br>


<br><br>I&#39;m already trying to google it, and found simple solution but =
not working for me<br><br>&gt;Try install the XML parser perl module on you=
r host
machine and see if it resolves it<br><br><br><br>rpm -qa | grep -i xml<br><=
br>lib64xml2_2-2.8.0-1-mdv2012.0.x86_64<br>perl-XML-NamespaceSupport-1.110.=
0-5-mdv2012.0.noarch<br>perl-XML-SAX-Base-1.80.0-1-mdv2012.0.noarch<br>


perl-XML-SAX-0.990.0-1-mdv2012.0.noarch<br>perl-XML-LibXML-1.980.0-1-mdv201=
2.0.x86_64<br>perl-XML-Parser-2.410.0-5-mdv2012.0.x86_64<br>perl-XML-Twig-3=
.380.0-5-mdv2012.0.noarch<br>perl-XML-XPath-1.130.0-5-mdv2012.0.noarch<br>


lib64xml1-1.8.17-19-mdv2012.0.x86_64<br>lib64xml1-devel-1.8.17-19-mdv2012.0=
.x86_64<br>libxml2-utils-2.8.0-1-mdv2012.0.x86_64<br>lib64xml2-devel-2.8.0-=
1-mdv2012.0.x86_64<br>docbook-dtd42-xml-1.0-13-mdv2011.0.noarch<br><br>


Please help .<br><br>
<br>_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br></div>

--e89a8f23532bd14a4004cbb15b15--
