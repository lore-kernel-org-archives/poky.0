Return-Path: <i.efimov@inango-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88CDAE00D24; Thu,  4 Apr 2019 13:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,T_REMOTE_IMAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 480 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Apr 2019 13:07:52 PDT
Received: from mail.inango-sw.com (mail.inango-systems.com [213.136.71.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5964CE00D20
	for <poky@yoctoproject.org>; Thu,  4 Apr 2019 13:07:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 8490E7A23BB;
	Thu,  4 Apr 2019 22:59:50 +0300 (IDT)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id o1jX1MV-xdEE; Thu,  4 Apr 2019 22:59:47 +0300 (IDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 3D3887A23CB;
	Thu,  4 Apr 2019 22:59:47 +0300 (IDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com 3D3887A23CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1554407987;
	bh=PQ6SfYYefqAZfR4Dt9f0Rt8UFg6jLf5B+GiLIwQNWW4=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=G90pbSBKL3WHzaZ1ZstXZCX1zr6h+mrisaV86AlDR7Tm2vX0IGvHzzDw0Ew+SLLuP
	aPF6S5t2QQH5inGnJXaHz5dPrAZFKb8Al+1b+9GQteLAr3fJ2JdJC1N1QcKLugssFv
	AaW0ga5Jsvnf202ko+Mj2GS8d1qKgjh/OKhSQT3qy4JwIFGdY5Y7VbVvP54vtY2ofT
	8vtiPJ2gCS4rUuHzMGQ/FxFvl+neb9927168UCXNbSJDAxp+IX6rPJ39ShRJo28DXG
	reIs+qRfnA1HgbUnuf9akp76rP8vDWe1FcFxzhvlTnnGWhfXMtByK92IWOp9jqW5EM
	JyrkYngq25jdA==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 5A5ihqRc8r7X; Thu,  4 Apr 2019 22:59:46 +0300 (IDT)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id 5C6727A23BB;
	Thu,  4 Apr 2019 22:59:46 +0300 (IDT)
Date: Thu, 4 Apr 2019 22:59:44 +0300 (IDT)
From: Ivan Efimov <i.efimov@inango-systems.com>
To: Nicholas Clark <nicholas.clark@gmail.com>
Message-ID: <1535344407.2030529.1554407984470.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <CAKNeuBrHVJXBgREM0R9CvrKMt=k9Rkf7TM0hn1vAFHGg=sehnA@mail.gmail.com>
References: <CAKNeuBrHVJXBgREM0R9CvrKMt=k9Rkf7TM0hn1vAFHGg=sehnA@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.9_GA_3006 (ZimbraWebClient - FF66 (Linux)/8.8.9_GA_3006)
Thread-Topic: do_deploy_archives for multiple images
Thread-Index: H3F/D//JRf06d9BwJXf6+sdVRqVNTA==
Cc: poky <poky@yoctoproject.org>
Subject: Re: do_deploy_archives for multiple images
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
X-List-Received-Date: Thu, 04 Apr 2019 20:07:53 -0000
X-Groupsio-MsgNum: 11618
Content-Type: multipart/related; boundary="17CXl0EbcfDMqIcRcqoC"

--17CXl0EbcfDMqIcRcqoC
Content-Type: multipart/alternative; 
	boundary="=_16181230-ce34-4f84-b537-b338c2596d61"

--=_16181230-ce34-4f84-b537-b338c2596d61
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Nicholas, 

Looks like you use different image recipes, doesn't you? 

You may use next folder path in "do_deploy_archives" to store tarballs to have uniq path per image: 
${DEPLOY_DIR}/archives/${IMAGE_NAME}/ 

Best regards, 
Ivan 


From: "Nicholas Clark" <nicholas.clark@gmail.com> 
To: "poky" <poky@yoctoproject.org> 
Sent: Monday, April 1, 2019 11:27:33 PM 
Subject: [poky] do_deploy_archives for multiple images 

I'm working on a design with a two different variants of a base image. One variant (a developer image) has some company-proprietary tools, and also some GPLv3 tools. The other variant (our production image) is fully license-compliant. 

In order to make sure that we're ready if/when we get GPL requests, I'd like to generate a releasable source tarball at build-time. Each image's do_deploy_archives task looks like it provides the right stuff, but they all go into the same shared directory (making it harder to separate them afterwards). 

Is there any way for me to set up image-specific archive directories, instead of having everything go to ${BUILD_DIR}/tmp/deploy/sources? 

-- 
_______________________________________________ 
poky mailing list 
poky@yoctoproject.org 
https://lists.yoctoproject.org/listinfo/poky 

-- 
[ https://inango.com/ |    ] 
Ivan Efimov 
Architect, Arch Group 
i.efimov@inango-systems.com 
T +7 343 298 0147 C +7 904 9 888 350 
[ https://inango.com/ | inango.com ] [ https://www.linkedin.com/company/inango ] 

--=_16181230-ce34-4f84-b537-b338c2596d61
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family: arial, helvetica, sans-=
serif; font-size: 12pt; color: #000000"><div>Hi Nicholas,<br/></div><div><b=
r data-mce-bogus=3D"1"/></div><div>Looks like you use different image recip=
es, doesn&#39;t you?</div><div><br data-mce-bogus=3D"1"/></div><div>=C2=A0=
=C2=A0 You may use next folder path in &#34;do_deploy_archives&#34; to sto=
re tarballs to have uniq path per image:<br data-mce-bogus=3D"1"/></div><di=
v>=C2=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 ${DEPLOY_DIR}/archives/${IMAGE_NAM=
E}/<br data-mce-bogus=3D"1"/></div><div><br data-mce-bogus=3D"1"/></div><di=
v>Best regards,<br data-mce-bogus=3D"1"/></div><div>Ivan<br data-mce-bogus=
=3D"1"/></div><div><br data-mce-bogus=3D"1"/></div><hr id=3D"zwchr" data-m=
arker=3D"__DIVIDER__"/><div data-marker=3D"__HEADERS__"><b>From: </b>&#34;N=
icholas Clark&#34; &lt;nicholas.clark@gmail.com&gt;<br/><b>To: </b>&#34;pok=
y&#34; &lt;poky@yoctoproject.org&gt;<br/><b>Sent: </b>Monday, April 1, 2019=
 11:27:33 PM<br/><b>Subject: </b>[poky] do_deploy_archives for multiple ima=
ges<br/></div><div><br/></div><div data-marker=3D"__QUOTED_TEXT__"><div dir=
=
=3D"ltr"><div dir=3D"ltr"><div>I&#39;m working on a design with a two diff=
erent variants of a base image. One variant (a developer image) has some co=
mpany-proprietary tools, and also some GPLv3 tools. The other variant (our =
production image) is fully license-compliant.</div><br/><div>In order to ma=
ke sure that we&#39;re ready if/when we get GPL requests, I&#39;d like to g=
enerate a releasable source tarball at build-time. Each image&#39;s do_depl=
oy_archives task looks like it provides the right stuff, but they all go in=
to the same shared directory (making it harder to separate them afterwards)=
.</div><br/><div>Is there any way for me to set up image-specific archive d=
irectories, instead of having everything go to ${BUILD_DIR}/tmp/deploy/sour=
ces?<br/></div></div></div>
<br/>-- <br/>_______________________________________________<br/>poky mail=
ing list<br/>poky@yoctoproject.org<br/>https://lists.yoctoproject.org/listi=
nfo/poky<br/></div><div><br/></div><div data-marker=3D"__SIG_POST__">-- <br=
/></div><div><div style=3D"margin-bottom: 7px; font-family: sans-serif;"><a=
 href=3D"https://inango.com" target=3D"_blank"> <img src=3D"cid:attach_0_15=
D9594CE80A204F_14359@groups.io"/> </a><br/></div><div style=3D"color: #3333=
33; margin-left: 13px; font-family: sans-serif; font-size: 13px; line-heigh=
t: 14px; font-weight: bold;">Ivan Efimov</div><div style=3D"color: #333333;=
 margin-left: 13px; font-family: sans-serif; font-size: 13px; line-height: =
14px;">Architect, Arch Group</div><div style=3D"color: #333333; margin-left=
: 13px; font-family: sans-serif; font-size: 11px; line-height: 14px;">i.efi=
mov@inango-systems.com</div><div style=3D"color: #333333; margin-left: 13px=
; font-family: sans-serif; font-size: 11px; line-height: 15px;"><span style=
=
=3D"color: #333333; margin-right: 5px;"> T +7 343 298 0147</span><span>C +=
7 904 9 888 350</span></div><div style=3D"margin-left: 13px; font-family: s=
ans-serif; font-size: 11px; line-height: 14px;"><span><a href=3D"https://in=
ango.com" style=3D"text-decoration: none; color: #f48b00; font-weight: bold=
; margin-right: 5px;" target=3D"_blank">inango.com</a></span><a href=3D"htt=
ps://www.linkedin.com/company/inango" target=3D"_blank"><img src=3D"cid:att=
ach_1_15D9594CE80F1D26_14359@groups.io" alt=3D"Inango on LinkedIn" style=3D=
"vertical-align: top;"/></a><br/></div></div></div>
</body></html>

--=_16181230-ce34-4f84-b537-b338c2596d61--

--17CXl0EbcfDMqIcRcqoC
Content-Id: <attach_0_15D9594CE80A204F_14359@groups.io>
X-Attachment-Id: attach_0_15D9594CE80A204F_14359@groups.io
Content-Type: image/png; name="dummyfile.0.part"
Content-Disposition: inline; filename="dummyfile.0.part"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAI4AAAA2CAMAAAAmulEiAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAGNQTFRFHR0bKiooODg3R0dFVVVT
Y2NicXFwf39+jo6NnJybqqqpuLi3xsbG1NTU4+Pi8fHx9IsA9ZIP9Zkf9qAv96g/969P+LZf+b1v
+cV/+syP+9Of/Nuv/OK//enP/vDf/vjv////O48IWgAAA6JJREFUWMPNmGF7oyoQhQ+CiApC2202
Mbl6/v+v3A9RRKPNuk9vDZ/62DPwMgwzQ8CXGhj/uPYvhcP2xXC6l8Lh+bVw2v9eCqf/JEnepi/X
I3F4vpHsLyPdte0Pxel/TUfWn393xx4WeW7JE0l2x8AscPqP0/t7z+506g4O5dvlRt5CCOH9OJjU
O9fT51sIIYTTa1x0diGEEMLni+D07yGEED5ur4DTnz9+hxDC++1yavujcc6fV/L29vZxIdkdxTPg
tKf7CX2OpeJI77TnIVy6y1AqDsRpz11a1Ptjb9Y1SXqXWEnHYa21zaOZtdauzreud9Za69f0bm4w
KxJsqQr2J5KqIGkVAADZbOmmyIbPxbTCF3pvBn1uSSq18h9ZreLcCHVvU6HoNZAbWxsJ5JOmEoAs
jCkkIFzc1qbeZUBubGUkUJCYVqzFZCDdCg4JdW9TobxEPuy+AopIA+SDc62CaKLdht6JSS+hE5xk
JieHna3itB2hDComloMfvICZnC3jsl/odao3EcciMaCG8Fs4PBOZ0EzVw7olVBq4kKPdhl7P9D4T
ESebPEiSCvkmTtvhThuPeVw3T7eURMKGvgFm96zGaFEhmy3cCLgtHN4wZ4/rZvPpE5xVfQk9nz8b
LeR8X2QBvYnDePjDEIPQmNkdTnBW9Qr1clEMbhPLDATxFc78u8JaEjMJzqoeWCQ/OwirNBeMjnPb
ONlzHKcx4azrH3zQDBYGZjldDruNo7ZxXG0KpTIAasJZ1y8/RzfmsI+uNvtxfCnvhUDlxvKfcdT3
4HgJ5FUsh09xHgP2O3G8hPKrF139XSjXMXbKJY5GvRdHLy7EM5zNi14u8hRJuT+UxTwLumc4xVYa
tMureM9hO3FijRor2BMctygSVUwNYhk8JfL9OGo95W+GvpqdrhfRolhY+AzVfhyxXhA3cZpFgzGG
MhsxD6sCGXfjZKmLnXiaBskKUE3sI5P2q0x6SbIC7H4cgyzGghWiiRd5O4vXApDGmCIDTFrcNESZ
FL+K+3G8hDCOpK81hKOENNWTohIbdO3mtbYAZOVIW2ZjZ7g7K2uMQ3vSCdyVX9U40ltr3WOtHV8e
U9OM3S+zpsyVUnnpx4eS32Nt59yuNEqZqll/Z33/MGaJk//1b4P/xyt3UbT0Y636SRw1b4mbZRP7
wzjz7ML8sQH6URwvEx6v53A/j0MvAV03JJ0REDWPxUkzVSwXB+KQTamVUkqXzfOLyJcafwDne07J
Qv7f1QAAAABJRU5ErkJggg==

--17CXl0EbcfDMqIcRcqoC
Content-Id: <attach_1_15D9594CE80F1D26_14359@groups.io>
X-Attachment-Id: attach_1_15D9594CE80F1D26_14359@groups.io
Content-Type: image/png; name="dummyfile.1.part"
Content-Disposition: inline; filename="dummyfile.1.part"
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAADgAAAAQCAIAAADMGysSAAAACXBIWXMAAAsTAAALEwEAmpwYAAAA
GXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAj9JREFUeNrUlk9u2lAQxgvKFi4Q
k33tLFiaHABzAHD2gQtADoC9SyJhFlFXOE23AfYpuQDsEb6AnQMUDkB/ZRrL4RmMlEo0I3gaxm/e
++abPya3Xq+/fAbJHRGo43SDYLF/j64bjuMeE+jDg++6ziE7n55GlUolj2bbdT6LxbvgOp32aDTc
5ZzqkikciBdEoi+XSzFWq1ahUMj0PeE7m82Snsh0Oh2PR5PJT8uqFYtF1U11OUSiKBLHWIDoeX3Y
7fe9bKCqQHWv51EfqSj/oaxWK8uqvr5GmTvzqVZySppct4siWYZj1lqtulUPkNpqNXnEGkUhBWMY
X/mgCN+cwKOzMw2LWiqnp5pt26ZporfbnXq9gcKKvlUP6YxyR5xcUS4vG/Lo+roD38lSfnmZcOjj
4w+4gSGxUzngHg7HoBTCsKgXlUoamKSWUDah/vmpaSXTrMSX7mRUFU4ZDHzRw/BvpqAclJtB487n
c0HZ7TpCDHf7/kBQEsnz84S+2X8L+Ij24qIC90k6djKqSrPZUus1CAJWEtdo2DD3ht7Z2oD4/nfD
MDhEAtvdbaFEq7ZpPnHoYvom6hGpXSUMwRyFCw4xwijcQyrzr1wux9xz9555t5WrfV2fZII7DqR5
ufwFUEbj/f03MXpeT9oZeiDy9vYGHWrPz/WPzIf8B+cLU5D6A8rd3Q3h0cWrjaBItdBP6NLgV1dN
tWtJYBiGMrzjN6qk97941zPhM4f89iv0KALfup5dDOyR6s99lr95vwUYAPJDV32BeqY/AAAAAElF
TkSuQmCC

--17CXl0EbcfDMqIcRcqoC--
