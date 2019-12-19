Received: from mail3.gauselmann.com (mail3.gauselmann.com [193.102.155.90])
 by mx.groups.io with SMTP id smtpd.web12.11138.1576770211633664358
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 07:43:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gauselmann.de header.s=20190718 header.b=Io4xHLz9;
 spf=pass (domain: gauselmann.de, ip: 193.102.155.90, mailfrom: prvs=32563d409f=cherzig@gauselmann.de)
Received: from pps.filterd (mail3.gauselmann.com [127.0.0.1])
	by mail3.gauselmann.com (8.16.0.27/8.16.0.27) with SMTP id xBJFbNiS024175;
	Thu, 19 Dec 2019 16:43:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gauselmann.de; h=in-reply-to :
 references : to : cc : mime-version : subject : message-id : from : date :
 content-type; s=20190718; bh=oeXGe9XKWa2Etr4pyo9jDMbFd8v5/o7hvgmuoWktQw8=;
 b=Io4xHLz9xlVOMPcbYNpS8/c2/GKdCkYwySglvisCtzER4pFHxAyNfKjyWtps+WJ40M2G
 ixU33P2v/1iC//KZ74WNtEuzRdB3eyLH8ukVESVnpE0QiBKDJFp9OnVun5mAlu16peg/
 vIYsER7/TaSU/JWT52u9tuX1xo0x3QG8ToKmsK0oP2GO930+YpiKutRwMKcrVNHontko
 IgmSxkJ86wQIjdCmkRslVC6gwtkgXxeQSpUJXPMuPwgw5GlBpZ8FHsvaCmHuxiTfqwP1
 8HbuLraCEet7JAH5FOxg+xJNSxzb/gN662n/Qq9asap8YM5IDx7l+3Jv6KjOvh0xcEDJ NQ== 
Received: from bswinp16.gg.gauselmann.com ([10.99.84.148])
	by mail3.gauselmann.com with ESMTP id 2wvq0hnka5-1;
	Thu, 19 Dec 2019 16:43:27 +0100
Received: from wm01.gauselmann.com ([10.99.82.28])
          by BSWINP16.gg.gauselmann.com
          with ESMTP id 2019121916432766-42047 ;
          Thu, 19 Dec 2019 16:43:27 +0100 
In-Reply-To: <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
References: <OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com> <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
MIME-Version: 1.0
Subject: Re: [poky] [PATCH] bitbake: fetch2/clearcase: Fix tar command
X-KeepSent: 159BAEDD:90F0F424-C12584D5:0055836F;
 type=4; flags=0; name=$KeepSent
Message-ID: <OF159BAEDD.90F0F424-ONC12584D5.0055836F-C12584D5.0056605F@gauselmann.com>
From: "Christian Herzig" <cherzig@gauselmann.de>
Date: Thu, 19 Dec 2019 16:43:27 +0100
X-MIMETrack: Serialize by Router on LNS3/BEIT GmbH at 19.12.2019 16:43:27,
	Serialize complete at 19.12.2019 16:43:27,
	Itemize by SMTP Server on LNS13/BEIT GmbH at 19.12.2019 16:43:27,
	Serialize by Router on LNS13/BEIT GmbH at 19.12.2019 16:43:27
X-TNEFEvaluated: 1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-19_04:,,
 signatures=0
Content-Type: multipart/alternative; boundary="=_alternative 0056605FC12584D5_="

--=_alternative 0056605FC12584D5_=
Content-Type: text/plain; charset="US-ASCII"

Hi Richard,

thanks for your objection! I'll do some clearcase fetching tests and give 
a related answer later.

Cheers, 
Christian

"Richard Purdie" <richard.purdie@linuxfoundation.org> schrieb am 
19.12.2019 15:05:07:

