Return-Path: <ruica.cristina@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD123E00B65; Mon, 26 Mar 2018 13:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ruica.cristina[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.187.147 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic316-21.consmr.mail.ne1.yahoo.com
	(sonic316-21.consmr.mail.ne1.yahoo.com [66.163.187.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E86E007DA
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 13:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1522095961; bh=+06VUA0VZ3fFYlUZQ5XdZUp58BeUffgpS2pAOf0HRSI=;
	h=Date:From:To:Subject:References:From:Subject;
	b=r3A80rdt92gVvUXCZfXhpn0YtDhTk709cGy+EnEOXkPrZGkSoaeHoDPYxVYc857YFyWC4qCJYApX5iJvKNB6R6viIy9dsolgHLBsVnUxAd+40O7bGsdmTZPbjsoGt8J4FofhxRj0AFps1EnnC9YWOltDPck9oSK5Z3rfbCPLxAzogHvgWeNwmSBKU4iQ2w89qMN3d9/78q9O5+C/4sOXDhV0mTs26AMb+ZhNkYb8XH0gFCiSTUCDO5XIeJ2X4ULBT2JBTQwwkNuxRJyqDsOnUWPmPj87kGS2a/hwaulAmjWHgQJ6iuYl12oVy914r+wXEztEu+wJCYWUOwhWeqnSCQ==
X-YMail-OSG: n8BTnMkVM1l09cgZbEIrPstCBz91BRfJdxRl4ToFfc.eQZTHCgZk0JH8_SW4EuE
	yoGSl07H0sOoO4i0pSHQ_4cLVPo9hEwU2a03uB6_UjtnLBoDHO9cbLhPNRbW_uokF2mWL9hqQ9hr
	H0WX8PdY7xkejtUPnc4wI7Aa_nK5I8WGqHo1n7KM_MYyZe4ci5caG7VmT9OVw0iwAlGx9zGy71D.
	0_WTdvJSv7pHytrIECBNOPPE0T3ZJwYcSVm2A1LjADOHRulD8rs0PTPgbBPUk4HOpFtJvC_5UuMA
	she49txE4wJxKKfyluRRZUiMHvbYtGb1RAGQx4tHrBiYSJIaNnDTcIsDMjwqi1kwbAUJDUmlbslb
	ACYxv13lKEzBslouJAo28PvOj7TrLllWwb_9ongv0TIWCNgu7sCJG4cYqZwrs5j6bPOOHKqsF_vZ
	eYEq_NJFOz8S4y.wJlOw3DU3ZNGHQUGmNFwWzMqXdfxNOGN4Yt2KKuV0hEEKVaEK1uC4djllRHxV
	GdgLHbYGv_EQk4Gj.Kr0_X0MYmOjUYTZOr8HuLp9WFFy700y5yurTZA_fwTCvOZuZih_S4hJP.fR
	bGnqrups6sLm.GM8Ghj4ti69DSTRouA--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic316.consmr.mail.ne1.yahoo.com with HTTP;
	Mon, 26 Mar 2018 20:26:01 +0000
Date: Mon, 26 Mar 2018 20:26:00 +0000 (UTC)
From: Ruica Cristina <ruica.cristina@yahoo.com>
To: poky@yoctoproject.org
Message-ID: <94727539.1223925.1522095960460@mail.yahoo.com>
MIME-Version: 1.0
References: <94727539.1223925.1522095960460.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.11588 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Subject: problem opkg
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
X-List-Received-Date: Mon, 26 Mar 2018 20:26:04 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1223924_239451017.1522095960458"

------=_Part_1223924_239451017.1522095960458
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I followed the instructions from hereYocto =C2=B7 Intel=C2=AE Galileo


|=20
|=20
|  |=20
Yocto =C2=B7 Intel=C2=AE Galileo

The IoT Learning Initiative


 |

 |

 |



and after i got the .direct file, i wrote it to an sd card, and plugged in =
to galileo gen 2.=C2=A0Output of uname-a isLinux intel-quark 4.9.81-intel-p=
k-standard #1 Mon Mar 26 20:41:48 EEST 2018 i586 GNU/Linux
My problem is that i need to install nodejs, and i can t do this because op=
kg isnt installed..Any help???

------=_Part_1223924_239451017.1522095960458
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy><div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;f=
ont-size:13px;"><div>I followed the instructions from here</div><div><a hre=
f=3D"https://theiotlearninginitiative.gitbooks.io/intelgalileo/content/docu=
mentation/Yocto.html" rel=3D"nofollow" target=3D"_blank" class=3D"enhancr_c=
ard_2957154265">Yocto =C2=B7 Intel=C2=AE Galileo</a><br></div><div><br></di=
v><div id=3D"ydp8f9daee8enhancr_card_2957154265" class=3D"ydp8f9daee8yahoo-=
link-enhancr-card ydp8f9daee8yahoo-link-enhancr-not-allow-cover ydp8f9daee8=
ymail-preserve-class ydp8f9daee8ymail-preserve-style" style=3D"max-width:40=
0px;font-family:&quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica=
, Arial, sans-serif;" data-url=3D"https://theiotlearninginitiative.gitbooks=
.io/intelgalileo/content/documentation/Yocto.html" data-type=3D"YENHANCER" =
data-size=3D"MEDIUM" contenteditable=3D"false"><a href=3D"https://theiotlea=
rninginitiative.gitbooks.io/intelgalileo/content/documentation/Yocto.html" =
style=3D"text-decoration:none !important;color:#000 !important;" class=3D"y=
dp8f9daee8yahoo-enhancr-cardlink" rel=3D"nofollow" target=3D"_blank"><table=
 border=3D"0" class=3D"ydp8f9daee8card-wrapper ydp8f9daee8yahoo-ignore-tabl=
e" cellpadding=3D"0" cellspacing=3D"0" style=3D"max-width:400px;"><tbody><t=
r><td width=3D"400"><table border=3D"0" class=3D"ydp8f9daee8card ydp8f9daee=
8yahoo-ignore-table" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" sty=
le=3D"max-width:400px;border-width:1px;border-style:solid;border-color:rgb(=
224, 228, 233);border-radius:2px;"><tbody><tr><td><table border=3D"0" class=
=3D"ydp8f9daee8card-info ydp8f9daee8yahoo-ignore-table" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"background:#fff;position:relative;z-index:2;width=
:100%;max-width:400px;border-radius:0 0 2px 2px;border-top:1px solid rgb(22=
4, 228, 233);"><tbody><tr><td style=3D"background-color:#ffffff;padding:16p=
x 0 16px 12px;vertical-align:top;border-radius:0 0 0 2px;"></td><td style=
=3D"vertical-align:middle;padding:12px 24px 16px 12px;width:99%;font-family=
:&quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-s=
erif;border-radius:0 0 2px 0;"><h2 class=3D"ydp8f9daee8card-title" style=3D=
"font-size: 14px; line-height: 19px; margin: 0px 0px 6px; font-family: &quo=
t;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif;=
 color: rgb(38, 40, 42);">Yocto =C2=B7 Intel=C2=AE Galileo</h2><p class=3D"=
ydp8f9daee8card-richinfo-primary" style=3D"font-size:12px;line-height:16px;=
margin:0 0 4px 0;color:#979ba7;">The IoT Learning Initiative</p><p class=3D=
"ydp8f9daee8card-description" style=3D"font-size: 12px; line-height: 16px; =
margin: 0px; color: rgb(151, 155, 167);"></p></td></tr></tbody></table></td=
></tr></tbody></table></td></tr></tbody></table></a></div><div><br></div><d=
iv><br></div><div>and after i got the .direct file, i wrote it to an sd car=
d, and plugged in to galileo gen 2.&nbsp;</div><div>Output of uname-a is</d=
iv><div><div>Linux intel-quark 4.9.81-intel-pk-standard #1 Mon Mar 26 20:41=
:48 EEST 2018 i586 GNU/Linux</div><div><br></div>My problem is that i need =
to install nodejs, and i can t do this because opkg isnt installed..</div><=
div>Any help???</div></div></body></html>

------=_Part_1223924_239451017.1522095960458--
