Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 941DFE00303
	for <poky@yoctoproject.org>; Fri,  9 Dec 2011 16:02:16 -0800 (PST)
Received: by eekb47 with SMTP id b47so2292550eek.35
	for <poky@yoctoproject.org>; Fri, 09 Dec 2011 16:02:15 -0800 (PST)
Received: by 10.14.18.100 with SMTP id k76mr1122584eek.93.1323475333781;
	Fri, 09 Dec 2011 16:02:13 -0800 (PST)
Received: from [192.168.1.2] ([79.117.116.240])
	by mx.google.com with ESMTPS id f47sm4673436eea.1.2011.12.09.16.02.12
	(version=SSLv3 cipher=OTHER); Fri, 09 Dec 2011 16:02:13 -0800 (PST)
Message-ID: <4EE2A184.6020901@gherzan.ro>
Date: Sat, 10 Dec 2011 02:02:12 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4EE2887C.3000601@gherzan.ro> <4EE29B38.3030104@linux.intel.com>
In-Reply-To: <4EE29B38.3030104@linux.intel.com>
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
X-List-Received-Date: Sat, 10 Dec 2011 00:02:18 -0000
Content-Type: multipart/alternative;
	boundary="------------050907040506010903030909"

--------------050907040506010903030909
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


> This looks like our debian-style package renaming, which renames
> libraries to include the lib prefix.
>
> We have a brief blurb about it here:
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian
>
> Regards,
> Joshua

Yes it looks like. But here is the problem: i included this pkg in 
IMAGE-INSTALL and i found library from -extra with even if
LICENSE_${PN}-extra = "GPLv3+"

And i think that this could be because of this name style change.

-- 
*Andrei Gherzan*, Engineer
mobile +40.744.478.414  fax +40.031.816.28.12
Email: andrei@gherzan.ro
Email: andrei.gherzan@windriver.com
Romania

Acest e-mail reprezinta corespondenta pentru care dumneavoastra v-ati 
exprimat acordul si se supune politicii noastre de anti-spamming.
Daca totusi considerati ca acest email reprezinta spamming va rugam sa 
ne contactati folosind e-mail-ul info@gherzan.ro. Multumim.

--------------050907040506010903030909
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <blockquote cite="mid:4EE29B38.3030104@linux.intel.com" type="cite">
      <pre wrap="">
This looks like our debian-style package renaming, which renames
libraries to include the lib prefix.

We have a brief blurb about it here:
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian">http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-classes-debian</a>

Regards,
Joshua
</pre>
    </blockquote>
    <br>
    Yes it looks like. But here is the problem: i included this pkg in
    IMAGE-INSTALL and i found library from -extra with even if <br>
    LICENSE_${PN}-extra = "GPLv3+"<br>
    <br>
    And i think that this could be because of this name style change.<br>
    <br>
    <div class="moz-signature">-- <br>
      <title>work Signature</title>
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta content="MSHTML 6.00.5730.11" name="GENERATOR">
      <style type="text/css">
<!--
a {
	font-family: Arial, Helvetica, sans-serif;
	color: #cc0000;
	text-decoration: none;
}
-->
</style>
      <div vertical-align="middle" align="left"><font color="#333333"
          face="Arial" size="-1"> <strong>Andrei Gherzan</strong>,
          Engineer</font><br>
        <font color="#333333" face="Arial" size="-1"> mobile
          +40.744.478.414&nbsp;&nbsp;fax +40.031.816.28.12</font><br>
        <font color="#333333" face="Arial" size="-1"> Email:
          <a class="moz-txt-link-abbreviated" href="mailto:andrei@gherzan.ro">andrei@gherzan.ro</a></font><br>
        <font color="#333333" face="Arial" size="-1"> Email:
          <a class="moz-txt-link-abbreviated" href="mailto:andrei.gherzan@windriver.com">andrei.gherzan@windriver.com</a></font><br>
        <font color="#333333" face="Arial" size="-1"> Romania</font><br>
        <br>
      </div>
      <div>
        <font color="#333333" face="Arial" size="-2">
          Acest e-mail reprezinta corespondenta pentru care
          dumneavoastra v-ati exprimat acordul si se supune politicii
          noastre de anti-spamming. <br>
          Daca totusi considerati ca acest email reprezinta spamming va
          rugam sa ne contactati folosind e-mail-ul <a class="moz-txt-link-abbreviated" href="mailto:info@gherzan.ro">info@gherzan.ro</a>.
          Multumim. </font>
      </div>
    </div>
  </body>
</html>

--------------050907040506010903030909--
