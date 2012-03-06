Return-Path: <flocirel@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33160E0044A
	for <poky@yoctoproject.org>; Tue,  6 Mar 2012 12:15:23 -0800 (PST)
Received: by werc1 with SMTP id c1so4548350wer.35
	for <poky@yoctoproject.org>; Tue, 06 Mar 2012 12:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=IP/26Eh43biPOiyeGEhNPYvNJY5HY3Gayv0x2ifVi9Y=;
	b=qRUtVNFgLz/TVtjldmFntmk7dt96qTXHhqe/9H7tU4ypExEBdte3kE7WQbs2abF34B
	SSZE2r5iKRUEssBhX7pUQv9snsA7V4Hqlg/zADQNoKcY/8BFMBvix8kdstPkkHTcI1Px
	ctNMP14URzoPwN/bV7nJAZbARtlEU4IV5mlS4JlhJjqYFkVoQzWb/BP8oIAG/uzcpjVF
	cXeHP+/bPlmTYNtWQ72UfGFzOgdcXMjTF3P6OLEWCSw0jcAhCriDPAzKw9IciHdU/QGO
	vlF9fWGQDgcWac5i6qn58bX9JLWzXtvQIaLkLRCIOwZsmDfbfVabF5ZKFt2uzsgRyz5W
	Sx6Q==
MIME-Version: 1.0
Received: by 10.180.76.175 with SMTP id l15mr21465327wiw.2.1331064921777; Tue,
	06 Mar 2012 12:15:21 -0800 (PST)
Received: by 10.223.114.196 with HTTP; Tue, 6 Mar 2012 12:15:21 -0800 (PST)
Received: by 10.223.114.196 with HTTP; Tue, 6 Mar 2012 12:15:21 -0800 (PST)
In-Reply-To: <3919600.C6p42ZJ0so@helios>
References: <4F5643EB.70909@mlbassoc.com> <4F564BBE.6030404@mlbassoc.com>
	<3919600.C6p42ZJ0so@helios>
Date: Tue, 6 Mar 2012 22:15:21 +0200
Message-ID: <CANdftmOpsM6=3YMwdM+bwBD4088H0px1a7qb6E7tQ+PDXPcczw@mail.gmail.com>
From: Foinel <flocirel@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: How can a package I didn't ask for get included in my image?
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
X-List-Received-Date: Tue, 06 Mar 2012 20:15:23 -0000
Content-Type: multipart/alternative; boundary=f46d043891bfd5e49504ba98b3ae

--f46d043891bfd5e49504ba98b3ae
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

How do you enable buildhistory?
Thanks

