Return-Path: <gvandenbosch@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id AEC6B4C8043A
	for <poky@yoctoproject.org>; Fri, 27 May 2011 11:24:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so2354602bwz.35
	for <poky@yoctoproject.org>; Fri, 27 May 2011 09:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ZWcB9DQ3VO748Z3PoTi/Fwnh7ElJpoTUCVEbvaC+Gjc=;
	b=EOFxzT7ehfDZv4Xbl6aeUzBca95mjPHpOnj8TAxxXTzFXqkGDVCwgGZzDwcFHoXLcN
	0ghSpLrbPvVhBEQqjnOn8C/UVrH/uzZqKyf789fFTiZnVXHE9ygHZm60feqq7K8ZNkO0
	gHYY9OcPHWABxnjgDlKV436SQtOkq0d4AfWHw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=Jpg2ASHWnnLW8F3yLVQOXAL/qCOFs0bwIuVcppDibOb57fA6OUmiBXKTIfwYb12lj1
	y5qRs+6UpqS+0j7RzpPAC+7SpsW7vtDojS4tFOGWwy/D+u/gSGvsca7dlTXmP6eQ9auT
	FQtzNN6gQ6DQ4GdLZVfTOmT5/zVR72Acbp7/8=
MIME-Version: 1.0
Received: by 10.204.84.27 with SMTP id h27mr1958549bkl.158.1306513484414; Fri,
	27 May 2011 09:24:44 -0700 (PDT)
Received: by 10.204.74.222 with HTTP; Fri, 27 May 2011 09:24:44 -0700 (PDT)
In-Reply-To: <1306506710.27470.270.camel@rex>
References: <4DDE01BB.3000109@de-haardt.com> <1306402981.27470.97.camel@rex>
	<4DDE37EE.101@de-haardt.com> <1306418056.27470.181.camel@rex>
	<4DDF404D.2010504@de-haardt.com> <1306500547.27470.269.camel@rex>
	<4DDFA5F4.6040300@de-haardt.com> <1306506710.27470.270.camel@rex>
Date: Fri, 27 May 2011 18:24:44 +0200
Message-ID: <BANLkTint9ZmJUfheXOmPWhyQ0LoKVnw9OQ@mail.gmail.com>
From: Gerard van den Bosch <gvandenbosch@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky <poky@yoctoproject.org>
Subject: Re: wrong rpm name qt package
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
X-List-Received-Date: Fri, 27 May 2011 16:24:46 -0000
Content-Type: multipart/alternative; boundary=0016e6db5be82201ae04a4446082

--0016e6db5be82201ae04a4446082
Content-Type: text/plain; charset=ISO-8859-1

On Fri, May 27, 2011 at 4:31 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2011-05-27 at 15:24 +0200, Gerard van den Bosch wrote:
> > On 05/27/2011 02:49 PM, Richard Purdie wrote:
> >
> > > On Fri, 2011-05-27 at 08:10 +0200, Gerard van den Bosch wrote:
> > >> Ok, I have tried the following with the Bernard release:
> > >>
> > >> print "hello"
> > >> print bb.data.getVar('BB_WORKERCONTEXT', d, True)
> > >> if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
> > >>    print "hello2"
> > >>    runtime_mapping_rename("PACKAGE_INSTALL", d)
> > >>    runtime_mapping_rename("PACKAGE_INSTALL_ATTEMPTONLY", d)
> > >> The "hello" gets printed, and the variable outputs "None", the
> "hello2" doesn't get printed because the variable is None.
> > >>
> > >> In the laverne release I use here it checks on something else namely:
> > >> if bb.data.getVar('__RUNQUEUE_DO_NOT_USE_EXTERNALLY', d, True) is not
> None:
> > >> I can't add print commands there because it gives ident errors, found
> that has something todo with spaces but couldn't get it working.
> > >>
> > >> I tried searching some further, I see in this commit that the if is
> added, that is in the laverne release:
> > >>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=4e0ee648b4c18b770aba11921370258f3e2aaeef
> > >>
> > >> Then a few commits later it is changed to the BB_WORKERCONTEXT:
> > >>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/classes/image.bbclass?id=e427f251a457f3015c4b1cdf1648c53a9acc646d
> > >>
> > >> Thus I tried to figure out what sets the BB_WORKERCONTEXT, I found it
> in two files in bitbake namely cooker.py and runqueue.py.
> > >> Eventually it leads to the loading of the configuration file and
> something set BB_WORKERCONTEXT then but I couldn't figure out what sets the
> variable.
> > >>
> > >> I looked up the commits where it is added to bitbake:
> > >>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/runqueue.py?id=1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584
> > >>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/lib/bb/cooker.py?id=ca09a6f08cc29f79f9742058d737deaef9d6d5ef
> > >>
> > >> But I couldn't figure out what the changes did and I did not come
> further than this.
> > >> If I need to try something else out, let me know.
> > > This code only triggers at rootfs generation time. I've discovered this
> > > broken in master at least. To test I did:
> > >
> > > bitbake -b /path/to/some-image.bb -c rootfs
> > >
> > > and then saw:
> > >
> > > NOTE: Preparing runqueue
> > > NOTE: Executing SetScene Tasks
> > > NOTE: Executing RunQueue Tasks
> > > ERROR: Start package mapping
> > > ERROR: Found package mapping
> > > NOTE: Running task 10 of 10 (ID: 6,
> /media/build2/builds/rptest/meta/recipes-core/images/core-image-minimal.bb,
> do_rootfs)
> > > NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
> > > ^C
> > >
> > > with the following in image.bbclass:
> > >
> > >      bb.error("Start package mapping")
> > >      if bb.data.getVar('BB_WORKERCONTEXT', d, True) is not None:
> > >          bb.error("Found package mapping")
> > >          runtime_mapping_rename("PACKAGE_INSTALL", d)
> > >
> > > when I'd fixed the underlying problem.
> > >
> > > Cheers,
> > >
> > > Richard
> > >
> > If I understand correctly, you have fixed something to get it working?
>
> Yes, I need to merge this:
>
>
> http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/bb2&id=5b5f6e9d221c7cfcf1b4d9c4c76f38c03203ec49
>
> >  or does it work and am I doing something wrong?
> > Because when I add the bb.error commands I am only seeing the "Start
> > package mapping" with the suggested bitbake command.
>
> Correct, it is broken until the above fix is applied :(
>
> Cheers,
>
> Richard
>
>
Richard, I have manually added your fix into my Bernard release and I am
happy to inform you it works :)
My image builds without problems now, thank you very much for the fix.

