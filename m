Return-Path: <gs-yoctoproject.org@gluelogic.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75FC8C0032E
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 15:40:19 +0000 (UTC)
Received: from smtp1.atof.net (smtp1.atof.net [52.86.233.228])
 by mx.groups.io with SMTP id smtpd.web10.57530.1697816413887166774
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 08:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gluelogic.com, ip: 52.86.233.228, mailfrom: gs-yoctoproject.org@gluelogic.com)
Date: Fri, 20 Oct 2023 11:40:08 -0400
From: gs-yoctoproject.org@gluelogic.com
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 0/3] lighttpd-1.4.72
Message-ID: <ZTKfWB1ASqGvFsca@xps13>
References: <20231020114845.100062-1-gs-yoctoproject.org@gluelogic.com>
 <32D688B5-0765-4F89-B0FD-1BADD4458601@arm.com>
 <ZTJ4lpMInFmxKpVx@xps13>
 <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
In-Reply-To: <10278B77-7E5C-43FB-94CC-A1E7E0C50B95@arm.com>
X-Mime-Autoconverted: from 8bit to quoted-printable by courier 0.78.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Oct 2023 15:40:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13191

On Fri, Oct 20, 2023 at 01:55:50PM +0000, Ross Burton wrote:
> On 20 Oct 2023, at 13:54, gs-yoctoproject.org@gluelogic.com wrote:
> >=20
> > On Fri, Oct 20, 2023 at 12:18:22PM +0000, Ross Burton wrote:
> >> On 20 Oct 2023, at 12:48, Glenn Strauss via lists.yoctoproject.org <=
gs-yoctoproject.org=3Dgluelogic.com@lists.yoctoproject.org> wrote:
> >>> Glenn Strauss (3):
> >>> lighttpd: upgrade 1.4.71 -> 1.4.72
> >>> lighttpd: update init script
> >>> lighttpd: modernize lighttpd.conf
> >>=20
> >> Poky is a generated repository that doesn=E2=80=99t actually have an=
y patches directly merged into it, so these should be sent to openembedde=
d-core@lists.yoctoproject.org <mailto:openembedded-core@lists.yoctoprojec=
t.org>.
> >=20
> > I'll re-send to the openembedded-core list.
> > Thanks for the pointer, Richard and Ross.
> >=20
> > =3D=3D> Would someone please update the documentation?
> >=20
> > https://docs.yoctoproject.org/contributor-guide/submit-changes.html#f=
inding-a-suitable-mailing-list
> > 4.4.3 Finding a Suitable Mailing List
> > =E2=80=9Cmeta-*=E2=80=9D trees: These trees contain Metadata. Use the =
poky mailing list.
>=20
> So we obviously need to make that list a bit clearer.  The relevant lin=
e was two above:
>=20
>     =E2=80=A2 Core Metadata: Send your patches to the openembedded-core =
mailing list. For example, a change to anything under the meta or scripts =
directories should be sent to this mailing list.
>=20
> A better way to do that would be to just list the top level folders, I=E2=
=80=99ll send a change.

Sorry.  I guess I skimmed that too quickly.  I read the left half of the
page, and not the right half.  Since this is in the section about where
to send patches, maybe list only the openembedded-core mailing list and
add a link to a separate page describing the rest of the lists?



