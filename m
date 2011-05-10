Return-Path: <mbalcells@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id BCA3A4C80479
	for <poky@yoctoproject.org>; Tue, 10 May 2011 09:04:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywk9 with SMTP id 9so3049255ywk.35
	for <poky@yoctoproject.org>; Tue, 10 May 2011 07:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=1k6z+jZ6CR80vofLTs5ZBgMp1ZwJHekEPbgq4onobGo=;
	b=JHKHH78LxFa31/2smGTM8ymPZQLZsQwxJRsVbH314S212K7iZierfNTyWZW2UI8mD+
	SPpcgqnqpiMfw4XaHNF6GGt/Y7U+rCIMvBi1V1dQQIB0ePjloruQ80Shvsgzm+nn2fkn
	85wSDrSqhQR0TV/iccBn+3iDxn2XfDsZHZYDA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=VOvndR9Kgp9f+6RWIGedOrXAybKut0C6qON6XqRY+F9fh5SeFMqL4HAJujulTnyPAo
	qKwqMCTHnWac9ITgNl4gaeow4emPpwKZv1d3m+h9/8iMnRxp9Uy7aj6DiTlTs2Y02ezQ
	12JvAa/bXzC/8onw2s/94XeSRpFzXARFdd5Z8=
MIME-Version: 1.0
Received: by 10.236.138.136 with SMTP id a8mr9129671yhj.467.1305036265575;
	Tue, 10 May 2011 07:04:25 -0700 (PDT)
Received: by 10.236.103.51 with HTTP; Tue, 10 May 2011 07:04:25 -0700 (PDT)
In-Reply-To: <4DC7A359.6070907@windriver.com>
References: <BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com>
	<4DC7A359.6070907@windriver.com>
Date: Tue, 10 May 2011 16:04:25 +0200
Message-ID: <BANLkTinfY5SFe=TVx6NuFXRF9Re9ZB_zuw@mail.gmail.com>
From: Marc <mbalcells@gmail.com>
To: Kang Kai <Kai.Kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: help adding perl module
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
X-List-Received-Date: Tue, 10 May 2011 14:04:27 -0000
Content-Type: multipart/alternative; boundary=20cf303dd8fa0753b204a2ec6fe7

--20cf303dd8fa0753b204a2ec6fe7
Content-Type: text/plain; charset=ISO-8859-1

Thank's for the tip Kai, I didn't realize how easy was to create a perl
recipe for a cpan module, i just had to add uri and "inherit cpan" :-)


On Mon, May 9, 2011 at 10:18 AM, Kang Kai <Kai.Kang@windriver.com> wrote:

>  Hi Marc,
>
>  Hello, I would like to add a perl module which is not included in poky,
> which is the best aproach? should I create a recipe or modify perl recipe?
> anybody has an example?
>
> Please check whether http://git.openembedded.net/ has it already,
> otherwise maybe need to create a new recipe.
>
>
>  Thank's
>
> --
> Marc.
>
>
> Regards,
> Kai
>
>
> _______________________________________________
> poky mailing listpoky@yoctoproject.orghttps://lists.yoctoproject.org/listinfo/poky
>
>
>


-- 
Marc.

--20cf303dd8fa0753b204a2ec6fe7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank&#39;s for the tip Kai, I didn&#39;t realize how easy was to create a =
perl recipe for a cpan module, i just had to add uri and &quot;inherit cpan=
&quot; :-)<div><br><br><div class=3D"gmail_quote">On Mon, May 9, 2011 at 10=
:18 AM, Kang Kai <span dir=3D"ltr">&lt;<a href=3D"mailto:Kai.Kang@windriver=
.com">Kai.Kang@windriver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">

 =20
   =20
 =20
  <div bgcolor=3D"#ffffff" text=3D"#000000">
    Hi Marc, <br><div class=3D"im">
    <br>
    <blockquote type=3D"cite">
     =20
      Hello, I would like to add a perl module which is not included in
      poky, which is the best aproach? should I create a recipe or
      modify perl recipe?
      <div>anybody has an example?</div>
    </blockquote></div>
    Please check whether <a href=3D"http://git.openembedded.net/" target=3D=
"_blank">http://git.openembedded.net/</a> has it already,
    otherwise maybe need to create a new recipe.<br>
    <br>
    <blockquote type=3D"cite">
      <div><br>
      </div>
      <div>Thank&#39;s<br clear=3D"all">
        <br>
        -- <br>
        Marc.<br>
      </div>
    </blockquote>
    <br>
    Regards,<br>
    Kai<br>
    <blockquote type=3D"cite">
      <div>
      </div>
      <pre><fieldset></fieldset>
_______________________________________________
poky mailing list
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </div>

</blockquote></div><br><br clear=3D"all"><br>-- <br>Marc.<br>
</div>

--20cf303dd8fa0753b204a2ec6fe7--