=CEn data de 06.03.2012 21:27, "Paul Eggleton" <paul.eggleton@linux.intel.c=
om>
a scris:
>
> On Tuesday 06 March 2012 10:39:10 Gary Thomas wrote:
> > On 2012-03-06 10:05, Gary Thomas wrote:
> > > I'm trying to figure out why a particular package is ending up
> > > in my final image. If I build something like this:
> > > % bitbake my-image
> > > If I then look, I find packages that were installed that I'm
> > > never mentioning:
> > > % grep firmware tmp/work/my-board/my-image/temp/log.do_rootfs
> > > Installing linux-firmware-wl12xx
> > > (0.0+git1+09c949f6d3196a7199eb2c7015bfa5d34ed723b5-r0) to root... so =
I
> > > tried to figure out how this is getting in
> > > % bitbake my-image -g
> > > % grep firmware *.dot
> > > ... comes up empty
> > >
> > > To be fair, I had originally built this image with this in
<my-board>.conf
> > > MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules linux-firmware-wl12xx =
"
> > > but that has since been removed. Somehow, it's ghost lingers on...
> > >
> > > How can this be?
> > > How can I get rid of it, short of a complete rebuild?
> > >
> > > Thanks for any insight into this mystery.
> >
> > Found it myself - the variable MACHINE_EXTRA_RRECOMMENDS was referenced
> > by my core task, something like this:
> >    RRECOMMENDS_task-my-distro-boot =3D "\
> >      ${MACHINE_EXTRA_RRECOMMENDS} \
> >    "
> > I hadn't rebuilt that task, so the reference remained.  I'm still not
> > sure why it didn't end up in the .dot graphs though.
>
> The dot graphs produced by bitbake -g will include what's projected by th=
e
> recipes, not already built packages; thus why after your change it no
longer
> appeared in the graphs. The answer is not to effectively make changes to
the
> tasks without bumping the task recipe's PR (or alternatively enable
> BasicHash).
>
> FYI you can enable buildhistory (without enabling BUILDHISTORY_COMMIT if
you
> don't need that) and this will produce some dependency graphs directly
from
> the packages used to construct the rootfs. These graphs are more focused
and
> thus can be a bit more useful when you're trying to figure out how a
package
> got into your image; however producing them is part of do_rootfs so you
have
> to go through the entire process of building the image in order to get
them.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--f46d043891bfd5e49504ba98b3ae
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>How do you enable buildhistory?<br>
Thanks</p>
<p>=CEn data de 06.03.2012 21:27, &quot;Paul Eggleton&quot; &lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt;=
 a scris:<br>
&gt;<br>
&gt; On Tuesday 06 March 2012 10:39:10 Gary Thomas wrote:<br>
&gt; &gt; On 2012-03-06 10:05, Gary Thomas wrote:<br>
&gt; &gt; &gt; I&#39;m trying to figure out why a particular package is end=
ing up<br>
&gt; &gt; &gt; in my final image. If I build something like this:<br>
&gt; &gt; &gt; % bitbake my-image<br>
&gt; &gt; &gt; If I then look, I find packages that were installed that I&#=
39;m<br>
&gt; &gt; &gt; never mentioning:<br>
&gt; &gt; &gt; % grep firmware tmp/work/my-board/my-image/temp/log.do_rootf=
s<br>
&gt; &gt; &gt; Installing linux-firmware-wl12xx<br>
&gt; &gt; &gt; (0.0+git1+09c949f6d3196a7199eb2c7015bfa5d34ed723b5-r0) to ro=
ot... so I<br>
&gt; &gt; &gt; tried to figure out how this is getting in<br>
&gt; &gt; &gt; % bitbake my-image -g<br>
&gt; &gt; &gt; % grep firmware *.dot<br>
&gt; &gt; &gt; ... comes up empty<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; To be fair, I had originally built this image with this in &=
lt;my-board&gt;.conf<br>
&gt; &gt; &gt; MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules linux-fi=
rmware-wl12xx &quot;<br>
&gt; &gt; &gt; but that has since been removed. Somehow, it&#39;s ghost lin=
gers on...<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; How can this be?<br>
&gt; &gt; &gt; How can I get rid of it, short of a complete rebuild?<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Thanks for any insight into this mystery.<br>
&gt; &gt;<br>
&gt; &gt; Found it myself - the variable MACHINE_EXTRA_RRECOMMENDS was refe=
renced<br>
&gt; &gt; by my core task, something like this:<br>
&gt; &gt; =A0 =A0RRECOMMENDS_task-my-distro-boot =3D &quot;\<br>
&gt; &gt; =A0 =A0 =A0${MACHINE_EXTRA_RRECOMMENDS} \<br>
&gt; &gt; =A0 =A0&quot;<br>
&gt; &gt; I hadn&#39;t rebuilt that task, so the reference remained. =A0I&#=
39;m still not<br>
&gt; &gt; sure why it didn&#39;t end up in the .dot graphs though.<br>
&gt;<br>
&gt; The dot graphs produced by bitbake -g will include what&#39;s projecte=
d by the<br>
&gt; recipes, not already built packages; thus why after your change it no =
longer<br>
&gt; appeared in the graphs. The answer is not to effectively make changes =
to the<br>
&gt; tasks without bumping the task recipe&#39;s PR (or alternatively enabl=
e<br>
&gt; BasicHash).<br>
&gt;<br>
&gt; FYI you can enable buildhistory (without enabling BUILDHISTORY_COMMIT =
if you<br>
&gt; don&#39;t need that) and this will produce some dependency graphs dire=
ctly from<br>
&gt; the packages used to construct the rootfs. These graphs are more focus=
ed and<br>
&gt; thus can be a bit more useful when you&#39;re trying to figure out how=
 a package<br>
&gt; got into your image; however producing them is part of do_rootfs so yo=
u have<br>
&gt; to go through the entire process of building the image in order to get=
 them.<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Paul Eggleton<br>
&gt; Intel Open Source Technology Centre<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists=
.yoctoproject.org/listinfo/poky</a><br>
</p>

--f46d043891bfd5e49504ba98b3ae--
