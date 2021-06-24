Received: from sender4-op-o13.zoho.com (sender4-op-o13.zoho.com [136.143.188.13])
 by mx.groups.io with SMTP id smtpd.web12.4913.1624525108657691077
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Jun 2021 01:58:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=dwrobel@ertelnet.rybnik.pl header.s=ertelnet header.b=V2/NJL8i;
 spf=pass (domain: ertelnet.rybnik.pl, ip: 136.143.188.13, mailfrom: dwrobel@ertelnet.rybnik.pl)
ARC-Seal: i=1; a=rsa-sha256; t=1624525083; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=PAQmTP5lfVjG5ETh1HmUXQdtm66XaPFfvGmS3BMvdxjFQFH9MH+AyKf6E0odNHvGosHDuDp7Rr3g9XAOL5buHlRc1RXnsOZTjRhMerpNWA/6/EyURWdw/n7jf7MtfBRJR+vPPuPQE2SH2xRB6f1bKDUi8vR8+Zl34D+nQk2RI0A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1624525083; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=IL316MYl0CBrDRGhayc2Yk3rNkEhh2+fMQEy1xAwPVI=; 
	b=GPd633zdxaiW8zngNxHr5uarcwSWSbJi7nxWxUB/7i7DC7JgmzX6nvLdEQ9Ze3AUOApg9V6o97288fo4BJqH9SNfhIQsF8Zh4cSbyGmiumvzmnU5kiwZD/D1uOdIzy87VLpjDS/uf3lZ+GRS0bR6xzr6vwMjhgfgG7IzoGp8ba0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=ertelnet.rybnik.pl;
	spf=pass  smtp.mailfrom=dwrobel@ertelnet.rybnik.pl;
	dmarc=pass header.from=<dwrobel@ertelnet.rybnik.pl>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1624525083;
	s=ertelnet; d=ertelnet.rybnik.pl; i=dwrobel@ertelnet.rybnik.pl;
	h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=IL316MYl0CBrDRGhayc2Yk3rNkEhh2+fMQEy1xAwPVI=;
	b=V2/NJL8i+ee78Fner6XMj7/WKxoM/W8BDMmyusNJbm4I+kREW9nvewHs5Q98FoRS
	9RmwS/NeVUiYch6q+QUvkbSI3U8JMre323hfBhd29bhAERfs8MummPpkECcZDtT2oJE
	0e8f9okPJaSTkYKtePAjoOFyIxnS+V8VPMQZs2ug=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1624525081419246.57699739780526; Thu, 24 Jun 2021 01:58:01 -0700 (PDT)
Date: Thu, 24 Jun 2021 10:58:01 +0200
From: "Damian Wrobel" <dwrobel@ertelnet.rybnik.pl>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>
Cc: "poky" <poky@lists.yoctoproject.org>
Message-ID: <17a3d3d8b35.e5a076c8208632.8225141840876948326@ertelnet.rybnik.pl>
In-Reply-To: <146244a25957547cd9adf7e87025572c1341e6fb.camel@linuxfoundation.org>
References: <20210624064025.102654-1-dwrobel@ertelnet.rybnik.pl> <146244a25957547cd9adf7e87025572c1341e6fb.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: Fix automatic generation of variable dependencies
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit




 ---- On Thu, 24 Jun 2021 09:21:38 +0200 Richard Purdie <richard.purdie@linuxfoundation.org> wrote ----
 > On Thu, 2021-06-24 at 08:40 +0200, Damian Wrobel wrote:
 > > Automatically generate variable dependencies also for:
 > >     - "bb.utils.contains",
 > >     - "base_contains"
 > >     - "bb.utils.contains_any",
 > >     - "bb.utils.filter".
 > > 
 > > This is to avoid situation in which some of the variables were
 > > added automatically but not all of them like in the test example below:
 > > 
 > > RDEPENDS_${PN} += "\
 > >     ${@bb.utils.contains(                                              \
 > >         'BB_UTILS_CONTAINS_DROPBEAR',  '1',   'dropbear',   '', d)}    \
 > >     ${@bb.utils.contains_any(                                          \
 > >         'BB_UTILS_CONTAINS_ANY_EXPAT', ['1'], 'expat',      '', d)}    \
 > >     ${@oe.utils.conditional(                                           \
 > >         'OE_UTILS_CONDITIONAL_ZLIB',   '1',   'zlib',       '', d)}    \
 > >     ${@bb.utils.filter('BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'xyz', d)} \
 > > 
 > 
 > This doesn't look quite right. Contains is given special handling
 > which you see in the code below with "self.contains[varname].add(node.args[1].s)".
 > 
 > This means that the hash can reflect whether the variable contains the
 > value or not instead of depending on the complete value. This means
 > the hashes are optimised to a binary decision rather than varying 
 > arbitrary values.
 > 
 > Can you describe more about the issue you're seeing?
 > 

