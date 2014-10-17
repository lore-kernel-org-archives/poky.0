Return-Path: <jkv@unixcluster.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CBB1E007DC; Fri, 17 Oct 2014 08:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C733BE00796
	for <poky@yoctoproject.org>; Fri, 17 Oct 2014 08:35:58 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id l18so1190803wgh.17
	for <poky@yoctoproject.org>; Fri, 17 Oct 2014 08:35:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=TDe/oRyzTNIi/i3U9Q63EqD2601sq4t+GqvtXwrymTE=;
	b=UVWT29QT9QqnzSkmR+DNUbcdCPYm5CqmDvVTCHrhZJKOFrjvcNlihdwffhdf5nIkGE
	fw1VqSDAO8zY0tBW1lTwmLHBC+ZhlEZkLMk8CqB7elfd8O2NBFXXybw26ZcY22pn6+jl
	wOYt8ZF5X5Z167EnouwODZ56Q+8NODp0bZBCLL/LP5/oaf8cDecKEOtCDKXXoRjcfolX
	iDDUK1lPHnXUjC6Vb/1MAqHq3hahy0IgzUCjU8VaxBTlYoPRH8aM/ytp1FyvQ2uucZnL
	MYp7px0eyaYva4ToU5Wnxn/lc9vVTtS0B5DTe6j1E1s0y/eZYZIp6HmGsrqbyhgf+sbp
	0Ayg==
X-Gm-Message-State: ALoCoQloAwISZE//txx7Awx/RZXXFC2Fss07CyP0epse6dVgymjEoXP5puoOFL53+2pNSqJdCuZ+
MIME-Version: 1.0
X-Received: by 10.180.93.37 with SMTP id cr5mr15100508wib.76.1413560155982;
	Fri, 17 Oct 2014 08:35:55 -0700 (PDT)
Received: by 10.217.93.197 with HTTP; Fri, 17 Oct 2014 08:35:55 -0700 (PDT)
X-Originating-IP: [217.130.241.93]
In-Reply-To: <9C1C9AD1-9813-419B-A268-BBF0432E9159@gmail.com>
References: <CAO+iiFydzxEy6qkW15eD2R036T=DYhL7J+G5yzGem9cSP9AFqA@mail.gmail.com>
	<9C1C9AD1-9813-419B-A268-BBF0432E9159@gmail.com>
Date: Fri, 17 Oct 2014 16:35:55 +0100
Message-ID: <CAO+iiFw5ddVrYV+x4D6TDmt-3y7m4ocEy=16YWvG=dJF=YLBkA@mail.gmail.com>
From: Johnny Vestergaard <jkv@unixcluster.dk>
To: Jens Rehsack <rehsack@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: read-only rootfs and additional fs
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
X-List-Received-Date: Fri, 17 Oct 2014 15:36:03 -0000
Content-Type: multipart/alternative; boundary=f46d043c8050f781600505a01e66

--f46d043c8050f781600505a01e66
Content-Type: text/plain; charset=UTF-8

Hi Jens,

Thanks for the advise. At least that would get me started.
Btw, as Matt asks - why would you not recommend such an approach?

regards,
Johnny

On Thu, Oct 16, 2014 at 11:10 AM, Jens Rehsack <rehsack@gmail.com> wrote:

>
> Am 16.10.2014 um 11:14 schrieb Johnny Vestergaard <jkv@unixcluster.dk>:
>
> > Hi,
> >
> > I have used "root-only-rootfs" for my build of the poky reference image
> - but i would like to mount an additional fs with write permission to
> enable saving a few config files that is configurable by the end-user. How
> would i do that with poky?
> >
> > In essence my question can be boiled down to:
> > How do i create and add a additional filesystem to the image?
>
> Even if I cannot recommend that for anybody's use, this can give you a
> starter:
>
> * extend fstab to our needs:
> https://github.com/rdm-dev/meta-jens/tree/master/recipes-core/base-files
> * add mount as we want:
> https://github.com/rdm-dev/meta-jens/blob/master/recipes-core/initscripts/initscripts/mountunion.sh
> * use mount-bind instead of links where applicable:
> https://github.com/rdm-dev/meta-jens/blob/master/recipes-core/initscripts/initscripts/populate-volatile.sh
> * create image/rootfs bundles we need:
> https://github.com/rdm-dev/meta-jens/blob/master/scripts/mkimgs
> * put stuff on a flash-device:
> https://github.com/rdm-dev/meta-jens/tree/master/recipes-rdm/prd/prd-flash
>
> Cheers
> --
> Jens Rehsack
> rehsack@gmail.com
>
>
>
>
>
>

--f46d043c8050f781600505a01e66
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jens,<div><br></div><div>Thanks for the advise. At leas=
t that would get me started.=C2=A0</div><div>Btw, as Matt asks - why would =
you not recommend such an approach?</div><div><br></div><div>regards,</div>=
<div>Johnny</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Thu, Oct 16, 2014 at 11:10 AM, Jens Rehsack <span dir=3D"ltr">&lt;=
<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Am 16.10.2014 um 11:14 schrieb Johnny Vestergaard &lt;<a href=3D"mailto:jkv=
@unixcluster.dk">jkv@unixcluster.dk</a>&gt;:<br>
<div><div class=3D"h5"><br>
&gt; Hi,<br>
&gt;<br>
&gt; I have used &quot;root-only-rootfs&quot; for my build of the poky refe=
rence image - but i would like to mount an additional fs with write permiss=
ion to enable saving a few config files that is configurable by the end-use=
r. How would i do that with poky?<br>
&gt;<br>
&gt; In essence my question can be boiled down to:<br>
&gt; How do i create and add a additional filesystem to the image?<br>
<br>
</div></div>Even if I cannot recommend that for anybody&#39;s use, this can=
 give you a starter:<br>
<br>
* extend fstab to our needs: <a href=3D"https://github.com/rdm-dev/meta-jen=
s/tree/master/recipes-core/base-files" target=3D"_blank">https://github.com=
/rdm-dev/meta-jens/tree/master/recipes-core/base-files</a><br>
* add mount as we want: <a href=3D"https://github.com/rdm-dev/meta-jens/blo=
b/master/recipes-core/initscripts/initscripts/mountunion.sh" target=3D"_bla=
nk">https://github.com/rdm-dev/meta-jens/blob/master/recipes-core/initscrip=
ts/initscripts/mountunion.sh</a><br>
* use mount-bind instead of links where applicable: <a href=3D"https://gith=
ub.com/rdm-dev/meta-jens/blob/master/recipes-core/initscripts/initscripts/p=
opulate-volatile.sh" target=3D"_blank">https://github.com/rdm-dev/meta-jens=
/blob/master/recipes-core/initscripts/initscripts/populate-volatile.sh</a><=
br>
* create image/rootfs bundles we need: <a href=3D"https://github.com/rdm-de=
v/meta-jens/blob/master/scripts/mkimgs" target=3D"_blank">https://github.co=
m/rdm-dev/meta-jens/blob/master/scripts/mkimgs</a><br>
* put stuff on a flash-device: <a href=3D"https://github.com/rdm-dev/meta-j=
ens/tree/master/recipes-rdm/prd/prd-flash" target=3D"_blank">https://github=
.com/rdm-dev/meta-jens/tree/master/recipes-rdm/prd/prd-flash</a><br>
<br>
Cheers<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
Jens Rehsack<br>
<a href=3D"mailto:rehsack@gmail.com">rehsack@gmail.com</a><br>
<br>
<br>
<br>
<br>
<br>
</font></span></blockquote></div><br></div>

--f46d043c8050f781600505a01e66--