Regards,
Gerard

--0016e6db5be82201ae04a4446082
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, May 27, 2011 at 4:31 PM, Richard Purdie <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfounda=
tion.org</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px so=
lid rgb(204, 204, 204); padding-left: 1ex;">
On Fri, 2011-05-27 at 15:24 +0200, Gerard van den Bosch wrote:<br>
&gt; On 05/27/2011 02:49 PM, Richard Purdie wrote:<br>
&gt;<br>
&gt; &gt; On Fri, 2011-05-27 at 08:10 +0200, Gerard van den Bosch wrote:<br=
>
&gt; &gt;&gt; Ok, I have tried the following with the Bernard release:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; print &quot;hello&quot;<br>
&gt; &gt;&gt; print bb.data.getVar(&#39;BB_WORKERCONTEXT&#39;, d, True)<br>
&gt; &gt;&gt; if bb.data.getVar(&#39;BB_WORKERCONTEXT&#39;, d, True) is not=
 None:<br>
&gt; &gt;&gt; =A0 =A0print &quot;hello2&quot;<br>
&gt; &gt;&gt; =A0 =A0runtime_mapping_rename(&quot;PACKAGE_INSTALL&quot;, d)=
<br>
&gt; &gt;&gt; =A0 =A0runtime_mapping_rename(&quot;PACKAGE_INSTALL_ATTEMPTON=
LY&quot;, d)<br>
&gt; &gt;&gt; The &quot;hello&quot; gets printed, and the variable outputs =
&quot;None&quot;, the &quot;hello2&quot; doesn&#39;t get printed because th=
e variable is None.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; In the laverne release I use here it checks on something else=
 namely:<br>
&gt; &gt;&gt; if bb.data.getVar(&#39;__RUNQUEUE_DO_NOT_USE_EXTERNALLY&#39;,=
 d, True) is not None:<br>
&gt; &gt;&gt; I can&#39;t add print commands there because it gives ident e=
rrors, found that has something todo with spaces but couldn&#39;t get it wo=
rking.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I tried searching some further, I see in this commit that the=
 if is added, that is in the laverne release:<br>
&gt; &gt;&gt; <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/commit=
/meta/classes/image.bbclass?id=3D4e0ee648b4c18b770aba11921370258f3e2aaeef" =
target=3D"_blank">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/c=
lasses/image.bbclass?id=3D4e0ee648b4c18b770aba11921370258f3e2aaeef</a><br>

&gt; &gt;&gt;<br>
&gt; &gt;&gt; Then a few commits later it is changed to the BB_WORKERCONTEX=
T:<br>
&gt; &gt;&gt; <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/commit=
/meta/classes/image.bbclass?id=3De427f251a457f3015c4b1cdf1648c53a9acc646d" =
target=3D"_blank">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/meta/c=
lasses/image.bbclass?id=3De427f251a457f3015c4b1cdf1648c53a9acc646d</a><br>

&gt; &gt;&gt;<br>
&gt; &gt;&gt; Thus I tried to figure out what sets the BB_WORKERCONTEXT, I =
found it in two files in bitbake namely cooker.py and runqueue.py.<br>
&gt; &gt;&gt; Eventually it leads to the loading of the configuration file =
and something set BB_WORKERCONTEXT then but I couldn&#39;t figure out what =
sets the variable.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I looked up the commits where it is added to bitbake:<br>
&gt; &gt;&gt; <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/commit=
/bitbake/lib/bb/runqueue.py?id=3D1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584" =
target=3D"_blank">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbak=
e/lib/bb/runqueue.py?id=3D1f3e313fd5cc5ae8ea838bf8fcdedace3cb72584</a><br>

&gt; &gt;&gt; <a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky/commit=
/bitbake/lib/bb/cooker.py?id=3Dca09a6f08cc29f79f9742058d737deaef9d6d5ef" ta=
rget=3D"_blank">http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/bitbake/=
lib/bb/cooker.py?id=3Dca09a6f08cc29f79f9742058d737deaef9d6d5ef</a><br>

&gt; &gt;&gt;<br>
&gt; &gt;&gt; But I couldn&#39;t figure out what the changes did and I did =
not come further than this.<br>
&gt; &gt;&gt; If I need to try something else out, let me know.<br>
&gt; &gt; This code only triggers at rootfs generation time. I&#39;ve disco=
vered this<br>
&gt; &gt; broken in master at least. To test I did:<br>
&gt; &gt;<br>
&gt; &gt; bitbake -b /path/to/<a href=3D"http://some-image.bb" target=3D"_b=
lank">some-image.bb</a> -c rootfs<br>
&gt; &gt;<br>
&gt; &gt; and then saw:<br>
&gt; &gt;<br>
&gt; &gt; NOTE: Preparing runqueue<br>
&gt; &gt; NOTE: Executing SetScene Tasks<br>
&gt; &gt; NOTE: Executing RunQueue Tasks<br>
&gt; &gt; ERROR: Start package mapping<br>
&gt; &gt; ERROR: Found package mapping<br>
&gt; &gt; NOTE: Running task 10 of 10 (ID: 6, /media/build2/builds/rptest/m=
eta/recipes-core/images/<a href=3D"http://core-image-minimal.bb" target=3D"=
_blank">core-image-minimal.bb</a>, do_rootfs)<br>
&gt; &gt; NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started<=
br>
&gt; &gt; ^C<br>
&gt; &gt;<br>
&gt; &gt; with the following in image.bbclass:<br>
&gt; &gt;<br>
&gt; &gt; =A0 =A0 =A0bb.error(&quot;Start package mapping&quot;)<br>
&gt; &gt; =A0 =A0 =A0if bb.data.getVar(&#39;BB_WORKERCONTEXT&#39;, d, True)=
 is not None:<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0bb.error(&quot;Found package mapping&quot;)<br=
>
&gt; &gt; =A0 =A0 =A0 =A0 =A0runtime_mapping_rename(&quot;PACKAGE_INSTALL&q=
uot;, d)<br>
&gt; &gt;<br>
&gt; &gt; when I&#39;d fixed the underlying problem.<br>
&gt; &gt;<br>
&gt; &gt; Cheers,<br>
&gt; &gt;<br>
&gt; &gt; Richard<br>
&gt; &gt;<br>
&gt; If I understand correctly, you have fixed something to get it working?=
<br>
<br>
Yes, I need to merge this:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drp=
urdie/bb2&amp;id=3D5b5f6e9d221c7cfcf1b4d9c4c76f38c03203ec49" target=3D"_bla=
nk">http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Drpurdie/b=
b2&amp;id=3D5b5f6e9d221c7cfcf1b4d9c4c76f38c03203ec49</a><br>

<br>
&gt; =A0or does it work and am I doing something wrong?<br>
&gt; Because when I add the bb.error commands I am only seeing the &quot;St=
art<br>
&gt; package mapping&quot; with the suggested bitbake command.<br>
<br>
Correct, it is broken until the above fix is applied :(<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br></blockquote><div><br>Richard, I have manually added your fix into my B=
ernard release and I am happy to inform you it works :)<br>My image builds =
without problems now, thank you very much for the fix.<br><br>Regards,<br>
Gerard=A0</div></div>

--0016e6db5be82201ae04a4446082--
