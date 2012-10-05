Return-Path: <nobodydead@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DED8E0049B
	for <poky@yoctoproject.org>; Fri,  5 Oct 2012 02:12:44 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so1873785pab.35
	for <poky@yoctoproject.org>; Fri, 05 Oct 2012 02:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=+JUGbqkyXesvdyGNallSHh8PhojB29ws+tlgq03zwEU=;
	b=eJVMhT4AbrWdToOBrjvt+/V6X14qsGHMS7T8MLPyGW4D0qE1trE2wljURakhiwIf2Z
	hv+5Nq7PPGUG/9PU9hqrL7zAgcH0Gv+EcP5kg8tQ2jLOzPFVYdK/IqMphFgImB8Ai22u
	CWzQ8zhDMqvJ0oT015xvdM7ISYA/wvMWGguOXSJcGJx2GMVZ2a6Hc9cgM+xuWH/0ZbQr
	I0Eo+m9iElDwt2QJ0ct69HLe9+R8Jg3kzxPiF33kUdwoc5oLtyYAF6u66bf065AmciI3
	ZmS4oST0qvuUzoNhZbVPKq8nH/RHXaVHbzJP52jygtIPKo9/hHNnO9RTrc12D+IT+KRd
	NVlA==
MIME-Version: 1.0
Received: by 10.66.81.202 with SMTP id c10mr20023280pay.31.1349428361887; Fri,
	05 Oct 2012 02:12:41 -0700 (PDT)
Sender: nobodydead@gmail.com
Received: by 10.68.55.230 with HTTP; Fri, 5 Oct 2012 02:12:41 -0700 (PDT)
Date: Fri, 5 Oct 2012 13:12:41 +0400
X-Google-Sender-Auth: fxKDQXTCp2oWQbDAZ6secnm8K9c
Message-ID: <CABtOAfw9y1rjQ3YsS42ZiM71nCUtmWVoOkNZiSb7X1r2JXFjcg@mail.gmail.com>
From: Alexander Khryukin <alexander@mezon.ru>
To: poky@yoctoproject.org
Subject: docbook-utils-native-0.6.14-r3
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
X-List-Received-Date: Fri, 05 Oct 2012 09:12:44 -0000
Content-Type: multipart/alternative; boundary=f46d042f94dc28fe8f04cb4c462a

--f46d042f94dc28fe8f04cb4c462a
Content-Type: text/plain; charset=ISO-8859-1

Hello!

I faced with strange error

http://pastie.org/4913775


| jade: symbol lookup error:
/home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib/libospgrove.so.0:
undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocumentE


I'm already trying to google it, and found simple solution but not working
for me

>Try install the XML parser perl module on your host machine and see if it
resolves it



rpm -qa | grep -i xml

lib64xml2_2-2.8.0-1-mdv2012.0.x86_64
perl-XML-NamespaceSupport-1.110.0-5-mdv2012.0.noarch
perl-XML-SAX-Base-1.80.0-1-mdv2012.0.noarch
perl-XML-SAX-0.990.0-1-mdv2012.0.noarch
perl-XML-LibXML-1.980.0-1-mdv2012.0.x86_64
perl-XML-Parser-2.410.0-5-mdv2012.0.x86_64
perl-XML-Twig-3.380.0-5-mdv2012.0.noarch
perl-XML-XPath-1.130.0-5-mdv2012.0.noarch
lib64xml1-1.8.17-19-mdv2012.0.x86_64
lib64xml1-devel-1.8.17-19-mdv2012.0.x86_64
libxml2-utils-2.8.0-1-mdv2012.0.x86_64
lib64xml2-devel-2.8.0-1-mdv2012.0.x86_64
docbook-dtd42-xml-1.0-13-mdv2011.0.noarch

Please help .

--f46d042f94dc28fe8f04cb4c462a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello!<br><br>I faced with strange error<br><br><a href=3D"http://pastie.or=
g/4913775">http://pastie.org/4913775</a><br><br><br>| jade: symbol lookup e=
rror: /home/user/poky/build/tmp/sysroots/x86_64-linux/usr/bin/../../usr/lib=
/libospgrove.so.0: undefined symbol: _ZN14OpenJade_Grove8ClassDef12sgmlDocu=
mentE<br>
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

--f46d042f94dc28fe8f04cb4c462a--