When I added above RDEPENDS_${PN} example to e.g. dash recipe and built it then I would
expect that all of those variables should be visible in the output of:

$ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is'

That wasn't the case before this change. Now if I run it I have:

$ bitbake-dumpsig -t dash do_package | grep 'RDEPENDS_dash is' 
List of dependencies for variable RDEPENDS_dash is {'BB_UTILS_CONTAINS_DROPBEAR', 'BB_UTILS_FILTER_WAYLAND_PROTOCOLS', 'OE_UTILS_CONDITIONAL_ZLIB', 'BB_UTILS_CONTAINS_ANY_EXPAT'}

The observation is that if they're not added as a dependency then changing them didn't trigger dash rebuilt all the time.

In practice this generates difficult to debug situations as build which used sstate-cache behaves
completely differently then the one made from scratch.

--
Regards,
Damian

 > I'd also note that any fix like this should be adding a test case to
 > lib/bb/tests/ so that we don't regress in future (run by bitbake-selftest).
 > 
 > Cheers,
 > 
 > Richard
 > 
 > 
 > 
 > > Signed-off-by: Damian Wrobel <dwrobel@ertelnet.rybnik.pl>
 > > ---
 > >  bitbake/lib/bb/cache.py      | 2 +-
 > >  bitbake/lib/bb/codeparser.py | 4 +++-
 > >  2 files changed, 4 insertions(+), 2 deletions(-)
 > > 
 > > diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
 > > index 27eb271798..2fe83ef3ac 100644
 > > --- a/bitbake/lib/bb/cache.py
 > > +++ b/bitbake/lib/bb/cache.py
 > > @@ -26,7 +26,7 @@ import re
 > >  
 > > 
 > > 
 > > 
 > >  logger = logging.getLogger("BitBake.Cache")
 > >  
 > > 
 > > 
 > > 
 > > -__cache_version__ = "154"
 > > +__cache_version__ = "155"
 > >  
 > > 
 > > 
 > > 
 > >  def getCacheFile(path, filename, mc, data_hash):
 > >      mcspec = ''
 > > diff --git a/bitbake/lib/bb/codeparser.py b/bitbake/lib/bb/codeparser.py
 > > index 0cec452c00..e00dc44470 100644
 > > --- a/bitbake/lib/bb/codeparser.py
 > > +++ b/bitbake/lib/bb/codeparser.py
 > > @@ -122,7 +122,7 @@ class CodeParserCache(MultiProcessCache):
 > >      # so that an existing cache gets invalidated. Additionally you'll need
 > >      # to increment __cache_version__ in cache.py in order to ensure that old
 > >      # recipe caches don't trigger "Taskhash mismatch" errors.
 > > -    CACHE_VERSION = 11
 > > +    CACHE_VERSION = 12
 > >  
 > > 
 > > 
 > > 
 > >      def __init__(self):
 > >          MultiProcessCache.__init__(self)
 > > @@ -225,10 +225,12 @@ class PythonParser():
 > >                      if varname not in self.contains:
 > >                          self.contains[varname] = set()
 > >                      self.contains[varname].add(node.args[1].s)
 > > +                    self.references.add(varname)
 > >                  elif name in self.containsanyfuncs and isinstance(node.args[1], ast.Str):
 > >                      if varname not in self.contains:
 > >                          self.contains[varname] = set()
 > >                      self.contains[varname].update(node.args[1].s.split())
 > > +                    self.references.add(varname)
 > >                  elif name.endswith(self.getvarflags):
 > >                      if isinstance(node.args[1], ast.Str):
 > >                          self.references.add('%s[%s]' % (varname, node.args[1].s))
 > > 
 > > 
 > 
 > 
 > 
