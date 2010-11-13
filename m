Return-Path: <mbalcells@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DBDA4C80BD8
	for <poky@yoctoproject.org>; Sat, 13 Nov 2010 10:29:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi14 with SMTP id 14so430879wwi.11
	for <poky@yoctoproject.org>; Sat, 13 Nov 2010 08:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=DEqO4STV/BQebsTYxX9GB0of2D0rN3HjINYwoqXhfGY=;
	b=rBwk9RNysrdF6hfdhWmJz0mjq3n0SrO+lFUq+goxINVY8wd1flGtueqQWy2ExzsY1n
	1EoOoXgb3KKj82VeR+3AgqiPRuiuvY2t1hUL6FvgP21Hzu4Ye8UloCFq5p+gcPSrIycf
	UiyoDYSqfrY1iQb0KUL8qOq+03TN6dxKsNJWE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=CO3ysp6qfz5y1ghJ/d8OYIVUwNZQXcqnkM4BKNfm5BTncotV1aL/U5cC1d1xhlWdqd
	a5sWbZWzV5RTWaYrqAZn2c5ac/xlwEPaKqut3ATT42CjsIHGLpNgQYvnU+SCmvQxHRiZ
	+bScpgmuh35fv/77NBPFcaJ8En61nowkn0fxY=
MIME-Version: 1.0
Received: by 10.227.174.206 with SMTP id u14mr3939667wbz.40.1289665769516;
	Sat, 13 Nov 2010 08:29:29 -0800 (PST)
Received: by 10.227.136.205 with HTTP; Sat, 13 Nov 2010 08:29:29 -0800 (PST)
In-Reply-To: <4CDD8FFF.6090707@intel.com>
References: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
	<4CDD8FFF.6090707@intel.com>
Date: Sat, 13 Nov 2010 17:29:29 +0100
Message-ID: <AANLkTikQqNmh-zk1iBuGp+gcRNXiJcgQru6J78eRW9JN@mail.gmail.com>
From: Marc <mbalcells@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: newbie recipe question
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
X-List-Received-Date: Sat, 13 Nov 2010 16:29:31 -0000
Content-Type: multipart/alternative; boundary=00248c0ef1fe1230760494f1b6aa

--00248c0ef1fe1230760494f1b6aa
Content-Type: text/plain; charset=ISO-8859-1

Yes it works on files but not on subdirectories

On Fri, Nov 12, 2010 at 8:05 PM, Scott Garman <scott.a.garman@intel.com>wrote:

> On 11/12/2010 08:49 AM, Marc wrote:
>
>> Hello, I'm a newbie in creating recipes for poky and I'm running through
>> a series of problems.
>> I'm trying to make a recipe in order to build an ipk package containing
>> a series of webpages and scripts, I have them at a subversion repository.
>> For now it works simply by pointing at the svn repository and specifiing
>> at do_install every directories files to their destination. like this:
>> =======================================================================
>> SRCREV = "${AUTOREV}"
>> PR = "${SRCREV}"
>>
>> SRC_URI = "svn://server/svn/;module=webpackage;proto=http "
>>
>> S = "${WORKDIR}"
>>
>> do_install(){
>> install -m 0755 -d ${D}/etc/
>> install -m 0755 -d ${D}/www/
>> install -m 0755 -d ${D}/www/images
>> install -m 0755 -d ${D}/www/cgi-bin
>> install -m 0755 -d ${D}/www/includes
>> install -m 0755 ${S}/*.htm${D}/www/
>> install -m 0755 ${S}/*.css${D}/www/
>> install -m 0755 ${S}/includes/* ${D}/www/includes/
>> install -m 0755 ${S}/cgi-bin/* ${D}/www/cgi-bin/
>> install -m 0755 ${S}/images/* ${D}/www/images/
>>
>> }
>> =================================================================
>>
>> Is there any other way to do this without having to specify the whole
>> subdirectory structure and every file extension? ( * is not working)
>> Since I'm adding and deleting files to my repository pretty frequently I
>> don't wan't having to modify the recipe each time.
>>
>
> I haven't tested this locally, but I believe file globbing is supposed to
> work. Have you tried *.*?
>
> Scott
>
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



-- 
Marc.

--00248c0ef1fe1230760494f1b6aa
Content-Type: text/html; charset=ISO-8859-1

Yes it works on files but not on subdirectories<br><br><div class="gmail_quote">On Fri, Nov 12, 2010 at 8:05 PM, Scott Garman <span dir="ltr">&lt;<a href="mailto:scott.a.garman@intel.com">scott.a.garman@intel.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><div class="im">On 11/12/2010 08:49 AM, Marc wrote:<br>
</div><div><div></div><div class="h5"><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hello, I&#39;m a newbie in creating recipes for poky and I&#39;m running through<br>
a series of problems.<br>
I&#39;m trying to make a recipe in order to build an ipk package containing<br>
a series of webpages and scripts, I have them at a subversion repository.<br>
For now it works simply by pointing at the svn repository and specifiing<br>
at do_install every directories files to their destination. like this:<br>
=======================================================================<br>
SRCREV = &quot;${AUTOREV}&quot;<br>
PR = &quot;${SRCREV}&quot;<br>
<br>
SRC_URI = &quot;svn://server/svn/;module=webpackage;proto=http &quot;<br>
<br>
S = &quot;${WORKDIR}&quot;<br>
<br>
do_install(){<br>
install -m 0755 -d ${D}/etc/<br>
install -m 0755 -d ${D}/www/<br>
install -m 0755 -d ${D}/www/images<br>
install -m 0755 -d ${D}/www/cgi-bin<br>
install -m 0755 -d ${D}/www/includes<br>
install -m 0755 ${S}/*.htm${D}/www/<br>
install -m 0755 ${S}/*.css${D}/www/<br>
install -m 0755 ${S}/includes/* ${D}/www/includes/<br>
install -m 0755 ${S}/cgi-bin/* ${D}/www/cgi-bin/<br>
install -m 0755 ${S}/images/* ${D}/www/images/<br>
<br>
}<br>
=================================================================<br>
<br>
Is there any other way to do this without having to specify the whole<br>
subdirectory structure and every file extension? ( * is not working)<br>
Since I&#39;m adding and deleting files to my repository pretty frequently I<br>
don&#39;t wan&#39;t having to modify the recipe each time.<br>
</blockquote>
<br></div></div>
I haven&#39;t tested this locally, but I believe file globbing is supposed to work. Have you tried *.*?<br>
<br>
Scott<br><font color="#888888">
<br>
-- <br>
Scott Garman<br>
Embedded Linux Distro Engineer - Yocto Project<br>
_______________________________________________<br>
poky mailing list<br>
<a href="mailto:poky@yoctoproject.org" target="_blank">poky@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/poky" target="_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></blockquote></div><br><br clear="all"><br>-- <br>Marc.<br>

--00248c0ef1fe1230760494f1b6aa--
