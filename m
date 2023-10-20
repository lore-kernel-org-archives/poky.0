Return-Path: <gs-yoctoproject.org@gluelogic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86931CDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 12:54:58 +0000 (UTC)
Received: from smtp1.atof.net (smtp1.atof.net [52.86.233.228])
 by mx.groups.io with SMTP id smtpd.web10.53431.1697806496816407901
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 05:54:57 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gluelogic.com, ip: 52.86.233.228, mailfrom: gs-yoctoproject.org@gluelogic.com)
Date: Fri, 20 Oct 2023 08:54:46 -0400
From: gs-yoctoproject.org@gluelogic.com
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
Message-ID: <ZTJ4lpMInFmxKpVx@xps13>
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
 <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
In-Reply-To: <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com>
X-Mime-Autoconverted: from 8bit to quoted-printable by courier 0.78.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 12:54:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13189

On Fri, Oct 20, 2023 at 12:18:22PM +0000, Ross Burton wrote:
> On 20 Oct 2023, at 12:48, Glenn Strauss via lists.yoctoproject.org <gs-=
yoctoproject.org=3Dgluelogic.com@lists.yoctoproject.org> wrote:
> > Glenn Strauss (3):
> >  lighttpd: upgrade 1.4.71 -> 1.4.72
> >  lighttpd: update init script
> >  lighttpd: modernize lighttpd.conf
>=20
> Poky is a generated repository that doesn=E2=80=99t actually have any p=
atches directly merged into it, so these should be sent to openembedded-c=
ore@lists.yoctoproject.org <mailto:openembedded-core@lists.yoctoproject.o=
rg>.

I'll re-send to the openembedded-core list.
Thanks for the pointer, Richard and Ross.

=3D=3D> Would someone please update the documentation?

https://docs.yoctoproject.org/contributor-guide/submit-changes.html#findi=
ng-a-suitable-mailing-list
4.4.3 Finding a Suitable Mailing List
=E2=80=9Cmeta-*=E2=80=9D trees: These trees contain Metadata. Use the pok=
y mailing list.

> However, I was also just looking at the lighttpd recipe.  Specifically =
I was extracting the sample site from the main package so it=E2=80=99s ea=
sier to add in your own site files, basically putting /var/www/pages into =
lighttpd-site-sample and then recommending that from the main package.  T=
he goal being that in the simple test case the sample site is pulled in, =
but it=E2=80=99s trivial to package up your own site that conflicts with =
site-sample.

That sounds reasonable to me.
I like the idea of being able to remove the sample site.
I also like the idea of having a sample site to get people started.

> This worked but then I realised that the config file is fairly tied to =
the site too.  As - presumably - a lighttpd user, do you have any opinion =
on where the lighttpd.conf file should be packaged?  I=E2=80=99m leaning =
towards bundling it with the sample-site but am undecided as to whether t=
hat=E2=80=99s actually a good idea.

I am a lighttpd developer.  While I have some strong opinions about
packages and how it is done in many different distros, I am less
familiar with yocto specifics and more interested in trying to help
people run the best available version of lighttpd, which is always
the latest stable release.

I'll share my thoughts and hope some people using lighttpd with ptxdist
can add their opinions, too.

Overall, one-size fits all packaging generally makes tradeoffs
for new users, versus scripters, versus dev-ops.  Personally, I
think packagers tend to overcomplicate things trying to please too
many different user types at once.

The smallest lighttpd config is one line:
  server.document-root =3D "/path/to/test/site"
and lighttpd will by default listen on port 80 and will run as the user
that started lighttpd.  Often, a test site also includes a second line
in the config:
  index-file.names =3D ("index.html")
and the test site has a single file /path/to/test/site/index.html

I think that is what distros should ship, along with one more line:
  include "/etc/lighttpd/conf.d/*.conf"

Users can then reconfigure the server as they like by dropping files in
/etc/lighttpd/conf.d/*.conf, including overwriting the default document
root with
  server.document-root :=3D "/path/to/default/site"
and disabling index files with
  index-file.names =3D ()
or reconfiguring with something like
  index-file.names :=3D ("index.html", "index.htm")

The sample site, if a separate package, could add files into
/etc/lighttpd/conf.d/*.conf (or whatever location ptxdist uses)
with the sample site config.

Cheers, Glenn