> Von: "Richard Purdie" <richard.purdie@linuxfoundation.org>
> An: "Christian Herzig" <cherzig@gauselmann.de>, 
poky@lists.yoctoproject.org
> Datum: 19.12.2019 15:05
> Betreff: Re: [poky] [PATCH] bitbake: fetch2/clearcase: Fix tar command
> 
> On Thu, 2019-12-19 at 15:00 +0100, Christian Herzig wrote:
> > Signed-off-by: Christian Herzig <cherzig@gauselmann.de>
> > ---
> > bitbake/lib/bb/fetch2/clearcase.py | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/bitbake/lib/bb/fetch2/clearcase.py b/bitbake/lib/bb/
> fetch2/clearcase.py
> > index e2934ef9fc..4dc712b080 100644
> > --- a/bitbake/lib/bb/fetch2/clearcase.py
> > +++ b/bitbake/lib/bb/fetch2/clearcase.py
> > @@ -237,8 +237,8 @@ class ClearCase(FetchMethod):
> >         shutil.copyfile(ud.configspecfile, os.path.join
> (ud.viewdir, ud.csname))
> > 
> >         # Clean clearcase meta-data before tar
> > -
> > -        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, 
> cleanup = [ud.localpath])
> > +        os.chdir(ud.viewdir)
> > +        runfetchcmd('tar -czf "%s" .' % (ud.localpath), d, 
> cleanup = [ud.localpath], workdir = ud.viewdir)
> 
> The fetcher shouldn't change the working directory after its completed
> as that leads to subtle other bugs. Do we need the chdir and the
> workdir or is the workdir alone enough?
> 
> Cheers,
> 
> Richard
> 

--=_alternative 0056605FC12584D5_=
Content-Type: text/html; charset="US-ASCII"

<span style=" font-size:10pt;font-family:sans-serif">Hi Richard,</span>
<br>
<br><span style=" font-size:10pt;font-family:sans-serif">thanks for your
objection! I'll do some clearcase fetching tests and give a related answer
later.</span>
<br>
<br><span style=" font-size:10pt;font-family:sans-serif">Cheers, </span>
<br><span style=" font-size:10pt;font-family:sans-serif">Christian</span>
<br>
<br><tt><span style=" font-size:10pt">&quot;Richard Purdie&quot; &lt;richard.purdie@linuxfoundation.org&gt;
schrieb am 19.12.2019 15:05:07:<br>
<br>
&gt; Von: &quot;Richard Purdie&quot; &lt;richard.purdie@linuxfoundation.org&gt;</span></tt>
<br><tt><span style=" font-size:10pt">&gt; An: &quot;Christian Herzig&quot;
&lt;cherzig@gauselmann.de&gt;, poky@lists.yoctoproject.org</span></tt>
<br><tt><span style=" font-size:10pt">&gt; Datum: 19.12.2019 15:05</span></tt>
<br><tt><span style=" font-size:10pt">&gt; Betreff: Re: [poky] [PATCH]
bitbake: fetch2/clearcase: Fix tar command</span></tt>
<br><tt><span style=" font-size:10pt">&gt; <br>
&gt; On Thu, 2019-12-19 at 15:00 +0100, Christian Herzig wrote:<br>
&gt; &gt; Signed-off-by: Christian Herzig &lt;cherzig@gauselmann.de&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; bitbake/lib/bb/fetch2/clearcase.py | 4 ++--<br>
&gt; &gt; 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt; <br>
&gt; &gt; diff --git a/bitbake/lib/bb/fetch2/clearcase.py b/bitbake/lib/bb/<br>
&gt; fetch2/clearcase.py<br>
&gt; &gt; index e2934ef9fc..4dc712b080 100644<br>
&gt; &gt; --- a/bitbake/lib/bb/fetch2/clearcase.py<br>
&gt; &gt; +++ b/bitbake/lib/bb/fetch2/clearcase.py<br>
&gt; &gt; @@ -237,8 +237,8 @@ class ClearCase(FetchMethod):<br>
&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; shutil.copyfile(ud.configspecfile,
os.path.join<br>
&gt; (ud.viewdir, ud.csname))<br>
&gt; &gt; <br>
&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; # Clean clearcase meta-data before
tar<br>
&gt; &gt; -<br>
&gt; &gt; - &nbsp; &nbsp; &nbsp; &nbsp;runfetchcmd('tar -czf &quot;%s&quot;
.' % (ud.localpath), d, <br>
&gt; cleanup = [ud.localpath])<br>
&gt; &gt; + &nbsp; &nbsp; &nbsp; &nbsp;os.chdir(ud.viewdir)<br>
&gt; &gt; + &nbsp; &nbsp; &nbsp; &nbsp;runfetchcmd('tar -czf &quot;%s&quot;
.' % (ud.localpath), d, <br>
&gt; cleanup = [ud.localpath], workdir = ud.viewdir)<br>
&gt; <br>
&gt; The fetcher shouldn't change the working directory after its completed<br>
&gt; as that leads to subtle other bugs. Do we need the chdir and the<br>
&gt; workdir or is the workdir alone enough?<br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
&gt; <br>
</span></tt>

--=_alternative 0056605FC12584D5_=--