> >> However, I was also just looking at the lighttpd recipe.  Specifical=
ly I was extracting the sample site from the main package so it=E2=80=99s =
easier to add in your own site files, basically putting /var/www/pages in=
to lighttpd-site-sample and then recommending that from the main package.  =
The goal being that in the simple test case the sample site is pulled in, =
but it=E2=80=99s trivial to package up your own site that conflicts with =
site-sample.
> >=20
> > That sounds reasonable to me.
> > I like the idea of being able to remove the sample site.
> > I also like the idea of having a sample site to get people started.
> >=20
> >> This worked but then I realised that the config file is fairly tied =
to the site too.  As - presumably - a lighttpd user, do you have any opin=
ion on where the lighttpd.conf file should be packaged?  I=E2=80=99m lean=
ing towards bundling it with the sample-site but am undecided as to wheth=
er that=E2=80=99s actually a good idea.
> >=20
> > I am a lighttpd developer.  While I have some strong opinions about
> > packages and how it is done in many different distros, I am less
> > familiar with yocto specifics and more interested in trying to help
> > people run the best available version of lighttpd, which is always
> > the latest stable release.
> >=20
> > I'll share my thoughts and hope some people using lighttpd with ptxdi=
st
> > can add their opinions, too.
> >=20
> > Overall, one-size fits all packaging generally makes tradeoffs
> > for new users, versus scripters, versus dev-ops.  Personally, I
> > think packagers tend to overcomplicate things trying to please too
> > many different user types at once.
> >=20
> > The smallest lighttpd config is one line:
> >  server.document-root =3D "/path/to/test/site"
> > and lighttpd will by default listen on port 80 and will run as the us=
er
> > that started lighttpd.  Often, a test site also includes a second lin=
e
> > in the config:
> >  index-file.names =3D ("index.html")
> > and the test site has a single file /path/to/test/site/index.html
> >=20
> > I think that is what distros should ship, along with one more line:
> >  include "/etc/lighttpd/conf.d/*.conf"
> >=20
> > Users can then reconfigure the server as they like by dropping files =
in
> > /etc/lighttpd/conf.d/*.conf, including overwriting the default docume=
nt
> > root with
> >  server.document-root :=3D "/path/to/default/site"
> > and disabling index files with
> >  index-file.names =3D ()
> > or reconfiguring with something like
> >  index-file.names :=3D ("index.html", "index.htm")
> >=20
> > The sample site, if a separate package, could add files into
> > /etc/lighttpd/conf.d/*.conf (or whatever location ptxdist uses)
> > with the sample site config.
>=20
> That=E2=80=99s interesting, thanks.  Our use-case is slightly different =
in that we encourage people to customise the recipes as needed, whereas o=
n Debian you wouldn=E2=80=99t expect to rebuild lighttpd at all.
>=20
> A minimal lighttpd.conf which supports fragments sounds ideal.  Would i=
t be sensible to have a truly minimal /etc/lightttd/lighttp.conf in the l=
ighttpd package which sets just document.root/index-file-names, and then =
move the modernised config file you sent to /etc/lighttpd/conf.d/sample-s=
ite.conf as an example?

I might suggest even less than that.

If openembedded encourages people to customize the recipies, then should
the lighttpd.conf provided with the package not be fully-functional
out-of-the-box?  A simple config of
  include "/etc/lighttpd/conf.d/*.conf"
might be the base, and a separate "sample" package would provide a
single-file site with /usr/share/lighttpd/sample/index.html
and a single-file config in /etc/lighttpd/conf.d/sample.conf which sets
  server.document-root =3D "/usr/share/lighttpd/sample/"

Once you configure your own site, you can then remove the sample site.

While lighttpd provides configuration directives to override other
settings, I prefer shorter configs rather than a huge mess in
/etc/lighttpd/conf.d/*.conf with competition to overwrite configs.

The lighttpd upstream source code provides some sample configs and
scripts, too, and some distros install these files under
/usr/share/lighttpd for reference.  On embedded systems where disk space
matters, this could be a separate 'doc' package which is optional to
install.

> As a distro maintainer it=E2=80=99s hard to know enough about every pac=
kage, so it=E2=80=99s good to have an upstream developer to ask questions=
!

Ask away!  I have questions, too.  Many distros have policies about
changes for backwards compatibility with existing installations.

As we discuss changing the lighttpd recipe, what level of backwards
compatibility is required in changes made to the lighttpd recipe?

lighttpd is a small executable and has a small memory footprint.
However, in embedded systems, sometimes tiny is a requirement.

How much emphasis should be placed on making lighttpd as tiny as
possible?

Doing so may save a few pages of memory, but at the cost of
functionality that people might expect by default.  For example,
lighttpd can save about (12) 4k pages of .text and .data in memory if
support for HTTP/2 is disabled in lighttpd.conf (and mod_h2.so is not
loaded).  However, a typical admin using lighttpd probably desires to
have HTTP/2 support available, and HTTP/2 support is enabled by default
in lighttpd.  Another thing -- and the list does not end here -- is that
lighttpd supports multiple TLS libraries.  On embedded systems, mbedtls
or wolfssl are generally lower-resource choices than openssl or gnutls,
though openssl and gnutls tend to be higher performance (and higher
resource usage).

Cheers, Glenn

