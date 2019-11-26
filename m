Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.5532.1574732213726987122
 for <poky@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 17:36:54 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: qi.chen@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAQ1aq8P014271
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 25 Nov 2019 17:36:52 -0800 (PST)
Received: from [128.224.162.184] (128.224.162.184) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 25 Nov
 2019 17:36:51 -0800
Subject: Re: [poky] Is it possible to build/link a single recipe with musl if glibc is the default
To: <kevin@smartthings.com>, <poky@lists.yoctoproject.org>
References: <EdcV.1574731721695208194.T7CE@lists.yoctoproject.org>
From: "Chen Qi" <Qi.Chen@windriver.com>
Message-ID: <049f2876-10c6-8fca-60e1-ad506fe3aa23@windriver.com>
Date: Tue, 26 Nov 2019 09:52:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <EdcV.1574731721695208194.T7CE@lists.yoctoproject.org>
X-Originating-IP: [128.224.162.184]
Content-Type: multipart/alternative;
	boundary="------------F3A86600FD8696CB1C78A5B7"

--------------F3A86600FD8696CB1C78A5B7
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/26/2019 09:28 AM, Kevin via Lists.Yoctoproject.Org wrote:
> Hello,
>
> We're building a custom image and using glibc as the standard 
> library.  We have a need for a couple recipes that produce binaries 
> that need to be 100% statically linked (using musl).  Is this possible 
> to do?

Usually, it's not possible to do so.

> Is this achievable with the multilib class?

No.

> Is there another approach that is worth looking into or is this not 
> possible?

You could look into multiconfig support. That may solve your problem. 
But it's a little hacky.

>   It is not desirable in our case to change the default libc to musl, 
> we'd prefer to only use musl in a couple recipes if at all possible.

Is it about license? I think it should be the only reason. If not, you 
may need to reconsider your design.

Another simple option is that you build the statically linked binaries 
in advance for all archs that you need to support, and then copy them 
onto the target at rootfs time.
I think multiconfig could solve your problem, but I myself haven't tried 
it out.

Regards,
Chen Qi

>
> Thanks,
> Kevin
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11835): https://lists.yoctoproject.org/g/poky/message/11835
> Mute This Topic: https://lists.yoctoproject.org/mt/61952339/3618072
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [Qi.Chen@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-



--------------F3A86600FD8696CB1C78A5B7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xAQ1aq8P014271

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 11/26/2019 09:28 AM, Kevin via
      Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:EdcV.1574731721695208194.T7CE@lists.yoctoproject.org"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      Hello,<br>
      <br>
      We're building a custom image and using glibc as the standard
      library.=C2=A0 We have a need for a couple recipes that produce
      binaries that need to be 100% statically linked (using musl).=C2=A0=
 Is
      this possible to do? <br>
    </blockquote>
    <br>
    Usually, it's not possible to do so.<br>
    <br>
    <blockquote
      cite=3D"mid:EdcV.1574731721695208194.T7CE@lists.yoctoproject.org"
      type=3D"cite">Is this achievable with the multilib class? <br>
    </blockquote>
    <br>
    No.<br>
    <br>
    <blockquote
      cite=3D"mid:EdcV.1574731721695208194.T7CE@lists.yoctoproject.org"
      type=3D"cite"> Is there another approach that is worth looking into
      or is this not possible?</blockquote>
    <br>
    You could look into multiconfig support. That may solve your
    problem. But it's a little hacky.<br>
    <br>
    <blockquote
      cite=3D"mid:EdcV.1574731721695208194.T7CE@lists.yoctoproject.org"
      type=3D"cite">=C2=A0 It is not desirable in our case to change the
      default libc to musl, we'd prefer to only use musl in a couple
      recipes if at all possible.<br>
    </blockquote>
    <br>
    Is it about license? I think it should be the only reason. If not,
    you may need to reconsider your design.<br>
    <br>
    Another simple option is that you build the statically linked
    binaries in advance for all archs that you need to support, and then
    copy them onto the target at rootfs time.<br>
    I think multiconfig could solve your problem, but I myself haven't
    tried it out.<br>
    <br>
    Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
      cite=3D"mid:EdcV.1574731721695208194.T7CE@lists.yoctoproject.org"
      type=3D"cite"><br>
      Thanks,<br>
      Kevin
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#11835): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/poky/message/11835">https://lists.yoctopro=
ject.org/g/poky/message/11835</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/61952339/3618072">https://lists.yoctoproject.org/mt/=
61952339/3618072</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:poky+ow=
ner@lists.yoctoproject.org">poky+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/poky/unsub">https://lists.yoctoproject.org/g/poky/unsub</=
a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Qi.Chen@windriv=
er.com">Qi.Chen@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------F3A86600FD8696CB1C78A5B7--
